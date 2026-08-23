#!/usr/bin/env bash
# Offline checks for the model benchmark: the scoring in benchmark-report.py,
# its `row` reader, and the sample selection in benchmark-sample.py.
#
# Costs nothing: no model is called and no package is fetched. The live run
# (bench/benchmark.sh) is exercised through the UI.
#
# Usage: bash bench/test-benchmark.sh [-q]
set -euo pipefail

cd "$(dirname "$0")/.."

tmp="$(mktemp -d)"
trap 'rm -rf "$tmp"' EXIT

python3 - "$PWD/bench" "$tmp" "${1:-}" <<'PY'
import importlib.util, json, os, subprocess, sys
from importlib.machinery import SourceFileLoader

bench, tmp = sys.argv[1], sys.argv[2]
quiet = len(sys.argv) > 3 and sys.argv[3] == "-q"
fails = 0
def check(name, cond):
    global fails
    if cond:
        if not quiet:
            print(f"  ok    {name}")
    else:
        print(f"  FAIL  {name}")
        fails += 1

def load(name):
    path = os.path.join(bench, name)
    spec = importlib.util.spec_from_file_location(name, path, loader=SourceFileLoader(name, path))
    mod = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(mod)
    return mod

# --- scoring ------------------------------------------------------------------
report = load("benchmark-report.py")

def row(model, pkg, ref, res, cost, **kw):
    # Package "a" is the one a person settled; the rest were settled by the pipeline.
    r = {"model": model, "package": pkg, "reference": ref, "result": res, "cost": cost, "seconds": 10,
         "reference_source": "human" if pkg == "a" else ("models" if ref in ("safe", "unsafe") else "")}
    r.update(kw)
    return r

rows = [
    # cheap: agrees with everything, one false flag on an ordinary clean package
    row("cheap", "a", "unsafe", "unsafe", 0.01),
    row("cheap", "b", "safe", "safe", 0.01),
    row("cheap", "c", "safe", "unsafe", 0.01),
    row("cheap", "d", "safe", "safe", 0.01, overridden=True),
    row("cheap", "e", "unknown", "safe", 0.01),
    # misser: cheaper still, but calls a confirmed package safe
    row("misser", "a", "unsafe", "safe", 0.005),
    row("misser", "b", "safe", "safe", 0.005),
    row("misser", "c", "safe", "safe", 0.005),
    row("misser", "d", "safe", "unsafe", 0.005, overridden=True),
    # pricey: perfect
    row("pricey", "a", "unsafe", "unsafe", 0.05),
    row("pricey", "b", "safe", "safe", 0.05),
    row("pricey", "c", "safe", "safe", 0.05),
    row("pricey", "d", "safe", "safe", 0.05, overridden=True),
    row("pricey", "f", "safe", "inconclusive", 0.05),
    row("pricey", "g", "safe", "timeout", 0.0, exit=124),
]
synth = [
    {"model": "cheap", "fixture": "benign-x", "expected": 0, "exit": 0, "pass": True, "cost": 0.001},
    {"model": "cheap", "fixture": "malicious-y", "expected": 1, "exit": 1, "pass": True, "cost": 0.001},
    {"model": "misser", "fixture": "benign-x", "expected": 0, "exit": 0, "pass": True, "cost": 0.001},
    {"model": "misser", "fixture": "malicious-y", "expected": 1, "exit": 0, "pass": False, "cost": 0.001},
    {"model": "pricey", "fixture": "benign-x", "expected": 0, "exit": 0, "pass": True, "cost": 0.01},
    {"model": "pricey", "fixture": "malicious-y", "expected": 1, "exit": 1, "pass": True, "cost": 0.01},
]

cheap = report.score("cheap", rows, synth)
check("unknown references are not scored", cheap["sample"] == 5 and cheap["scored"] == 4)
check("agreement counts matches over scored", cheap["agree"] == 3 and cheap["agreement"] == 0.75)
check("a false flag is counted against the clean packages", cheap["false_flags"] == 1 and cheap["of_safe"] == 3)
check("a false flag on an ordinary package is not a hard flag", cheap["hard_flags"] == 0 and cheap["of_hard"] == 1)
check("no misses", cheap["misses"] == 0 and cheap["of_unsafe"] == 1)
check("cost is summed over the whole sample", abs(cheap["cost"] - 0.05) < 1e-9)
check("cost per package divides by the sample", abs(cheap["cost_per_package"] - 0.01) < 1e-9)
check("synthetics all pass", cheap["synthetics"]["all_pass"] and cheap["synthetics"]["passed"] == 2)
check("the disagreement is listed", [d["package"] for d in cheap["disagreements"]] == ["c"])

misser = report.score("misser", rows, synth)
check("a miss is counted", misser["misses"] == 1)
check("a miss against a human-settled verdict is a human miss",
      misser["human"]["misses"] == 1 and misser["pipeline"]["misses"] == 0)
check("the split adds up", misser["human"]["scored"] + misser["pipeline"]["scored"] == misser["scored"])
check("a candidate is not an incumbent", not misser["incumbent"])
check("a false flag on an overturned package is a hard flag", misser["hard_flags"] == 1)
check("a failed synthetic is recorded", not misser["synthetics"]["all_pass"])

pricey = report.score("pricey", rows, synth)
check("inconclusive is counted and not scored", pricey["inconclusive"] == 1 and pricey["scored"] == 4)
check("a timeout is an error, not a verdict", pricey["errors"] == 1)
check("a perfect model agrees 100%", pricey["agreement"] == 1.0)

# A miss against a verdict only the pipeline settled is a disagreement, not a
# disqualification: the reference may be the false positive.
rows2 = rows + [
    row("doubter", "a", "unsafe", "unsafe", 0.01),
    row("doubter", "b", "safe", "safe", 0.01),
    row("doubter", "h", "unsafe", "safe", 0.01),   # pipeline-settled unsafe, called safe
]
doubter = report.score("doubter", rows2, synth)
check("a pipeline miss is counted as such",
      doubter["pipeline"]["misses"] == 1 and doubter["human"]["misses"] == 0)
# The incumbents: rows copied from the branch.
rows2 += [row("current/model", p, ref, ref, 0.02, from_branch=True) for p, ref in [("a", "unsafe"), ("b", "safe"), ("c", "safe")]]
cur = report.score("current/model", rows2, synth)
check("rows from the branch make an incumbent", cur["incumbent"])
check("an incumbent is scored like anyone", cur["agreement"] == 1.0 and cur["cost_per_package"] == 0.02)
check("a model with only fresh rows is not an incumbent", not report.score("cheap", rows2, synth)["incumbent"])

# The table sorts the usable cheapest first, and a model that fails a synthetic
# or misses a confirmed package last, however cheap.
rows_path, synth_path = os.path.join(tmp, "rows.jsonl"), os.path.join(tmp, "synth.jsonl")
with open(rows_path, "w") as f:
    f.write("\n".join(json.dumps(r) for r in rows) + "\n")
with open(synth_path, "w") as f:
    f.write("\n".join(json.dumps(s) for s in synth) + "\n")
out_path = os.path.join(tmp, "result.json")
proc = subprocess.run(
    [sys.executable, os.path.join(bench, "benchmark-report.py"), "--rows", rows_path,
     "--synthetics", synth_path, "--meta", '{"run_id":"t1","models":["cheap","misser","pricey","absent"]}',
     "--json", out_path],
    capture_output=True, text=True,
)
check("the report runs", proc.returncode == 0)
last = proc.stdout.strip().split("\n")[-1]
check("the last line is BENCH_JSON", last.startswith("BENCH_JSON "))
obj = json.loads(last[len("BENCH_JSON "):])
order = [m["model"] for m in obj["models"]]
check("perfect sorts above a false flag, the human miss last",
      order == ["pricey", "cheap", "absent", "misser"])
with open(rows_path, "w") as f:
    f.write("\n".join(json.dumps(r) for r in rows2) + "\n")
proc2 = subprocess.run(
    [sys.executable, os.path.join(bench, "benchmark-report.py"), "--rows", rows_path,
     "--synthetics", synth_path], capture_output=True, text=True)
obj2 = json.loads(proc2.stdout.strip().split("\n")[-1][len("BENCH_JSON "):])
order2 = [m["model"] for m in obj2["models"]]
check("a pipeline-only miss does not sort last", order2.index("doubter") < order2.index("misser"))
check("the incumbent is marked in the table", "current/model *" in proc2.stdout)
with open(rows_path, "w") as f:
    f.write("\n".join(json.dumps(r) for r in rows) + "\n")
check("a model named in meta with no rows still appears, after the scored ones",
      "absent" in order and order.index("absent") > order.index("cheap"))
check("meta is carried", obj["run_id"] == "t1")
check("the packages are listed", obj["packages"] == ["a", "b", "c", "d", "e", "f", "g"])
with open(out_path) as f:
    check("--json writes the same object", json.load(f) == obj)
check("the table names the columns", "false" in proc.stdout and "miss" in proc.stdout)

# --- the row reader ---------------------------------------------------------------
rep = os.path.join(tmp, "aur-sleuth-report-foo.txt")
with open(rep, "w") as f:
    f.write("---\npackage: foo\npkgver: 1.2\nresult: unsafe\ncost: 0.0123\n"
            "file_verdicts:\n  - file: PKGBUILD\n    status: safe\n    summary: fine\n"
            "  - file: foo.install\n    status: unsafe\n    summary: \"curl | sh: bad\"\n---\nbody\n")
def read_row(*extra):
    p = subprocess.run([sys.executable, os.path.join(bench, "benchmark-report.py"), "row",
                        "--report", rep, "--model", "m", "--package", "foo", *extra],
                       capture_output=True, text=True)
    return json.loads(p.stdout)
r = read_row("--reference", "safe", "--reference-source", "human", "--support", "3",
             "--ref-pkgver", "1.1", "--seconds", "42", "--exit", "1", "--overridden")
check("row carries the reference's provenance", r["reference_source"] == "human" and r["support"] == 3)
check("row reads the verdict, cost and version", r["result"] == "unsafe" and r["cost"] == 0.0123 and r["pkgver"] == "1.2")
check("row names the first unsafe file", r["summary"] == "foo.install: curl | sh: bad")
check("row carries what it was told", r["reference"] == "safe" and r["ref_pkgver"] == "1.1"
      and r["overridden"] is True and r["seconds"] == 42.0)
r = read_row("--exit", "124")
check("a timeout is a timeout even with a report", r["result"] == "timeout" and r["cost"] == 0.0123)
p = subprocess.run([sys.executable, os.path.join(bench, "benchmark-report.py"), "row",
                    "--report", os.path.join(tmp, "missing.txt"), "--model", "m", "--package", "x"],
                   capture_output=True, text=True)
check("a missing report is an error row, not a crash", p.returncode == 0 and json.loads(p.stdout)["result"] == "error")

# --- the judge row ----------------------------------------------------------------
jf = os.path.join(tmp, "pkg.json")
with open(jf, "w") as f:
    json.dump({"package": "foo", "correct_verdict": "unsafe", "reasoning": "because",
               "_judge_usage": {"model": "j/x", "cost": 0.0123}}, f)
def read_judge(*extra):
    p = subprocess.run([sys.executable, os.path.join(bench, "benchmark-report.py"), "judgerow",
                        "--judge-file", jf, "--model", "j/x", "--package", "foo", *extra],
                       capture_output=True, text=True)
    return json.loads(p.stdout)
r = read_judge("--reference", "unsafe", "--reference-source", "human")
check("judgerow reads the ruling and the cost", r["result"] == "unsafe" and r["cost"] == 0.0123 and r["summary"] == "because")
r = read_judge("--exit", "124")
check("a judge timeout is a timeout", r["result"] == "timeout")
p = subprocess.run([sys.executable, os.path.join(bench, "benchmark-report.py"), "judgerow",
                    "--judge-file", os.path.join(tmp, "none.json"), "--model", "j/x", "--package", "x"],
                   capture_output=True, text=True)
check("a missing judge file is an error row", p.returncode == 0 and json.loads(p.stdout)["result"] == "error")

# --- the sample -------------------------------------------------------------------
sample = load("benchmark-sample.py")
def pkg(name, state, date, overridden=False, source="models"):
    ref = sample.reference_for(state)
    return {"package": name, "reference": ref, "reference_source": source if ref != "unknown" else "",
            "support": 2, "state": state, "pkgver": "1", "date": date, "overridden": overridden, "branch": []}
pool = (
    [pkg(f"bad{i}", "confirmed", f"2026-06-{10+i:02d}") for i in range(3)]
    + [pkg(f"hard{i}", "clean", f"2026-06-{10+i:02d}", True) for i in range(6)]
    + [pkg(f"ok{i}", "clean", f"2026-06-{10+i:02d}") for i in range(10)]
    + [pkg("maybe", "look", "2026-06-30"), pkg("nothing", "unknown", "2026-06-30")]
    + [dict(pkg("settled", "look", "2026-06-01"), reference="safe", reference_source="human")]
)
picked = sample.select(pool, 11)
names = [p["package"] for p in picked]
check("every confirmed package is in", all(f"bad{i}" in names for i in range(3)))
check("the size is honoured", len(picked) == 11)
check("half the clean slots go to overturned packages",
      sum(1 for p in picked if p["overridden"]) == 3)  # 11 - 4 settled = 7 slots, half of them
check("unsettled packages are never sampled", "maybe" not in names and "nothing" not in names)
check("a package a person settled is always in, whatever its state", "settled" in names)
check("newest first within a group", names.index("ok9") < names.index("ok6"))
check("a tiny size still fits", len(sample.select(pool, 2)) == 2)
check("a size larger than the pool takes what there is", len(sample.select(pool, 100)) == 20)

if fails:
    print(f"FAILED: {fails} check(s)")
    sys.exit(1)
print("benchmark: all checks passed")
PY
