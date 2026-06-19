#!/usr/bin/env bash
# Judge audit reports: detect disagreements, shallow coverage, and quality issues.
# A high-intelligence "judge" model reviews reports and optionally triggers re-audits.
#
# Usage: judge.sh [--package PKG | --all] [--re-audit] [--judge-model MODEL] [--audit-model MODEL]
#
# Triggers (automatic):
#   - Result disagreement between models (safe vs unsafe)
#   - Shallow coverage (< 3 files reviewed)
#   - Error reports (unknown result, zero cost)
# With --all, also reviews packages where models agree (routine coverage check).
#
# Judge reports are written to /tmp/aur-sleuth/judge/<pkg>.json
set -euo pipefail

cd "$(dirname "$0")/.."

# --- Defaults ---
JUDGE_MODEL="anthropic/claude-opus-4.8"
AUDIT_MODEL="anthropic/claude-sonnet-4.6"
RE_AUDIT=false
REPORTS_DIR="/tmp/aur-sleuth/bulk-reports"
JUDGE_DIR="/tmp/aur-sleuth/judge"
PACKAGE=""
ALL=false
LOCK_FILE="/tmp/aur-sleuth/bulk-audit/archive.lock"

# --- Parse args ---
while [[ $# -gt 0 ]]; do
    case "$1" in
        --package) PACKAGE="$2"; shift 2 ;;
        --all) ALL=true; shift ;;
        --re-audit) RE_AUDIT=true; shift ;;
        --judge-model) JUDGE_MODEL="$2"; shift 2 ;;
        --audit-model) AUDIT_MODEL="$2"; shift 2 ;;
        --reports-dir) REPORTS_DIR="$2"; shift 2 ;;
        *) echo "Unknown arg: $1" >&2; exit 1 ;;
    esac
done

AUDIT_MODEL="${AUDIT_MODEL:-$JUDGE_MODEL}"

mkdir -p "$JUDGE_DIR"

log() { echo "[$(date '+%H:%M:%S')] $*"; }

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

# --- Check if a package needs judging, echo trigger reason ---
check_triggers() {
    local pkg="$1"
    local reports=()
    while IFS= read -r f; do
        reports+=("$f")
    done < <(collect_reports "$pkg")

    [[ ${#reports[@]} -ge 1 ]] || return 1

    # Disagreement: different result values across models
    local results=()
    for r in "${reports[@]}"; do
        local res
        res=$(fm "$r" result)
        [[ -n "$res" ]] && results+=("$res")
    done
    if (( ${#results[@]} >= 2 )); then
        local unique
        unique=$(printf '%s\n' "${results[@]}" | sort -u | wc -l)
        if (( unique > 1 )); then
            echo "disagreement ($(printf '%s\n' "${results[@]}" | sort -u | tr '\n' ' ' | sed 's/ $//'))"
            return 0
        fi
    fi

    # Shallow coverage
    for r in "${reports[@]}"; do
        local fr
        fr=$(fm "$r" files_reviewed)
        if [[ -n "$fr" ]] && (( fr < 3 )); then
            echo "shallow ($(fm "$r" model) reviewed $fr files)"
            return 0
        fi
    done

    # Error reports
    for r in "${reports[@]}"; do
        local res cost
        res=$(fm "$r" result)
        cost=$(fm "$r" cost)
        if [[ "$res" == "unknown" || "$res" == "skipped" || -z "$res" || "$cost" == "0" || -z "$cost" ]]; then
            echo "error ($(fm "$r" model): result=$res cost=$cost)"
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
    import requests
except ImportError:
    print(json.dumps({"error": "openai or requests package not installed"}))
    sys.exit(1)

# Fetch model pricing from OpenRouter
def get_model_cost(model, prompt_tokens, completion_tokens):
    try:
        resp = requests.get("https://openrouter.ai/api/v1/models", timeout=10)
        for m in resp.json().get("data", []):
            if m["id"] == model:
                pricing = m.get("pricing", {})
                p_cost = float(pricing.get("prompt", 0)) * prompt_tokens
                c_cost = float(pricing.get("completion", 0)) * completion_tokens
                return p_cost + c_cost
    except Exception:
        pass
    return None

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

    # Re-audit if recommended and --re-audit flag is set
    if $RE_AUDIT && [[ "$ra" == "True" ]]; then
        log "  Re-auditing $pkg with $AUDIT_MODEL..."
        local audit_model_slug="${AUDIT_MODEL//\//-}"
        local report_dir="${REPORTS_DIR}/${audit_model_slug}"
        mkdir -p "$report_dir"

        AUDIT_FAILURE_FATAL=true AUR_SLEUTH_ASCII_ICONS=1 \
            OPENAI_MODEL="$AUDIT_MODEL" \
            AUR_SLEUTH_REPORT_DIR="$report_dir" \
            ./aur-sleuth --output plain "$pkg" 2>&1 || true

        local re_report="${report_dir}/aur-sleuth-report-${pkg}.txt"
        if [[ -f "$re_report" ]]; then
            local re_result
            re_result=$(fm "$re_report" result)
            log "  Re-audit result: $re_result"

            # Archive with flock for safety
            (
                flock -x 200
                bash bench/archive-report.sh "$pkg" "$re_report"
            ) 200>"$LOCK_FILE"
        else
            log "  Re-audit produced no report"
        fi
    fi
}

# --- Main ---
main() {
    if [[ -z "${OPENAI_API_KEY:-}" ]]; then
        echo "Error: OPENAI_API_KEY not set" >&2
        exit 1
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

    local judged=0 skipped=0 flagged=0
    local judged_pkgs=()

    for pkg in "${packages[@]}"; do
        local trigger
        trigger=$(check_triggers "$pkg") || {
            if $ALL; then
                trigger="routine-review"
            else
                skipped=$((skipped + 1))
                continue
            fi
        }

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
    log "Judged: $judged | Skipped (no trigger): $skipped | Flagged for re-audit: $flagged"
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
