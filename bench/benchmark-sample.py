#!/usr/bin/env python3
"""Pick the packages a model benchmark re-audits, with the verdict to compare against.

Reads the audit-reports branch the way the dashboard does and keeps only the
packages whose verdict is settled: "confirmed" (the audits agreed on unsafe and
the judge agreed) counts as unsafe, "clean" counts as safe. A package a judge
overturned is still clean, and it is the most useful kind of clean: a candidate
that flags it is reproducing the false positive the judge had to undo.

Usage:
  benchmark-sample.py [--size N] [--packages a,b,c]

Prints one JSON object per line: package, reference, state, pkgver, date,
overridden. --packages names the set exactly and skips the selection; a named
package with no settled verdict is still emitted, with reference "unknown", so
the run can show what the candidate said even when nothing can be scored.
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


def rows(gd):
    audits, judges = gd.load_reports()
    index = gd.build_index_data(audits, judges)
    out = []
    for name, ps in index["packages"].items():
        state = gd.package_state(ps)
        out.append({
            "package": name,
            "reference": reference_for(state),
            "state": state,
            "pkgver": ps.get("pkgver", ""),
            "date": ps.get("latest_date", ""),
            # A clean package that something once called unsafe.
            "overridden": state == "clean" and ps.get("audit_majority") in ("unsafe", "contested"),
        })
    return out


def select(all_rows, size):
    """All confirmed packages, then the clean ones, newest first, split between
    the overturned and the ordinary."""
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
                "package": name, "reference": "unknown", "state": "unknown",
                "pkgver": "", "date": "", "overridden": False,
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
