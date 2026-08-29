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
    # Whether the file on the branch ends in a newline. It always should;
    # a base that does not is a file nothing can be appended to, and saying so
    # is what keeps that from reading as the next submitter's fault.
    F_BASE_NEWLINE=true
    # The file as the head commit has it: what a merge actually puts on the
    # branch. `derive` is the contributor who did it right -- the base with
    # the line appended and terminated -- so every fixture that does not care
    # about the merged bytes gets the honest ones. A case that DOES care sets
    # the exact bytes instead, and they are written without a newline added.
    F_HEAD=derive
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
    printf '{"number": 7, "user": {"login": "%s"}, "base": {"ref": "master"}}\n' \
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
    if $F_BASE_NEWLINE; then
        printf '%s\n' "$F_BASE" > "$d/base"
    else
        printf '%s' "$F_BASE" > "$d/base"
    fi
    if [[ "$F_HEAD" == derive ]]; then
        { cat "$d/base"; printf '%s\n' "$F_LINE"; } > "$d/head"
    else
        printf '%s' "$F_HEAD" > "$d/head"
    fi
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
        --base-file "$d/base" --head-file "$d/head" \
        --public-events "$F_EVENTS" \
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

# What merges is the head commit's bytes, and every rule but this one judges
# a reconstruction of them. The reconstruction is built here, so it always
# ends in a newline; the head need not, and a head that does not passes every
# other rule and leaves the branch in a state the next registration cannot
# append to. These are the shapes the byte comparison is for.
reset
F_HEAD="$(printf '%s\n%s' "$F_BASE" "$F_LINE")"
breaks "a merged file with no final newline" "does not end in a newline"

reset
F_HEAD="$(printf '# the registry\n%s\nprior@example.org ssh-ed25519 %s # prior-person\n' \
                 "$F_LINE" "$THEIRS")"
breaks "the line inserted mid-file rather than appended" "does not begin with"

reset
F_HEAD="$(printf '%s\n%s\nsneak@example.org ssh-ed25519 %s # sneak\n' \
                 "$F_BASE" "$F_LINE" "$THEIRS")"
breaks "a second line the diff did not account for" "first differ at byte"

# And the other direction: the base file itself already lacks a final
# newline, so nothing can be appended to it. That is the maintainer's problem
# and the message says so, because blaming the submitter for it is how one
# bad byte on the branch reads as every later contributor's fault.
reset
F_BASE_NEWLINE=false
F_HEAD="$(printf '%s\n%s\n' "$F_BASE" "$F_LINE")"
breaks "a base file with no final newline" "not the submitter's doing"

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

# The other half of a rule that refuses more shapes: the shapes it must still
# accept. Every bug this rule is here for is "one bad line shuts the door",
# and a fix that quietly narrows the door is the same failure wearing the
# other hat.
echo "== what the merged-bytes check must still let through =="
reset
F_BASE=""
F_BASE_NEWLINE=false
if run; then
    ok "the first registration ever, against a branch with no file yet"
else
    bad "an empty base is the honest one before anybody has registered: $OUT"
fi
reset
F_BASE="$(printf '# the registry\n\nprior@example.org ssh-ed25519 %s # prior-person\n\n' "$THEIRS")"
if run; then
    ok "a base with blank lines and comments in it, appended to as usual"
else
    bad "blank lines are legal in an allowed_signers file: $OUT"
fi

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

echo "== the workflow says the verdict and a human does the merging =="
# Actions cannot run here, so these are the properties of the workflow worth
# pinning by reading it. A registration is merged by the maintainer, never by
# this job: the job's whole output is a comment, a label, and -- on a failure
# -- a close. Two things follow, and both are asserted rather than described,
# because either one silently coming back would restore an automatic write to
# `master` by a workflow a stranger's pull request triggers.
WF=".github/workflows/register-contributor.yml"
if grep -q 'gh pr merge' "$WF"; then
    bad "the workflow must not merge; a maintainer does that by hand"
else
    ok "the workflow contains no gh pr merge"
fi
# Read only the permissions block: `contents: write` anywhere in it would give
# the job push access to the tree, which is exactly what not merging buys.
if awk '/^permissions:/{p=1;next} p&&/^[^ ]/{p=0} p' "$WF" \
        | grep -q 'contents: *write'; then
    bad "the workflow must not grant contents: write"
else
    ok "the workflow's permissions grant no contents: write"
fi
# And it must grant contents: READ. Naming any scope in a permissions block
# sets every unnamed scope to none, so a block that says only
# `pull-requests: write` denies the checkout of master and the compare and
# contents API calls the collect step makes -- every registration then dies
# red before a single rule runs, and the previous check reads as a pass.
if awk '/^permissions:/{p=1;next} p&&/^[^ ]/{p=0} p' "$WF" \
        | grep -q 'contents: *read'; then
    ok "and it grants contents: read, which the checkout and the API calls need"
else
    bad "the workflow must grant contents: read, or its own checkout is denied"
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
    if ln.strip().startswith("base_url="):
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
#
# The fragment makes two fetches of the same file at two refs -- `master`,
# and the pull request's head -- and they fail for different reasons and mean
# different things, so which one is being answered is read off the ref in the
# URL rather than guessed.
case "$*" in
    *"ref=master"*) mode="${GH_STUB:-ok}"; body="$GH_STUB_BODY" ;;
    *)              mode="${GH_STUB_HEAD:-ok}"; body="$GH_STUB_HEAD_BODY" ;;
esac
case "$mode" in
    ok)      printf '%s' "$body"; exit 0 ;;
    404)     echo "gh: Not Found (HTTP 404)" >&2; exit 1 ;;
    500)     echo '{"message":"Server Error"}'
             echo "gh: Internal Server Error (HTTP 500)" >&2; exit 1 ;;
    network) echo "dial tcp: lookup api.github.com: no such host" >&2; exit 1 ;;
esac
STUB
    chmod +x "$tmp/bin/gh"

    # $1 = the mode for the base fetch, $2 = the mode for the head fetch.
    # Echoes the exit code and leaves inputs/ behind for the caller to read.
    fetch() {
        local d="$tmp/fetch.$1${2:+.$2}"
        rm -rf "$d"; mkdir -p "$d"
        local rc=0
        ( cd "$d" && PATH="$tmp/bin:$PATH" GH_REPO=o/r HEAD_SHA=deadbeef \
          GH_STUB="$1" GH_STUB_BODY="$F_BASE" \
          GH_STUB_HEAD="${2:-ok}" GH_STUB_HEAD_BODY="$F_BASE" \
          bash "$frag" >/dev/null 2>&1 ) || rc=$?
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

    # And the same file at the pull request's head, which is what actually
    # merges. Nothing here may become an empty file: an absent base is
    # correct before the first contributor lands, but a registration's head
    # always HAS the file -- the diff says a line was added to it -- so every
    # failure is an infrastructure failure and none of them is a fact about
    # the submitter.
    if [[ "$(fetch ok ok)" == 0 \
          && "$(cat "$tmp/fetch.ok.ok/inputs/head")" == "$F_BASE" ]]; then
        ok "the file at the head commit is fetched too, and it is what merges"
    else
        bad "a successful head fetch did not land in inputs/head"
    fi
    for mode in 404 500 network; do
        if [[ "$(fetch ok "$mode")" != 0 \
              && ! -e "$tmp/fetch.ok.$mode/inputs/head" ]]; then
            ok "a $mode on the head file stops the job rather than guessing"
        else
            bad "a $mode on the head file left the job running without it"
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
