#!/usr/bin/env python3
"""Pick the packages a model benchmark re-audits, with the verdict to compare against.

Reads the audit-reports branch the way the dashboard does and keeps only the
packages whose verdict is settled: "confirmed" (the audits agreed on unsafe and
the judge agreed) counts as unsafe, "clean" counts as safe. A package a judge
overturned is still clean, and it is the most useful kind of clean: a candidate
that flags it is reproducing the false positive the judge had to undo.

Usage:
  benchmark-sample.py [--size N] [--packages a,b,c]

Prints one JSON object per line: package, reference, reference_source, support,
state, pkgver, date, overridden, branch, branch_judges, judge_inputs.
--packages names the set exactly and
skips the selection; a named package with no settled verdict is still emitted,
with reference "unknown", so the run can show what the candidate said even when
nothing can be scored.

The reference is the pipeline's own settled verdict (package_state), and
disagreeing with it is disagreeing with the current models, which may be
right: the first benchmark "missed" a package whose reference was a single
audit's false positive. "support" is how much of this pipeline's own evidence
the reference rests on: distinct models that said unsafe for a settled unsafe,
non-community reports for a settled safe. (A file of hand-settled verdicts once
outranked the models here; it
went, because every entry in it was a detection bug with an exception filed
instead of a fix.)

"branch" carries the current models' own latest report on the package, and
"branch_judges" what the judge ruled, so the benchmark can score the incumbents
on the same sample at no cost. Their verdicts helped settle the model
references, so their agreement is an upper bound; their cost is real.

A community-submitted report is NOT one of them, and this is the one place in
the pipeline where that is about neither trust nor spend. `advisory: true`
already keeps a submission out of package_state, so it can never move the
reference a candidate is scored against. What it could still do is become a
row in the table: `branch` is keyed on `model:`, and a submission's `model:`
is the contributor's claim about a run this deployment never dispatched. A
benchmark exists to answer "what would this model cost and get right HERE",
and it answers it by comparing runs this pipeline made. A claimed run is not
one, however trustworthy the person who claimed it -- so `latest_by_model`
drops them, and `support` counts only this pipeline's reports.

"judge_inputs" is the deliberate exception, and it points the other way. A
judge benchmark hands the candidate the reports the incumbent judge read, and
since the maintainer made a submission advisory rather than a tier below it,
bench/judge.sh reads community reports like any other. Withholding them from
the candidate would score two judges on two different piles and call the
difference a model. So the paths include them; only the SCORED rows do not.
"""

import argparse
import importlib.util
import json
import os
import sys
from importlib.machinery import SourceFileLoader

# The sample is stratified so it measures both failure modes. Half of the clean
# slots go to packages whose unsafe audit a judge overturned (the false
# positive the threat model warns about), the rest to ordinary clean packages;
# every confirmed package goes in, because there are never many.
OVERRIDDEN_SHARE = 0.5


def load_dashboard():
    here = os.path.dirname(os.path.abspath(__file__))
    path = os.path.join(here, "generate-dashboard.py")
    spec = importlib.util.spec_from_file_location(
        "gd", path, loader=SourceFileLoader("gd", path))
    gd = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(gd)
    return gd


def reference_for(state):
    if state == "confirmed":
        return "unsafe"
    if state == "clean":
        return "safe"
    return "unknown"


def is_community(fm):
    return fm.get("source") == "community"


def latest_by_model(audits):
    """package -> [{model, result, cost, pkgver}], the newest report per model.

    These are SCORED rows: each becomes an incumbent in the benchmark table,
    credited with a verdict and a cost. So a community submission is not one.
    Its `model:` names a run this pipeline never dispatched and its `cost` was
    stripped at the ingest, which would enter the table as a model that got the
    answer right for nothing. See the module docstring: this is about whose run
    it was, not about whether the contributor is trusted."""
    newest = {}
    for a in audits:
        fm = a["frontmatter"]
        if is_community(fm):
            continue
        key = (a["package"], fm.get("model", "?"))
        if key not in newest or fm.get("date", "") > newest[key]["date"]:
            newest[key] = {
                "model": fm.get("model", "?"),
                "result": fm.get("result", "unknown"),
                "cost": float(fm.get("cost") or 0) if str(fm.get("cost", "")).replace(".", "", 1).isdigit() else 0.0,
                "pkgver": fm.get("pkgver", ""),
                "date": fm.get("date", ""),
            }
    out = {}
    for (pkg, _), entry in newest.items():
        out.setdefault(pkg, []).append({k: v for k, v in entry.items() if k != "date"})
    return out


def judge_inputs_by_package(audits):
    """package -> [path], the newest report per model, community INCLUDED.

    A judge benchmark materialises these to hand the candidate judge the same
    reports the incumbent judge ruled on, and bench/judge.sh's collect_reports
    reads every report in the package's directory -- community ones too, since
    a submission is advisory and advisory reports are the judge's context. Feed
    the candidate a smaller pile than the incumbent read and the benchmark
    measures the pile, not the judge. Nothing here is scored, so nothing here
    credits a contributor's claim to a model."""
    newest = {}
    for a in audits:
        fm = a["frontmatter"]
        key = (a["package"], fm.get("model", "?"), is_community(fm))
        if key not in newest or fm.get("date", "") > newest[key][0]:
            newest[key] = (fm.get("date", ""), f"{a['package']}/{a['filename']}")
    out = {}
    for (pkg, _, _), (_, path) in newest.items():
        out.setdefault(pkg, []).append(path)
    return {pkg: sorted(paths) for pkg, paths in out.items()}


def judges_by_package(judges):
    """package -> [{model, result, cost}]: what the judge(s) on the branch ruled.
    The incumbent judge's row in a judge benchmark, at no cost."""
    out = {}
    for j in judges:
        d = j["data"]
        usage = d.get("_judge_usage") or {}
        if d.get("correct_verdict") not in ("safe", "unsafe"):
            continue
        out.setdefault(j["package"], []).append({
            "model": usage.get("model", "unknown"),
            "result": d["correct_verdict"],
            "cost": float(usage.get("cost") or 0),
        })
    return out


def rows(gd):
    audits, judges = gd.load_reports()
    index = gd.build_index_data(audits, judges)
    branch = latest_by_model(audits)
    judge_inputs = judge_inputs_by_package(audits)
    judged = judges_by_package(judges)
    out = []
    for name, ps in index["packages"].items():
        state = gd.package_state(ps)
        ref, source, support = reference_for(state), "models", 0
        # How much of THIS pipeline's evidence the reference rests on. Both
        # arms exclude a submission: `unsafe_models` is already advisory-free,
        # and `audit_count` is not -- it counts every report on the branch,
        # community ones included -- so the safe arm counts the audits itself.
        # A number that says "3 reports agree" must not include one this
        # deployment never ran.
        if ref == "unsafe":
            support = int(ps.get("unsafe_models", 0))
        elif ref == "safe":
            support = sum(1 for a in ps.get("audits", [])
                          if a.get("source") != "community")
        out.append({
            "package": name,
            "reference": ref,
            "reference_source": source if ref != "unknown" else "",
            "support": support,
            "state": state,
            "pkgver": ps.get("pkgver", ""),
            "date": ps.get("latest_date", ""),
            # A clean package that something once called unsafe.
            "overridden": state == "clean" and ps.get("audit_majority") in ("unsafe", "contested"),
            "branch": sorted(branch.get(name, []), key=lambda b: b["model"]),
            "branch_judges": judged.get(name, []),
            # Paths, not verdicts: what a candidate JUDGE is handed to read.
            "judge_inputs": judge_inputs.get(name, []),
        })
    return out


def select(all_rows, size):
    """Every confirmed package, then the clean ones, newest first, split
    between the overturned and the ordinary."""
    confirmed = sorted((r for r in all_rows if r["state"] == "confirmed"),
                       key=lambda r: r["date"], reverse=True)
    clean = sorted((r for r in all_rows if r["state"] == "clean"),
                   key=lambda r: r["date"], reverse=True)
    overridden = [r for r in clean if r["overridden"]]
    ordinary = [r for r in clean if not r["overridden"]]

    picked = confirmed[:size]
    room = size - len(picked)
    want_overridden = min(len(overridden), int(room * OVERRIDDEN_SHARE))
    picked += overridden[:want_overridden]
    picked += ordinary[:size - len(picked)]
    # If ordinary ran short, let the overturned fill the rest.
    if len(picked) < size:
        picked += overridden[want_overridden:size - len(picked) + want_overridden]
    return picked[:size]


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--size", type=int, default=20)
    ap.add_argument("--packages", default="",
                    help="comma-separated names; skips the selection")
    args = ap.parse_args()

    gd = load_dashboard()
    os.chdir(os.path.join(os.path.dirname(os.path.abspath(__file__)), ".."))
    all_rows = rows(gd)

    if args.packages:
        by_name = {r["package"]: r for r in all_rows}
        picked = []
        for name in [p.strip() for p in args.packages.split(",") if p.strip()]:
            picked.append(by_name.get(name) or {
                "package": name, "reference": "unknown", "reference_source": "",
                "support": 0, "state": "unknown", "pkgver": "", "date": "",
                "overridden": False, "branch": [], "branch_judges": [],
                "judge_inputs": [],
            })
    else:
        picked = select(all_rows, max(0, args.size))

    for r in picked:
        print(json.dumps(r, separators=(",", ":"), sort_keys=True))
    print(f"sampled {len(picked)} package(s): "
          f"{sum(1 for r in picked if r['reference'] == 'unsafe')} unsafe, "
          f"{sum(1 for r in picked if r['reference'] == 'safe')} safe "
          f"({sum(1 for r in picked if r['overridden'])} overturned by a judge), "
          f"{sum(1 for r in picked if r['reference'] == 'unknown')} unscored",
          file=sys.stderr)
    return 0


if __name__ == "__main__":
    sys.exit(main())
