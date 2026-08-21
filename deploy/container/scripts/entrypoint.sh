#!/usr/bin/env bash
# Container entrypoint for the aur-sleuth pipeline. One stage per invocation:
#
#   prepare   Create or refresh the git object store on the persistent volume,
#             then prune old spend logs and stale source trees. Needs no secret.
#   audit     Run the full pipeline (audit, judge, re-audit, dashboard) without
#             pushing. Needs the LLM API key. THIS STAGE EXECUTES UNTRUSTED CODE:
#             `makepkg` sources arbitrary AUR PKGBUILDs.
#   publish   Push the audit-reports branch. Needs the git write credential, and
#             deliberately runs after the untrusted stage has finished.
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

    # The previous run's audit stage could write anything into the store, and a
    # repository's own config and hooks are executable input: url.*.insteadOf
    # rewrites where `git fetch` connects, core.sshCommand and filter drivers are
    # commands. Reset all of it to known-good before the first git command runs.
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

do_audit() {
    [[ -n "${OPENAI_API_KEY:-}" ]] || die "OPENAI_API_KEY is not set"
    [[ -d "$GIT_STORE" ]] || die "$GIT_STORE missing; run the prepare stage first"
    cd "$SRC_DIR"
    log "Starting pipeline: $*"
    exec bash bench/pipeline.sh --no-push "$@"
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
    publish) do_publish ;;
    bundle)  do_bundle ;;
    *)       die "unknown stage '$MODE' (want prepare, audit, publish or bundle)" ;;
esac
