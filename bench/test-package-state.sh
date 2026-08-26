#!/usr/bin/env bash
# Unit test for the verdict state rule (package_state in
# bench/generate-dashboard.py), the judge-file folding behind it, and the
# escalation worklist (bench/pending-escalations.py) that drains "look".
#
# The rule decides what the public page says about a package under its real
# name, and what the pipeline spends escalations on, so every branch of it
# is proved here on hand-written reports.
#
# Costs nothing: no model is called, no git repository is read.
#
# Usage: bash bench/test-package-state.sh [-q]
set -euo pipefail

cd "$(dirname "$0")/.."

python3 - "$PWD/bench" "${1:-}" <<'PY'
import importlib.util, os, sys
from datetime import datetime, timezone

bench = sys.argv[1]
def load(name, path):
    spec = importlib.util.spec_from_file_location(name, path)
    mod = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(mod)
    return mod
gd = load("gd", os.path.join(bench, "generate-dashboard.py"))
pe = load("pe", os.path.join(bench, "pending-escalations.py"))

quiet = len(sys.argv) > 2 and sys.argv[2] == "-q"
fails = 0
def check(name, cond, got=None):
    global fails
    if cond:
        if not quiet:
            print(f"  ok    {name}")
    else:
        print(f"  FAIL  {name}" + (f" (got {got!r})" if got is not None else ""))
        fails += 1

now = datetime(2026, 8, 25, 12, 0, tzinfo=timezone.utc)

# --- package_state on summaries ---------------------------------------------
def ps(audit=None, latest=None, unsafe_models=0, escalations=0):
    return {"audit_majority": audit, "judge_latest": latest,
            "unsafe_models": unsafe_models, "escalations": escalations}

check("two distinct models unsafe and the judge agreeing: confirmed",
      gd.package_state(ps("unsafe", "unsafe", 2)) == "confirmed")
check("one model unsafe twice and the judge agreeing: look, not confirmed",
      gd.package_state(ps("unsafe", "unsafe", 1)) == "look")
check("the judge's latest ruling clears it",
      gd.package_state(ps("unsafe", "safe", 2)) == "clean")
check("flagged, no judge yet: look",
      gd.package_state(ps("contested", None, 1)) == "look")
check("flagged after one escalation: still look",
      gd.package_state(ps("contested", "unsafe", 1, escalations=1)) == "look")
check("flagged after the cap: disputed",
      gd.package_state(ps("contested", "unsafe", 1, escalations=gd.ESCALATION_CAP)) == "disputed")
check("the cap does not make a confirmed package disputed",
      gd.package_state(ps("unsafe", "unsafe", 2, escalations=3)) == "confirmed")
check("the cap does not make a cleared package disputed",
      gd.package_state(ps("unsafe", "safe", 1, escalations=3)) == "clean")
check("agreed safe: clean", gd.package_state(ps("safe", None, 0)) == "clean")
check("nothing reached a verdict: unknown", gd.package_state(ps(None, None, 0)) == "unknown")

# --- build_index_data: the summary fields the rule reads ---------------------
def audit(pkg, model, result, date, triggered_by="", advisory=False, cost="0.01"):
    fm = {"package": pkg, "model": model, "result": result, "date": date,
          "cost": cost, "files_reviewed": "5"}
    if triggered_by:
        fm["triggered_by"] = triggered_by
    if advisory:
        fm["advisory"] = "true"
    fname = date.replace("-", "").replace(":", "").replace("T", "-")[:15] + "-" + model.replace("/", "-") + ".md"
    return {"package": pkg, "filename": fname, "frontmatter": fm, "body": ""}

def judge(pkg, stamp, verdict, judged, reasoning, reaudit_date=None):
    data = {"package": pkg, "correct_verdict": verdict, "audits_judged": judged,
            "reasoning": reasoning, "_judge_usage": {"model": "j/udge", "cost": 0.002}}
    if reaudit_date:
        data["reaudit_date"] = reaudit_date
    return {"package": pkg, "filename": f"{stamp}-judge.json", "data": data}

audits = [
    # p: one cheap model twice unsafe, the other safe twice, an escalation
    # safe; rulings: unsafe, then the same ruling re-archived after the
    # re-audit (a copy), then a fresh ruling that read the escalation.
    audit("p", "q/cheap", "unsafe", "2026-08-23T10:00:00Z"),
    audit("p", "d/cheap", "safe", "2026-08-23T10:01:00Z"),
    audit("p", "q/cheap", "unsafe", "2026-08-23T11:00:00Z"),
    audit("p", "d/cheap", "safe", "2026-08-23T11:01:00Z"),
    audit("p", "a/strong", "safe", "2026-08-24T09:00:00Z", triggered_by="p/20260823-120000-judge.json"),
    audit("p", "free/x", "unsafe", "2026-08-24T10:00:00Z", advisory=True),
    # r: two distinct models unsafe, the judge agrees.
    audit("r", "q/cheap", "unsafe", "2026-08-23T10:00:00Z"),
    audit("r", "d/cheap", "unsafe", "2026-08-23T10:01:00Z"),
    # s: flagged, escalated twice, still flagged.
    audit("s", "q/cheap", "unsafe", "2026-08-23T10:00:00Z"),
    audit("s", "d/cheap", "safe", "2026-08-23T10:01:00Z"),
    audit("s", "a/strong", "safe", "2026-08-24T09:00:00Z", triggered_by="s/x-judge.json"),
    audit("s", "o/strong", "safe", "2026-08-24T11:00:00Z", triggered_by="s/y-judge.json"),
]
p_judged = ["20260823-110000-q-cheap.md", "20260823-110100-d-cheap.md"]
judges = [
    judge("p", "20260823-120000", "unsafe", p_judged, "looks bad"),
    judge("p", "20260824-090000", "unsafe", p_judged, "looks bad", reaudit_date="2026-08-24T09:00:00Z"),
    judge("p", "20260824-090100", "safe", p_judged + ["20260824-090000-a-strong.md"], "the strong model is right"),
    judge("r", "20260823-120000", "unsafe", ["x", "y"], "bad"),
    judge("s", "20260823-120000", "unsafe", ["x", "y"], "bad"),
    judge("s", "20260824-090100", "unsafe", ["x", "y", "z"], "still bad"),
    judge("s", "20260824-110100", "unsafe", ["x", "y", "z", "w"], "still bad, really"),
]
index = gd.build_index_data(audits, judges, now)
P, R, S = index["packages"]["p"], index["packages"]["r"], index["packages"]["s"]

check("a re-archived ruling is folded into one", len(P["judges"]) == 2, P["judges"])
check("judge_latest is the ruling that read the escalation", P["judge_latest"] == "safe", P["judge_latest"])
check("judge_majority still counts every ruling kept", P["judge_majority"] == "contested", P["judge_majority"])
check("unsafe_models counts models, not reports", P["unsafe_models"] == 1, P["unsafe_models"])
check("escalations counts triggered_by audits", P["escalations"] == 1, P["escalations"])
check("an advisory unsafe counts nowhere", P["unsafe_models"] == 1 and P["audit_majority"] == "safe")
check("p is clean: the latest ruling cleared it", P["state"] == "clean", P["state"])
check("r is confirmed: two models, judge agrees", R["state"] == "confirmed", R["state"])
check("s is disputed: two escalations, still flagged", S["state"] == "disputed", S["state"])
check("s kept every distinct ruling", len(S["judges"]) == 3, S["judges"])
check("the week's package counts carry disputed",
      index["summary"]["week"]["packages"].get("disputed") == 1, index["summary"]["week"]["packages"])
check("package_states carries every state",
      index["summary"]["package_states"] == {"clean": 1, "confirmed": 1, "disputed": 1},
      index["summary"]["package_states"])
check("the flagged strip lists disputed too",
      sorted(r["package"] for r in index["summary"]["recent"]) == ["r", "s"], index["summary"]["recent"])

# --- the escalation worklist -------------------------------------------------
pk = {
    "look1": {"state": "look", "audits": [{"model": "q/cheap", "result": "unsafe"}]},
    "look2": {"state": "look", "audits": [{"model": "q/cheap", "result": "unsafe"},
                                          {"model": "a/strong", "result": "safe"}]},
    "look3": {"state": "look", "audits": [{"model": "a/strong", "result": "safe"},
                                          {"model": "o/strong", "result": "unsafe"}]},
    "advonly": {"state": "look", "audits": [{"model": "a/strong", "result": "safe", "advisory": True}]},
    "settled": {"state": "clean", "audits": [{"model": "q/cheap", "result": "unsafe"}]},
    "disputed": {"state": "disputed", "audits": [{"model": "q/cheap", "result": "unsafe"}]},
}
models = ["a/strong", "o/strong"]

check("without models: every look package, names only",
      pe.worklist(pk) == [("advonly", None), ("look1", None), ("look2", None), ("look3", None)],
      pe.worklist(pk))
got = pe.worklist(pk, models)
check("the first model that has not read the package",
      ("look1", "a/strong") in got and ("look2", "o/strong") in got, got)
check("an advisory read does not count as having heard from the model",
      ("advonly", "a/strong") in got, got)
check("a package every model has read is left out",
      not any(n == "look3" for n, _ in got), got)
check("clean and disputed packages are never listed",
      not any(n in ("settled", "disputed") for n, _ in got), got)
got = pe.worklist(pk, models, named=["look3", "settled", "nope"])
check("named packages are listed whatever their state",
      ("settled", "a/strong") in got, got)
check("a named package every model has read gets the first model again",
      ("look3", "a/strong") in got, got)
check("a name with no reports is skipped, not crashed",
      not any(n == "nope" for n, _ in got), got)

if fails:
    print(f"FAILED: {fails} check(s)")
    sys.exit(1)
print("package state: all checks passed")
PY
