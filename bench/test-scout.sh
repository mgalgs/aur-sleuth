#!/usr/bin/env bash
# Test bench/scout.py: the code-only shortlist of catalog models that could
# undercut a seat. Offline: a synthetic catalog, synthetic benchmark results,
# no network and no API call.
#
# Usage: bash bench/test-scout.sh [-q]
set -euo pipefail

cd "$(dirname "$0")/.."

QUIET=false
[[ "${1:-}" == "-q" ]] && QUIET=true

fails=0
ok()  { $QUIET || printf '  ok    %s\n' "$1"; }
bad() { printf '  FAIL  %s\n' "$1"; fails=$(( fails + 1 )); }

tmp="$(mktemp -d)"
trap 'rm -rf "$tmp"' EXIT

NOW=1787400000
RECENT=$(( NOW - 10 * 86400 ))   # inside the "new" window
OLD=$(( NOW - 400 * 86400 ))     # far outside it

# A catalog with every case: the seats themselves, a cheap capable model, a
# brand-new one, a free tier, a small-context model, an image-only model,
# a ':free' variant, and one too expensive to undercut anything.
cat > "$tmp/catalog.json" <<JSON
{"data": [
 {"id":"seat/judge","name":"Judge","created":$OLD,"context_length":128000,
  "architecture":{"input_modalities":["text"],"output_modalities":["text"]},
  "pricing":{"prompt":"0.0000010","completion":"0.0000020"}},
 {"id":"seat/audit","name":"Audit","created":$OLD,"context_length":128000,
  "architecture":{"input_modalities":["text"],"output_modalities":["text"]},
  "pricing":{"prompt":"0.0000002","completion":"0.0000004"}},
 {"id":"new/cheap","name":"New Cheap","created":$RECENT,"context_length":200000,
  "architecture":{"input_modalities":["text","image"],"output_modalities":["text"]},
  "pricing":{"prompt":"0.0000001","completion":"0.0000002"}},
 {"id":"old/mid","name":"Old Mid","created":$OLD,"context_length":64000,
  "architecture":{"modality":"text->text"},
  "reasoning":{"mandatory":true,"default_enabled":true},
  "pricing":{"prompt":"0.0000005","completion":"0.0000010"}},
 {"id":"free/model","name":"Free","created":$RECENT,"context_length":128000,
  "architecture":{"input_modalities":["text"],"output_modalities":["text"]},
  "pricing":{"prompt":"0","completion":"0"}},
 {"id":"tiny/context","name":"Tiny","created":$RECENT,"context_length":8000,
  "architecture":{"input_modalities":["text"],"output_modalities":["text"]},
  "pricing":{"prompt":"0.0000001","completion":"0.0000001"}},
 {"id":"image/only","name":"Pics","created":$RECENT,"context_length":128000,
  "architecture":{"input_modalities":["image"],"output_modalities":["image"]},
  "pricing":{"prompt":"0.0000001","completion":"0.0000001"}},
 {"id":"colon/model:free","name":"Colon","created":$RECENT,"context_length":128000,
  "architecture":{"input_modalities":["text"],"output_modalities":["text"]},
  "pricing":{"prompt":"0","completion":"0"}},
 {"id":"pricey/giant","name":"Giant","created":$RECENT,"context_length":1000000,
  "architecture":{"input_modalities":["text"],"output_modalities":["text"]},
  "pricing":{"prompt":"0.0000100","completion":"0.0000300"}}
]}
JSON

# A past benchmark scored one of the candidates.
mkdir -p "$tmp/bench/20260801-000000"
cat > "$tmp/bench/20260801-000000/result.json" <<JSON
{"run_id":"20260801-000000","models":[{"model":"old/mid","agreement":0.947,"cost_per_package":0.0113}]}
JSON

run_scout() {
    python3 bench/scout.py --catalog "$tmp/catalog.json" --out "$tmp/out.json" \
        --bench-dir "$tmp/bench" --now "$NOW" \
        --seats "audit=seat/audit;judge=seat/judge" 2>/dev/null
}

echo "== the shortlist keeps the right models =="
run_scout
have() { python3 -c "
import json, sys
d = json.load(open('$tmp/out.json'))
ids = [c['id'] for c in d['candidates']]
sys.exit(0 if ('$1' in ids) == ($2) else 1)
" ; }
for wanted in new/cheap old/mid; do
    if have "$wanted" True; then ok "$wanted is a candidate"; else bad "$wanted missing"; fi
done
for dropped in seat/judge seat/audit free/model tiny/context image/only colon/model:free pricey/giant; do
    if have "$dropped" False; then ok "$dropped excluded from the paid shortlist"; else bad "$dropped should be excluded"; fi
done

echo "== free tiers get their own capped group =="
# Benchmarkable, not price-ranked: 'free' would top every sort on a
# technicality, and the errors column is what measures a free tier.
if python3 - "$tmp/out.json" <<'PY'
import json, sys
d = json.load(open(sys.argv[1]))
ids = {f["id"] for f in d["free"]}
assert ids == {"free/model", "colon/model:free"}, ids
assert all("blended_per_mtok" not in f for f in d["free"])
PY
then
    ok "price-zero text models land in the free group, ':free' ids included"
else
    bad "free group wrong"
fi

echo "== the fields the card shows are right =="
if python3 - "$tmp/out.json" <<'PY'; then ok "savings, newness, scores and order check out"; else bad "candidate fields wrong"; fi
import json, sys
d = json.load(open(sys.argv[1]))
by = {c["id"]: c for c in d["candidates"]}
cheap, mid = by["new/cheap"], by["old/mid"]
assert cheap["new"] is True and mid["new"] is False
# new/cheap: 0.125/mtok vs judge 1.25 -> 90%; vs audit 0.25 -> 50%.
assert cheap["savings_pct"] == {"judge": 90, "audit": 50}, cheap["savings_pct"]
# old/mid (0.625) undercuts only the judge (1.25).
assert mid["cheaper_than"] == ["judge"], mid["cheaper_than"]
# A past benchmark brings MEASURED cost along: tokens actually used times
# their price, which is the number that outranks any catalog price.
assert mid["benchmarked"] == {"agreement": 0.947, "run": "20260801-000000",
                              "cost_per_package": 0.0113}
assert "benchmarked" not in cheap
# Cheapest first.
assert [c["id"] for c in d["candidates"]] == ["new/cheap", "old/mid"]
assert d["seats"]["judge"]["blended_per_mtok"] == 1.25
PY

echo "== the spend shares put a seat's price in pipeline terms =="
# A week of work: two plain audits, one escalation, one judge ruling. The
# shares tell the page how much of the pipeline each seat is.
mkdir -p "$tmp/data/bulk-reports/m1" "$tmp/data/judge"
printf -- '---\ncost: 0.02\ndate: x\n---\nbody\n' > "$tmp/data/bulk-reports/m1/aur-sleuth-report-a.txt"
printf -- '---\ncost: 0.02\ndate: x\n---\nbody\n' > "$tmp/data/bulk-reports/m1/aur-sleuth-report-b.txt"
printf -- '---\ncost: 0.05\ntriggered_by: a/judge.json\ndate: x\n---\nbody\n' > "$tmp/data/bulk-reports/m1/aur-sleuth-report-c.txt"
printf '{"_judge_usage": {"cost": 0.01}}\n' > "$tmp/data/judge/a.json"
python3 bench/scout.py --catalog "$tmp/catalog.json" --out "$tmp/out2.json" \
    --data-dir "$tmp/data" --now "$NOW" --seats "audit=seat/audit" >/dev/null 2>&1 || true
if python3 - "$tmp/out2.json" <<'PY'
import json, sys
d = json.load(open(sys.argv[1]))
s = d["spend"]["shares"]
assert s == {"audit": 0.4, "reaudit": 0.5, "judge": 0.1}, s
PY
then
    ok "audit/escalation/judge shares computed from the volume"
else
    bad "spend shares wrong or missing"
fi

echo "== --probe-free without an API key is a no-op, not a network call =="
# The probe needs a key to speak to the router; without one the free list
# stays as it was, unprobed and uncapped differently, and no tally appears.
if env -u OPENAI_API_KEY python3 bench/scout.py --catalog "$tmp/catalog.json" \
    --out "$tmp/out3.json" --now "$NOW" --probe-free \
    --seats "audit=seat/audit" >/dev/null 2>&1 \
    && python3 - "$tmp/out3.json" <<'PY'
import json, sys
d = json.load(open(sys.argv[1]))
assert "free_probe" not in d, d.get("free_probe")
assert {f["id"] for f in d["free"]} == {"free/model", "colon/model:free"}
assert all("probe_ms" not in f for f in d["free"])
PY
then
    ok "no key: the unprobed free list survives, no tally, no probe fields"
else
    bad "--probe-free without a key must leave the free list alone"
fi

echo "== a missing catalog is quiet, not an error =="
if python3 bench/scout.py --catalog "$tmp/nope.json" --out "$tmp/none.json" --now "$NOW" 2>/dev/null; then
    ok "exit 0 with no catalog"
else
    bad "a missing catalog must not fail the run"
fi
if [[ -e "$tmp/none.json" ]]; then
    bad "no catalog should write no shortlist"
else
    ok "and it writes nothing"
fi

echo
if (( fails > 0 )); then
    echo "FAILED: $fails check(s)"
    exit 1
fi
echo "scout: all checks passed"
