#!/usr/bin/env bash
# Test discover_packages() in bench/pipeline.sh: the two candidate streams, the
# Popularity ranking, the interleave ratio, and the exclusions.
#
# The audit target is "all new/updated packages, plus the most popular ones",
# but the updated stream alone runs far past the daily budget. So the streams are
# interleaved at UPDATED_SHARE (updated) to (1 - UPDATED_SHARE) (seed), each
# ranked by Popularity, and the budget cuts the list off. This proves the
# interleave holds at every prefix, that ranking is by Popularity not votes, and
# that orphaned, out-of-date, and already-audited packages never appear.
#
# Costs nothing: no model is called. The function only reads a synthetic AUR
# metadata file and prints an ordered candidate list.
#
# Usage: bash bench/test-candidate-selection.sh [-q]
set -euo pipefail

cd "$(dirname "$0")/.."

QUIET=false
[[ "${1:-}" == "-q" ]] && QUIET=true

fails=0
ok()  { $QUIET || printf '  ok    %s\n' "$1"; }
bad() { printf '  FAIL  %s\n' "$1"; fails=$(( fails + 1 )); }

tmp="$(mktemp -d)"
trap 'rm -rf "$tmp"' EXIT

# Run discover_packages against a synthetic metadata file, with the stderr
# summary line dropped. Extracting the function keeps this a true unit test of
# the selection logic, with no metadata download and no audit.
#   $1 metadata .json.gz   $2 audited .tsv   $3 MIN_VOTES   $4 SEED_TOP   $5 UPDATED_SHARE
run_discover() {
    (
        export MIN_VOTES="$3" LOOKBACK_HOURS=24 SEED_TOP="$4" UPDATED_SHARE="$5"
        export UPDATED_COUNT="${6:-0}" SEED_COUNT="${7:-0}"
        export METADATA_CACHE="$1"
        eval "$(sed -n '/^discover_packages()/,/^}/p' bench/pipeline.sh)"
        discover_packages "$2" 2>/dev/null
    )
}

# A package eligible for the updated stream has a LastModified far in the future,
# so it is always inside any lookback window whenever the test runs. A seed-only
# package has LastModified 0, so it never enters the updated stream.
RECENT=9999999999

echo "== interleave, Popularity ranking, and exclusions =="
cat > "$tmp/a.json" <<JSON
[
 {"Name":"U1","Maintainer":"m","Version":"1","NumVotes":50,"Popularity":10.0,"LastModified":$RECENT},
 {"Name":"U2","Maintainer":"m","Version":"1","NumVotes":40,"Popularity":8.0,"LastModified":$RECENT},
 {"Name":"U3","Maintainer":"m","Version":"1","NumVotes":30,"Popularity":6.0,"LastModified":$RECENT},
 {"Name":"U4","Maintainer":"m","Version":"1","NumVotes":3,"Popularity":4.0,"LastModified":$RECENT},
 {"Name":"U5","Maintainer":"m","Version":"1","NumVotes":1,"Popularity":2.0,"LastModified":$RECENT},
 {"Name":"S1","Maintainer":"m","Version":"1","NumVotes":500,"Popularity":200.0,"LastModified":0},
 {"Name":"S2","Maintainer":"m","Version":"1","NumVotes":490,"Popularity":190.0,"LastModified":0},
 {"Name":"S3","Maintainer":"m","Version":"1","NumVotes":480,"Popularity":180.0,"LastModified":0},
 {"Name":"ORPHAN","Maintainer":null,"Version":"1","NumVotes":900,"Popularity":900.0,"LastModified":$RECENT},
 {"Name":"OOD","Maintainer":"m","OutOfDate":1699999999,"Version":"1","NumVotes":900,"Popularity":900.0,"LastModified":$RECENT},
 {"Name":"DONE","Maintainer":"m","Version":"2.0-1","NumVotes":900,"Popularity":900.0,"LastModified":$RECENT}
]
JSON
gzip -c "$tmp/a.json" > "$tmp/a.json.gz"
# The audited index stores pkgver-pkgrel (what build_audited_index emits), not
# bare pkgver, so it can equal the AUR "Version" field.
printf 'DONE\t2.0-1\n' > "$tmp/a.tsv"

got="$(run_discover "$tmp/a.json.gz" "$tmp/a.tsv" 0 3 0.8)"
# updated (pop desc): U1 U2 U3 U4 U5 ; seed (pop desc): S1 S2 S3
# stride merge at 80/20: 4 updated to 1 seed across every prefix.
want=$'U1\nU2\nS1\nU3\nU4\nU5\nS2\nS3'
if [[ "$got" == "$want" ]]; then
    ok "updated/seed interleaved 80/20, each ranked by Popularity"
else
    bad "wrong candidate order"
    printf '    want: %s\n' "$(echo "$want" | tr '\n' ' ')"
    printf '    got:  %s\n' "$(echo "$got"  | tr '\n' ' ')"
fi

for absent in ORPHAN OOD DONE; do
    if grep -qx "$absent" <<< "$got"; then
        bad "$absent should be excluded but appeared"
    else
        ok "$absent excluded (orphan / out-of-date / audited-at-current)"
    fi
done

# The high-Popularity excluded packages (pop 900) would top the list if ranking
# were by any field they still have; their absence proves exclusion wins.
if [[ "$(head -1 <<< "$got")" == "U1" ]]; then
    ok "excluded high-Popularity packages do not leak to the top"
else
    bad "expected U1 first, got $(head -1 <<< "$got")"
fi

echo "== sized runs: the counts cap each stream =="
got="$(run_discover "$tmp/a.json.gz" "$tmp/a.tsv" 0 3 0.8 2 1)"
# updated capped to its top 2, seed to its top 1; merge order holds.
want=$'U1\nU2\nS1'
if [[ "$got" == "$want" ]]; then
    ok "updated-count 2 + seed-count 1 -> exactly those three, best first"
else
    bad "count caps wrong"
    printf '    want: %s\n' "$(echo "$want" | tr '\n' ' ')"
    printf '    got:  %s\n' "$(echo "$got"  | tr '\n' ' ')"
fi
# The seed count stands in for SEED_TOP, so "Y popular" works even when the
# seed is configured off.
got="$(run_discover "$tmp/a.json.gz" "$tmp/a.tsv" 0 0 0.8 0 2)"
if grep -qx "S1" <<< "$got" && grep -qx "S2" <<< "$got" && ! grep -qx "S3" <<< "$got"; then
    ok "seed-count 2 opens the seed stream despite SEED_TOP=0, capped at 2"
else
    bad "seed-count with SEED_TOP=0: got $(echo "$got" | tr '\n' ' ')"
fi

echo "== a named-packages run skips discovery and its filters =="
data="$tmp/named"
mkdir -p "$data"
out="$(AUR_SLEUTH_DATA_DIR="$data" bash bench/pipeline.sh --dry-run \
        --packages icaclient,snapd --skip-judge --skip-dashboard --no-push 2>&1 || true)"
if grep -q '2 packages need auditing' <<< "$out"; then
    ok "--packages icaclient,snapd yields exactly 2 candidates"
else
    bad "named packages did not become the candidate list"
fi
if bash bench/pipeline.sh --packages 'a;id' --dry-run --skip-judge \
        --skip-dashboard --no-push >/dev/null 2>&1; then
    bad "should have refused --packages 'a;id'"
else
    ok "refused a package list with shell metacharacters"
fi
if bash bench/pipeline.sh --escalate '-rf' --dry-run --skip-judge \
        --skip-dashboard --no-push >/dev/null 2>&1; then
    bad "should have refused --escalate '-rf'"
else
    ok "refused an escalation list starting with a hyphen"
fi
if bash bench/pipeline.sh --advisory true --escalate pkg --dry-run \
        --skip-dashboard --no-push >/dev/null 2>&1; then
    bad "should have refused --advisory with --escalate"
else
    ok "refused an advisory escalation: an advisory run holds no court"
fi
if bash bench/pipeline.sh --advisory maybe --dry-run --skip-judge \
        --skip-dashboard --no-push >/dev/null 2>&1; then
    bad "should have refused --advisory maybe"
else
    ok "refused a non-boolean --advisory"
fi
if bash bench/pipeline.sh --advisory-sweep many --dry-run --skip-judge \
        --skip-dashboard --no-push >/dev/null 2>&1; then
    bad "should have refused --advisory-sweep many"
else
    ok "refused a non-numeric --advisory-sweep"
fi
if bash bench/pipeline.sh --advisory-models 'a b' --dry-run --skip-judge \
        --skip-dashboard --no-push >/dev/null 2>&1; then
    bad "should have refused --advisory-models 'a b'"
else
    ok "refused a malformed --advisory-models"
fi

echo "== a package whose every audit failed stays eligible =="
# The audited index is what discovery skips. The soft-failure rule: a
# rate-limited or crashed audit is absence, so a package with only failures
# is retried next run instead of pinned until its next version bump.
got="$(python3 bench/audited-index.py <<'JSON' | sort
{"packages":{
 "good":{"pkgver":"1.0","pkgrel":"1","audits":[{"result":"safe"}]},
 "half":{"pkgver":"2.0","pkgrel":"1","audits":[{"result":"unknown"},{"result":"inconclusive"}]},
 "failed":{"pkgver":"3.0","pkgrel":"2","audits":[{"result":"unknown"},{"result":"skipped"}]},
 "norel":{"pkgver":"4.0","pkgrel":"","audits":[{"result":"unsafe"}]},
 "advonly":{"pkgver":"5.0","pkgrel":"1","audits":[{"result":"safe","advisory":true}]},
 "advplus":{"pkgver":"6.0","pkgrel":"1","audits":[{"result":"safe","advisory":true},{"result":"safe"}]}
}}
JSON
)"
want=$'advplus\t6.0-1\ngood\t1.0-1\nhalf\t2.0-1\nnorel\t4.0'
if [[ "$got" == "$want" ]]; then
    ok "only real verdicts mark a package audited; all-failed and advisory-only stay candidates"
else
    bad "audited index wrong"
    printf '    want: %s\n' "$(echo "$want" | tr '\n' ' ')"
    printf '    got:  %s\n' "$(echo "$got"  | tr '\n' ' ')"
fi
# An advisory run passes --include-advisory, so a recurring sweep skips what
# it already covered and digs deeper instead of re-covering the same head.
got="$(python3 bench/audited-index.py --include-advisory <<'JSON' | sort
{"packages":{
 "advonly":{"pkgver":"5.0","pkgrel":"1","audits":[{"result":"safe","advisory":true}]},
 "advfailed":{"pkgver":"7.0","pkgrel":"1","audits":[{"result":"unknown","advisory":true}]},
 "bare":{"pkgver":"8.0","pkgrel":"1","audits":[]}
}}
JSON
)"
want=$'advonly\t5.0-1'
if [[ "$got" == "$want" ]]; then
    ok "--include-advisory counts advisory coverage, but a failed advisory look is still absence"
else
    bad "--include-advisory wrong"
    printf '    want: %s\n' "$(echo "$want" | tr '\n' ' ')"
    printf '    got:  %s\n' "$(echo "$got"  | tr '\n' ' ')"
fi

echo "== the advisory sweep piggybacks only on an unshaped run =="
# The function is lifted like discover_packages: globals in, log lines out.
# A dry run stops at the announcement, so no child pipeline ever starts here.
sweep_out() {
    (
        eval "$(sed -n '/^run_advisory_sweep()/,/^}/p' bench/pipeline.sh)"
        # All read by the function that arrives through the eval above.
        # shellcheck disable=SC2329
        log() { echo "$@"; }
        # shellcheck disable=SC2034
        DRY_RUN=true NO_PUSH=true SKIP_DASHBOARD=true
        # shellcheck disable=SC2034
        ADVISORY_SWEEP=5 ADVISORY_MODELS=openrouter/free ADVISORY=false
        # shellcheck disable=SC2034
        PACKAGES="" PACKAGES_FILE="" ESCALATE="" ESCALATE_PENDING=false RUN_BUDGET=""
        # shellcheck disable=SC2034
        UPDATED_COUNT=0 SEED_COUNT=0 JOBS=2 AUDIT_TIMEOUT=900 SEED_TOP=1000
        eval "$1"
        run_advisory_sweep
    )
}
if sweep_out '' | grep -q 'DRY RUN: sweep skipped'; then
    ok "an unshaped run reaches the sweep (dry run stops at the announcement)"
else
    bad "the unshaped run should have announced the sweep"
fi
for shaped in 'RUN_BUDGET=2' 'PACKAGES=foo' 'PACKAGES_FILE=/dev/null' \
              'ESCALATE=foo' 'ESCALATE_PENDING=true' 'UPDATED_COUNT=5' \
              'SEED_COUNT=5' 'ADVISORY=true' 'ADVISORY_SWEEP=0'; do
    if [[ -n "$(sweep_out "$shaped")" ]]; then
        bad "a run shaped by $shaped must not sweep"
    else
        ok "no sweep when $shaped"
    fi
done

echo "== MIN_VOTES is a hard floor on the updated stream =="
got="$(run_discover "$tmp/a.json.gz" "$tmp/a.tsv" 5 3 0.8)"
# U4 (3 votes) and U5 (1 vote) fall below the floor and drop out.
want=$'U1\nU2\nS1\nU3\nS2\nS3'
if [[ "$got" == "$want" ]]; then
    ok "MIN_VOTES=5 drops the low-vote updated packages, seed untouched"
else
    bad "MIN_VOTES floor wrong"
    printf '    want: %s\n' "$(echo "$want" | tr '\n' ' ')"
    printf '    got:  %s\n' "$(echo "$got"  | tr '\n' ' ')"
fi

echo "== a version change re-opens an audited package; epoch is stripped =="
# AUR "Version" is [epoch:]pkgver-pkgrel; the audited index is pkgver-pkgrel with
# no epoch. RE changed pkgrel (re-audit); SAME is unchanged (skip); EP is an
# epoch package whose pkgver-pkgrel is unchanged, so stripping the epoch makes it
# match and skip. Using bare versions here (the old fixtures did) would hide the
# real pkgver-vs-Version mismatch, so these carry pkgrel and an epoch.
cat > "$tmp/c.json" <<JSON
[
 {"Name":"RE","Maintainer":"m","Version":"1.5-2","NumVotes":10,"Popularity":3.0,"LastModified":$RECENT},
 {"Name":"SAME","Maintainer":"m","Version":"9.0-1","NumVotes":10,"Popularity":3.0,"LastModified":$RECENT},
 {"Name":"EP","Maintainer":"m","Version":"1:1.0-1","NumVotes":10,"Popularity":3.0,"LastModified":$RECENT}
]
JSON
gzip -c "$tmp/c.json" > "$tmp/c.json.gz"
printf 'RE\t1.5-1\nSAME\t9.0-1\nEP\t1.0-1\n' > "$tmp/c.tsv"
got="$(run_discover "$tmp/c.json.gz" "$tmp/c.tsv" 0 0 0.8)"
if [[ "$got" == "RE" ]]; then
    ok "RE re-audited (pkgrel 1->2); SAME skipped (9.0-1); EP skipped (epoch stripped)"
else
    bad "version-change/epoch dedup wrong; got '$got'"
fi

echo "== updated-share 1.0 is updated-only, 0.0 is seed-only =="
got="$(run_discover "$tmp/a.json.gz" "$tmp/a.tsv" 0 3 1.0)"
want=$'U1\nU2\nU3\nU4\nU5\nS1\nS2\nS3'
if [[ "$got" == "$want" ]]; then
    ok "share 1.0 puts all updated before any seed"
else
    bad "share 1.0 wrong; got $(echo "$got" | tr '\n' ' ')"
fi
got="$(run_discover "$tmp/a.json.gz" "$tmp/a.tsv" 0 3 0.0)"
want=$'S1\nS2\nS3\nU1\nU2\nU3\nU4\nU5'
if [[ "$got" == "$want" ]]; then
    ok "share 0.0 puts all seed before any updated"
else
    bad "share 0.0 wrong; got $(echo "$got" | tr '\n' ' ')"
fi

echo
if (( fails > 0 )); then
    echo "FAILED: $fails check(s)"
    exit 1
fi
echo "candidate selection: all checks passed"
