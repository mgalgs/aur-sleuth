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

echo "== the price ceiling bounds what a screening batch can cost =="
# A catalog of its own, so the shortlist fixture above keeps its assertions.
# One dear seat, so nothing here is dropped for undercutting nothing and each
# check measures only the filter it names. Blended = 0.75*prompt + 0.25*completion.
cat > "$tmp/filters.json" <<JSON
{"data": [
 {"id":"seat/dear","name":"Dear","created":$OLD,"context_length":128000,
  "architecture":{"input_modalities":["text"],"output_modalities":["text"]},
  "pricing":{"prompt":"0.0000080","completion":"0.0000160"}},
 {"id":"ceil/under","name":"Under","created":$RECENT,"context_length":128000,
  "architecture":{"input_modalities":["text"],"output_modalities":["text"]},
  "pricing":{"prompt":"0.0000010","completion":"0.0000010"}},
 {"id":"ceil/at","name":"At","created":$RECENT,"context_length":128000,
  "architecture":{"input_modalities":["text"],"output_modalities":["text"]},
  "pricing":{"prompt":"0.0000020","completion":"0.0000020"}},
 {"id":"ceil/over","name":"Over","created":$RECENT,"context_length":128000,
  "architecture":{"input_modalities":["text"],"output_modalities":["text"]},
  "pricing":{"prompt":"0.0000025","completion":"0.0000025"}},
 {"id":"ceil/free","name":"Free","created":$RECENT,"context_length":128000,
  "architecture":{"input_modalities":["text"],"output_modalities":["text"]},
  "pricing":{"prompt":"0","completion":"0"}},
 {"id":"short/output","name":"Short","created":$RECENT,"context_length":128000,
  "architecture":{"input_modalities":["text"],"output_modalities":["text"]},
  "top_provider":{"max_completion_tokens":2048},
  "pricing":{"prompt":"0.0000010","completion":"0.0000010"}},
 {"id":"long/output","name":"Long","created":$RECENT,"context_length":128000,
  "architecture":{"input_modalities":["text"],"output_modalities":["text"]},
  "top_provider":{"max_completion_tokens":8192},
  "pricing":{"prompt":"0.0000010","completion":"0.0000010"}},
 {"id":"null/output","name":"Silent","created":$RECENT,"context_length":128000,
  "architecture":{"input_modalities":["text"],"output_modalities":["text"]},
  "top_provider":{"max_completion_tokens":null},
  "pricing":{"prompt":"0.0000010","completion":"0.0000010"}},
 {"id":"free/short","name":"Free Short","created":$RECENT,"context_length":128000,
  "architecture":{"input_modalities":["text"],"output_modalities":["text"]},
  "top_provider":{"max_completion_tokens":1024},
  "pricing":{"prompt":"0","completion":"0"}}
]}
JSON

run_filters() {
    python3 bench/scout.py --catalog "$tmp/filters.json" --out "$2" \
        --now "$NOW" --seats "judge=seat/dear" --max-price-per-mtok "$1" 2>/dev/null
}
run_filters 2.00 "$tmp/f200.json"
run_filters 3.00 "$tmp/f300.json"
run_filters 0.50 "$tmp/f050.json"

if python3 - "$tmp/f200.json" "$tmp/f300.json" "$tmp/f050.json" <<'PY'
import json, sys
at2, at3, at05 = [json.load(open(p)) for p in sys.argv[1:]]
ids = lambda d: {c["id"] for c in d["candidates"]}
free = lambda d: {f["id"] for f in d["free"]}
# The ceiling is inclusive: a model priced exactly at it is affordable.
assert "ceil/at" in ids(at2), ids(at2)
assert "ceil/under" in ids(at2)
assert "ceil/over" not in ids(at2), "2.5/Mtok is over a 2.00 ceiling"
# The flag moves it, so nothing here is a constant in disguise.
assert "ceil/over" in ids(at3), ids(at3)
assert "ceil/at" not in ids(at05) and "ceil/under" not in ids(at05), ids(at05)
# Zero is under every ceiling, and a free model costs a screen nothing.
assert "ceil/free" in free(at2) and "ceil/free" in free(at05), free(at05)
PY
then
    ok "the ceiling admits its own price, rejects above it, and never touches a free tier"
else
    bad "the price ceiling is wrong"
fi

if python3 - "$tmp/f200.json" <<'PY'
import json, sys
d = json.load(open(sys.argv[1]))
ids = {c["id"] for c in d["candidates"]}
# A stated limit too short to hold an assessment; silence is not a short answer.
assert "short/output" not in ids, ids
assert "long/output" in ids and "null/output" in ids, ids
assert "free/short" not in {f["id"] for f in d["free"]}
PY
then
    ok "a stated output limit under 4096 is rejected; an unstated one is not"
else
    bad "the output-length filter is wrong"
fi

echo "== the screen's answer decides which group a candidate is in =="
# Twelve cheap models that undercut both seats, plus three mid-priced ones
# that undercut only the judge. Price rank alone can never reach the mid
# three: that is the blindness the groups exist to fix.
python3 - "$tmp/groups.json" "$NOW" <<'PY'
import json, sys
out, now = sys.argv[1], int(sys.argv[2])
old, recent = now - 400 * 86400, now - 5 * 86400
text = {"input_modalities": ["text"], "output_modalities": ["text"]}
def m(mid, blended, created):
    per_token = blended / 1e6
    return {"id": mid, "name": mid, "created": created, "context_length": 128000,
            "architecture": text,
            "pricing": {"prompt": f"{per_token:.12f}", "completion": f"{per_token:.12f}"}}
data = [m("seat/a", 0.10, old), m("seat/j", 1.25, old)]
data += [m(f"cheap{i:02d}", 0.001 * (i + 1), old) for i in range(12)]
# Newest last, so "newest first" is a real ordering and not the input order.
data += [m("mid/new", 0.50, recent - 300), m("mid/newer", 0.55, recent - 100),
         m("mid/passed", 0.60, old), m("mid/failed", 0.70, old),
         m("new/failed", 0.80, recent)]
with open(out, "w") as f:
    json.dump({"data": data}, f)
PY

mkdir -p "$tmp/bench2/20260810-000000" "$tmp/bench2/20260811-000000" \
         "$tmp/bench2/20260812-000000" "$tmp/bench2/20260809-000000"
# A screen: synthetics only, so its sample is empty and its agreement is null.
# The scout must still recognise it -- keying the whole record on a numeric
# agreement is what silently threw every screen away.
cat > "$tmp/bench2/20260810-000000/result.json" <<'JSON'
{"run_id":"20260810-000000","finished":"2026-08-10T00:10:00Z","target":"screen","models":[
 {"model":"mid/passed","agreement":null,"cost_per_package":null,
  "synthetics":{"run":7,"passed":7,"all_pass":true,"cost":0.12,"fixtures":[]}}]}
JSON
cat > "$tmp/bench2/20260811-000000/result.json" <<'JSON'
{"run_id":"20260811-000000","finished":"2026-08-11T00:10:00Z","target":"screen","models":[
 {"model":"mid/failed","agreement":null,"synthetics":{"run":7,"passed":5,"all_pass":false,"cost":0.09,"fixtures":[]}}]}
JSON
cat > "$tmp/bench2/20260812-000000/result.json" <<'JSON'
{"run_id":"20260812-000000","finished":"2026-08-12T00:10:00Z","target":"screen","models":[
 {"model":"new/failed","agreement":null,"synthetics":{"run":7,"passed":6,"all_pass":false,"cost":0.10,"fixtures":[]}}]}
JSON
# A full benchmark: both kinds of evidence about one model, in one record.
cat > "$tmp/bench2/20260809-000000/result.json" <<'JSON'
{"run_id":"20260809-000000","finished":"2026-08-09T00:10:00Z","models":[
 {"model":"cheap00","agreement":0.9,"cost_per_package":0.02,
  "synthetics":{"run":7,"passed":7,"all_pass":true,"cost":0.03,"fixtures":[]}}]}
JSON

python3 bench/scout.py --catalog "$tmp/groups.json" --out "$tmp/groups-out.json" \
    --bench-dir "$tmp/bench2" --now "$NOW" --max-per-seat 10 \
    --seats "audit=seat/a;judge=seat/j" 2>/dev/null

if python3 - "$tmp/groups-out.json" <<'PY'
import json, sys
d = json.load(open(sys.argv[1]))
ids = [c["id"] for c in d["candidates"]]
# The cap is per seat, and the seat lists are nested by price, so the slice is
# the ten cheapest -- mid/new cannot reach it at any quality.
assert [i for i in ids if i.startswith("cheap")] == [f"cheap{i:02d}" for i in range(10)], ids
assert "mid/new" not in ids and "mid/newer" not in ids, ids
# What the screen cleared stays, whatever its price rank: the money is spent.
assert "mid/passed" in ids, ids
assert ids == sorted(ids, key=lambda i: [c["blended_per_mtok"] for c in d["candidates"] if c["id"] == i][0])
# What the screen rejected leaves the shortlist entirely.
assert "mid/failed" not in ids and "new/failed" not in ids, ids
PY
then
    ok "a passed screen keeps a mid-priced model on the card; a failed one takes it off"
else
    bad "the shortlist does not respect the screen"
fi

if python3 - "$tmp/groups-out.json" <<'PY'
import json, sys
d = json.load(open(sys.argv[1]))
arrivals = [c["id"] for c in d["new_arrivals"]]
# Newest first, and a rejected model is not an arrival however new it is.
assert arrivals == ["mid/newer", "mid/new"], arrivals
assert "new/failed" not in arrivals
rejected = [(c["id"], c["screen"]["run"]) for c in d["rejected"]]
assert rejected == [("new/failed", "20260812-000000"), ("mid/failed", "20260811-000000")], rejected
assert len(d["rejected"]) <= 10
PY
then
    ok "new_arrivals is newest-first and screen-clean; the rejects stay visible, newest first"
else
    bad "new_arrivals or rejected is wrong"
fi

if python3 - "$tmp/groups-out.json" <<'PY'
import json, sys
d = json.load(open(sys.argv[1]))
by = {c["id"]: c for c in d["candidates"] + d["rejected"] + d["new_arrivals"]}
assert by["mid/passed"]["screen"] == {"passed": True, "run": "20260810-000000",
                                      "fixtures_passed": 7, "of": 7}, by["mid/passed"]
assert by["mid/failed"]["screen"]["passed"] is False
assert by["mid/failed"]["screen"]["fixtures_passed"] == 5
# A full run scores AND screens, so one model can carry both records.
assert by["cheap00"]["benchmarked"] == {"agreement": 0.9, "run": "20260809-000000",
                                        "cost_per_package": 0.02}
assert by["cheap00"]["screen"]["passed"] is True
# An unscreened model says nothing rather than saying no.
assert "screen" not in by["cheap01"], by["cheap01"]
PY
then
    ok "a synthetics-only result is read as a screen, beside any benchmark score"
else
    bad "the benchmark join is wrong"
fi

echo "== the new-arrivals group is capped =="
python3 - "$tmp/many-new.json" "$NOW" <<'PY'
import json, sys
out, now = sys.argv[1], int(sys.argv[2])
text = {"input_modalities": ["text"], "output_modalities": ["text"]}
def m(mid, blended, created):
    p = blended / 1e6
    return {"id": mid, "name": mid, "created": created, "context_length": 128000,
            "architecture": text, "pricing": {"prompt": f"{p:.12f}", "completion": f"{p:.12f}"}}
data = [m("seat/j", 1.25, now - 400 * 86400)]
data += [m(f"new{i:02d}", 0.1 + i * 0.01, now - (i + 1) * 86400) for i in range(12)]
with open(out, "w") as f:
    json.dump({"data": data}, f)
PY
python3 bench/scout.py --catalog "$tmp/many-new.json" --out "$tmp/many-new-out.json" \
    --now "$NOW" --seats "judge=seat/j" 2>/dev/null
if python3 - "$tmp/many-new-out.json" <<'PY'
import json, sys
d = json.load(open(sys.argv[1]))
arrivals = [c["id"] for c in d["new_arrivals"]]
assert len(arrivals) == 8, arrivals
assert arrivals == [f"new{i:02d}" for i in range(8)], arrivals
PY
then
    ok "eight arrivals at most, newest first"
else
    bad "the new-arrivals cap is wrong"
fi

echo "== screen-list is the one answer to 'what should we screen next' =="
if python3 - <<PY
import json, subprocess, sys
def ids(*extra):
    out = subprocess.run(["python3", "bench/scout.py", "screen-list",
                          "--catalog", "$tmp/groups.json", "--bench-dir", "$tmp/bench2",
                          "--now", "$NOW", *extra],
                         capture_output=True, text=True)
    return [json.loads(l)["id"] for l in out.stdout.splitlines() if l.strip()]

seats = ["--seats", "audit=seat/a;judge=seat/j"]
every = ids(*seats, "--since-days", "0")
# Cheapest first: the screen costs a fixed number of tokens per model, so that
# order is simply the one that screens the most models per dollar.
assert every[:3] == ["cheap01", "cheap02", "cheap03"], every[:3]
# Already screened, either way, is never screened again -- including cheap00,
# whose fixtures a full benchmark ran as part of scoring it.
assert "mid/passed" not in every and "mid/failed" not in every and "new/failed" not in every, every
assert "cheap00" not in every, every
assert "mid/new" in every and "seat/a" not in every

recent = ids(*seats, "--since-days", "45")
assert set(recent) == {"mid/new", "mid/newer"}, recent
assert ids(*seats, "--since-days", "0", "--limit", "4") == every[:4]
assert "cheap11" not in ids(*seats, "--since-days", "0", "--max-price-per-mtok", "0.011")

# The seats can come from a previous shortlist, which is how the container
# stage gets them: it does not read the pipeline's model settings.
assert ids("--seats-from", "$tmp/groups-out.json", "--since-days", "0") == every
rc = subprocess.run(["python3", "bench/scout.py", "screen-list", "--catalog", "$tmp/groups.json"],
                    capture_output=True, text=True).returncode
assert rc != 0, "no seats means nothing to undercut, which is an error not an empty list"
PY
then
    ok "cheapest first, never re-screened, windowed, capped, and seats read from a shortlist"
else
    bad "screen-list is wrong"
fi

echo "== the scout never probes: no request leaves this process =="
# The advisory work all goes through openrouter/free, which filters for
# availability itself on every request; a scout probe would spend the
# free tier's daily request allowance on measurements nothing acts on.
# Guarded on the source: the scout must stay code-only, no network.
if grep -qE 'urllib|urlopen|http|requests' bench/scout.py; then
    bad "scout.py should make no network calls"
else
    ok "scout.py is code-only: no network machinery in the file"
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
