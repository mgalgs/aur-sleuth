#!/usr/bin/env bash
# Container entrypoint for the aur-sleuth pipeline. One stage per invocation:
#
#   prepare   Create or refresh the git object store on the persistent volume,
#             then prune old spend logs and stale source trees. Needs no secret.
#   audit     Run the full pipeline (audit, judge, re-audit, dashboard) without
#             pushing. Needs the LLM API key. THIS STAGE EXECUTES UNTRUSTED CODE:
#             `makepkg` sources arbitrary AUR PKGBUILDs.
#   review    Report whether the branch is publishable and what a sweep would
#             publish. Needs no credential and writes nothing; the exit status
#             is the answer. Optionally asks a model to read the reports that
#             reached an unclear verdict, which is advice for a person and
#             never a gate.
#   quarantine
#             Drop every unpublished report that names this deployment's own
#             infrastructure, which review reports as the reason it failed.
#             Rewrites only the unpushed commits, keeps a backup ref, and
#             needs the volume read-write. No credential.
#   publish   Push the reviewed commit of the audit-reports branch, and the
#             public page built from it to the site branch. Needs the git write
#             credential. Refuses to push a branch carrying anything but inert
#             report data. Writes nothing to the store, so it may run while an
#             audit stage is writing to it: it publishes the commit the review
#             saw, and whatever landed since waits for the next review.
#   bundle    Write the audit-reports branch to a git bundle instead of pushing
#             it. Needs no credential. Lets reports accumulate on the volume and
#             be reviewed elsewhere, so no write credential need exist here.
#   benchmark Re-audit a sample of settled packages with candidate models and
#             score them against the verdicts on the branch. Writes only under
#             $DATA_DIR/bench/, never to the branch. Needs the LLM route. THIS
#             STAGE EXECUTES UNTRUSTED CODE, exactly like audit: it runs
#             `makepkg` on real AUR packages, so it must run under the same
#             protections (egress gate, no credential, proxied LLM key).
#   screen    Run each unscreened candidate the scout lists against the
#             synthetic fixtures alone, cheapest first, until the budget is
#             gone: cents a model, and it is what makes the shortlist worth
#             reading. Same writes, same key, same protections as benchmark
#             (it runs `makepkg` on the fixtures).
#
# The split exists so the git write credential never shares a process, an
# environment, or a filesystem with a hostile PKGBUILD. See deploy/container/README.md.
set -euo pipefail

DATA_DIR="${AUR_SLEUTH_DATA_DIR:-/data}"
SRC_DIR="/opt/aur-sleuth"
GIT_STORE="$DATA_DIR/git"
REPORTS_BRANCH="audit-reports"
# Where the public page lives: the reviewed reports tree plus index.html and
# _dashboard/*, rebuilt by this image at every publish. A branch of its own,
# so audit-reports carries only what the audit stage wrote and origin's copy
# of it is always an ancestor of the store's -- nothing ever has to be rebased.
SITE_BRANCH="${AUR_SLEUTH_SITE_BRANCH:-site}"

FETCH_URL="${AUR_SLEUTH_FETCH_URL:-https://github.com/mgalgs/aur-sleuth.git}"
PUSH_URL="${AUR_SLEUTH_PUSH_URL:-}"
SSH_KEY="${AUR_SLEUTH_SSH_KEY:-/secrets/git/ssh-privatekey}"
KNOWN_HOSTS="${AUR_SLEUTH_KNOWN_HOSTS:-/etc/ssh/ssh_known_hosts}"
SPEND_LOG_RETENTION_DAYS="${AUR_SLEUTH_SPEND_LOG_RETENTION_DAYS:-30}"
PUBLISH_DRY_RUN="${AUR_SLEUTH_PUBLISH_DRY_RUN:-false}"
# The commit a review approved. When set, publish pushes exactly that commit,
# which is what makes a review and its publish one transaction rather than
# two events with a gap between them. The branch may have moved on since (an
# audit stage commits every report as it goes); those commits wait for the
# next review. Empty means unpinned: the stage publishes whatever the branch
# holds.
EXPECT_HEAD="${AUR_SLEUTH_EXPECT_HEAD:-}"
# The REVIEW_JSON object the review stage printed for the commit being
# published. Publish writes it to the branch as _dashboard/review.json, so the
# public page can say what was read before these reports went out. The review
# stage itself cannot keep it: it mounts the volume read-only and its Job log
# is gone in a day. Empty means no review to record, and the path is removed
# from the published tree rather than left to whatever the branch holds.
REVIEW_JSON_IN="${AUR_SLEUTH_REVIEW_JSON:-}"
# The AUR's own package dump, the file the pipeline discovers candidates from.
# The publish stage fetches it fresh to count the day's updates for the
# coverage line. Fresh, not the copy the audit stage cached on the volume: that
# copy was written by a container running hostile code, and a gzip is an easy
# place to plant a bomb for whoever parses it next.
AUR_METADATA_URL="https://aur.archlinux.org/packages-meta-v1.json.gz"

log() { echo "[$(date -u '+%H:%M:%S')] [$MODE] $*"; }
die() { echo "[$MODE] ERROR: $*" >&2; exit 1; }

# The object store is created by this image but lives on a shared volume, so its
# owner is not guaranteed to match the running UID. Declare it safe through the
# environment rather than a config file: the environment comes from the
# container runtime and cannot be rewritten by the untrusted stage.
export GIT_CONFIG_COUNT=1
export GIT_CONFIG_KEY_0=safe.directory
export GIT_CONFIG_VALUE_0='*'

# git commit-tree refuses to run without an identity.
export GIT_AUTHOR_NAME="${GIT_AUTHOR_NAME:-aur-sleuth}"
export GIT_AUTHOR_EMAIL="${GIT_AUTHOR_EMAIL:-aur-sleuth@invalid}"
export GIT_COMMITTER_NAME="${GIT_COMMITTER_NAME:-$GIT_AUTHOR_NAME}"
export GIT_COMMITTER_EMAIL="${GIT_COMMITTER_EMAIL:-$GIT_AUTHOR_EMAIL}"

# The image bakes a gitfile pointing at the default store location. Rewrite it
# from the live configuration so a non-default AUR_SLEUTH_DATA_DIR works too --
# every git command under $SRC_DIR resolves through this file.
printf 'gitdir: %s\n' "$GIT_STORE" > "$SRC_DIR/.git"

# --- the shared store ----------------------------------------------------------

# The previous run's audit stage could write anything into the store, and a
# repository's own config and hooks are executable input: url.*.insteadOf
# rewrites where `git fetch` connects, core.sshCommand and filter drivers are
# commands. Reset all of it to known-good before any trusted stage runs git
# in the store itself.
sanitize_store() {
    rm -rf "$GIT_STORE/hooks" "$GIT_STORE/objects/info/alternates"
    cat > "$GIT_STORE/config" <<EOF
[core]
	repositoryformatversion = 0
	bare = false
	logallrefupdates = true
[remote "origin"]
	url = $FETCH_URL
	fetch = +refs/heads/*:refs/remotes/origin/*
EOF
}

# --- internal strings ------------------------------------------------------------

# Strings that name this deployment's own infrastructure and must never be
# published: a cluster-internal hostname, a proxy's name. A report that carries
# one was written by a build that leaked it, and every such report is dropped
# before anything is pushed.
#
# Comma- or whitespace-separated. The default is the one every Kubernetes
# deployment shares; a site adds its own. Matching is fixed-string, so nothing
# here is a pattern.
INTERNAL_STRINGS="${AUR_SLEUTH_INTERNAL_STRINGS:-svc.cluster.local}"

# Every needle, one per line: the configured internal strings, then the
# built-in ones every deployment shares. Both built-ins are the raw form of
# an LLM API error -- openai's own str() -- whose body quotes provider
# chatter and the operator's account id back into the report. The first is
# the per-file audit's prefix; the second is the body's own opening, which
# matches whatever prefix wrote it (the top-level "An unexpected error
# occurred:" handler once did, and the first needle missed those). aur-sleuth
# sanitizes every one of these now, so a report that still carries one
# predates the sanitizer and must not be published. Built in rather than
# configured because, unlike a site's hostnames, they are never site-specific
# -- and they need the spaces the env var's word-splitting cannot carry.
internal_string_needles() {
    local needle
    for needle in ${INTERNAL_STRINGS//,/ }; do
        printf '%s\n' "$needle"
    done
    printf '%s\n' "Audit error: Error code:"
    printf '%s\n' "- {'error': {'message':"
}

# Print every path at REF in REPO whose content contains an internal string,
# one per line, sorted and unique. Prints nothing when there are none.
internal_string_paths() {
    local repo="$1" ref="$2" needle
    while IFS= read -r needle; do
        git --git-dir="$repo" grep -l -F -e "$needle" "$ref" -- 2>/dev/null || true
    done < <(internal_string_needles) | sed "s/^[^:]*://" | sort -u
}

# The same, for the working copies the pipeline keeps on the volume.
internal_string_working_files() {
    local needle
    while IFS= read -r needle; do
        grep -l -F -e "$needle" "$DATA_DIR"/bulk-reports/*/aur-sleuth-report-*.txt 2>/dev/null || true
    done < <(internal_string_needles) | sort -u
}

# --- prepare ------------------------------------------------------------------

do_prepare() {
    mkdir -p "$DATA_DIR/pipeline" "$DATA_DIR/bulk-reports" \
             "$DATA_DIR/judge" "$DATA_DIR/bulk-audit"

    if [[ ! -d "$GIT_STORE" ]]; then
        log "No object store at $GIT_STORE; cloning $FETCH_URL"
        local seed
        seed="$(mktemp -d)"
        git clone --quiet --no-checkout "$FETCH_URL" "$seed/clone"
        mv "$seed/clone/.git" "$GIT_STORE"
        rm -rf "$seed"
        log "Cloned $(du -sh "$GIT_STORE" | cut -f1) into $GIT_STORE"
    fi

    sanitize_store

    cd "$SRC_DIR"
    log "Fetching $FETCH_URL"
    git fetch --quiet --prune origin

    # Reconcile the local reports branch with the remote WITHOUT ever discarding
    # local commits. A previous run whose publish stage failed leaves unpushed
    # reports here; a force-fetch would throw them away silently.
    local local_ref="refs/heads/$REPORTS_BRANCH"
    local remote_ref="refs/remotes/origin/$REPORTS_BRANCH"
    if ! git rev-parse --verify --quiet "$remote_ref" >/dev/null; then
        log "WARNING: origin has no $REPORTS_BRANCH branch"
    elif ! git rev-parse --verify --quiet "$local_ref" >/dev/null; then
        # A fresh store has no local branch. archive-report.sh falls back to the
        # origin/ ref, but bench/pipeline.sh and bench/generate-dashboard.py both
        # resolve the bare name, which never matches a remote-tracking ref -- the
        # audit would re-audit everything and the dashboard would abort.
        git update-ref "$local_ref" "$remote_ref"
        log "Created local $REPORTS_BRANCH at $(git rev-parse --short "$local_ref")"
    elif git merge-base --is-ancestor "$local_ref" "$remote_ref"; then
        git update-ref "$local_ref" "$remote_ref"
        log "Fast-forwarded $REPORTS_BRANCH to $(git rev-parse --short "$local_ref")"
    else
        log "Local $REPORTS_BRANCH has commits origin does not; keeping it"
    fi

    # Report the exact source revision that produced each audit. The image is
    # built from a checkout, so the revision is baked in rather than derived.
    # Both failure modes get a loud warning: silence here means every archived
    # report records a plausible-but-wrong revision.
    if [[ -z "${AUR_SLEUTH_REV:-}" ]]; then
        log "WARNING: AUR_SLEUTH_REV is empty (image built without --build-arg?);" \
            "reports will record whatever revision the clone left at HEAD"
    elif ! git cat-file -e "${AUR_SLEUTH_REV}^{commit}" 2>/dev/null; then
        log "WARNING: AUR_SLEUTH_REV $AUR_SLEUTH_REV is not in the store" \
            "(image built from an unpushed commit?); reports will record the wrong revision"
    else
        git update-ref --no-deref HEAD "$AUR_SLEUTH_REV"
        log "HEAD pinned to $AUR_SLEUTH_REV"
    fi

    # Nothing else prunes the spend ledger, and it grows one file per day.
    local pruned
    pruned="$(find "$DATA_DIR/pipeline" -maxdepth 1 -type f \
        \( -name 'spend-*.log' -o -name 'spend-*.log.lock' \) \
        -mtime "+$SPEND_LOG_RETENTION_DAYS" -print -delete | wc -l)"
    (( pruned > 0 )) && log "Pruned $pruned spend log(s) older than ${SPEND_LOG_RETENTION_DAYS}d"

    # An audit that dies mid-run leaves its extracted package sources behind.
    # Anything older than two hours cannot belong to a live run: runs do not
    # overlap, and each one is capped well below that.
    local stale
    stale="$(find "$DATA_DIR/bulk-reports" -mindepth 2 -maxdepth 2 -type d \
        -name 'aur-sleuth-*' -mmin +120 -print -exec rm -rf {} + | wc -l)"
    (( stale > 0 )) && log "Removed $stale stale source tree(s)"

    log "Ready. Today's spend so far: \$$(spent_today)"
}

spent_today() {
    local f
    f="$DATA_DIR/pipeline/spend-$(date +%Y-%m-%d).log"
    [[ -f "$f" ]] || { echo "0.000000"; return; }
    awk '{s+=$1} END {printf "%.6f", s+0}' "$f"
}

# --- audit --------------------------------------------------------------------

# Settings may also arrive in the environment, which is how a deployment changes
# a budget or a model without a redeploy: the baseline stays in the job's
# arguments, where git can hold it, and a projected ConfigMap overrides
# individual values at runtime.
#
# These flags are appended after the caller's own arguments. bench/pipeline.sh
# takes the last occurrence of a flag, so the environment wins over the baseline.
#
# Every variable maps to exactly one flag and is checked against a type. Being
# strict matters more than it looks: bench/pipeline.sh interpolates the budget
# straight into a `python3 -c` string, so a value that is not a number is code.
# An explicit table also means a new variable cannot quietly become a new
# pipeline argument.
AUDIT_ENV_FLAGS=()

collect_audit_env_flags() {
    local specs=(
        "AUR_SLEUTH_MIN_VOTES:--min-votes:int"
        "AUR_SLEUTH_DAILY_BUDGET:--daily-budget:num"
        "AUR_SLEUTH_RUNS_PER_DAY:--runs-per-day:posint"
        "AUR_SLEUTH_ESCALATIONS_PER_RUN:--escalations-per-run:int"
        "AUR_SLEUTH_LOOKBACK_HOURS:--lookback-hours:int"
        "AUR_SLEUTH_SEED_TOP:--seed-top:int"
        "AUR_SLEUTH_UPDATED_SHARE:--updated-share:share"
        "AUR_SLEUTH_JOBS:--jobs:int"
        "AUR_SLEUTH_AUDIT_TIMEOUT:--audit-timeout:posint"
        "AUR_SLEUTH_AUDIT_MODELS:--audit-models:models"
        "AUR_SLEUTH_JUDGE_MODEL:--judge-model:model"
        "AUR_SLEUTH_REAUDIT_MODEL:--reaudit-model:model"
        "AUR_SLEUTH_TIEBREAK_MODEL:--tiebreak-model:model"
        "AUR_SLEUTH_FINAL_AUDIT_MODEL:--final-audit-model:model"
        "AUR_SLEUTH_FINAL_JUDGE_MODEL:--final-judge-model:model"
        "AUR_SLEUTH_MODEL_ALIASES:--model-aliases:aliases"
        "AUR_SLEUTH_UPDATED_COUNT:--updated-count:int"
        "AUR_SLEUTH_SEED_COUNT:--seed-count:int"
        "AUR_SLEUTH_PACKAGES:--packages:packages"
        "AUR_SLEUTH_ESCALATE:--escalate:packages"
        "AUR_SLEUTH_ESCALATE_PENDING:--escalate-pending:bool"
        "AUR_SLEUTH_RUN_BUDGET:--run-budget:posnum"
        "AUR_SLEUTH_FREE_MODELS:--free-models:models"
        "AUR_SLEUTH_FREE_TIMEOUT:--free-timeout:posint"
        "AUR_SLEUTH_ADVISORY:--advisory:bool"
        "AUR_SLEUTH_ADVISORY_SWEEP:--advisory-sweep:int"
        "AUR_SLEUTH_ADVISORY_MODELS:--advisory-models:models"
    )
    local spec var flag kind value rest

    for spec in "${specs[@]}"; do
        var="${spec%%:*}"
        rest="${spec#*:}"
        flag="${rest%%:*}"
        kind="${rest#*:}"
        value="${!var:-}"
        [[ -n "$value" ]] || continue

        case "$kind" in
            int)
                [[ "$value" =~ ^[0-9]+$ ]] \
                    || die "$var must be a whole number, got '$value'" ;;
            posint)
                # `timeout 0` means no limit -- the opposite of what the
                # setting is for -- so zero is refused here, not passed on.
                [[ "$value" =~ ^0*[1-9][0-9]*$ ]] \
                    || die "$var must be a whole number of at least 1, got '$value'" ;;
            num)
                [[ "$value" =~ ^[0-9]+(\.[0-9]+)?$ ]] \
                    || die "$var must be a number, got '$value'" ;;
            share)
                # A fraction 0..1. Range-checked here so a bad UI value is refused
                # at the boundary, not after the pipeline has already started.
                [[ "$value" =~ ^(0(\.[0-9]+)?|1(\.0+)?)$ ]] \
                    || die "$var must be between 0 and 1, got '$value'" ;;
            model)
                [[ "$value" =~ ^(@[A-Za-z][A-Za-z0-9_-]{0,39}|[A-Za-z0-9._/:-]+)$ ]] \
                    || die "$var is not a model name, got '$value'" ;;
            models)
                [[ "$value" =~ ^(@[A-Za-z][A-Za-z0-9_-]{0,39}|[A-Za-z0-9._/:-]+)(,(@[A-Za-z][A-Za-z0-9_-]{0,39}|[A-Za-z0-9._/:-]+))*$ ]] \
                    || die "$var is not a comma-separated model list, got '$value'" ;;
            aliases)
                [[ "$value" =~ ^[A-Za-z][A-Za-z0-9_-]{0,39}=[A-Za-z0-9._/:-]+(\;[A-Za-z][A-Za-z0-9_-]{0,39}=[A-Za-z0-9._/:-]+)*$ ]] \
                    || die "$var is not a model alias mapping, got '$value'" ;;
            packages)
                # The AUR's package-name charset; a name may not start with a
                # hyphen, or it reads as a flag downstream.
                [[ "$value" =~ ^[A-Za-z0-9@._+][A-Za-z0-9@._+-]*(,[A-Za-z0-9@._+][A-Za-z0-9@._+-]*)*$ ]] \
                    || die "$var is not a comma-separated package list, got '$value'" ;;
            bool)
                [[ "$value" =~ ^(true|false)$ ]] \
                    || die "$var must be true or false, got '$value'" ;;
            posnum)
                # A positive number: zero would gate the run shut.
                [[ "$value" =~ ^(0*[1-9][0-9]*(\.[0-9]+)?|0*\.[0-9]*[1-9][0-9]*)$ ]] \
                    || die "$var must be a positive number, got '$value'" ;;
        esac

        AUDIT_ENV_FLAGS+=("$flag" "$value")
        log "from the environment: $flag $value"
    done
}

do_audit() {
    [[ -n "${OPENAI_API_KEY:-}" ]] || die "OPENAI_API_KEY is not set"
    [[ -d "$GIT_STORE" ]] || die "$GIT_STORE missing; run the prepare stage first"
    cd "$SRC_DIR"
    # A copy of OpenRouter's model catalog, for the page's model pickers. The
    # UI pods have no internet egress on purpose, so the audit stage -- which
    # already reaches this host for pricing -- leaves the list on the volume.
    # Best-effort: a failed fetch costs the picker its autocomplete, nothing
    # else, and the stale copy stays.
    if curl -sSfL --connect-timeout 10 --max-time 60 --max-filesize 33554432 \
            "https://openrouter.ai/api/v1/models" -o "$DATA_DIR/models-catalog.json.tmp" 2>/dev/null; then
        mv "$DATA_DIR/models-catalog.json.tmp" "$DATA_DIR/models-catalog.json"
        log "Model catalog: $(stat -c%s "$DATA_DIR/models-catalog.json") bytes"
    else
        rm -f "$DATA_DIR/models-catalog.json.tmp"
        log "WARNING: could not refresh the model catalog; the page keeps the old copy"
    fi
    collect_audit_env_flags
    log "Starting pipeline: $*"
    exec bash bench/pipeline.sh --no-push "$@" \
        ${AUDIT_ENV_FLAGS[@]+"${AUDIT_ENV_FLAGS[@]}"}
}

# --- benchmark ----------------------------------------------------------------

# Candidate models against the settled verdicts: the synthetic fixtures, then
# a sample of real packages, scored by bench/benchmark-report.py. Every knob
# arrives as AUR_SLEUTH_BENCH_* and is checked here, at the boundary, before
# anything is spent. The models list is the one value with no default: a
# benchmark of nothing is a mistake, not a run.
do_benchmark() {
    [[ -n "${OPENAI_API_KEY:-}" ]] || die "OPENAI_API_KEY is not set"
    [[ -d "$GIT_STORE" ]] || die "$GIT_STORE missing; run the prepare stage first"
    cd "$SRC_DIR"

    local models="${AUR_SLEUTH_BENCH_MODELS:-}"
    [[ -n "$models" ]] || die "AUR_SLEUTH_BENCH_MODELS is not set"
    [[ "$models" =~ ^[A-Za-z0-9._/:-]+(,[A-Za-z0-9._/:-]+)*$ ]] \
        || die "AUR_SLEUTH_BENCH_MODELS is not a comma-separated model list, got '$models'"

    local flags=(--models "$models")
    local spec var flag kind value rest
    local specs=(
        "AUR_SLEUTH_BENCH_SAMPLE:--sample:int"
        "AUR_SLEUTH_BENCH_BUDGET:--budget:num"
        "AUR_SLEUTH_BENCH_JOBS:--jobs:int"
        "AUR_SLEUTH_BENCH_RUN_ID:--run-id:id"
        "AUR_SLEUTH_BENCH_PACKAGES:--packages:packages"
        "AUR_SLEUTH_BENCH_ROLE:--role:role"
        "AUR_SLEUTH_BENCH_TARGET:--target:word"
        "AUR_SLEUTH_AUDIT_TIMEOUT:--audit-timeout:posint"
    )
    for spec in "${specs[@]}"; do
        var="${spec%%:*}"
        rest="${spec#*:}"
        flag="${rest%%:*}"
        kind="${rest#*:}"
        value="${!var:-}"
        [[ -n "$value" ]] || continue
        case "$kind" in
            int) [[ "$value" =~ ^[0-9]+$ ]] || die "$var must be a whole number, got '$value'" ;;
            posint) [[ "$value" =~ ^0*[1-9][0-9]*$ ]] || die "$var must be a whole number of at least 1, got '$value'" ;;
            num) [[ "$value" =~ ^[0-9]+(\.[0-9]+)?$ ]] || die "$var must be a number, got '$value'" ;;
            id)  [[ "$value" =~ ^[A-Za-z0-9._-]+$ ]] || die "$var is not a run id, got '$value'" ;;
            role) [[ "$value" =~ ^(audit|judge)$ ]] || die "$var must be audit or judge, got '$value'" ;;
            word) [[ "$value" =~ ^[a-z-]+$ ]] || die "$var must be a short lowercase word, got '$value'" ;;
            packages)
                # AUR package names: lowercase letters, digits, @ . _ + -
                [[ "$value" =~ ^[a-z0-9@._+-]+(,[a-z0-9@._+-]+)*$ ]] \
                    || die "$var is not a comma-separated package list, got '$value'" ;;
        esac
        flags+=("$flag" "$value")
        log "from the environment: $flag $value"
    done
    case "${AUR_SLEUTH_BENCH_SYNTHETICS:-true}" in
        true|1|yes) ;;
        false|0|no) flags+=(--no-synthetics) ;;
        *) die "AUR_SLEUTH_BENCH_SYNTHETICS must be true or false" ;;
    esac

    log "Starting benchmark: ${flags[*]}"
    exec bash bench/benchmark.sh "${flags[@]}"
}

# --- screen -------------------------------------------------------------------

# The cheap filter in front of the benchmark: run each unscreened candidate
# against the synthetic fixtures alone and record whether it cleared them.
# Three benign fixtures that must exit 0 and four malicious ones that must
# exit 1, for a few cents a model instead of a few dollars, and behavioural
# rather than reputational -- it does not care whether a model is quantized,
# distilled, MoE or from a lab nobody has heard of, only whether it clears the
# benign ones and catches the malicious ones. It also rejects both degenerate
# answers: "everything is safe" misses all four malicious fixtures, and
# "everything is unsafe" fails all three benign ones.
#
# Who to screen is the scout's answer, from the same structural filters the
# shortlist uses (bench/scout.py screen-list) -- one implementation, so the
# stage that spends the money has no second opinion about what is screenable.
# This stage only spends it, cheapest first, which is simply the order that
# screens the most models per dollar.
#
# The budget binds BETWEEN models, not inside one: a model's seven fixtures
# are the indivisible unit of spend, so the stage refuses to start a model it
# cannot afford (priced from the catalog at SCREEN_TOKENS_PER_MODEL) rather
# than truncating one halfway. Cheapest first means the first model it cannot
# afford is also the last, so it stops there.
#
# It runs makepkg on the fixtures, so it carries every protection audit and
# benchmark do.
SCREEN_TOKENS_PER_MODEL=200000

# What one screening run spent: the fixtures are the whole cost, but read the
# audit rows too so the number stays right if a screen ever carries packages.
screen_run_cost() {
    python3 - "$1" <<'PY'
import json, sys
try:
    with open(sys.argv[1], encoding="utf-8") as f:
        result = json.load(f)
except (OSError, ValueError):
    print("0.000000")
    raise SystemExit(0)
total = 0.0
for m in result.get("models") or []:
    total += float(m.get("cost") or 0)
    total += float((m.get("synthetics") or {}).get("cost") or 0)
print(f"{total:.6f}")
PY
}

# One line saying what the fixtures said, and the failures by name: a model
# that misses a malicious fixture and one that flags a benign one are
# different problems, and the log is where a person sees which.
screen_verdict() {
    python3 - "$1" "$2" <<'PY'
import json, sys
try:
    with open(sys.argv[1], encoding="utf-8") as f:
        result = json.load(f)
except (OSError, ValueError):
    print("no result")
    raise SystemExit(0)
for m in result.get("models") or []:
    if m.get("model") != sys.argv[2]:
        continue
    synth = m.get("synthetics") or {}
    ran, passed = int(synth.get("run") or 0), int(synth.get("passed") or 0)
    if not ran:
        print("no fixtures ran")
        raise SystemExit(0)
    failed = [f.get("fixture", "?") for f in synth.get("fixtures") or [] if not f.get("pass")]
    verdict = "PASSED" if synth.get("all_pass") else "REJECTED"
    print(f"{verdict} {passed}/{ran}" + (f" (failed: {', '.join(failed)})" if failed else ""))
    raise SystemExit(0)
print("not in the result")
PY
}

do_screen() {
    [[ -n "${OPENAI_API_KEY:-}" ]] || die "OPENAI_API_KEY is not set"
    [[ -d "$GIT_STORE" ]] || die "$GIT_STORE missing; run the prepare stage first"
    cd "$SRC_DIR"

    # Environment for the scheduled path, flags for a person at a shell. The
    # budget has no default on either: a screening run with no ceiling could
    # spend a month's audits in an afternoon.
    local budget="${AUR_SLEUTH_SCREEN_BUDGET:-}"
    local since_days="${AUR_SLEUTH_SCREEN_SINCE_DAYS:-45}"
    local max_price="${AUR_SLEUTH_SCREEN_MAX_PRICE:-2.00}"
    local limit="${AUR_SLEUTH_SCREEN_LIMIT:-0}"
    local seats="${AUR_SLEUTH_SCREEN_SEATS:-}"
    while [[ $# -gt 0 ]]; do
        case "$1" in
            --budget) budget="$2"; shift 2 ;;
            --since-days) since_days="$2"; shift 2 ;;
            --max-price-per-mtok) max_price="$2"; shift 2 ;;
            --limit) limit="$2"; shift 2 ;;
            --seats) seats="$2"; shift 2 ;;
            *) die "unknown screen option '$1'" \
                   "(want --budget, --since-days, --max-price-per-mtok, --limit or --seats)" ;;
        esac
    done

    [[ -n "$budget" ]] || die "no budget: set AUR_SLEUTH_SCREEN_BUDGET or pass --budget USD"
    [[ "$budget" =~ ^[0-9]+(\.[0-9]+)?$ ]] || die "the budget must be a number, got '$budget'"
    [[ "$since_days" =~ ^[0-9]+$ ]] || die "--since-days must be a whole number, got '$since_days'"
    [[ "$max_price" =~ ^[0-9]+(\.[0-9]+)?$ ]] || die "--max-price-per-mtok must be a number, got '$max_price'"
    [[ "$limit" =~ ^[0-9]+$ ]] || die "--limit must be a whole number, got '$limit'"

    local catalog="$DATA_DIR/models-catalog.json"
    local scout_json="$DATA_DIR/bench/scout.json"
    [[ -f "$catalog" ]] || die "$catalog is missing; the audit stage caches it, so run one first"

    # What "undercuts a seat" means, from whichever copy of the seats exists.
    # The pipeline's model settings live in a ConfigMap this stage does not
    # read; the last scout run wrote them into its own output.
    local seat_flags=()
    if [[ -n "$seats" ]]; then
        seat_flags=(--seats "$seats")
    elif [[ -f "$scout_json" ]]; then
        seat_flags=(--seats-from "$scout_json")
    else
        die "no seats: set AUR_SLEUTH_SCREEN_SEATS, or run a pipeline so the scout writes $scout_json"
    fi

    mkdir -p "$DATA_DIR/bench"
    local list="$DATA_DIR/bench/screen-candidates.jsonl"
    python3 bench/scout.py screen-list --catalog "$catalog" \
        --bench-dir "$DATA_DIR/bench" "${seat_flags[@]}" \
        --since-days "$since_days" --max-price-per-mtok "$max_price" \
        --limit "$limit" > "$list" || die "the scout could not list candidates"

    local total
    total="$(wc -l < "$list")"
    log "$total candidate(s) unscreened at \$$max_price/Mtok or less, created in the last $since_days day(s); budget \$$budget"
    if (( total == 0 )); then
        log "Nothing to screen"
        return 0
    fi

    local stamp spent="0" n=0 screened=0 passed=0 blanks=0
    stamp="$(date -u +%Y%m%d-%H%M%S)"

    local line model price estimate remaining run_id result rc
    while IFS= read -r line; do
        [[ -n "$line" ]] || continue
        model="$(printf '%s' "$line" | python3 -c 'import json,sys; print(json.load(sys.stdin)["id"])')"
        price="$(printf '%s' "$line" | python3 -c 'import json,sys; print(json.load(sys.stdin)["blended_per_mtok"])')"
        remaining="$(python3 -c "print(f'{max(0.0, $budget - $spent):.4f}')")"
        estimate="$(python3 -c "print(f'{$price * $SCREEN_TOKENS_PER_MODEL / 1e6:.4f}')")"
        if python3 -c "import sys; sys.exit(0 if $estimate > $remaining else 1)"; then
            log "\$$remaining left, and the next model ($model) needs about \$$estimate; stopping with $(( total - n )) candidate(s) unscreened"
            break
        fi
        n=$(( n + 1 ))
        run_id="screen-$stamp-$(printf '%03d' "$n")"
        log "[$n/$total] screening $model (\$$price/Mtok, about \$$estimate); \$$remaining of \$$budget left"

        rc=0
        bash bench/benchmark.sh --models "$model" --sample 0 --target screen \
            --budget "$remaining" --run-id "$run_id" \
            ${AUR_SLEUTH_AUDIT_TIMEOUT:+--audit-timeout "$AUR_SLEUTH_AUDIT_TIMEOUT"} \
            || rc=$?

        result="$DATA_DIR/bench/$run_id/result.json"
        if [[ -f "$result" ]]; then
            local cost verdict
            cost="$(screen_run_cost "$result")"
            spent="$(python3 -c "print(f'{$spent + $cost:.6f}')")"
            verdict="$(screen_verdict "$result" "$model")"
            log "[$n/$total] $model: $verdict (\$$cost; \$$spent of \$$budget spent)"
            screened=$(( screened + 1 ))
            [[ "$verdict" == PASSED* ]] && passed=$(( passed + 1 ))
            blanks=0
        else
            # No result at all is not a rejection: the model was never asked.
            # One is a bad provider; three in a row is this stage being
            # broken, and grinding through the list would only prove it again.
            blanks=$(( blanks + 1 ))
            log "WARNING: $model produced no result (benchmark exit $rc); not screened"
            (( blanks < 3 )) || die "three candidates in a row produced no result; stopping"
        fi
    done < "$list"

    log "Screened $screened model(s) for \$$spent: $passed passed, $(( screened - passed )) rejected"

    # Refresh the card now rather than at the next pipeline run, so the page
    # shows what this just cost money to learn. Code only, and its failure
    # costs the page nothing but freshness.
    if [[ -f "$scout_json" ]]; then
        python3 bench/scout.py --catalog "$catalog" --out "$scout_json" \
            --bench-dir "$DATA_DIR/bench" --data-dir "$DATA_DIR" \
            --seats-from "$scout_json" --max-price-per-mtok "$max_price" \
            || log "WARNING: the scout failed; the page keeps the old shortlist"
    fi
}

# --- reading the shared store safely ------------------------------------------

# Build a throwaway bare repository that can see the shared store's objects, and
# echo its path.
#
# Never run git inside the shared store itself: the untrusted stage can write to
# it, and a repository's own config and hooks are executable input
# (core.sshCommand, core.fsmonitor, pre-push, filter drivers). This borrows the
# objects read-only through alternates and copies the refs across as the plain
# text they are, so every git command afterwards runs under configuration this
# image wrote.
stage_reports_repo() {
    local repo
    repo="$(mktemp -d)/reports.git"
    git init --bare --quiet "$repo"
    printf '%s\n' "$GIT_STORE/objects" > "$repo/objects/info/alternates"
    cp -f "$GIT_STORE/packed-refs" "$repo/packed-refs" 2>/dev/null || true
    mkdir -p "$repo/refs/heads"
    cp -f "$GIT_STORE/refs/heads/$REPORTS_BRANCH" \
          "$repo/refs/heads/$REPORTS_BRANCH" 2>/dev/null || true
    # The remote-tracking ref too: it records what origin already has, which is
    # what lets the bundle stage ship only the unpublished commits.
    mkdir -p "$repo/refs/remotes/origin"
    cp -f "$GIT_STORE/refs/remotes/origin/$REPORTS_BRANCH" \
          "$repo/refs/remotes/origin/$REPORTS_BRANCH" 2>/dev/null || true
    printf '%s\n' "$repo"
}

# --- the publish gate ---------------------------------------------------------

# The reports branch may hold only inert data: per-package audit reports and
# judge reports, and the dashboard's JSON. None of that executes in a browser.
#
# This is a security boundary, not tidiness. The audit stage runs hostile
# PKGBUILDs, and it can write arbitrary commits to the very branch this stage
# pushes to a public site. Without a check, a package could plant a page and
# have it served under the publisher's own domain.
#
# The rule is decided here in code because it is decidable from the path alone.
# The alternative -- a human reading the diff before every sweep -- does not
# survive contact with a few hundred reports: a new .html among them is exactly
# what a reader skims past.
publish_path_allowed() {
    local p="$1" pkg rest

    case "$p" in
        # The page. On the site branch these are this image's own copy,
        # written by rewrite_dashboard_html. On the reports branch they are
        # whatever the audit stage's dashboard phase committed -- and that
        # branch is not what GitHub Pages serves, so a planted page there is
        # text in a repository, not a page under the publisher's domain.
        index.html|.nojekyll)
            return 0 ;;
        # The dashboard's own JSON. It is inert data, never executed by the
        # browser: the rebuilt, trusted index.html fetches it and renders every
        # value through escapeHtml/escapeAttr. A hostile audit stage that
        # rewrote it can plant misleading numbers but not executable content --
        # the same trust boundary the report bodies already sit behind. That
        # escaping in bench/generate-dashboard.py is what makes allowing these
        # verbatim safe; do not allow them here without it.
        _dashboard/data.json)
            return 0 ;;
        # What the review read before publishing. Rewritten from the publish
        # stage's own input below, like index.html, so the branch's copy is
        # never what goes out.
        _dashboard/review.json)
            return 0 ;;
        _dashboard/pkg/*)
            rest="${p#_dashboard/pkg/}"
            if [[ "$rest" == */* || "$rest" == .* || "$rest" != *.json ]]; then
                return 1
            fi
            return 0 ;;
        _dashboard*)
            return 1 ;;
    esac

    # Everything else is a report, and a report is exactly <package>/<file>,
    # where the file is markdown or JSON.
    if [[ "$p" != */* ]]; then
        return 1
    fi
    pkg="${p%%/*}"
    rest="${p#*/}"
    if [[ -z "$pkg" || "$rest" == */* ]]; then
        return 1
    fi
    # A leading dot would be a dotfile or a traversal attempt, in a position
    # where neither has any business.
    if [[ "$pkg" == .* || "$rest" == .* ]]; then
        return 1
    fi
    if [[ "$rest" != *.md && "$rest" != *.json ]]; then
        return 1
    fi
    return 0
}

# Refuse the whole push if any path on the branch is not inert report data.
# Fail closed: publishing part of a branch is not a safe half-measure, because
# the offending file would simply go out in the next sweep.
validate_reports_tree() {
    local repo="$1" ref="$2"
    local path bad=0 total=0

    while IFS= read -r -d '' path; do
        total=$(( total + 1 ))
        if ! publish_path_allowed "$path"; then
            bad=$(( bad + 1 ))
            if (( bad <= 20 )); then
                log "  disallowed: $path"
            fi
        fi
    done < <(git --git-dir="$repo" ls-tree -r -z --name-only "$ref")

    if (( bad > 0 )); then
        if (( bad > 20 )); then
            log "  ... and $(( bad - 20 )) more"
        fi
        log "Gate: $bad of $total path(s) on $ref are not inert report data"
        return 1
    fi

    log "Gate: $total path(s) checked, all inert report data"
    return 0
}

# The record of the review, as the public page will read it: the fields a
# reader needs and nothing else, with every list capped. Reads REVIEW_JSON_IN
# and prints one JSON object, or nothing (and fails) when the input is not the
# object the review stage prints. Stdout is the result, so no logging here.
review_record() {
    local head="$1"
    AUR_SLEUTH_REVIEW_JSON="$REVIEW_JSON_IN" REVIEW_HEAD="$head" python3 - <<'PY'
import datetime, json, os, sys

try:
    src = json.loads(os.environ["AUR_SLEUTH_REVIEW_JSON"])
except (KeyError, ValueError) as exc:
    sys.exit(f"AUR_SLEUTH_REVIEW_JSON is not a JSON object: {exc}")
if not isinstance(src, dict):
    sys.exit("AUR_SLEUTH_REVIEW_JSON is not a JSON object")

llm = src.get("llm") if isinstance(src.get("llm"), dict) else {}
# The model's notes stay out of the public record on purpose. Its one job is
# to spot a leaked private detail of the operator, and a leak it found is a
# reason not to publish, never something to list on the published page. What
# goes out is provenance: that the read happened, and how much it covered.

def num(v):
    return v if isinstance(v, (int, float)) and not isinstance(v, bool) else 0

# No closing brace in column 0 anywhere in this script: the test harness
# lifts this function out of the file with sed, up to the first such line.
out = dict(
    head=os.environ["REVIEW_HEAD"],
    published_at=datetime.datetime.now(datetime.timezone.utc).strftime("%Y-%m-%dT%H:%M:%SZ"),
    pending=num(src.get("pending")),
    packages=num(src.get("packages")),
    audit_reports=num(src.get("audit_reports")),
    judge_reports=num(src.get("judge_reports")),
    flagged=num(src.get("flagged")),
    llm=dict(
        status=str(llm.get("status", "skipped"))[:40],
        model=str(llm.get("model", ""))[:100],
        read=num(llm.get("read")),
        of=num(llm.get("of")),
        dismissed=num(llm.get("dismissed")),
        concerns=num(len(llm.get("concerns") or [])),
    ),
)
json.dump(out, sys.stdout, separators=(",", ":"), sort_keys=True)
PY
}

# Replace everything the page is made of with this image's own build of it:
# index.html and .nojekyll from the image, the JSON under _dashboard/ built
# from the branch by this image's generator, and _dashboard/review.json from
# the record of the review that approved this publish (or dropped, when there
# was none).
#
# The audit stage writes the page and its data too, and that stage runs
# hostile code, so nothing it left on the branch is trustworthy. Rewriting
# beats comparing: a page left by an older image would fail a comparison
# while being perfectly benign, and a gate that blocks correct work is a gate
# that gets turned off. Building the data here also means the published page
# always matches the branch as published: no separate rebuild step, no stale
# data.json from a run that stopped before its dashboard phase.
#
# The third argument is the AUR metadata dump for the coverage line, or empty
# when the fetch failed; the line's other inputs are gathered here. Each is
# optional, and the line is left off the page rather than shown half-empty.
#
# The fourth is the site branch's previous head on origin, or empty on the
# first publish. The page commit is made on top of it, so the push is a
# fast-forward; the site branch's history is one commit per publish, and the
# reports branch never carries a page commit at all.
#
# Writes only to the throwaway repository, and prints the resulting commit --
# so it must never log to stdout.
rewrite_dashboard_html() {
    local repo="$1" head="$2" aur_metadata="${3:-}" parent="${4:-}"
    local html idx blob_html blob_empty tree commit built path blob
    local -a coverage=() parent_args=()

    [[ -n "$aur_metadata" ]] && coverage+=(--aur-metadata "$aur_metadata")
    # The budget the last run resolved to. Written by the audit stage, so the
    # generator reads one field out of it as a number and nothing else.
    [[ -r "$DATA_DIR/pipeline/effective.json" ]] \
        && coverage+=(--effective "$DATA_DIR/pipeline/effective.json")

    html="$(mktemp)"
    python3 "$SRC_DIR/bench/generate-dashboard.py" --print-html > "$html"

    idx="$(mktemp)"
    rm -f "$idx"
    GIT_INDEX_FILE="$idx" git --git-dir="$repo" read-tree "$head"

    # Everything under _dashboard/ goes, then this image's build of it comes
    # back. A stale per-package file, or one the audit stage planted, is gone
    # either way.
    git --git-dir="$repo" ls-tree -r -z --name-only "$head" -- _dashboard \
        | while IFS= read -r -d '' path; do
            printf '0 %s\t%s\n' "$(printf '0%.0s' {1..40})" "$path"
        done | GIT_INDEX_FILE="$idx" git --git-dir="$repo" update-index --index-info
    built="$(mktemp -d)"
    # stdout is this function's return value; the generator's one-line summary
    # goes to stderr and stays in the log.
    python3 "$SRC_DIR/bench/generate-dashboard.py" --git-dir "$repo" --ref "$head" --emit "$built" \
            ${coverage[@]+"${coverage[@]}"} >/dev/null \
        || { rm -rf "$built" "$idx" "$html"; echo "refusing to publish: could not build the dashboard data" >&2; return 1; }
    while IFS= read -r -d '' path; do
        blob="$(git --git-dir="$repo" hash-object -w "$built/$path")"
        GIT_INDEX_FILE="$idx" git --git-dir="$repo" update-index --add --cacheinfo "100644,${blob},${path}"
    done < <(cd "$built" && find _dashboard -type f -print0)
    rm -rf "$built"

    blob_html="$(git --git-dir="$repo" hash-object -w "$html")"
    blob_empty="$(git --git-dir="$repo" hash-object -w -t blob /dev/null)"
    GIT_INDEX_FILE="$idx" git --git-dir="$repo" update-index --add \
        --cacheinfo "100644,${blob_html},index.html"
    GIT_INDEX_FILE="$idx" git --git-dir="$repo" update-index --add \
        --cacheinfo "100644,${blob_empty},.nojekyll"
    if [[ -n "$REVIEW_JSON_IN" ]]; then
        local record blob_review
        record="$(mktemp)"
        # Explicit, because a caller may run this inside a condition, where
        # set -e is off: a record that does not parse must refuse the publish,
        # never go out as an empty file.
        if ! review_record "$head" > "$record"; then
            rm -f "$record" "$idx" "$html"
            echo "refusing to publish: AUR_SLEUTH_REVIEW_JSON is not a review record" >&2
            return 1
        fi
        blob_review="$(git --git-dir="$repo" hash-object -w "$record")"
        rm -f "$record"
        GIT_INDEX_FILE="$idx" git --git-dir="$repo" update-index --add \
            --cacheinfo "100644,${blob_review},_dashboard/review.json"
    else
        # Mode 0 deletes the path. --remove wants a work tree; this is a bare repo.
        printf '0 %s\t_dashboard/review.json\n' "$(printf '0%.0s' {1..40})" \
            | GIT_INDEX_FILE="$idx" git --git-dir="$repo" update-index --index-info
    fi
    tree="$(GIT_INDEX_FILE="$idx" git --git-dir="$repo" write-tree)"
    rm -f "$idx" "$html"

    # Nothing to do when the site already carries exactly this: the same
    # reports and this image's page. It keeps the history free of empty
    # commits, and a second publish of the same review pushes nothing new.
    if [[ -n "$parent" && "$tree" == "$(git --git-dir="$repo" rev-parse "${parent}^{tree}")" ]]; then
        printf '%s\n' "$parent"
        return 0
    fi
    if [[ -z "$parent" && "$tree" == "$(git --git-dir="$repo" rev-parse "${head}^{tree}")" ]]; then
        printf '%s\n' "$head"
        return 0
    fi

    [[ -n "$parent" ]] && parent_args=(-p "$parent")
    commit="$(git --git-dir="$repo" commit-tree "$tree" ${parent_args[@]+"${parent_args[@]}"} \
        -m "site: the page for $REPORTS_BRANCH ${head:0:12}")"
    git --git-dir="$repo" update-ref "refs/heads/$SITE_BRANCH" "$commit"
    printf '%s\n' "$commit"
}

# The pin that makes a review and its publish one transaction.
#
# A review reports on the commit it saw. Publish pushes exactly that commit:
# the caller that pressed the button passes it in AUR_SLEUTH_EXPECT_HEAD. The
# branch may have moved on since -- the audit stage commits every report as it
# goes, so during a run it moves every few minutes -- and that is fine: the
# reviewed commit is still on the branch, and the commits after it wait for
# the next review. What is refused is a reviewed commit the branch no longer
# contains at all (a quarantine rewrote the unpublished history, or the pin
# came from another store): then nobody knows what those bytes are.
#
# Unset means unpinned, which is what the scheduled dry run uses: it reports on
# the branch as it stands and never pushes.
check_expected_head() {
    local repo="$1" tip="$2"

    if [[ -z "$EXPECT_HEAD" ]]; then
        return 0
    fi
    if [[ "$EXPECT_HEAD" == "$tip" ]]; then
        log "Pinned to the reviewed commit ${EXPECT_HEAD:0:12}"
        return 0
    fi
    if git --git-dir="$repo" merge-base --is-ancestor "$EXPECT_HEAD" "$tip" 2>/dev/null; then
        local behind
        behind="$(git --git-dir="$repo" rev-list --count "$EXPECT_HEAD..$tip")"
        log "Pinned to the reviewed commit ${EXPECT_HEAD:0:12}; $REPORTS_BRANCH has moved on by" \
            "$behind commit(s) since, which wait for the next review"
        return 0
    fi
    log "The review approved ${EXPECT_HEAD:0:12}, but $REPORTS_BRANCH at ${tip:0:12} does not contain it."
    log "The unpublished history was rewritten after the review. Review again, then publish."
    return 1
}

# Fetch origin's copy of a branch into the throwaway repository, as
# refs/remotes/origin/<branch>. Succeeds with nothing fetched when origin has
# no such branch, and fails only when origin could not be reached at all.
# Fetches over FETCH_URL, which needs no credential.
fetch_origin_branch() {
    local repo="$1" branch="$2" err
    # LC_ALL=C keeps git's error text English, or the missing-branch check
    # below would depend on the operator's locale: a localized git says
    # "couldn't find remote ref" in its own language and the fetch would be
    # mistaken for a network failure.
    err="$(LC_ALL=C git --git-dir="$repo" fetch --quiet "$FETCH_URL" \
        "+refs/heads/$branch:refs/remotes/origin/$branch" 2>&1)" && return 0
    # A missing branch is "couldn't find remote ref"; anything else is the
    # network, and the caller decides what that means.
    [[ "$err" == *"find remote ref"* ]] && return 0
    return 1
}

# Refuse to publish over reports this store has not seen. Origin's reports
# branch must be at or behind the commit being published, so the push is a
# fast-forward and nothing on origin is lost. Origin ahead means someone
# pushed reports from elsewhere; that is for a prepare to reconcile, not for
# this stage to guess at. Unreachable origin: the push will say.
check_origin_reports() {
    local repo="$1" sha="$2" origin
    origin="$(git --git-dir="$repo" rev-parse --verify --quiet "refs/remotes/origin/$REPORTS_BRANCH" || true)"
    [[ -z "$origin" || "$origin" == "$sha" ]] && return 0
    git --git-dir="$repo" merge-base --is-ancestor "$origin" "$sha"
}

# --- publish ------------------------------------------------------------------

do_publish() {
    [[ -d "$GIT_STORE" ]] || die "$GIT_STORE missing; run the prepare stage first"

    local pub
    pub="$(stage_reports_repo)"

    local tip
    tip="$(git --git-dir="$pub" rev-parse --verify --quiet "refs/heads/$REPORTS_BRANCH" || true)"
    if [[ -z "$tip" ]]; then
        # First run against an empty origin, with nothing audited yet: no ref
        # exists anywhere. Not an error -- failing here would put a scheduler
        # into backoff for a normal condition.
        log "No $REPORTS_BRANCH ref exists yet; nothing to publish"
        return 0
    fi
    log "$REPORTS_BRANCH is at $tip"

    # Checked before the dry-run branch, so a dry run reports a bad pin too.
    # What goes out is the reviewed commit when there is one, else the tip.
    check_expected_head "$pub" "$tip" || die "refusing to publish: the reviewed commit is not on $REPORTS_BRANCH"
    local sha="${EXPECT_HEAD:-$tip}"

    # Gate before anything else, dry run included: a dry run is how an operator
    # finds out whether the branch is publishable, so it has to answer the same
    # question the real push does.
    validate_reports_tree "$pub" "$sha" \
        || die "refusing to publish $REPORTS_BRANCH; see the disallowed paths above"

    # The content check too, the same one the review stage runs. It is
    # decidable here, so it is decided here: a publish that relied on a review
    # having run first would publish a leaked hostname the moment someone
    # turned the dry run off without one.
    local leaks
    leaks="$(internal_string_paths "$pub" "$sha")"
    if [[ -n "$leaks" ]]; then
        log "Internal strings ($INTERNAL_STRINGS) found in $(wc -l <<< "$leaks") file(s):"
        head -20 <<< "$leaks" | sed 's/^/  /'
        die "refusing to publish $REPORTS_BRANCH; run quarantine first"
    fi

    # Where origin is now. The reports push must be a fast-forward: origin at
    # or behind the reviewed commit. A successful push is written back to the
    # store's own origin ref below, and since the page no longer goes on this
    # branch, origin never holds a commit the store lacks unless someone
    # pushed reports from elsewhere -- which is for a prepare to reconcile,
    # not this stage.
    local online=true
    if ! fetch_origin_branch "$pub" "$REPORTS_BRANCH"; then
        online=false
        log "WARNING: could not reach $FETCH_URL; the push will decide whether origin agrees"
    fi
    if ! check_origin_reports "$pub" "$sha"; then
        # Two different situations end up here, with different remedies.
        # Origin ahead of the pin but not of the tip: a publish moved origin
        # past this review, so the review is stale. Origin ahead of the tip
        # too: someone pushed reports this store has never fetched.
        if check_origin_reports "$pub" "$tip"; then
            die "refusing to publish: a publish moved $REPORTS_BRANCH past this review; review again, then publish"
        fi
        die "refusing to publish: origin holds reports this store has not seen; run a prepare (any run) and review again"
    fi

    # The page goes on its own branch, built on origin's current page so that
    # push is a fast-forward too. No previous page means a root commit.
    local site_parent=""
    if $online && fetch_origin_branch "$pub" "$SITE_BRANCH"; then
        site_parent="$(git --git-dir="$pub" rev-parse --verify --quiet "refs/remotes/origin/$SITE_BRANCH" || true)"
    fi

    # The day's AUR updates, for the coverage line. Bounded like the pipeline's
    # own download, and optional: a failed fetch costs the line, not the publish.
    local aur_metadata
    aur_metadata="$(mktemp)"
    if curl -sSfL --connect-timeout 15 --max-time 120 --max-filesize 104857600 \
            "$AUR_METADATA_URL" -o "$aur_metadata"; then
        log "AUR metadata: $(stat -c%s "$aur_metadata") bytes"
    else
        rm -f "$aur_metadata"
        aur_metadata=""
        log "WARNING: could not fetch $AUR_METADATA_URL; the page's coverage line is left out"
    fi

    local site
    site="$(rewrite_dashboard_html "$pub" "$sha" "$aur_metadata" "$site_parent")"
    [[ -n "$aur_metadata" ]] && rm -f "$aur_metadata"
    if [[ -n "$site_parent" && "$site" == "$site_parent" ]]; then
        log "The page on $SITE_BRANCH already matches; nothing to rebuild"
    else
        log "Built the page from this image for ${sha:0:12}; $SITE_BRANCH is now $site"
    fi
    # The site tree is the reviewed tree plus this image's page, so it passes
    # the same gate. Checked anyway: it is what the browser loads.
    validate_reports_tree "$pub" "$site" >/dev/null \
        || die "refusing to publish: the rebuilt $SITE_BRANCH tree failed the gate"

    if [[ "$PUBLISH_DRY_RUN" == "true" ]]; then
        log "Dry run: would push $sha to $REPORTS_BRANCH and $site to $SITE_BRANCH at ${PUSH_URL:-<unset>}"
        return 0
    fi

    [[ -n "$PUSH_URL" ]] || die "AUR_SLEUTH_PUSH_URL is not set"
    [[ -r "$SSH_KEY" ]] || die "cannot read deploy key at $SSH_KEY"
    [[ -s "$KNOWN_HOSTS" ]] || die "no host keys at $KNOWN_HOSTS"

    # ssh rejects a key that any group or other can read, and a Secret volume is
    # mounted 0644. Take a private copy in this container's own home directory.
    install -d -m 0700 "$HOME/.ssh"
    install -m 0400 "$SSH_KEY" "$HOME/.ssh/id_deploy"

    export GIT_SSH_COMMAND="ssh -i $HOME/.ssh/id_deploy -o IdentitiesOnly=yes \
-o StrictHostKeyChecking=yes -o UserKnownHostsFile=$KNOWN_HOSTS -o BatchMode=yes"

    log "Pushing to $PUSH_URL"
    # Both refs or neither: a page without its reports, or reports without
    # their page, is a state nobody reviewed. A rejection means a branch
    # diverged from origin, which needs a human.
    git --git-dir="$pub" push --atomic "$PUSH_URL" \
        "$sha:refs/heads/$REPORTS_BRANCH" \
        "$site:refs/heads/$SITE_BRANCH"
    log "Pushed $sha to $REPORTS_BRANCH and $site to $SITE_BRANCH"

    # The store's picture of origin, so the next review counts only what this
    # push did not carry instead of re-reading every report just published
    # until a prepare fetches. The reports commit is the store's own object;
    # the page commit is not (it was written into this stage's repo, which
    # only borrows the store's objects), so that ref waits for the fetch.
    # Best-effort: a publish started from the ops UI runs with the volume
    # read-only -- a Job holding the deploy key must not be able to write the
    # store -- and there the next prepare is what moves the ref. The push
    # already happened; nothing after it may fail the stage.
    if ! git --git-dir="$GIT_STORE" update-ref "refs/remotes/origin/$REPORTS_BRANCH" "$sha" 2>/dev/null; then
        log "The store is read-only here; it learns of this push at its next prepare"
    fi
}

# --- review -------------------------------------------------------------------

# Answer "is this branch publishable, and what is in it?" without publishing.
#
# Needs no credential and writes nothing, so it is safe to run at any time and
# from anywhere. The exit status is the answer to the first question: zero when
# the gate passes AND no report on the branch carries an internal string.
# Everything printed is context for the second, and the model's read at the
# end is advisory -- it is reading text a hostile package can influence, which
# makes it useful to a person and unfit to gate anything.
#
# Two checks decide, both in code. The gate looks at paths: only inert report
# data may be on the branch. The content check looks inside: no report may
# name this deployment's own infrastructure. Each is decidable without a
# model, and each is the kind of thing a person skims past in a few hundred
# reports, which is why neither is left to one.
#
# The last line printed is REVIEW_JSON followed by one JSON object, for a
# caller that wants the answer without parsing prose.
do_review() {
    [[ -d "$GIT_STORE" ]] || die "$GIT_STORE missing; run the prepare stage first"

    local repo
    repo="$(stage_reports_repo)"

    local sha base
    sha="$(git --git-dir="$repo" rev-parse --verify --quiet \
        "refs/heads/$REPORTS_BRANCH" || true)"
    if [[ -z "$sha" ]]; then
        log "No $REPORTS_BRANCH ref exists yet; nothing to review"
        echo 'REVIEW_JSON {"gate":"pass","internal":[],"pending":0,"nothing":true}'
        return 0
    fi
    base="$(git --git-dir="$repo" rev-parse --verify --quiet \
        "refs/remotes/origin/$REPORTS_BRANCH" || true)"

    if [[ -n "$base" && "$base" == "$sha" ]]; then
        log "Nothing unpublished: local matches origin at ${sha:0:12}"
        echo 'REVIEW_JSON {"gate":"pass","internal":[],"pending":0,"nothing":true}'
        return 0
    fi

    local gate=pass
    validate_reports_tree "$repo" "$sha" || gate=fail

    local hits
    hits="$(mktemp)"
    internal_string_paths "$repo" "$sha" > "$hits"
    local nhits
    nhits="$(wc -l < "$hits")"
    if (( nhits > 0 )); then
        log "Internal strings ($INTERNAL_STRINGS) found in $nhits file(s):"
        head -20 "$hits" | sed 's/^/  /'
        (( nhits > 20 )) && log "  ... and $(( nhits - 20 )) more"
        log "The quarantine stage drops them from the unpublished commits."
    else
        log "No internal strings on the branch"
    fi

    python3 "$SRC_DIR/bench/review-pending.py" \
        --git-dir "$repo" --head "$sha" --base "$base" \
        --gate "$gate" --internal-file "$hits" "$@" || true
    rm -f "$hits"

    if [[ "$gate" != pass ]]; then
        log "GATE FAILED: this branch is not publishable as it stands"
        return 1
    fi
    if (( nhits > 0 )); then
        log "NOT PUBLISHABLE: $nhits file(s) carry internal strings; run quarantine"
        return 1
    fi
    log "Gate passed: this branch is publishable"
    return 0
}

# --- quarantine ---------------------------------------------------------------

# Drop every unpublished report that carries an internal string, by rewriting
# the unpushed range of the reports branch without those paths. The published
# history is never touched: origin must be an ancestor, and stays one.
#
# This is the remedy the review stage points at. It runs trusted code only,
# under the same lock the pipeline takes, and it is reversible: the head it
# started from is kept under refs/backup/ in the store.
#
# The rewrite happens in a throwaway bare repository that borrows the store's
# objects, for the same reason the publish stage stages one -- and because the
# store is non-bare with an index the audit stage leaves dirty, which
# filter-branch refuses to work beside. The result is fetched back, which
# moves only the objects the rewrite made.
#
# There is no separate "rebuild the dashboard" stage. The publish stage
# builds the page and its data from the branch it publishes, so the data
# never lags the page; and a trusted stage that ran git in the shared store
# without sanitizing it first once sat beside the deploy key, which is the
# one thing this split exists to prevent.
do_quarantine() {
    [[ -d "$GIT_STORE" ]] || die "$GIT_STORE missing; run the prepare stage first"

    exec 9>"$DATA_DIR/bulk-audit/archive.lock"
    flock -n 9 || die "another run holds the archive lock; refusing to rewrite under it"

    sanitize_store
    local g=(git --git-dir="$GIT_STORE")

    local head base
    head="$("${g[@]}" rev-parse --verify --quiet "refs/heads/$REPORTS_BRANCH" || true)"
    [[ -n "$head" ]] || die "no $REPORTS_BRANCH ref to quarantine"
    base="$("${g[@]}" rev-parse --verify --quiet "refs/remotes/origin/$REPORTS_BRANCH" || true)"
    [[ -n "$base" ]] || die "origin has no $REPORTS_BRANCH; refusing to rewrite a branch with no published baseline"
    "${g[@]}" merge-base --is-ancestor "$base" "$head" \
        || die "origin is not an ancestor of the local branch; needs a human"
    log "$REPORTS_BRANCH is at ${head:0:12}; origin at ${base:0:12};" \
        "$("${g[@]}" rev-list --count "$base..$head") unpublished commit(s)"

    local list
    list="$(mktemp)"
    internal_string_paths "$GIT_STORE" "$head" > "$list"
    local n
    n="$(wc -l < "$list")"
    if (( n == 0 )); then
        log "Nothing carries an internal string ($INTERNAL_STRINGS); nothing to do"
        rm -f "$list"
        return 0
    fi
    log "Dropping $n path(s) that carry an internal string:"
    sed 's/^/  /' "$list"

    local backup
    backup="refs/backup/quarantine-$(date -u +%Y%m%d-%H%M%S)"
    "${g[@]}" update-ref "$backup" "$head"
    log "Previous head kept at $backup"

    local work
    work="$(mktemp -d)/rewrite.git"
    git init --bare --quiet "$work"
    printf '%s\n' "$GIT_STORE/objects" > "$work/objects/info/alternates"
    # One linear plumbing pass, not filter-branch. An archive commit adds one
    # report, so this rewrite is "replay each commit's diff, minus the dropped
    # paths, onto one long-lived index, and prune the commits left empty" --
    # O(changes). filter-branch re-filtered the whole ~7k-file index against
    # every dropped path for every commit, and at incident scale (1880
    # commits, 1889 paths) that ran past the Job's own 900s deadline, so a
    # large quarantine could never finish.
    local rewritten
    rewritten="$(REWRITE_GIT_DIR="$work" REWRITE_BASE="$base" REWRITE_HEAD="$head" \
        REWRITE_DROP_FILE="$list" python3 <<'PY'
import os, subprocess, sys

gd = os.environ["REWRITE_GIT_DIR"]
base = os.environ["REWRITE_BASE"]
head = os.environ["REWRITE_HEAD"]
with open(os.environ["REWRITE_DROP_FILE"]) as f:
    drop = {line.rstrip("\n") for line in f if line.strip()}

def git(*args, env=None, data=None):
    r = subprocess.run(["git", "--git-dir", gd, *args], input=data,
                       capture_output=True, text=True, errors="backslashreplace",
                       env=env)
    if r.returncode != 0:
        sys.stderr.write(r.stderr)
        sys.exit(f"git {' '.join(args[:2])} failed on the rewrite")
    return r.stdout

# Oldest first, with parents, in one call. The archive history is linear by
# construction (every writer holds the archive lock), and this replay only
# knows how to follow one parent -- anything else needs a human.
rows = git("rev-list", "--reverse", "--topo-order", "--parents",
           f"{base}..{head}").split("\n")
commits = []
for row in rows:
    parts = row.split()
    if not parts:
        continue
    if len(parts) != 2:
        sys.exit(f"{parts[0][:12]} does not have exactly one parent; "
                 "this branch should be linear -- needs a human")
    commits.append((parts[0], parts[1]))

ienv = dict(os.environ, GIT_INDEX_FILE=os.path.join(gd, "rewrite-index"))
git("read-tree", base, env=ienv)
cur_tree = git("rev-parse", f"{base}^{{tree}}").strip()

new = base
for commit, parent in commits:
    entries = []
    for line in git("diff-tree", "-r", "--no-commit-id", parent, commit).splitlines():
        # :oldmode newmode oldsha newsha status\tpath
        meta, path = line.split("\t", 1)
        _, new_mode, _, new_sha, status = meta.lstrip(":").split(" ")
        if path in drop:
            continue
        if status == "D":
            entries.append(f"0 {'0' * 40}\t{path}")
        else:
            entries.append(f"{new_mode} {new_sha}\t{path}")
    if not entries:
        continue
    git("update-index", "--index-info", env=ienv, data="\n".join(entries) + "\n")
    tree = git("write-tree", env=ienv).strip()
    if tree == cur_tree:
        continue
    an, ae, ad, cn, ce, cd, msg = git(
        "log", "-1", "--date=raw",
        "--format=%an%x00%ae%x00%ad%x00%cn%x00%ce%x00%cd%x00%B", commit,
    ).split("\x00", 6)
    cenv = dict(os.environ, GIT_AUTHOR_NAME=an, GIT_AUTHOR_EMAIL=ae,
                GIT_AUTHOR_DATE=ad, GIT_COMMITTER_NAME=cn,
                GIT_COMMITTER_EMAIL=ce, GIT_COMMITTER_DATE=cd)
    new = git("commit-tree", tree, "-p", new, "-m", msg, env=cenv).strip()
    cur_tree = tree

print(new)
PY
)"
    git --git-dir="$work" update-ref "refs/heads/$REPORTS_BRANCH" "$rewritten"
    "${g[@]}" fetch --quiet "$work" "+refs/heads/$REPORTS_BRANCH:refs/heads/$REPORTS_BRANCH"
    rm -rf "$(dirname "$work")"

    local new
    new="$("${g[@]}" rev-parse "refs/heads/$REPORTS_BRANCH")"
    [[ "$new" == "$rewritten" ]] || die "branch is at $new, expected $rewritten"
    "${g[@]}" merge-base --is-ancestor "$base" "$new" \
        || die "origin is no longer an ancestor after the rewrite; backup at $backup"
    log "Rewrote $REPORTS_BRANCH to ${new:0:12};" \
        "$("${g[@]}" rev-list --count "$base..$new") unpublished commit(s) remain"

    # The dashboard JSON embeds report bodies, so it carries the same strings.
    # Rebuild it from the cleaned branch; this adds one commit.
    cd "$SRC_DIR"
    python3 bench/generate-dashboard.py >/dev/null
    new="$("${g[@]}" rev-parse "refs/heads/$REPORTS_BRANCH")"

    local left
    left="$(internal_string_paths "$GIT_STORE" "$new" | wc -l)"
    (( left == 0 )) || die "$left file(s) still carry an internal string after the rewrite; backup at $backup"

    # The working copies the pipeline keeps beside the branch carry the same
    # text, and the judge reads them.
    local removed=0 f
    while IFS= read -r f; do
        rm -f "$f"
        removed=$(( removed + 1 ))
    done < <(internal_string_working_files)
    rm -f "$list"

    log "Quarantine complete: dropped $n path(s), removed $removed working file(s);" \
        "$REPORTS_BRANCH is at ${new:0:12}, clean"
}

# --- bundle -------------------------------------------------------------------

# Write unpublished report commits to a git bundle: one file that can be copied
# off the volume and fetched from like any remote.
#
# This is the alternative to a standing write credential. Reports accumulate on
# the volume, a human copies the bundle out, reviews the commits, and pushes
# from a machine that already has push rights -- so nothing here needs write
# access to the reports repository at all.
do_bundle() {
    [[ -d "$GIT_STORE" ]] || die "$GIT_STORE missing; run the prepare stage first"

    local out="${AUR_SLEUTH_BUNDLE_PATH:-/out/audit-reports.bundle}"
    # The image creates /out, but the file is useless unless something outside
    # the container can read it afterwards, so /out is normally a mount.
    mkdir -p "$(dirname "$out")" 2>/dev/null && [[ -w "$(dirname "$out")" ]] \
        || die "cannot write to $(dirname "$out"); mount a writable volume there or set AUR_SLEUTH_BUNDLE_PATH"

    local repo
    repo="$(stage_reports_repo)"

    local sha
    sha="$(git --git-dir="$repo" rev-parse --verify --quiet "refs/heads/$REPORTS_BRANCH" || true)"
    [[ -n "$sha" ]] || die "no $REPORTS_BRANCH ref to bundle"

    # Ship only what origin does not already have. Bundling the whole branch
    # would mean re-exporting thousands of already-published commits on every
    # sweep; the reviewable unit is the delta. The result is an incremental
    # bundle, so fetch it into a clone that already has the published history.
    local base range count
    base="$(git --git-dir="$repo" rev-parse --verify --quiet \
        "refs/remotes/origin/$REPORTS_BRANCH" || true)"

    if [[ -n "$base" && "$base" != "$sha" ]]; then
        range="refs/remotes/origin/$REPORTS_BRANCH..refs/heads/$REPORTS_BRANCH"
        count="$(git --git-dir="$repo" rev-list --count "$range")"
        log "origin is at ${base:0:12}, local is at ${sha:0:12}"
        git --git-dir="$repo" bundle create "$out" \
            "$range" "refs/heads/$REPORTS_BRANCH"
    elif [[ -n "$base" ]]; then
        log "Nothing unpublished: local matches origin at ${sha:0:12}"
        return 0
    else
        # No remote-tracking ref, so there is no published baseline to diff
        # against and the whole branch is the delta.
        count="$(git --git-dir="$repo" rev-list --count "refs/heads/$REPORTS_BRANCH")"
        log "origin has no $REPORTS_BRANCH; bundling the full history"
        git --git-dir="$repo" bundle create "$out" "refs/heads/$REPORTS_BRANCH"
    fi

    log "Wrote $(du -h "$out" | cut -f1) to $out"
    log "Unpublished commits in bundle: $count"
}

# --- dispatch -----------------------------------------------------------------

MODE="${1:-audit}"
shift || true

case "$MODE" in
    prepare) do_prepare ;;
    audit)   do_audit "$@" ;;
    review)     do_review "$@" ;;
    quarantine) do_quarantine ;;
    publish)    do_publish ;;
    bundle)     do_bundle ;;
    benchmark)  do_benchmark ;;
    screen)     do_screen "$@" ;;
    *)          die "unknown stage '$MODE'" \
                    "(want prepare, audit, review, quarantine," \
                    "publish, bundle, benchmark or screen)" ;;
esac
