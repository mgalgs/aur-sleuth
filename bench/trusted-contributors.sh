#!/usr/bin/env bash
# The trusted contributors file: the branch that holds it, and its format.
#
# A person who may submit an audit report is one line in a single file on the
# orphan `trusted-contributors` branch. Registration automation merges into
# that branch and never into `master`, so a bug in the check can only touch
# one data file and nothing that builds.
#
# The file IS an SSH `allowed_signers` file, unchanged: the ingest hands it
# straight to `git -c gpg.ssh.allowedSignersFile=... verify-commit`, so the
# same bytes that say who may submit are the bytes that decide whether a
# submission's signature is theirs. One line per contributor:
#
#     <email> <key-type> <base64-key> # <github-login>
#
# The trailing `# <login>` is the key's comment as far as ssh is concerned,
# and the GitHub account as far as this repository is concerned: it is what
# the ingest records as `submitted_by`, taken from the line the verifying key
# is on rather than from anything the submission or the gateway said.
#
# Usage:
#   trusted-contributors.sh init          create the orphan branch (once)
#   trusted-contributors.sh check FILE    validate a copy of the file
#
# `check` refuses anything but comment lines, blank lines, and lines of
# exactly the shape above. Every reason is printed, one per line; exit 1 if
# there was any. `bench/register-contributor.py` runs it over the base file
# plus a proposed new line, so a pull request and the maintainer's own copy
# are judged by one implementation.
set -euo pipefail

BRANCH="trusted-contributors"
FILE="trusted-contributors"

die() { printf 'trusted-contributors: %s\n' "$*" >&2; exit 2; }

usage() {
    sed -n '/^# Usage:/,/^#$/p' "$0" | sed 's/^# \{0,1\}//'
    exit 2
}

# --- init ---------------------------------------------------------------------

# Create the branch with an empty file and a header comment, as an orphan: it
# shares no history with anything that builds, exactly like `audit-reports`.
# Refuses if the branch is already there, because the file on it is the
# registry and re-creating it would drop every contributor on it.
cmd_init() {
    git rev-parse --git-dir >/dev/null 2>&1 || die "not a git repository"
    if git rev-parse --verify --quiet "refs/heads/$BRANCH" >/dev/null; then
        die "$BRANCH already exists; it holds the registry, so it is never re-created"
    fi

    local blob tree commit
    blob="$(git hash-object -w --stdin <<EOF
# Contributors who may submit audit reports, one per line.
#
# This is an SSH allowed_signers file, and it is consumed as one. The format
# of a line is:
#
#     <email> <key-type> <base64-key> # <github-login>
#
# Lines are added by the registration automation
# (.github/workflows/register-contributor.yml), never by hand: a line here is
# an assertion that GitHub verified a commit signed by that key, made by the
# account named in the comment. See docs/SUBMITTING-REPORTS.md.
EOF
)"
    tree="$(printf '100644 blob %s\t%s\n' "$blob" "$FILE" | git mktree)"
    commit="$(git commit-tree "$tree" -m "trusted-contributors: the empty registry")"
    git update-ref "refs/heads/$BRANCH" "$commit"
    printf 'created %s at %s with an empty %s\n' "$BRANCH" "${commit:0:12}" "$FILE"
}

# --- check --------------------------------------------------------------------

# The one line format, as one regex: single spaces, no tabs, no trailing
# space, nothing before or after. A line that is nearly right is refused
# rather than half-read, because what reads it next is ssh.
LINE_RE='^([^ ]+) (ssh-ed25519|ssh-rsa|ecdsa-sha2-[A-Za-z0-9-]+) ([A-Za-z0-9+/]+={0,3}) # ([A-Za-z0-9-]{1,39})$'
EMAIL_RE='^[^@ ]+@[^@ ]+\.[^@ ]+$'

cmd_check() {
    local file="${1:-}"
    [[ -n "$file" ]] || usage
    [[ -f "$file" ]] || die "no such file: $file"

    local -A seen_email=() seen_key=()
    local -a reasons=()
    local line n=0 email keytype key login decoded

    while IFS= read -r line || [[ -n "$line" ]]; do
        n=$(( n + 1 ))
        [[ -z "$line" || "$line" == "#"* ]] && continue

        if [[ ! "$line" =~ $LINE_RE ]]; then
            reasons+=("line $n: not '<email> <key-type> <base64-key> # <github-login>'")
            continue
        fi
        email="${BASH_REMATCH[1]}"
        keytype="${BASH_REMATCH[2]}"
        key="${BASH_REMATCH[3]}"
        login="${BASH_REMATCH[4]}"

        [[ "$email" =~ $EMAIL_RE ]] \
            || reasons+=("line $n: '$email' is not an email address")

        # The blob has to be a key of the type the line declares. Decoding it
        # is what says the base64 is real; the type is the first string in
        # the decoded blob, after a four-byte length.
        decoded="$(printf '%s' "$key" | base64 -d 2>/dev/null | tr -cd '[:print:]' | head -c 32 || true)"
        if [[ -z "$decoded" ]]; then
            reasons+=("line $n: the key is not valid base64")
        elif [[ "$decoded" != "$keytype"* ]]; then
            reasons+=("line $n: the key is not a $keytype key")
        fi

        if [[ -n "${seen_email[$email]:-}" ]]; then
            reasons+=("line $n: '$email' is already on line ${seen_email[$email]}")
        else
            seen_email["$email"]="$n"
        fi
        if [[ -n "${seen_key[$key]:-}" ]]; then
            reasons+=("line $n: this key is already on line ${seen_key[$key]}")
        else
            seen_key["$key"]="$n"
        fi
        : "$login"
    done < "$file"

    if (( ${#reasons[@]} )); then
        printf '%s\n' "${reasons[@]}"
        return 1
    fi
    printf '%s: %d contributor(s), well formed\n' "$file" "${#seen_email[@]}"
}

case "${1:-}" in
    init)  shift; cmd_init "$@" ;;
    check) shift; cmd_check "$@" ;;
    *)     usage ;;
esac
