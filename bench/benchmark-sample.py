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
state, pkgver, date, overridden, branch. --packages names the set exactly and
skips the selection; a named package with no settled verdict is still emitted,
with reference "unknown", so the run can show what the candidate said even when
nothing can be scored.

Two kinds of reference, and the report keeps them apart:
  human  -- a hand-settled verdict from bench/verdicts.json (its 'by' field
            names who decided: a person, or a model adjudicating). Disagreeing
            with one of these is being wrong.
  models -- the pipeline's own settled verdict (package_state). Disagreeing
            with one of these is disagreeing with the current models, which
            may be right: the first benchmark "missed" a package whose
            reference was a single audit's false positive.
"support" is how many unsafe reports a model-settled unsafe rests on.

"branch" carries the current models' own latest report on the package (with
its path on the branch), and "branch_judges" what the judge ruled, so the
benchmark can score the incumbents on the same sample at no cost. Their
verdicts helped settle the model references, so their agreement is an upper
bound; their cost is real.
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


def load_human_verdicts():
    """bench/verdicts.json: {package: verdict}. Missing file means none."""
    path = os.path.join(os.path.dirname(os.path.abspath(__file__)), "verdicts.json")
    try:
        with open(path, encoding="utf-8") as f:
            data = json.load(f)
    except (OSError, ValueError):
        return {}
    out = {}
    for name, entry in (data.get("packages") or {}).items():
        if isinstance(entry, dict) and entry.get("verdict") in ("safe", "unsafe"):
            out[name] = entry["verdict"]
    return out


def latest_by_model(audits):
    """package -> [{model, result, cost, pkgver, path}], the newest report per
    model. path is the report's place on the branch, which a judge benchmark
    materialises to hand the candidate judge the same reports the incumbent saw."""
    newest = {}
    for a in audits:
        fm = a["frontmatter"]
        key = (a["package"], fm.get("model", "?"))
        if key not in newest or fm.get("date", "") > newest[key]["date"]:
            newest[key] = {
                "model": fm.get("model", "?"),
                "result": fm.get("result", "unknown"),
                "cost": float(fm.get("cost") or 0) if str(fm.get("cost", "")).replace(".", "", 1).isdigit() else 0.0,
                "pkgver": fm.get("pkgver", ""),
                "date": fm.get("date", ""),
                "path": f"{a['package']}/{a['filename']}",
            }
    out = {}
    for (pkg, _), entry in newest.items():
        out.setdefault(pkg, []).append({k: v for k, v in entry.items() if k != "date"})
    return out


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


def rows(gd, human=None):
    audits, judges = gd.load_reports()
    index = gd.build_index_data(audits, judges)
    human = load_human_verdicts() if human is None else human
    branch = latest_by_model(audits)
    judged = judges_by_package(judges)
    out = []
    for name, ps in index["packages"].items():
        state = gd.package_state(ps)
        ref, source, support = reference_for(state), "models", 0
        if ref == "unsafe":
            support = int(ps.get("unsafe_audits", 0))
        elif ref == "safe":
            support = int(ps.get("audit_count", 0))
        if name in human:
            ref, source, support = human[name], "human", 0
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
        })
    return out


def select(all_rows, size):
    """Every human-settled package and every confirmed one, then the clean ones,
    newest first, split between the overturned and the ordinary."""
    confirmed = sorted((r for r in all_rows
                        if r.get("reference_source") == "human" or r["state"] == "confirmed"),
                       key=lambda r: r["date"], reverse=True)
    clean = sorted((r for r in all_rows
                    if r["state"] == "clean" and r.get("reference_source") != "human"),
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
            })
    else:
        picked = select(all_rows, max(0, args.size))

    for r in picked:
        print(json.dumps(r, separators=(",", ":"), sort_keys=True))
    print(f"sampled {len(picked)} package(s): "
          f"{sum(1 for r in picked if r['reference'] == 'unsafe')} unsafe, "
          f"{sum(1 for r in picked if r['reference'] == 'safe')} safe "
          f"({sum(1 for r in picked if r['overridden'])} overturned by a judge), "
          f"{sum(1 for r in picked if r['reference'] == 'unknown')} unscored; "
          f"{sum(1 for r in picked if r['reference_source'] == 'human')} hand-settled",
          file=sys.stderr)
    return 0


if __name__ == "__main__":
    sys.exit(main())
