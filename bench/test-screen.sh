#!/usr/bin/env bash
# Test the `screen` stage in deploy/container/scripts/entrypoint.sh: the loop
# that spends money on candidate models.
#
# Offline, and it must stay that way. bench/benchmark.sh is replaced by a stub
# that charges exactly what the stage estimated and writes the result.json a
# real run would, so every check here is about the stage's own decisions --
# what it screens, in what order, when it stops, and what it does with an
# answer -- rather than about a model.
#
# The stage decides how the screening budget is spent. That is the reason for
# a suite of its own: a bug here is a bill.
#
# Usage: bash bench/test-screen.sh [-q]
set -euo pipefail

cd "$(dirname "$0")/.."
ENTRYPOINT="deploy/container/scripts/entrypoint.sh"

QUIET=false
[[ "${1:-}" == "-q" ]] && QUIET=true

fails=0
ok()  { $QUIET || printf '  ok    %s\n' "$1"; }
bad() { printf '  FAIL  %s\n' "$1"; fails=$(( fails + 1 )); }

tmp="$(mktemp -d)"
trap 'rm -rf "$tmp"' EXIT

SRC="$tmp/src"
mkdir -p "$SRC/bench"
cp bench/scout.py "$SRC/bench/scout.py"

# The stub benchmark. It answers from $DATA/prices -- "model price outcome" per
# line -- and charges the same 200k tokens the stage priced the model at, so
# the budget arithmetic in these tests is exact rather than approximate.
cat > "$SRC/bench/benchmark.sh" <<'STUB'
#!/usr/bin/env bash
set -euo pipefail
MODELS=""; RUN_ID=""; SAMPLE=""; BUDGET=""; TARGET=""
while [[ $# -gt 0 ]]; do
    case "$1" in
        --models) MODELS="$2"; shift 2 ;;
        --run-id) RUN_ID="$2"; shift 2 ;;
        --sample) SAMPLE="$2"; shift 2 ;;
        --budget) BUDGET="$2"; shift 2 ;;
        --target) TARGET="$2"; shift 2 ;;
        *) shift ;;
    esac
done
printf '%s\t%s\t%s\t%s\t%s\n' "$MODELS" "$SAMPLE" "$TARGET" "$BUDGET" "$RUN_ID" \
    >> "$AUR_SLEUTH_DATA_DIR/calls.tsv"

price="$(awk -v m="$MODELS" '$1 == m { print $2 }' "$AUR_SLEUTH_DATA_DIR/prices")"
outcome="$(awk -v m="$MODELS" '$1 == m { print $3 }' "$AUR_SLEUTH_DATA_DIR/prices")"
[[ "$outcome" == blank ]] && exit 3

cost="$(python3 -c "print(f'{$price * 0.2:.6f}')")"
mkdir -p "$AUR_SLEUTH_DATA_DIR/bench/$RUN_ID"
if [[ "$outcome" == pass ]]; then
    passed=7; all=true; fixtures='[]'
else
    passed=5; all=false
    fixtures='[{"fixture":"malicious-source-time","pass":false,"expected":1,"got":0}]'
fi
cat > "$AUR_SLEUTH_DATA_DIR/bench/$RUN_ID/result.json" <<JSON
{"run_id":"$RUN_ID","finished":"2026-08-26T00:00:00Z","target":"$TARGET","models":[
 {"model":"$MODELS","agreement":null,"cost":0,
  "synthetics":{"run":7,"passed":$passed,"all_pass":$all,"cost":$cost,"fixtures":$fixtures}}]}
JSON
STUB

# Four candidates under one dear seat, priced so the estimates are round
# numbers: 0.10, 0.20, 0.30, 0.40, cumulative 0.10, 0.30, 0.60, 1.00.
NOW=1787400000
new_data() {
    local data="$tmp/$1"
    rm -rf "$data"
    mkdir -p "$data/bench" "$data/git"
    python3 - "$data/models-catalog.json" "$NOW" <<'PY'
import json, sys
out, now = sys.argv[1], int(sys.argv[2])
text = {"input_modalities": ["text"], "output_modalities": ["text"]}
def m(mid, blended, age_days):
    p = blended / 1e6
    return {"id": mid, "name": mid, "created": now - age_days * 86400,
            "context_length": 128000, "architecture": text,
            "pricing": {"prompt": f"{p:.12f}", "completion": f"{p:.12f}"}}
data = [m("seat/j", 10.0, 400), m("cand/one", 0.5, 3), m("cand/two", 1.0, 4),
        m("cand/three", 1.5, 5), m("cand/four", 2.0, 6),
        m("old/model", 0.25, 200), m("dear/model", 4.0, 3)]
with open(out, "w") as f:
    json.dump({"data": data}, f)
PY
    cat > "$data/prices" <<'EOF'
cand/one 0.5 pass
cand/two 1.0 fail
cand/three 1.5 pass
cand/four 2.0 pass
old/model 0.25 pass
dear/model 4.0 pass
EOF
    python3 bench/scout.py --catalog "$data/models-catalog.json" \
        --out "$data/bench/scout.json" --now "$NOW" --seats "judge=seat/j" 2>/dev/null
    printf '%s' "$data"
}

# The stage, lifted out of the entrypoint and run against the stub. log and die
# are the entrypoint's own, stubbed the way the other suites stub them.
run_screen() {
    local data="$1"; shift
    (
        set -euo pipefail
        # shellcheck disable=SC2329
        log() { printf '%s\n' "$*" >> "$data/stage.log"; }
        # shellcheck disable=SC2329
        die() { printf 'die: %s\n' "$*" >> "$data/stage.log"; exit 1; }
        # The entrypoint's own globals. They look unused here because their
        # only reader arrives through the eval below.
        # shellcheck disable=SC2034
        DATA_DIR="$data"
        # shellcheck disable=SC2034
        SRC_DIR="$SRC"
        # shellcheck disable=SC2034
        GIT_STORE="$data/git"
        export AUR_SLEUTH_DATA_DIR="$data"
        export OPENAI_API_KEY="not-a-real-key"
        eval "$(sed -n '/^SCREEN_TOKENS_PER_MODEL=/p' "$ENTRYPOINT")"
        eval "$(sed -n '/^screen_run_cost()/,/^}/p' "$ENTRYPOINT")"
        eval "$(sed -n '/^screen_verdict()/,/^}/p' "$ENTRYPOINT")"
        eval "$(sed -n '/^do_screen()/,/^}/p' "$ENTRYPOINT")"
        do_screen "$@"
    )
}

calls() { cut -f1 "$1/calls.tsv" 2>/dev/null || true; }

echo "== the budget is checked before anything is spent =="
data="$(new_data d-validate)"
for args in "" "--budget abc" "--budget 1 --since-days x" "--budget 1 --max-price-per-mtok up" \
            "--budget 1 --nonsense 2"; do
    # shellcheck disable=SC2086
    if run_screen "$data" $args >/dev/null 2>&1; then
        bad "should have been refused: '${args:-<nothing>}'"
    else
        ok "refused '${args:-<nothing>}'"
    fi
done
if [[ ! -s "$data/calls.tsv" ]]; then
    ok "and nothing was screened while being refused"
else
    bad "a refused run still called the benchmark"
fi

echo "== a missing catalog stops the run rather than screening nothing =="
data="$(new_data d-nocatalog)"
rm -f "$data/models-catalog.json"
if run_screen "$data" --budget 1.00 >/dev/null 2>&1; then
    bad "a missing catalog should stop the stage"
elif grep -q 'models-catalog.json is missing' "$data/stage.log"; then
    ok "it names the file and the stage that caches it"
else
    bad "the message does not name the catalog"
fi

echo "== every candidate is screened, cheapest first =="
data="$(new_data d-all)"
run_screen "$data" --budget 1.00 --since-days 45 >/dev/null 2>&1
if [[ "$(calls "$data")" == "cand/one
cand/two
cand/three
cand/four" ]]; then
    ok "cheapest first, which is the order that screens the most models per dollar"
else
    bad "wrong order or set: $(calls "$data" | tr '\n' ' ')"
fi
if python3 - "$data/calls.tsv" <<'PY'
import sys
rows = [l.rstrip("\n").split("\t") for l in open(sys.argv[1]) if l.strip()]
# A screen is synthetics-only and labelled, and each run gets its own budget:
# what is left, not what the stage started with.
assert all(r[1] == "0" and r[2] == "screen" for r in rows), rows
assert [r[3] for r in rows] == ["1.0000", "0.9000", "0.7000", "0.4000"], rows
assert len({r[4] for r in rows}) == len(rows), "run ids must be distinct"
PY
then
    ok "each run is --sample 0, labelled screen, and given only what is left"
else
    bad "the benchmark was called with the wrong flags"
fi
# shellcheck disable=SC2016  # the '$' is a literal dollar sign in the log line
if grep -q 'Screened 4 model(s) for \$1.000000: 3 passed, 1 rejected' "$data/stage.log"; then
    ok "the summary counts what was learned"
else
    bad "the summary is wrong: $(grep -i 'Screened' "$data/stage.log" || echo none)"
fi
if grep -q 'cand/two: REJECTED 5/7 (failed: malicious-source-time)' "$data/stage.log"; then
    ok "a rejection names the fixture it failed"
else
    bad "the verdict line does not name the failed fixture"
fi

echo "== the results reach the card without waiting for a pipeline run =="
if python3 - "$data/bench/scout.json" <<'PY'
import json, sys
d = json.load(open(sys.argv[1]))
by = {c["id"]: c for c in d["candidates"]}
assert "cand/one" in by and "cand/three" in by, sorted(by)
assert "cand/two" not in by, "a failed screen leaves the shortlist"
assert [c["id"] for c in d["rejected"]] == ["cand/two"], d["rejected"]
assert by["cand/one"]["screen"] == {"passed": True, "run": by["cand/one"]["screen"]["run"],
                                    "fixtures_passed": 7, "of": 7}, by["cand/one"]
assert by["cand/one"]["screen"]["run"].startswith("screen-"), by["cand/one"]["screen"]
# Out of the window, so nothing was spent on it and it says nothing.
assert "screen" not in by["old/model"], by["old/model"]
PY
then
    ok "the stage refreshes the shortlist with what it just paid to learn"
else
    bad "the shortlist was not refreshed"
fi

echo "== the budget binds between models, not inside one =="
# 0.35 buys cand/one (0.10) and cand/two (0.20). cand/three needs 0.30 and only
# 0.05 is left, so it is not started: seven fixtures are the unit of spend, and
# half a screen answers nothing.
data="$(new_data d-budget)"
run_screen "$data" --budget 0.35 --since-days 45 >/dev/null 2>&1
if [[ "$(calls "$data")" == "cand/one
cand/two" ]]; then
    ok "it stops before a model it cannot afford whole"
else
    bad "budget stop screened: $(calls "$data" | tr '\n' ' ')"
fi
if grep -q 'stopping with 2 candidate(s) unscreened' "$data/stage.log"; then
    ok "and says how many are left for the next run"
else
    bad "no unscreened count in the log"
fi

echo "== the window and the ceiling are the stage's own filters =="
data="$(new_data d-filters)"
run_screen "$data" --budget 5.00 --since-days 45 --max-price-per-mtok 1.2 >/dev/null 2>&1
if [[ "$(calls "$data")" == "cand/one
cand/two" ]]; then
    ok "nothing above the ceiling is started, and nothing older than the window"
else
    bad "filters let through: $(calls "$data" | tr '\n' ' ')"
fi
data="$(new_data d-backfill)"
run_screen "$data" --budget 5.00 --since-days 365 --max-price-per-mtok 5.00 >/dev/null 2>&1
if [[ "$(calls "$data")" == "old/model
cand/one
cand/two
cand/three
cand/four
dear/model" ]]; then
    ok "a wider window and a raised ceiling are the whole of a backfill"
else
    bad "the backfill screened: $(calls "$data" | tr '\n' ' ')"
fi

echo "== nothing is screened twice =="
data="$(new_data d-again)"
run_screen "$data" --budget 1.00 --since-days 45 >/dev/null 2>&1
: > "$data/calls.tsv"
run_screen "$data" --budget 1.00 --since-days 45 >/dev/null 2>&1
if [[ ! -s "$data/calls.tsv" ]]; then
    ok "a second run over the same candidates spends nothing"
else
    bad "re-screened: $(calls "$data" | tr '\n' ' ')"
fi
if grep -q 'Nothing to screen' "$data/stage.log"; then
    ok "and says so"
else
    bad "it did not say there was nothing to do"
fi

echo "== a model that never answers is not a rejection =="
# No result file means the model was never asked, which is a provider problem,
# not a verdict. One is tolerated; three in a row is this stage being broken,
# and grinding through the list would only prove it again.
data="$(new_data d-blank)"
sed -i 's/^cand\/one 0.5 pass/cand\/one 0.5 blank/' "$data/prices"
run_screen "$data" --budget 1.00 --since-days 45 >/dev/null 2>&1
if [[ "$(calls "$data")" == "cand/one
cand/two
cand/three
cand/four" ]]; then
    ok "one blank run does not stop the batch"
else
    bad "a blank run derailed the batch: $(calls "$data" | tr '\n' ' ')"
fi
if python3 - "$data/bench/scout.json" <<'PY'
import json, sys
d = json.load(open(sys.argv[1]))
by = {c["id"]: c for c in d["candidates"] + d["rejected"]}
assert "screen" not in by.get("cand/one", {}), "a model that never answered was not screened"
PY
then
    ok "and the model it could not reach stays unscreened, not rejected"
else
    bad "a blank run was recorded as a screen result"
fi

data="$(new_data d-blanks)"
sed -i 's/ pass$/ blank/; s/ fail$/ blank/' "$data/prices"
if run_screen "$data" --budget 5.00 --since-days 365 >/dev/null 2>&1; then
    bad "three blank runs in a row should stop the stage"
elif grep -q 'three candidates in a row produced no result' "$data/stage.log"; then
    ok "three in a row stops it"
else
    bad "it stopped for the wrong reason"
fi

echo
if (( fails > 0 )); then
    echo "FAILED: $fails check(s)"
    exit 1
fi
echo "screen: all checks passed"
