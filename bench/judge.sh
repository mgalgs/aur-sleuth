#!/usr/bin/env bash
# Judge audit reports: detect disagreements, shallow coverage, and quality issues.
# A high-intelligence "judge" model reviews reports and optionally triggers re-audits.
#
# Usage: judge.sh [--package PKG | --all] [--force] [--escalate] [--re-audit] [--re-audit-pending] [--judge-model MODEL] [--audit-model MODEL] [--judge-dir DIR] [--no-archive] [--audit-timeout SECONDS]
#
# Triggers (automatic), checked in this order:
#   - Error reports (unknown result, zero cost): nothing to second-guess
#   - Result disagreement between models (safe vs unsafe)
#   - An agreed warning: every model called it unsafe or inconclusive. Agreement
#     is not correctness, and this is the verdict that gets published.
#   - Shallow coverage (< 3 files reviewed)
# With --all, also reviews packages where models agree that a package is safe
# (routine coverage check). A package whose current reports were already
# judged is skipped either way; --force judges it again.
#
# Judge reports are written to $AUR_SLEUTH_DATA_DIR/judge/<pkg>.json (default: ~/aur-sleuth-data/judge/)
set -euo pipefail

cd "$(dirname "$0")/.."

# --- Defaults ---
JUDGE_MODEL="anthropic/claude-opus-4.8"
AUDIT_MODEL="anthropic/claude-sonnet-4.6"
RE_AUDIT=false
DATA_DIR="${AUR_SLEUTH_DATA_DIR:-$HOME/aur-sleuth-data}"
REPORTS_DIR="$DATA_DIR/bulk-reports"
JUDGE_DIR="$DATA_DIR/judge"
PACKAGE=""
ALL=false
FORCE=false
ESCALATE=false
LOCK_FILE="$DATA_DIR/bulk-audit/archive.lock"
NO_ARCHIVE=false

# --- Parse args ---
while [[ $# -gt 0 ]]; do
    case "$1" in
        --package) PACKAGE="$2"; shift 2 ;;
        --all) ALL=true; shift ;;
        --force) FORCE=true; shift ;;
        --escalate) ESCALATE=true; shift ;;
        --re-audit) RE_AUDIT=true; shift ;;
        --re-audit-pending) RE_AUDIT_PENDING=true; shift ;;
        --judge-model) JUDGE_MODEL="$2"; shift 2 ;;
        --audit-model) AUDIT_MODEL="$2"; shift 2 ;;
        --reports-dir) REPORTS_DIR="$2"; shift 2 ;;
        --judge-dir) JUDGE_DIR="$2"; shift 2 ;;
        --no-archive) NO_ARCHIVE=true; shift ;;
        --audit-timeout) AUDIT_TIMEOUT="$2"; shift 2 ;;
        *) echo "Unknown arg: $1" >&2; exit 1 ;;
    esac
done

RE_AUDIT_PENDING="${RE_AUDIT_PENDING:-false}"
# Same ceiling as pipeline.sh's --audit-timeout, for the same reason: a hung
# mirror must cost one re-audit, not the run.
AUDIT_TIMEOUT="${AUDIT_TIMEOUT:-900}"

AUDIT_MODEL="${AUDIT_MODEL:-$JUDGE_MODEL}"

mkdir -p "$JUDGE_DIR" "$(dirname "$LOCK_FILE")"

log() { echo "[$(date '+%H:%M:%S')] $*"; }

# Fetch pricing once at startup, pass to Python via env
_PRICING_JSON=$(python3 -c "
import requests, json, sys
try:
    r = requests.get('https://openrouter.ai/api/v1/models', timeout=10)
    pricing = {m['id']: m.get('pricing', {}) for m in r.json().get('data', [])}
    print(json.dumps(pricing))
except Exception:
    print('{}')
" 2>/dev/null)
export _PRICING_JSON

# --- Archive judge report to audit-reports branch ---
REPORTS_BRANCH="audit-reports"

archive_judge_report() {
    local pkg="$1" judge_file="$2"
    local filename
    filename="$(date -u +%Y%m%d-%H%M%S)-judge.json"

    local tmpindex
    tmpindex="$(mktemp)"
    rm -f "$tmpindex"

    if git rev-parse --verify "$REPORTS_BRANCH" &>/dev/null; then
        GIT_INDEX_FILE="$tmpindex" git read-tree "$REPORTS_BRANCH"
    fi

    local blob_hash
    blob_hash="$(git hash-object -w "$judge_file")"
    GIT_INDEX_FILE="$tmpindex" git update-index --add \
        --cacheinfo "100644,${blob_hash},${pkg}/${filename}"
    local tree_hash
    tree_hash="$(GIT_INDEX_FILE="$tmpindex" git write-tree)"

    local parent_args=()
    if git rev-parse --verify "$REPORTS_BRANCH" &>/dev/null; then
        parent_args=(-p "$REPORTS_BRANCH")
    fi

    local commit_hash
    commit_hash="$(git commit-tree "$tree_hash" \
        "${parent_args[@]}" \
        -m "judge: ${pkg} ($(python3 -c "import json; print(json.load(open('$judge_file')).get('correct_verdict','unknown'))"))")"

    git update-ref "refs/heads/${REPORTS_BRANCH}" "$commit_hash"
    rm -f "$tmpindex"
}

# --- Extract frontmatter field from a report ---
fm() {
    local file="$1" field="$2"
    sed -n '/^---$/,/^---$/p' "$file" | grep "^${field}:" | head -1 | sed "s/^${field}: *//"
}

# --- Find all packages with reports ---
find_packages() {
    find "$REPORTS_DIR" -name 'aur-sleuth-report-*.txt' \
        | sed 's|.*/aur-sleuth-report-||; s|\.txt$||' \
        | sort -u
}

# --- Collect report file paths for a package ---
collect_reports() {
    find "$REPORTS_DIR" -name "aur-sleuth-report-${1}.txt" -type f
}

# --- Has every one of these reports already been judged? ---
# The judge report records each audit it read as the archive filename
# <date>-<model>.md, derived from the report's frontmatter; rebuild the same
# name here and compare.
already_judged() {
    local pkg="$1"; shift
    local judge_file="$JUDGE_DIR/${pkg}.json"
    [[ -f "$judge_file" ]] || return 1
    local judged
    judged=$(python3 -c "import json; print('\n'.join(json.load(open('$judge_file')).get('audits_judged', [])))" 2>/dev/null) || return 1
    [[ -n "$judged" ]] || return 1
    local r d m
    for r in "$@"; do
        d=$(fm "$r" date); m=$(fm "$r" model)
        [[ -n "$d" && -n "$m" ]] || return 1
        d=$(printf '%s' "$d" | tr -d ':-' | tr 'T' '-'); d="${d:0:15}"
        grep -qxF "${d}-${m//\//-}.md" <<< "$judged" || return 1
    done
    return 0
}

# --- Check if a package needs judging, echo trigger reason ---
# Returns 0 with the trigger on stdout, 1 when nothing triggers (which --all
# turns into a routine review), and 2 when the package's current reports
# were already judged -- which --all must not turn into anything, or every
# run with budget re-judges and re-bills the whole corpus.
check_triggers() {
    local pkg="$1"
    local reports=()
    while IFS= read -r f; do
        reports+=("$f")
    done < <(collect_reports "$pkg")

    [[ ${#reports[@]} -ge 1 ]] || return 1

    # Collect the REAL results upfront. Two kinds of report carry no vote:
    #
    # - A failed audit -- result unknown or skipped, or a cost of zero
    #   (rate-limited, quota-walled, crashed before a single call) -- is
    #   soft: absence, not a ruling.
    # - An advisory report (frontmatter advisory: true) is data from a model
    #   that has not earned a vote. It never triggers anything; when a judge
    #   convenes on the real reports' own merits, it is in the pile the
    #   judge reads, as context. Simply informational.
    #
    # Neither may trigger a paid judge read, and neither may smuggle a
    # cost-0 "inconclusive" into the agreed-warning check below.
    local results=()
    local real_reports=()
    for r in "${reports[@]}"; do
        head -1 "$r" | grep -q '^---$' || continue
        local res cost
        res=$(fm "$r" result)
        cost=$(fm "$r" cost)
        if [[ -z "$res" || "$res" == "unknown" || "$res" == "skipped" || "$cost" == "0" ]]; then
            continue
        fi
        if [[ "$(fm "$r" advisory)" == "true" ]]; then
            continue
        fi
        results+=("$res")
        real_reports+=("$r")
    done

    # Nothing real to judge: every report failed, was skipped, or is
    # advisory. The package stays out of the audited index
    # (bench/audited-index.py applies the same rule), so discovery retries
    # it next run instead of never.
    if (( ${#results[@]} == 0 )); then
        return 1
    fi

    # Already judged: the working copies outlive the judgment, so without
    # this a package with a standing disagreement is re-judged on every run
    # that has budget. The fingerprint is the REAL reports only: an advisory
    # report arriving later must not re-summon a judge through the back
    # door -- it waits in the pile for the next real event.
    if ! $FORCE && already_judged "$pkg" "${real_reports[@]}"; then
        return 2
    fi

    # Disagreement: different result values across models
    if (( ${#results[@]} >= 2 )); then
        local unique
        unique=$(printf '%s\n' "${results[@]}" | sort -u | wc -l)
        if (( unique > 1 )); then
            echo "disagreement ($(printf '%s\n' "${results[@]}" | sort -u | tr '\n' ' ' | sed 's/ $//'))"
            return 0
        fi
    fi

    # An agreed warning. Everything reaching this point agrees, and agreement is
    # not correctness: two models reading the same PKGBUILD share their failure
    # modes, so the likeliest kind of agreed verdict to be wrong is a false
    # positive on a package that merely looks alarming. That is also the verdict
    # that gets published naming a package as dangerous, so it is the one worth
    # a second opinion. Only disagreement used to trigger, which meant a
    # confidently wrong "unsafe" was never checked at all.
    # "Agreed" means more than one model said so; one report is one opinion.
    for res in "${results[@]}"; do
        if [[ "$res" == "unsafe" || "$res" == "inconclusive" ]]; then
            if (( ${#results[@]} >= 2 )); then
                echo "warned (agreed $res)"
            else
                echo "warned (single $res)"
            fi
            return 0
        fi
    done

    # Shallow coverage. Real reports only: a failed audit reviewed nothing,
    # and that is absence, not shallowness.
    for r in "${real_reports[@]}"; do
        local fr
        fr=$(fm "$r" files_reviewed)
        if [[ -n "$fr" ]] && (( fr < 3 )); then
            echo "shallow ($(fm "$r" model) reviewed $fr files)"
            return 0
        fi
    done

    return 1
}

# --- Judge one package via LLM ---
judge_package() {
    local pkg="$1"
    local trigger="$2"

    log "Judging $pkg (trigger: $trigger)"

    # Collect report file paths
    local report_files=()
    while IFS= read -r f; do
        report_files+=("$f")
    done < <(collect_reports "$pkg")

    # Python: read reports, call judge LLM, write verdict JSON
    local verdict
    verdict=$(JUDGE_MODEL="$JUDGE_MODEL" \
        JUDGE_PKG="$pkg" \
        JUDGE_TRIGGER="$trigger" \
        JUDGE_REPORT_FILES="$(printf '%s\n' "${report_files[@]}")" \
        JUDGE_DIR="$JUDGE_DIR" \
        python3 << 'PYEOF'
import json, os, sys, re

pkg = os.environ["JUDGE_PKG"]
trigger = os.environ["JUDGE_TRIGGER"]
report_files = os.environ["JUDGE_REPORT_FILES"].strip().split("\n")
judge_model = os.environ["JUDGE_MODEL"]
judge_dir = os.environ["JUDGE_DIR"]

base_url = os.environ.get("OPENAI_BASE_URL", "https://openrouter.ai/api/v1")
api_key = os.environ.get("OPENAI_API_KEY", "")

try:
    from openai import OpenAI
except ImportError:
    print(json.dumps({"error": "openai package not installed"}))
    sys.exit(1)

# Use pre-fetched pricing from environment
_pricing = json.loads(os.environ.get("_PRICING_JSON", "{}"))

def get_model_cost(model, prompt_tokens, completion_tokens):
    pricing = _pricing.get(model, {})
    if not pricing:
        return None
    p_cost = float(pricing.get("prompt", 0)) * prompt_tokens
    c_cost = float(pricing.get("completion", 0)) * completion_tokens
    return p_cost + c_cost

# Read all reports, truncating very long ones
MAX_REPORT_LEN = 30000
reports_text = []
for path in report_files:
    try:
        content = open(path, encoding="utf-8").read()
        # Extract model name from frontmatter for labeling
        model_match = re.search(r'^model:\s*(.+)$', content, re.MULTILINE)
        model_name = model_match.group(1).strip() if model_match else os.path.basename(os.path.dirname(path))
        if len(content) > MAX_REPORT_LEN:
            content = content[:MAX_REPORT_LEN] + "\n\n[... truncated ...]\n"
        reports_text.append(f"=== Report from: {model_name} ===\n{content}\n=== End report ===")
    except Exception as e:
        reports_text.append(f"=== Report from: {path} ===\n[Error reading: {e}]\n=== End report ===")

all_reports = "\n\n".join(reports_text)

prompt = f"""You are a security audit judge for AUR (Arch User Repository) packages.

You are reviewing multiple independent audit reports for the package '{pkg}', generated by different AI models. This review was triggered because: {trigger}

Your role:

1. **ADJUDICATE**: Determine the correct safety verdict by analyzing each model's reasoning and the files they reviewed.
2. **DETECT COVERAGE GAPS**: Identify if any model failed to review important files (scripts, install hooks, source code with network/filesystem access).
3. **IDENTIFY FALSE POSITIVES**: Flag findings that overreact to normal patterns. For AUR packages, the primary concern is what executes during `makepkg` (build/install). Development tooling, CI scripts, and editor configs in the source tree are NOT a concern unless referenced by PKGBUILD functions (build, package, prepare, check) or .install scripts.
4. **IDENTIFY FALSE NEGATIVES**: Flag risks that models missed — especially if one model reviewed a file the other skipped.
5. **RECOMMEND RE-AUDIT**: Would a re-audit with a stronger model add value? Only recommend if there's genuine uncertainty.
6. **EXTRACT LEARNINGS**: What can we learn to improve the audit tool? Focus on:
   - File selection: did models pick the right files? What should they have prioritized?
   - Prompt/assessment quality: were the models' explanations accurate and well-reasoned?
   - Common failure modes: patterns that reliably confuse the audit models

The threat model, and the verdict boundary:

This tool hunts for code INJECTED into the AUR packaging of the package: a
malicious PKGBUILD, .install hook or patch, or an upstream artifact swapped in
unverified. It does not rate the application, and it does not grade packaging
style. Apply one test to every finding you weigh: could an AUR maintainer have
injected this, and does it serve no purpose the package claims? Only a yes
belongs in the verdict.

Record these in your notes; never let them decide the verdict:
- Packaging hygiene. A PKGBUILD that resolves its download URL by fetching the
  package's own declared upstream page, parsing it with grep/sed and executing
  none of it, is a normal AUR pattern for vendors without stable URLs. When a
  real checksum pins the downloaded artifact, the swap risk is closed: makepkg
  rejects substituted bytes. "Violates packaging best practices" is never, by
  itself, grounds for unsafe.
- Upstream application behaviour. What the application does when it runs is
  the vendor's product, not an injection.
The injection pattern is different, and it does belong in the verdict:
executing fetched content, or fetching from a host the package has no stated
relationship with.

Weigh the reports; do not count them:
- A report whose frontmatter says "advisory: true" is context from a model
  that has not earned a vote: read it for leads, never count it toward
  agreement or disagreement.
- Two reports from the same model are one opinion, not corroboration. A
  "served_models" line names who actually answered behind a router id; use
  it when deciding what counts as the same model.
- A report that ended in a tool error (a crash, a timeout, a symlink loop)
  carries no verdict signal. Treat it as missing and note the failure under
  coverage_issues.
- Agreement is not correctness. Models reading the same PKGBUILD share failure
  modes, and an agreed "unsafe" whose reasoning is hygiene or style is the
  classic shared false positive -- it is also the verdict that publishes an
  accusation under a real package's name. Overrule it.

Here are all the reports:

{all_reports}

Respond in JSON (no markdown fencing):
{{
  "package": "{pkg}",
  "correct_verdict": "safe|unsafe|inconclusive",
  "confidence": "high|medium|low",
  "reasoning": "concise explanation of your verdict",
  "disagreement_analysis": "what caused the disagreement, or null",
  "coverage_issues": ["list of coverage problems, or empty"],
  "false_positives": ["findings that are likely FPs with brief reason, or empty"],
  "false_negatives": ["risks that were missed with brief reason, or empty"],
  "re_audit_recommended": true/false,
  "re_audit_focus": ["specific files or areas to focus on, or empty"],
  "learnings": ["actionable improvements for the audit tool"]
}}"""

client = OpenAI(
    base_url=base_url,
    api_key=api_key,
    default_headers={
        "HTTP-Referer": "https://github.com/mgalgs/aur-sleuth",
        "X-Title": "aur-sleuth-judge",
    },
)

try:
    resp = client.chat.completions.create(
        model=judge_model,
        messages=[{"role": "user", "content": prompt}],
        temperature=0.2,
        max_tokens=4096,
    )
    content = resp.choices[0].message.content

    # Extract JSON from response (strip markdown fencing if present)
    if "```json" in content:
        content = content.split("```json")[1].split("```")[0]
    elif "```" in content:
        content = content.split("```")[1].split("```")[0]

    result = json.loads(content.strip())

    pt = ct = 0
    if resp.usage:
        pt = resp.usage.prompt_tokens or 0
        ct = resp.usage.completion_tokens or 0
    cost = get_model_cost(judge_model, pt, ct)
    result["_judge_usage"] = {
        "model": judge_model,
        "prompt_tokens": pt,
        "completion_tokens": ct,
        "cost": cost,
    }

    # Record which audits were judged (reconstruct branch filenames from frontmatter)
    audits_judged = []
    for path in report_files:
        try:
            with open(path, encoding="utf-8") as fh:
                content = fh.read()
            date_m = re.search(r'^date:\s*(.+)$', content, re.MULTILINE)
            model_m = re.search(r'^model:\s*(.+)$', content, re.MULTILINE)
            if date_m and model_m:
                d = date_m.group(1).strip().replace("-", "").replace(":", "").replace("T", "-")[:15]
                m = model_m.group(1).strip().replace("/", "-")
                audits_judged.append(f"{d}-{m}.md")
        except Exception:
            pass
    result["audits_judged"] = audits_judged

    # Write judge report
    judge_file = os.path.join(judge_dir, f"{pkg}.json")
    with open(judge_file, "w") as f:
        json.dump(result, f, indent=2)

    # Output summary for bash
    print(json.dumps({
        "verdict": result.get("correct_verdict", "unknown"),
        "confidence": result.get("confidence", "unknown"),
        "re_audit": result.get("re_audit_recommended", False),
        "learnings_count": len(result.get("learnings", [])),
        "prompt_tokens": pt,
        "completion_tokens": ct,
    }))

except json.JSONDecodeError as e:
    err = {"error": f"Failed to parse judge response as JSON: {e}", "raw": content[:500]}
    with open(os.path.join(judge_dir, f"{pkg}.error.json"), "w") as f:
        json.dump(err, f, indent=2)
    print(json.dumps(err))
    sys.exit(1)
except Exception as e:
    print(json.dumps({"error": str(e)}))
    sys.exit(1)
PYEOF
    )

    if [[ -z "$verdict" ]]; then
        log "  ERROR: Empty response"
        return 1
    fi

    local v c ra lc pt ct
    read -r v c ra lc pt ct < <(echo "$verdict" | python3 -c "
import json,sys; d=json.load(sys.stdin)
print(d.get('verdict','error'), d.get('confidence','?'), d.get('re_audit',False), d.get('learnings_count',0), d.get('prompt_tokens',0), d.get('completion_tokens',0))
")

    log "  Verdict: $v (confidence: $c) | re-audit: $ra | learnings: $lc | tokens: ${pt}+${ct}"

    # Archive judge report to audit-reports branch
    if ! $NO_ARCHIVE; then
        local judge_file="$JUDGE_DIR/${pkg}.json"
        if [[ -f "$judge_file" ]]; then
            (
                flock -x 9
                archive_judge_report "$pkg" "$judge_file"
            ) 9>"$LOCK_FILE"
        fi
    fi

    # Re-audit if recommended and --re-audit flag is set
    if $RE_AUDIT && [[ "$ra" == "True" ]]; then
        do_reaudit "$pkg"
    fi
}

# --- Run re-audit and update judge report with results ---
do_reaudit() {
    local pkg="$1"
    local judge_file="$JUDGE_DIR/${pkg}.json"

    log "  Re-auditing $pkg with $AUDIT_MODEL..."
    local audit_model_slug="${AUDIT_MODEL//\//-}"
    local report_dir="${REPORTS_DIR}/${audit_model_slug}"
    mkdir -p "$report_dir"

    local latest_judge
    latest_judge=$(git show "${REPORTS_BRANCH}:${pkg}/" 2>/dev/null | grep 'judge\.json$' | sort | tail -1)

    local re_report="${report_dir}/aur-sleuth-report-${pkg}.txt"
    local rc=0
    AUDIT_FAILURE_FATAL=true AUR_SLEUTH_ASCII_ICONS=1 \
        OPENAI_MODEL="$AUDIT_MODEL" \
        AUR_SLEUTH_REPORT_DIR="$report_dir" \
        AUR_SLEUTH_TRIGGERED_BY="${pkg}/${latest_judge}" \
        timeout --kill-after=30s "$AUDIT_TIMEOUT" \
        ./aur-sleuth --output plain "$pkg" 2>&1 || rc=$?

    # 124 and 137 are timeout(1)'s exit codes; see pipeline.sh. The partial
    # report must not be archived or judged.
    if [[ $rc -eq 124 || $rc -eq 137 ]]; then
        rm -f "$re_report"
        log "  Re-audit of $pkg TIMED OUT after ${AUDIT_TIMEOUT}s, abandoning"
        return 0
    fi

    if [[ -f "$re_report" ]]; then
        local re_result
        re_result=$(fm "$re_report" result)
        log "  Re-audit result: $re_result"

        # Archive the audit report and capture the stored path
        local archive_output
        archive_output=$(flock -x 9 bash bench/archive-report.sh "$pkg" "$re_report") 9>"$LOCK_FILE"

        # Parse actual filename from archive output ("Stored: audit-reports:<pkg>/<filename>")
        local archived_path
        archived_path=$(echo "$archive_output" | grep -oP 'Stored: audit-reports:\K.*' || echo "")

        # Update judge report with re-audit metadata
        if [[ -f "$judge_file" ]]; then
            python3 -c "
import json, sys
f = '$judge_file'
data = json.load(open(f))
data['reaudit_date'] = '$(date -u +%Y-%m-%dT%H:%M:%SZ)'
data['reaudit_model'] = '$AUDIT_MODEL'
data['reaudit_result'] = '$re_result'
data['reaudit_report'] = '${archived_path}'
json.dump(data, open(f, 'w'), indent=2)
"
            # Re-archive updated judge report
            (
                flock -x 9 || { log "  WARNING: could not acquire lock"; true; }
                archive_judge_report "$pkg" "$judge_file"
            ) 9>"$LOCK_FILE"

            log "  Updated judge report with re-audit: $re_result"
        fi
    else
        log "  Re-audit produced no report"
    fi
}

# --- Find packages with pending re-audits ---
find_pending_reaudits() {
    find "$JUDGE_DIR" -name '*.json' ! -name '*.error.json' -print0 \
        | while IFS= read -r -d '' f; do
            python3 -c "
import json, sys
data = json.load(open('$f'))
if data.get('re_audit_recommended') and not data.get('reaudit_date'):
    print(data.get('package', ''))
" 2>/dev/null
        done | grep -v '^$'
}

# --- Main ---
main() {
    if [[ -z "${OPENAI_API_KEY:-}" ]]; then
        echo "Error: OPENAI_API_KEY not set" >&2
        exit 1
    fi

    # Handle --re-audit-pending mode: just run re-audits on flagged packages
    if $RE_AUDIT_PENDING; then
        local pending=()
        while IFS= read -r pkg; do
            pending+=("$pkg")
        done < <(find_pending_reaudits)

        if [[ ${#pending[@]} -eq 0 ]]; then
            log "No pending re-audits found."
            return 0
        fi

        log "Re-auditing ${#pending[@]} pending packages with $AUDIT_MODEL..."
        local completed=0
        for pkg in "${pending[@]}"; do
            do_reaudit "$pkg"
            completed=$((completed + 1))
        done
        log "=== Re-audit complete: $completed packages ==="
        return 0
    fi

    # --escalate: the operator's closer look at one package. A fresh audit by
    # the escalation model (--audit-model), then a forced judge ruling over
    # the enlarged report set -- so a package the judge already ruled on, and
    # would otherwise never revisit, gets settled on stronger evidence.
    if $ESCALATE; then
        [[ -n "$PACKAGE" ]] || { echo "--escalate needs --package" >&2; exit 1; }
        log "Escalating $PACKAGE: auditing with $AUDIT_MODEL, then judging with $JUDGE_MODEL"
        do_reaudit "$PACKAGE"
        FORCE=true
    fi

    local packages=()
    if [[ -n "$PACKAGE" ]]; then
        packages=("$PACKAGE")
    else
        while IFS= read -r pkg; do
            packages+=("$pkg")
        done < <(find_packages)
    fi

    log "Judge starting. Model: $JUDGE_MODEL, Candidates: ${#packages[@]}"

    local judged=0 skipped=0 done_before=0 flagged=0
    local judged_pkgs=()

    for pkg in "${packages[@]}"; do
        local trigger rc=0
        trigger=$(check_triggers "$pkg") || rc=$?
        if (( rc == 2 )); then
            # Judged already, on these very reports. Not even --all re-judges
            # it: that is what made every run with budget re-bill the corpus.
            done_before=$((done_before + 1))
            continue
        elif (( rc != 0 )); then
            if $ESCALATE; then
                trigger="escalation"
            elif $ALL; then
                trigger="routine-review"
            else
                skipped=$((skipped + 1))
                continue
            fi
        fi

        judge_package "$pkg" "$trigger" || {
            log "  ERROR: Failed to judge $pkg"
            continue
        }

        judged=$((judged + 1))
        judged_pkgs+=("$pkg")

        local judge_file="$JUDGE_DIR/${pkg}.json"
        if [[ -f "$judge_file" ]]; then
            local ra
            ra=$(python3 -c "import json; print(json.load(open('$judge_file')).get('re_audit_recommended',False))" 2>/dev/null || echo "False")
            [[ "$ra" == "True" ]] && flagged=$((flagged + 1))
        fi
    done

    log "=== Judge complete ==="
    log "Judged: $judged | Skipped (no trigger): $skipped | Already judged: $done_before | Flagged for re-audit: $flagged"
    log "Reports: $JUDGE_DIR/"

    # Print learnings only from packages judged this run
    if (( judged > 0 )); then
        log ""
        log "=== Aggregated Learnings ==="
        local pkgs_json
        pkgs_json=$(printf '%s\n' "${judged_pkgs[@]}" | python3 -c "import json,sys; print(json.dumps(sys.stdin.read().strip().split('\n')))")
        JUDGE_DIR="$JUDGE_DIR" JUDGED_PKGS="$pkgs_json" python3 << 'PYEOF'
import json, os
judge_dir = os.environ["JUDGE_DIR"]
judged_pkgs = set(json.loads(os.environ["JUDGED_PKGS"]))
learnings = []
for pkg in sorted(judged_pkgs):
    f = os.path.join(judge_dir, f"{pkg}.json")
    if not os.path.exists(f):
        continue
    try:
        data = json.load(open(f))
        for l in data.get("learnings", []):
            learnings.append(f"  [{pkg}] {l}")
    except Exception:
        pass
if learnings:
    print("\n".join(learnings))
else:
    print("  (none)")
PYEOF
    fi
}

main "$@"
