#!/usr/bin/env bash
# Offline checks for bench/register-contributor.py and
# bench/trusted-contributors.sh: the gate a would-be contributor clears once,
# to be allowed to submit audit reports at all.
#
# Nothing here calls GitHub. The script takes every input as a FILE for
# exactly this reason: the workflow writes API responses to files and passes
# the paths, so the same rules run here against fixtures. Each check below
# starts from a set that passes everything, and breaks ONE rule, so a reason
# that fires for the wrong cause shows up as a passing fixture failing.
#
# Usage: bash bench/test-register.sh [-q]
set -euo pipefail

cd "$(dirname "$0")/.."
REGISTER="bench/register-contributor.py"
CONTRIB="bench/trusted-contributors.sh"

QUIET=false
[[ "${1:-}" == "-q" ]] && QUIET=true

FAILS="$(mktemp)"
ok()  { $QUIET || printf '  ok    %s\n' "$1"; }
bad() { printf '  FAIL  %s\n' "$1"; echo "$1" >> "$FAILS"; }

tmp="$(mktemp -d)"
trap 'rm -rf "$tmp"; rm -f "$FAILS"' EXIT

# Two real keys: one the account has registered, one it has not.
ssh-keygen -q -t ed25519 -N '' -C '' -f "$tmp/mine"
ssh-keygen -q -t ed25519 -N '' -C '' -f "$tmp/theirs"
MINE="$(awk '{print $2}' < "$tmp/mine.pub")"
THEIRS="$(awk '{print $2}' < "$tmp/theirs.pub")"

# The fixture set, as variables. Every one of them is what a passing
# registration looks like; a check below changes exactly one.
reset() {
    F_LOGIN=octocat
    F_AUTHOR_LOGIN=octocat
    F_COMMITTER_LOGIN=octocat
    F_COMMIT_EMAIL=octocat@example.org
    F_LINE="octocat@example.org ssh-ed25519 $MINE # octocat"
    F_VERIFIED=true
    F_REASON=valid
    F_COMMITS=1
    F_NUMSTAT="$(printf '1\t0\ttrusted-contributors')"
    F_REGISTERED="ssh-ed25519 $MINE octocat@example.org"
    F_CREATED=2024-01-01T00:00:00Z
    F_REPOS=3
    F_EVENTS=0
    F_BASE="$(printf '# the registry\nprior@example.org ssh-ed25519 %s # prior-person\n' "$THEIRS")"
}

# One commit record, or none, or two: the shape the commits endpoint returns.
commit_json() {
    cat <<EOF
{
  "sha": "1111111111111111111111111111111111111111",
  "commit": {
    "author": {"name": "Oct O. Cat", "email": "$F_COMMIT_EMAIL"},
    "verification": {"verified": $F_VERIFIED, "reason": "$F_REASON"}
  },
  "author": {"login": "$F_AUTHOR_LOGIN"},
  "committer": {"login": "$F_COMMITTER_LOGIN"}
}
EOF
}

build() {
    local d="$tmp/case"
    rm -rf "$d"; mkdir -p "$d"
    printf '{"number": 7, "user": {"login": "%s"}, "base": {"ref": "trusted-contributors"}}\n' \
        "$F_LOGIN" > "$d/pr.json"
    {
        printf '['
        local i
        for (( i = 0; i < F_COMMITS; i++ )); do
            (( i > 0 )) && printf ','
            commit_json
        done
        printf ']'
    } > "$d/commits.json"
    printf '{"login": "%s", "created_at": "%s", "public_repos": %s}\n' \
        "$F_LOGIN" "$F_CREATED" "$F_REPOS" > "$d/user.json"
    printf '[{"id": 1, "key": "%s", "title": "laptop"}]\n' \
        "$F_REGISTERED" > "$d/keys.json"
    printf '%s\n' "$F_NUMSTAT" > "$d/numstat.txt"
    printf '%s\n' "$F_LINE" > "$d/line.txt"
    printf '%s\n' "$F_BASE" > "$d/base"
    printf '%s' "$d"
}

# run -> writes $OUT, returns the script's exit code
OUT=""
run() {
    local d rc=0
    d="$(build)"
    OUT="$(python3 "$REGISTER" --pr "$d/pr.json" --commits "$d/commits.json" \
        --user "$d/user.json" --signing-keys "$d/keys.json" \
        --diff "$d/numstat.txt" --added-line "$d/line.txt" \
        --base-file "$d/base" --public-events "$F_EVENTS" \
        --now 2026-08-28T00:00:00Z 2>&1)" || rc=$?
    return $rc
}

# breaks <label> <expected reason fragment>
# The fixture must be refused, for the reason named and no other rule's.
breaks() {
    local label="$1" want="$2" rc=0
    run || rc=$?
    if (( rc == 0 )); then
        bad "should be refused: $label"
    elif ! grep -qF "$want" <<< "$OUT"; then
        bad "$label: refused, but not for '$want': $OUT"
    else
        ok "refused: $label"
        $QUIET || printf '        %s\n' "$(grep -F "$want" <<< "$OUT" | head -1)"
    fi
    reset
}

echo "== the file format, on its own =="
printf '# a comment\n%s\n' "octocat@example.org ssh-ed25519 $MINE # octocat" > "$tmp/f-ok"
if bash "$CONTRIB" check "$tmp/f-ok" >/dev/null; then
    ok "a well-formed registry passes check"
else
    bad "a well-formed registry should pass check"
fi
for pair in \
    "no-email:octocat ssh-ed25519 $MINE # octocat" \
    "no-comment:octocat@example.org ssh-ed25519 $MINE" \
    "wrong-comment-shape:octocat@example.org ssh-ed25519 $MINE #octocat" \
    "bad-login:octocat@example.org ssh-ed25519 $MINE # oct ocat" \
    "unknown-key-type:octocat@example.org ssh-dss $MINE # octocat" \
    "not-base64:octocat@example.org ssh-ed25519 not!base64 # octocat" \
    "type-mismatch:octocat@example.org ssh-rsa $MINE # octocat" \
    "trailing-space:octocat@example.org ssh-ed25519 $MINE # octocat "
do
    printf '%s\n' "${pair#*:}" > "$tmp/f-bad"
    if bash "$CONTRIB" check "$tmp/f-bad" >/dev/null 2>&1; then
        bad "check should refuse ${pair%%:*}"
    else
        ok "check refuses ${pair%%:*}"
    fi
done
printf '%s\n%s\n' "a@example.org ssh-ed25519 $MINE # a-person" \
                  "b@example.org ssh-ed25519 $MINE # b-person" > "$tmp/f-dupkey"
if bash "$CONTRIB" check "$tmp/f-dupkey" >/dev/null 2>&1; then
    bad "check should refuse a duplicate key"
else
    ok "check refuses two people sharing one key"
fi

echo "== the happy path =="
reset
if run; then
    ok "a registration that clears every rule is merged"
else
    bad "the happy-path fixture should pass: $OUT"
fi

echo "== one rule at a time =="

reset
F_COMMITS=2
breaks "two commits" "rule 1"

reset
F_COMMITS=0
breaks "no commits at all" "rule 1"

reset
F_NUMSTAT="$(printf '1\t0\ttrusted-contributors\n1\t0\tREADME.md')"
breaks "two files in the diff" "rule 2"

reset
F_NUMSTAT="$(printf '1\t1\ttrusted-contributors')"
breaks "a line edited rather than added" "rule 2"

reset
F_NUMSTAT="$(printf '1\t0\tsomething-else')"
breaks "a one-line change to another file" "rule 2"

reset
F_LINE="octocat@example.org ssh-ed25519 $MINE octocat"
breaks "a malformed added line" "rule 3"

# What merges is the pull request's bytes, so those are the bytes rule 3 has
# to judge. Each of these is an ordinary copy-paste artifact rather than an
# attack, and each one is a line `trusted-contributors.sh check` refuses -- so
# letting one through would not merely admit a scruffy line, it would leave
# the BASE file malformed and close registration for everyone after it.
reset
F_LINE="octocat@example.org ssh-ed25519 $MINE # octocat "
breaks "a trailing space on the added line" "rule 3"

reset
F_LINE=" octocat@example.org ssh-ed25519 $MINE # octocat"
breaks "a leading space on the added line" "rule 3"

reset
F_LINE=$'octocat@example.org ssh-ed25519 '"$MINE"$' # octocat\r'
breaks "a CR on the end of the added line" "rule 3"

reset
F_LINE="someone-else@example.org ssh-ed25519 $MINE # octocat"
breaks "the line's email is not the commit's author email" "rule 3"

reset
F_LINE="octocat@example.org ssh-ed25519 $MINE # someone-else"
breaks "the line registers somebody else's account" "rule 3"

reset
F_VERIFIED=false
F_REASON=unsigned
breaks "an unsigned commit" "rule 4"

reset
F_REASON=unknown_key
breaks "a signature GitHub cannot attribute" "rule 4"

# Rule 4 is satisfied and rule 5 is not: GitHub says a key it knows signed
# this, and rule 5 is the one that says whose account it was.
reset
F_AUTHOR_LOGIN=someone-else
breaks "verified, but authored by someone else" "rule 5"

reset
F_COMMITTER_LOGIN=someone-else
breaks "verified, but committed by someone else" "rule 5"

reset
F_LINE="octocat@example.org ssh-ed25519 $THEIRS # octocat"
F_COMMIT_EMAIL=octocat@example.org
breaks "a key the account has not registered for signing" "rule 6"

reset
F_BASE="$(printf '# the registry\noctocat@example.org ssh-ed25519 %s # octocat\n' "$THEIRS")"
breaks "an email already in the file" "rule 7"

reset
F_BASE="$(printf '# the registry\nprior@example.org ssh-ed25519 %s # prior-person\n' "$MINE")"
breaks "a key already in the file" "rule 7"

reset
F_CREATED=2026-08-01T00:00:00Z
breaks "an account younger than the floor" "rule 8"

reset
F_REPOS=0
F_EVENTS=0
breaks "no public repos and no public activity" "rule 8"

echo "== the activity floor is either-or =="
reset
F_REPOS=0
F_EVENTS=25
if run; then
    ok "no repos but plenty of events clears the floor"
else
    bad "events alone should clear the floor: $OUT"
fi
reset
F_REPOS=1
F_EVENTS=0
if run; then
    ok "one repo and no events clears the floor"
else
    bad "a repo alone should clear the floor: $OUT"
fi

echo "== the floor is a named constant, not a literal =="
for const in MIN_ACCOUNT_AGE_DAYS MIN_PUBLIC_REPOS MIN_PUBLIC_EVENTS; do
    if grep -q "^$const = " "$REGISTER"; then
        ok "$const is a constant at the top of the file"
    else
        bad "$const should be a named constant"
    fi
done
if grep -q "spam cost" "$REGISTER"; then
    ok "the docstring says the floor is a spam cost, not a security control"
else
    bad "the docstring should say the floor is a spam cost"
fi

echo "== the workflow merges the commit the rules were checked against =="
# Actions cannot run here, so this is the one property of the workflow worth
# pinning by reading it: without --match-head-commit, a push landing between
# the check and the merge would put unchecked content on the branch that
# decides who may submit.
WF=".github/workflows/register-contributor.yml"
# The literal line from the workflow; the $-signs are the workflow's own.
# shellcheck disable=SC2016
if grep -q 'gh pr merge "$PR" --merge --match-head-commit "$HEAD_SHA"' "$WF"; then
    ok "the merge is pinned to the head the rules read"
else
    bad "gh pr merge must pass --match-head-commit \"\$HEAD_SHA\""
fi
if grep -q 'ref: master' "$WF"; then
    ok "the checkout is master, never the pull request's head"
else
    bad "the workflow must check out master explicitly"
fi

echo "== the base file the rules are judged against arrives, or the job stops =="
# Rule 7 -- not already registered -- is decided against the file on the
# branch, and NOTHING downstream can tell "the file is empty because nobody
# has registered yet" from "the fetch failed". An empty base passes rule 7 for
# every duplicate, so a transient API failure would merge a line whose email
# or key is already there; `trusted-contributors.sh check` then fails on the
# base for every registration afterwards, and the only door into the feature
# is shut until someone hand-edits the branch. A `gh` that writes its error
# body instead is as bad the other way: the base parses as JSON, and every
# registration is refused for a malformation that is not the submitter's.
#
# So the fragment is lifted out of the workflow and RUN here, against a stub
# `gh`, rather than described. The indentation is the YAML block scalar's.
reset
mkdir -p "$tmp/bin"
frag="$tmp/fetch-base.sh"
python3 - "$WF" > "$frag" <<'PY'
import sys
# Everything from the fetch to the end of that step's `run:` block, dedented
# out of the YAML block scalar. Whatever shape the fetch has, this runs it.
lines = open(sys.argv[1], encoding="utf-8").read().split("\n")
out, on = [], False
for ln in lines:
    if 'gh api "repos/$GH_REPO/contents/trusted-contributors' in ln:
        on = True
    if not on:
        continue
    if ln.strip() and not ln.startswith(" " * 10):
        break
    out.append(ln[10:])
print("set -euo pipefail")
print("mkdir -p inputs")
print("\n".join(out))
PY

if ! grep -q 'gh api' "$frag"; then
    bad "the base-file fetch could not be found in $WF"
else
    cat > "$tmp/bin/gh" <<'STUB'
#!/usr/bin/env bash
# Stands in for `gh api`. Real gh writes the response body -- including an
# error body -- to stdout, and its own message to stderr.
case "${GH_STUB:-ok}" in
    ok)      printf '%s' "$GH_STUB_BODY"; exit 0 ;;
    404)     echo "gh: Not Found (HTTP 404)" >&2; exit 1 ;;
    500)     echo '{"message":"Server Error"}'
             echo "gh: Internal Server Error (HTTP 500)" >&2; exit 1 ;;
    network) echo "dial tcp: lookup api.github.com: no such host" >&2; exit 1 ;;
esac
STUB
    chmod +x "$tmp/bin/gh"

    fetch() {  # $1 = stub mode; echoes the exit code, leaves inputs/ behind
        local d="$tmp/fetch.$1"
        rm -rf "$d"; mkdir -p "$d"
        local rc=0
        ( cd "$d" && PATH="$tmp/bin:$PATH" GH_REPO=o/r GH_STUB="$1" \
          GH_STUB_BODY="$F_BASE" bash "$frag" >/dev/null 2>&1 ) || rc=$?
        echo "$rc"
    }

    if [[ "$(fetch ok)" == 0 && "$(cat "$tmp/fetch.ok/inputs/base")" == "$F_BASE" ]]; then
        ok "the file on the branch is what the rules read"
    else
        bad "a successful fetch did not land in inputs/base"
    fi
    if [[ "$(fetch 404)" == 0 && -f "$tmp/fetch.404/inputs/base" \
          && ! -s "$tmp/fetch.404/inputs/base" ]]; then
        ok "no file yet -> an empty base, which is the honest one"
    else
        bad "a 404 must leave an empty base: the first registration creates the file"
    fi
    for mode in 500 network; do
        if [[ "$(fetch "$mode")" != 0 && ! -e "$tmp/fetch.$mode/inputs/base" ]]; then
            ok "a $mode failure stops the job instead of guessing at the base"
        else
            bad "a $mode failure left the job running with a base it did not read"
        fi
    done
fi

echo "== a refusal lists every reason, not the first =="
reset
F_VERIFIED=false
F_REASON=unsigned
F_AUTHOR_LOGIN=someone-else
F_REPOS=0
run || true
missing=()
for r in "rule 4" "rule 5" "rule 8"; do
    grep -qF "$r" <<< "$OUT" || missing+=("$r")
done
if (( ${#missing[@]} == 0 )); then
    ok "three broken rules produce three reasons"
else
    bad "a refusal dropped ${missing[*]}: $OUT"
fi

echo
if [[ -s "$FAILS" ]]; then
    printf 'FAILED: %d check(s)\n' "$(wc -l < "$FAILS")"
    exit 1
fi
echo "all checks passed"
