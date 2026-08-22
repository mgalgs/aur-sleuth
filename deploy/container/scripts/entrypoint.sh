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
#   publish   Push the audit-reports branch. Needs the git write credential, and
#             deliberately runs after the untrusted stage has finished. Refuses
#             to push a branch carrying anything but inert report data.
#   bundle    Write the audit-reports branch to a git bundle instead of pushing
#             it. Needs no credential. Lets reports accumulate on the volume and
#             be reviewed elsewhere, so no write credential need exist here.
#
# The split exists so the git write credential never shares a process, an
# environment, or a filesystem with a hostile PKGBUILD. See deploy/container/README.md.
set -euo pipefail

DATA_DIR="${AUR_SLEUTH_DATA_DIR:-/data}"
SRC_DIR="/opt/aur-sleuth"
GIT_STORE="$DATA_DIR/git"
REPORTS_BRANCH="audit-reports"

FETCH_URL="${AUR_SLEUTH_FETCH_URL:-https://github.com/mgalgs/aur-sleuth.git}"
PUSH_URL="${AUR_SLEUTH_PUSH_URL:-}"
SSH_KEY="${AUR_SLEUTH_SSH_KEY:-/secrets/git/ssh-privatekey}"
KNOWN_HOSTS="${AUR_SLEUTH_KNOWN_HOSTS:-/etc/ssh/ssh_known_hosts}"
SPEND_LOG_RETENTION_DAYS="${AUR_SLEUTH_SPEND_LOG_RETENTION_DAYS:-30}"
PUBLISH_DRY_RUN="${AUR_SLEUTH_PUBLISH_DRY_RUN:-false}"

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

# Print every path at REF in REPO whose content contains an internal string,
# one per line, sorted and unique. Prints nothing when there are none.
internal_string_paths() {
    local repo="$1" ref="$2" needle
    for needle in ${INTERNAL_STRINGS//,/ }; do
        git --git-dir="$repo" grep -l -F -e "$needle" "$ref" -- 2>/dev/null || true
    done | sed "s/^[^:]*://" | sort -u
}

# The same, for the working copies the pipeline keeps on the volume.
internal_string_working_files() {
    local needle
    for needle in ${INTERNAL_STRINGS//,/ }; do
        grep -l -F -e "$needle" "$DATA_DIR"/bulk-reports/*/aur-sleuth-report-*.txt 2>/dev/null || true
    done | sort -u
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
        "AUR_SLEUTH_LOOKBACK_HOURS:--lookback-hours:int"
        "AUR_SLEUTH_SEED_TOP:--seed-top:int"
        "AUR_SLEUTH_JOBS:--jobs:int"
        "AUR_SLEUTH_AUDIT_TIMEOUT:--audit-timeout:int"
        "AUR_SLEUTH_AUDIT_MODELS:--audit-models:models"
        "AUR_SLEUTH_JUDGE_MODEL:--judge-model:model"
        "AUR_SLEUTH_REAUDIT_MODEL:--reaudit-model:model"
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
            num)
                [[ "$value" =~ ^[0-9]+(\.[0-9]+)?$ ]] \
                    || die "$var must be a number, got '$value'" ;;
            model)
                [[ "$value" =~ ^[A-Za-z0-9._/-]+$ ]] \
                    || die "$var is not a model name, got '$value'" ;;
            models)
                [[ "$value" =~ ^[A-Za-z0-9._/-]+(,[A-Za-z0-9._/-]+)*$ ]] \
                    || die "$var is not a comma-separated model list, got '$value'" ;;
        esac

        AUDIT_ENV_FLAGS+=("$flag" "$value")
        log "from the environment: $flag $value"
    done
}

do_audit() {
    [[ -n "${OPENAI_API_KEY:-}" ]] || die "OPENAI_API_KEY is not set"
    [[ -d "$GIT_STORE" ]] || die "$GIT_STORE missing; run the prepare stage first"
    cd "$SRC_DIR"
    collect_audit_env_flags
    log "Starting pipeline: $*"
    exec bash bench/pipeline.sh --no-push "$@" \
        ${AUDIT_ENV_FLAGS[@]+"${AUDIT_ENV_FLAGS[@]}"}
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
        # These two are rewritten from this image's own copy below, so whatever
        # the branch currently holds for them does not matter.
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

# Replace index.html and .nojekyll with this image's own copies.
#
# The dashboard is generated by the audit stage today, and that stage runs
# hostile code, so the page on the branch is not trustworthy. Rewriting beats
# comparing: a page left by an older image would fail a comparison while being
# perfectly benign, and a gate that blocks correct work is a gate that gets
# turned off.
#
# Writes only to the throwaway repository, and prints the resulting commit --
# so it must never log to stdout.
rewrite_dashboard_html() {
    local repo="$1" head="$2"
    local html idx blob_html blob_empty tree commit

    html="$(mktemp)"
    python3 "$SRC_DIR/bench/generate-dashboard.py" --print-html > "$html"

    idx="$(mktemp)"
    rm -f "$idx"
    GIT_INDEX_FILE="$idx" git --git-dir="$repo" read-tree "$head"

    blob_html="$(git --git-dir="$repo" hash-object -w "$html")"
    blob_empty="$(git --git-dir="$repo" hash-object -w -t blob /dev/null)"
    GIT_INDEX_FILE="$idx" git --git-dir="$repo" update-index --add \
        --cacheinfo "100644,${blob_html},index.html"
    GIT_INDEX_FILE="$idx" git --git-dir="$repo" update-index --add \
        --cacheinfo "100644,${blob_empty},.nojekyll"
    tree="$(GIT_INDEX_FILE="$idx" git --git-dir="$repo" write-tree)"
    rm -f "$idx" "$html"

    # Nothing to do when the branch already carries this image's page. The
    # common case, and it keeps the history free of empty commits.
    if [[ "$tree" == "$(git --git-dir="$repo" rev-parse "${head}^{tree}")" ]]; then
        printf '%s\n' "$head"
        return 0
    fi

    commit="$(git --git-dir="$repo" commit-tree "$tree" -p "$head" \
        -m 'dashboard: rebuild index.html in the publish stage')"
    git --git-dir="$repo" update-ref "refs/heads/$REPORTS_BRANCH" "$commit"
    printf '%s\n' "$commit"
}

# --- publish ------------------------------------------------------------------

do_publish() {
    [[ -d "$GIT_STORE" ]] || die "$GIT_STORE missing; run the prepare stage first"

    local pub
    pub="$(stage_reports_repo)"

    local sha
    sha="$(git --git-dir="$pub" rev-parse --verify --quiet "refs/heads/$REPORTS_BRANCH" || true)"
    if [[ -z "$sha" ]]; then
        # First run against an empty origin, with nothing audited yet: no ref
        # exists anywhere. Not an error -- failing here would put a scheduler
        # into backoff for a normal condition.
        log "No $REPORTS_BRANCH ref exists yet; nothing to publish"
        return 0
    fi
    log "$REPORTS_BRANCH is at $sha"

    # Gate before anything else, dry run included: a dry run is how an operator
    # finds out whether the branch is publishable, so it has to answer the same
    # question the real push does.
    validate_reports_tree "$pub" "$sha" \
        || die "refusing to publish $REPORTS_BRANCH; see the disallowed paths above"

    local rewritten
    rewritten="$(rewrite_dashboard_html "$pub" "$sha")"
    if [[ "$rewritten" != "$sha" ]]; then
        log "Rebuilt index.html from this image; $REPORTS_BRANCH is now $rewritten"
        sha="$rewritten"
    fi

    if [[ "$PUBLISH_DRY_RUN" == "true" ]]; then
        log "Dry run: would push $sha to ${PUSH_URL:-<unset>}"
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
    # A rejection here means the branch diverged from origin, which needs a human.
    git --git-dir="$pub" push "$PUSH_URL" \
        "refs/heads/$REPORTS_BRANCH:refs/heads/$REPORTS_BRANCH"
    log "Pushed $sha"
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
    git --git-dir="$work" update-ref "refs/heads/$REPORTS_BRANCH" "$head"
    FILTER_BRANCH_SQUELCH_WARNING=1 git --git-dir="$work" filter-branch -f --prune-empty \
        --index-filter "git rm -q --cached --ignore-unmatch --pathspec-from-file=$list" \
        -- "$base..refs/heads/$REPORTS_BRANCH" >/dev/null
    local rewritten
    rewritten="$(git --git-dir="$work" rev-parse "refs/heads/$REPORTS_BRANCH")"
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
    *)          die "unknown stage '$MODE'" \
                    "(want prepare, audit, review, quarantine, publish or bundle)" ;;
esac
