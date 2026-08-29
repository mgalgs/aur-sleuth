#!/usr/bin/env bash
# Offline checks for ./aur-sleuth-submit, the client a registered contributor
# runs to send a report.
#
# The endpoint it talks to is not in this repository, so what stands in for it
# here is a python http.server on localhost that answers whatever the check
# needs -- full, then free; always full; or refusing outright. That is enough
# to pin the two things the client owes the endpoint: it waits when told to
# wait, and it gives up rather than hammering. Nothing here reaches the
# network or calls a model.
#
# Usage: bash bench/test-submit.sh [-q]
set -euo pipefail

cd "$(dirname "$0")/.."
SUBMIT="$PWD/aur-sleuth-submit"

QUIET=false
[[ "${1:-}" == "-q" ]] && QUIET=true

FAILS="$(mktemp)"
ok()  { $QUIET || printf '  ok    %s\n' "$1"; }
bad() { printf '  FAIL  %s\n' "$1"; echo "$1" >> "$FAILS"; }

tmp="$(mktemp -d)"
SERVER_PID=""
cleanup() {
    [[ -n "$SERVER_PID" ]] && kill "$SERVER_PID" 2>/dev/null
    :
    rm -rf "$tmp"; rm -f "$FAILS"
    return 0
}
trap cleanup EXIT

# --- the stand-in endpoint ----------------------------------------------------

cat > "$tmp/endpoint.py" <<'PY'
"""An endpoint that is full for the first N requests, then answers.

argv: <state-dir> <how many times to say it is full> <the code to say it with>
"""
import http.server, os, sys, threading

state, full_for, full_code = sys.argv[1], int(sys.argv[2]), int(sys.argv[3])
lock = threading.Lock()
seen = [0]


class Handler(http.server.BaseHTTPRequestHandler):
    protocol_version = "HTTP/1.1"

    def do_POST(self):
        with lock:
            seen[0] += 1
            n = seen[0]
            with open(os.path.join(state, "requests"), "w") as f:
                f.write(str(n))
        body = self.rfile.read(int(self.headers.get("Content-Length", 0)))
        if n <= full_for:
            payload = b"at capacity; try again shortly\n"
            self.send_response(full_code)
            self.send_header("Retry-After", "1")
        else:
            with open(os.path.join(state, "last-bundle"), "wb") as f:
                f.write(body)
            payload = b"accepted: queued for ingest\n"
            self.send_response(200)
        self.send_header("Content-Type", "text/plain")
        self.send_header("Content-Length", str(len(payload)))
        self.end_headers()
        self.wfile.write(payload)

    def log_message(self, *a):
        pass


server = http.server.ThreadingHTTPServer(("127.0.0.1", 0), Handler)
with open(os.path.join(state, "port"), "w") as f:
    f.write(str(server.server_address[1]))
server.serve_forever()
PY

# start_endpoint <full-for> <code-while-full>
URL=""
start_endpoint() {
    if [[ -n "$SERVER_PID" ]]; then
        kill "$SERVER_PID" 2>/dev/null || true
        wait "$SERVER_PID" 2>/dev/null || true
    fi
    rm -rf "$tmp/state"; mkdir -p "$tmp/state"
    python3 "$tmp/endpoint.py" "$tmp/state" "$1" "$2" &
    SERVER_PID=$!
    local tries=0
    while (( tries < 100 )) && [[ ! -s "$tmp/state/port" ]]; do
        sleep 0.1
        tries=$(( tries + 1 ))
    done
    [[ -s "$tmp/state/port" ]] || { echo "the stand-in endpoint never started" >&2; exit 2; }
    URL="http://127.0.0.1:$(cat "$tmp/state/port")/submit"
}

requests_seen() { cat "$tmp/state/requests" 2>/dev/null || echo 0; }

# --- the contributor's machine ------------------------------------------------

ssh-keygen -q -t ed25519 -N '' -C '' -f "$tmp/id"
SIGNED_CONFIG="$tmp/gitconfig-signed"
cat > "$SIGNED_CONFIG" <<EOF
[user]
	name = Oct O. Cat
	email = octocat@example.org
	signingkey = $tmp/id.pub
[gpg]
	format = ssh
EOF
cat > "$tmp/gitconfig-unsigned" <<'EOF'
[user]
	name = Oct O. Cat
	email = octocat@example.org
EOF

printf -- '---\npackage: vivaldi\nmodel: m/x\nresult: safe\n---\nNothing alarming.\n' \
    > "$tmp/aur-sleuth-report-vivaldi.txt"

# submit <gitconfig> [env assignments...] -> writes $OUT, returns exit code
#
# Run from a directory that is not a git repository. The client reads the
# identity and signing key from `git config`, which is what plain `git commit`
# would do -- so running it inside THIS repository would read this checkout's
# local config instead of the fixture's.
OUT=""
submit() {
    local cfg="$1"; shift
    local rc=0
    OUT="$(cd "$tmp" && env HOME="$tmp" GIT_CONFIG_GLOBAL="$cfg" \
        GIT_CONFIG_SYSTEM=/dev/null AUR_SLEUTH_SUBMIT_URL="$URL" "$@" \
        bash "$SUBMIT" "$tmp/aur-sleuth-report-vivaldi.txt" vivaldi 2>&1)" || rc=$?
    return $rc
}

echo "== it waits when the endpoint says it is full =="
start_endpoint 2 429
started=$SECONDS
if submit "$SIGNED_CONFIG"; then
    ok "two 429s and then a 200: the submission goes through"
else
    bad "the client should have waited out the 429s: $OUT"
fi
elapsed=$(( SECONDS - started ))
if (( elapsed >= 2 )); then
    ok "it honoured Retry-After: 1 twice (${elapsed}s elapsed)"
else
    bad "it did not wait between attempts (${elapsed}s elapsed)"
fi
if [[ "$(requests_seen)" == "3" ]]; then
    ok "three requests: two refused, one accepted"
else
    bad "expected 3 requests, saw $(requests_seen)"
fi
if grep -q 'accepted: queued for ingest' <<< "$OUT"; then
    ok "the endpoint's own reply is what the contributor sees"
else
    bad "the server's reply should be printed: $OUT"
fi

echo "== what it sent is a bundle holding one signed commit =="
git init --quiet "$tmp/verify"
if git -C "$tmp/verify" fetch --quiet "$tmp/state/last-bundle" submission 2>/dev/null; then
    ok "the body is a git bundle"
    path="$(git -C "$tmp/verify" show --name-only --format= FETCH_HEAD)"
    if [[ "$path" == "vivaldi/aur-sleuth-report-vivaldi.md" ]]; then
        ok "it adds <package>/<name>.md: $path"
    else
        bad "unexpected path in the bundle: $path"
    fi
    if git -C "$tmp/verify" cat-file commit FETCH_HEAD | grep -q '^gpgsig'; then
        ok "the commit carries a signature"
    else
        bad "the commit should be signed"
    fi
    author="$(git -C "$tmp/verify" log -1 --format=%ae FETCH_HEAD)"
    if [[ "$author" == "octocat@example.org" ]]; then
        ok "the author is the configured identity, which the ingest checks"
    else
        bad "the author should be the configured user.email, not '$author'"
    fi
else
    bad "the client did not POST a fetchable git bundle"
fi

echo "== it gives up at the cap instead of hammering =="
start_endpoint 99 429
started=$SECONDS
rc=0
submit "$SIGNED_CONFIG" AUR_SLEUTH_SUBMIT_MAX_WAIT=1 || rc=$?
if (( rc == 1 )); then
    ok "an endpoint that stays full ends in exit 1"
else
    bad "expected exit 1 at the cap, got $rc: $OUT"
fi
if grep -q 'at capacity' <<< "$OUT"; then
    ok "it says the endpoint is at capacity, not that the report was wrong"
    $QUIET || printf '        %s\n' "$(grep 'at capacity' <<< "$OUT" | tail -1)"
else
    bad "the give-up message should name capacity: $OUT"
fi
if (( SECONDS - started < 20 )); then
    ok "it gave up promptly rather than waiting out the default"
else
    bad "giving up took $(( SECONDS - started ))s"
fi

echo "== 503 is the same contract as 429 =="
start_endpoint 1 503
if submit "$SIGNED_CONFIG" && [[ "$(requests_seen)" == "2" ]]; then
    ok "a 503 is waited out too"
else
    bad "a 503 should be retried like a 429: $OUT"
fi

echo "== nothing else is ever retried =="
start_endpoint 99 400
rc=0
submit "$SIGNED_CONFIG" || rc=$?
if (( rc == 1 )) && [[ "$(requests_seen)" == "1" ]]; then
    ok "a 400 is reported once and not sent again"
else
    bad "a 400 should be sent once and refused (rc=$rc, $(requests_seen) requests)"
fi

echo "== an unsigned setup refuses before anything is sent =="
start_endpoint 0 429
rc=0
submit "$tmp/gitconfig-unsigned" || rc=$?
if (( rc == 1 )); then
    ok "no SSH signing key configured: the client refuses"
else
    bad "an unsigned setup should be refused, got $rc"
fi
if grep -q 'gpg.format ssh' <<< "$OUT"; then
    ok "it says how to configure signing"
else
    bad "the refusal should say how to configure signing: $OUT"
fi
if [[ "$(requests_seen)" == "0" ]]; then
    ok "the endpoint was never called"
else
    bad "an unsigned submission reached the endpoint"
fi

echo "== with no endpoint configured it says so =="
rc=0
OUT="$(cd "$tmp" && env HOME="$tmp/empty-home" GIT_CONFIG_GLOBAL="$SIGNED_CONFIG" \
    GIT_CONFIG_SYSTEM=/dev/null AUR_SLEUTH_SUBMIT_CONF="$tmp/no-such.conf" \
    bash "$SUBMIT" "$tmp/aur-sleuth-report-vivaldi.txt" vivaldi 2>&1)" || rc=$?
if (( rc == 1 )) && grep -q 'no endpoint' <<< "$OUT"; then
    ok "no URL anywhere: it names both places one can come from"
else
    bad "expected a 'no endpoint' refusal, got $rc: $OUT"
fi

echo "== the config file is read, not sourced =="
start_endpoint 0 429
# The second line is a command substitution the client must NEVER run.
# shellcheck disable=SC2016
printf 'url = %s\ntouched = $(touch %s/pwned)\n' "$URL" "$tmp" > "$tmp/conf"
rc=0
OUT="$(cd "$tmp" && env HOME="$tmp" GIT_CONFIG_GLOBAL="$SIGNED_CONFIG" \
    GIT_CONFIG_SYSTEM=/dev/null AUR_SLEUTH_SUBMIT_CONF="$tmp/conf" \
    bash "$SUBMIT" "$tmp/aur-sleuth-report-vivaldi.txt" vivaldi 2>&1)" || rc=$?
if (( rc == 0 )) && [[ ! -e "$tmp/pwned" ]]; then
    ok "the url comes from the config file and nothing in it ran"
else
    bad "the config file should be parsed, never executed (rc=$rc): $OUT"
fi

echo
if [[ -s "$FAILS" ]]; then
    printf 'FAILED: %d check(s)\n' "$(wc -l < "$FAILS")"
    exit 1
fi
echo "all checks passed"
