#!/usr/bin/env bash
# The free tier's daily cap, remembered: while pipeline/free-quota-reset holds
# an epoch still ahead, the advisory sweep is skipped, an advisory audit loop
# stops after the batch in flight, and the free voices are not asked. A
# note that has passed is ignored. The note itself is written by aur-sleuth
# on a per-day 429 (exit 4), which its selftest covers.
#
# Costs nothing: every run here is over budget or a dry run, so no audit
# starts and no completion is requested.
#
# Usage: bash bench/test-free-quota.sh [-q]
set -euo pipefail

cd "$(dirname "$0")/.."

QUIET=false
[[ "${1:-}" == "-q" ]] && QUIET=true
fails=0
ok()  { $QUIET || printf '  ok    %s\n' "$1"; }
bad() { printf '  FAIL  %s\n' "$1"; fails=$(( fails + 1 )); }

tmp="$(mktemp -d)"
trap 'rm -rf "$tmp"' EXIT
# See bench/test-budget-reserve.sh: the pipeline's git commands go to a
# throwaway repository, never this checkout.
git init -q --bare "$tmp/git"
export GIT_DIR="$tmp/git"

future=$(( $(date +%s) + 3600 ))
past=$(( $(date +%s) - 3600 ))

# spent DIR EPOCH -- a data dir whose day is over budget and whose cap note
# says EPOCH (empty: no note).
spent() {
    mkdir -p "$1/pipeline"
    echo "5.00" > "$1/pipeline/spend-$(date +%Y-%m-%d).log"
    [[ -n "$2" ]] && echo "$2" > "$1/pipeline/free-quota-reset"
    return 0
}

echo "== the sweep is skipped while the reset is ahead =="
spent "$tmp/d1" "$future"
out="$(AUR_SLEUTH_DATA_DIR="$tmp/d1" bash bench/pipeline.sh --daily-budget 1.00 \
        --advisory-sweep 5 --dry-run --skip-dashboard --no-push 2>&1 || true)"
if grep -q "daily cap is spent until .*; sweep skipped" <<< "$out"; then
    ok "the sweep says why it is skipped, with the reset time"
else
    bad "expected the sweep to be skipped; got: $(grep -A2 'Advisory Sweep' <<< "$out" | tail -2)"
fi
if grep -q "Free coverage pass" <<< "$out"; then
    bad "the sweep was announced anyway"
else
    ok "no child sweep was announced"
fi
if grep -q "Free tier: the daily cap is spent until" <<< "$out"; then
    ok "the run's own header says the cap is spent"
else
    bad "the run header does not mention the spent cap"
fi

echo "== a note that has passed is ignored =="
spent "$tmp/d2" "$past"
out="$(AUR_SLEUTH_DATA_DIR="$tmp/d2" bash bench/pipeline.sh --daily-budget 1.00 \
        --advisory-sweep 5 --dry-run --skip-dashboard --no-push 2>&1 || true)"
if grep -q "DRY RUN: sweep skipped" <<< "$out"; then
    ok "the sweep proceeds to its announcement (dry run stops it there)"
else
    bad "a stale note should not skip the sweep; got: $(grep -A2 'Advisory Sweep' <<< "$out" | tail -2)"
fi
if grep -q "daily cap is spent" <<< "$out"; then
    bad "a stale note was reported as a spent cap"
else
    ok "nothing says the cap is spent"
fi

echo "== a note that is not an epoch is ignored =="
spent "$tmp/d3" "tomorrow; id"
out="$(AUR_SLEUTH_DATA_DIR="$tmp/d3" bash bench/pipeline.sh --daily-budget 1.00 \
        --advisory-sweep 5 --dry-run --skip-dashboard --no-push 2>&1 || true)"
if grep -q "DRY RUN: sweep skipped" <<< "$out" && ! grep -q "daily cap is spent" <<< "$out"; then
    ok "garbage in the note file is not a spent cap"
else
    bad "a malformed note changed the run: $(grep -i 'cap\|sweep' <<< "$out" | head -3)"
fi

echo "== an advisory audit loop stops after the batch in flight =="
# Two packages, one per batch; the note is ahead, so the loop breaks after
# the first batch instead of clearing the list. Dry run: no audit starts.
printf 'one\ntwo\nthree\n' > "$tmp/candidates.txt"
mkdir -p "$tmp/d4/pipeline"
echo "$future" > "$tmp/d4/pipeline/free-quota-reset"
out="$(AUR_SLEUTH_DATA_DIR="$tmp/d4" bash bench/pipeline.sh --advisory true \
        --packages-file "$tmp/candidates.txt" --jobs 1 --dry-run \
        --skip-dashboard --no-push 2>&1 || true)"
if grep -q "daily cap is spent until .* -- stopping after 1 package" <<< "$out"; then
    ok "the advisory loop stopped after one batch"
else
    bad "the advisory loop did not stop; got: $(grep -i 'stopping\|Audited' <<< "$out" | head -3)"
fi
if grep -q "Audited 1 packages" <<< "$out"; then
    ok "the final flush did not run either"
else
    bad "expected 'Audited 1 packages'; got: $(grep 'Audited' <<< "$out")"
fi
# A paid run is not stopped by the free tier's cap.
out="$(AUR_SLEUTH_DATA_DIR="$tmp/d4" bash bench/pipeline.sh \
        --packages-file "$tmp/candidates.txt" --jobs 1 --dry-run \
        --skip-judge --skip-dashboard --no-push 2>&1 || true)"
if grep -q "Audited 3 packages" <<< "$out"; then
    ok "a paid run audits its whole list regardless"
else
    bad "the paid run was cut short: $(grep -i 'stopping\|Audited' <<< "$out" | head -3)"
fi

echo "== the free voices are not asked while the cap is spent =="
# audit_package is lifted out; run_audit is replaced by a recorder.
voices() {
    (
        eval "$(sed -n '/^audit_package()/,/^}/p' bench/pipeline.sh)"
        # shellcheck disable=SC2329
        log() { :; }
        # shellcheck disable=SC2329
        run_audit() { echo "asked $2"; }
        # shellcheck disable=SC2329
        free_quota_reset() { echo "$NOTE"; }
        # shellcheck disable=SC2034
        MODEL_LIST=(paid/a) FREE_MODEL_LIST=(free/x free/y) NOTE="$1"
        audit_package pkg | sort
    )
}
if [[ "$(voices "$future")" == "asked paid/a" ]]; then
    ok "only the paid seat is asked"
else
    bad "the free voices were asked: $(voices "$future" | tr '\n' ' ')"
fi
if [[ "$(voices "")" == $'asked free/x\nasked free/y\nasked paid/a' ]]; then
    ok "with no note, every voice is asked"
else
    bad "the free voices should be asked: $(voices "" | tr '\n' ' ')"
fi

echo
if (( fails > 0 )); then
    echo "FAILED: $fails check(s)"
    exit 1
fi
echo "free quota: all checks passed"
