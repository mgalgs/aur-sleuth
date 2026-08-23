#!/usr/bin/env python3
"""Turn a benchmark run's raw rows into the per-model table and one JSON object.

bench/benchmark.sh writes two JSONL files as it goes: one row per (model,
package) re-audit, and one row per (model, synthetic fixture). This reads them
and scores each model against the reference verdicts the sample carried. It
calls no model and is the part of the benchmark that can be tested for free.

Usage:
  benchmark-report.py --rows FILE --synthetics FILE [--meta JSON] [--json OUT]
  benchmark-report.py row --report FILE --model M --package P [--reference R]
                          [--ref-pkgver V] [--overridden] [--seconds S] [--exit RC]

The table goes to stdout. With --json the full object is also written there,
and the last line printed is `BENCH_JSON ` followed by the same object, so a
caller reading the log gets the answer without parsing prose.

`row` reads one finished audit's report and prints the row the runner appends:
the verdict, cost, version and the first unsafe file's summary come from the
report's frontmatter, parsed by the same code the dashboard uses.
"""

import argparse
import importlib.util
import json
import os
import sys
from collections import defaultdict
from importlib.machinery import SourceFileLoader


def report_row(args):
    here = os.path.dirname(os.path.abspath(__file__))
    path = os.path.join(here, "generate-dashboard.py")
    spec = importlib.util.spec_from_file_location(
        "gd", path, loader=SourceFileLoader("gd", path))
    gd = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(gd)

    row = {
        "model": args.model,
        "package": args.package,
        "reference": args.reference or "unknown",
        "ref_pkgver": args.ref_pkgver or "",
        "overridden": bool(args.overridden),
        "seconds": args.seconds,
        "exit": args.exit,
        "result": "error",
        "cost": 0.0,
        "pkgver": "",
        "summary": "",
    }
    # 124 and 137 are timeout(1)'s deadline and its SIGKILL. The report, if
    # any, is a stub and its verdict does not count; its cost still does.
    if args.exit in (124, 137):
        row["result"] = "timeout"
    try:
        with open(args.report, encoding="utf-8") as f:
            fm, _ = gd.parse_frontmatter(f.read())
    except OSError:
        fm = {}
    if fm:
        row["cost"] = gd.safe_float(fm.get("cost"))
        row["pkgver"] = fm.get("pkgver", "")
        if row["result"] != "timeout":
            row["result"] = fm.get("result", "error") or "error"
        for v in fm.get("file_verdicts") or []:
            if v.get("status") == "unsafe":
                row["summary"] = f"{v.get('file', '?')}: {v.get('summary', '')}"[:200]
                break
    print(json.dumps(row, separators=(",", ":"), sort_keys=True))
    return 0


def read_jsonl(path):
    out = []
    if not path:
        return out
    try:
        with open(path, encoding="utf-8") as f:
            for line in f:
                line = line.strip()
                if not line:
                    continue
                try:
                    obj = json.loads(line)
                except ValueError:
                    continue
                if isinstance(obj, dict):
                    out.append(obj)
    except OSError:
        pass
    return out


def score(model, rows, synth):
    """One model's numbers. Only rows with a settled reference are scored; the
    rest are counted so the reader can see the sample was bigger than the
    score."""
    mine = [r for r in rows if r.get("model") == model]
    smine = [s for s in synth if s.get("model") == model]

    scored = [r for r in mine if r.get("reference") in ("safe", "unsafe")
              and r.get("result") in ("safe", "unsafe")]
    agree = sum(1 for r in scored if r["result"] == r["reference"])
    # The two ways to be wrong, named for what they cost: a false flag on a
    # clean package is the accusation the threat model warns about; a miss on
    # a confirmed one is the attack getting through.
    false_flags = sum(1 for r in scored if r["reference"] == "safe" and r["result"] == "unsafe")
    misses = sum(1 for r in scored if r["reference"] == "unsafe" and r["result"] == "safe")
    ref_safe = sum(1 for r in scored if r["reference"] == "safe")
    ref_unsafe = sum(1 for r in scored if r["reference"] == "unsafe")
    # An overturned package is the hard negative: count the false flags on
    # those separately, because a candidate that reproduces the judge's
    # workload is not an improvement however cheap it is.
    hard = [r for r in scored if r["reference"] == "safe" and r.get("overridden")]
    hard_flags = sum(1 for r in hard if r["result"] == "unsafe")

    unscored = [r for r in mine if r not in scored]
    inconclusive = sum(1 for r in mine if r.get("result") == "inconclusive")
    errors = sum(1 for r in mine if r.get("result") in ("error", "timeout", None, ""))

    cost = sum(float(r.get("cost") or 0) for r in mine)
    seconds = [float(r.get("seconds") or 0) for r in mine if r.get("seconds")]
    drift = sum(1 for r in mine if r.get("pkgver") and r.get("ref_pkgver")
                and r["pkgver"] != r["ref_pkgver"])

    synth_pass = sum(1 for s in smine if s.get("pass"))
    synth_cost = sum(float(s.get("cost") or 0) for s in smine)

    return {
        "model": model,
        "sample": len(mine),
        "scored": len(scored),
        "agree": agree,
        "agreement": round(agree / len(scored), 3) if scored else None,
        "false_flags": false_flags,
        "of_safe": ref_safe,
        "hard_flags": hard_flags,
        "of_hard": len(hard),
        "misses": misses,
        "of_unsafe": ref_unsafe,
        "inconclusive": inconclusive,
        "errors": errors,
        "unscored": len(unscored),
        "version_drift": drift,
        "cost": round(cost, 4),
        "cost_per_package": round(cost / len(mine), 4) if mine else None,
        "mean_seconds": round(sum(seconds) / len(seconds), 1) if seconds else None,
        "synthetics": {
            "run": len(smine),
            "passed": synth_pass,
            "all_pass": bool(smine) and synth_pass == len(smine),
            "cost": round(synth_cost, 4),
            "fixtures": [
                {"fixture": s.get("fixture", "?"), "pass": bool(s.get("pass")),
                 "expected": s.get("expected"), "got": s.get("exit")}
                for s in smine
            ],
        },
        "disagreements": [
            {"package": r["package"], "reference": r["reference"], "result": r["result"],
             "overridden": bool(r.get("overridden")), "summary": str(r.get("summary") or "")[:200]}
            for r in scored if r["result"] != r["reference"]
        ],
    }


def pct(v):
    return "—" if v is None else f"{v * 100:.0f}%"


def money(v):
    return "—" if v is None else f"${v:.4f}"


def table(models):
    head = f"{'model':<34} {'synth':>6} {'agree':>6} {'false':>7} {'hard':>6} {'miss':>6} {'inc':>4} {'$/pkg':>8} {'$':>8} {'s/pkg':>6}"
    lines = [head, "-" * len(head)]
    for m in models:
        s = m["synthetics"]
        synth = f"{s['passed']}/{s['run']}" if s["run"] else "—"
        lines.append(
            f"{m['model']:<34} {synth:>6} {pct(m['agreement']):>6} "
            f"{m['false_flags']}/{m['of_safe']:<5} {m['hard_flags']}/{m['of_hard']:<4} "
            f"{m['misses']}/{m['of_unsafe']:<4} {m['inconclusive']:>4} "
            f"{money(m['cost_per_package']):>8} {money(m['cost']):>8} "
            f"{'—' if m['mean_seconds'] is None else m['mean_seconds']:>6}"
        )
    lines.append("")
    lines.append("synth: synthetic fixtures passed. agree: share of scored packages where the")
    lines.append("candidate matched the settled verdict. false: clean packages it called unsafe")
    lines.append("(hard: of those, ones a judge had already had to clear). miss: confirmed-unsafe")
    lines.append("packages it called safe. inc: inconclusive. A miss is an attack getting through;")
    lines.append("a false flag is the accusation the threat model says not to make.")
    return "\n".join(lines)


def main():
    if len(sys.argv) > 1 and sys.argv[1] == "row":
        rp = argparse.ArgumentParser(prog="benchmark-report.py row")
        rp.add_argument("--report", required=True)
        rp.add_argument("--model", required=True)
        rp.add_argument("--package", required=True)
        rp.add_argument("--reference", default="unknown")
        rp.add_argument("--ref-pkgver", default="")
        rp.add_argument("--overridden", action="store_true")
        rp.add_argument("--seconds", type=float, default=0.0)
        rp.add_argument("--exit", type=int, default=0)
        return report_row(rp.parse_args(sys.argv[2:]))

    ap = argparse.ArgumentParser()
    ap.add_argument("--rows", required=True)
    ap.add_argument("--synthetics", default="")
    ap.add_argument("--meta", default="{}", help="JSON object merged into the result")
    ap.add_argument("--json", default="", help="also write the object here")
    args = ap.parse_args()

    rows = read_jsonl(args.rows)
    synth = read_jsonl(args.synthetics)
    try:
        meta = json.loads(args.meta)
        if not isinstance(meta, dict):
            meta = {}
    except ValueError:
        meta = {}

    names = []
    for r in rows + synth:
        m = r.get("model")
        if m and m not in names:
            names.append(m)
    for m in meta.get("models") or []:
        if m not in names:
            names.append(m)

    models = [score(m, rows, synth) for m in names]
    # Cheapest acceptable first: a model that fails a synthetic or misses a
    # confirmed package is not a candidate at any price, so it sorts last.
    models.sort(key=lambda m: (
        not (m["synthetics"]["all_pass"] or m["synthetics"]["run"] == 0),
        m["misses"] > 0,
        m["scored"] == 0,
        -(m["agreement"] or 0),
        m["cost_per_package"] or 0,
    ))

    out = dict(meta)
    out["models"] = models
    out["packages"] = sorted({r["package"] for r in rows if r.get("package")})

    print(table(models))
    if args.json:
        with open(args.json, "w", encoding="utf-8") as f:
            json.dump(out, f, separators=(",", ":"), sort_keys=True)
            f.write("\n")
    print("BENCH_JSON " + json.dumps(out, separators=(",", ":"), sort_keys=True))
    return 0


if __name__ == "__main__":
    sys.exit(main())
