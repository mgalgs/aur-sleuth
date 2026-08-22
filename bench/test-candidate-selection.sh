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
 {"Name":"DONE","Maintainer":"m","Version":"2","NumVotes":900,"Popularity":900.0,"LastModified":$RECENT}
]
JSON
gzip -c "$tmp/a.json" > "$tmp/a.json.gz"
printf 'DONE\t2\n' > "$tmp/a.tsv"

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

echo "== a version change re-opens an audited package =="
cat > "$tmp/c.json" <<JSON
[
 {"Name":"RE","Maintainer":"m","Version":"5","NumVotes":10,"Popularity":3.0,"LastModified":$RECENT},
 {"Name":"SAME","Maintainer":"m","Version":"9","NumVotes":10,"Popularity":3.0,"LastModified":$RECENT}
]
JSON
gzip -c "$tmp/c.json" > "$tmp/c.json.gz"
printf 'RE\t4\nSAME\t9\n' > "$tmp/c.tsv"
got="$(run_discover "$tmp/c.json.gz" "$tmp/c.tsv" 0 0 0.8)"
if [[ "$got" == "RE" ]]; then
    ok "RE re-audited (audited at 4, now 5); SAME skipped (audited at 9)"
else
    bad "version-change dedup wrong; got '$got'"
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
