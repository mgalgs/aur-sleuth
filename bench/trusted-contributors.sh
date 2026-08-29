#!/usr/bin/env bash
# The trusted contributors file: where it lives, and its format.
#
# A person who may submit an audit report is one line in `trusted-contributors`
# at the root of `master`. It was an orphan branch of its own until the
# maintainer decided otherwise: a data branch meant a contributor had to fetch
# and branch from something they had no other reason to have, and the registry
# is small, public, and reviewed like any other file. What keeps a registration
# from touching anything that builds is not the branch it lands on, it is rule 2
# of `bench/register-contributor.py`: the diff must be exactly
# `1 0 trusted-contributors`, and the merged bytes must be the base file with
# that one line appended. Nothing else can ride in.
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
#   trusted-contributors.sh check FILE    validate a copy of the file
#
# `check` refuses anything but comment lines, blank lines, and lines of
# exactly the shape above. Every reason is printed, one per line; exit 1 if
# there was any. `bench/register-contributor.py` runs it over the base file
# plus a proposed new line, so a pull request and the maintainer's own copy
# are judged by one implementation.
set -euo pipefail

die() { printf 'trusted-contributors: %s\n' "$*" >&2; exit 2; }

usage() {
    sed -n '/^# Usage:/,/^#$/p' "$0" | sed 's/^# \{0,1\}//'
    exit 2
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
    check) shift; cmd_check "$@" ;;
    *)     usage ;;
esac
