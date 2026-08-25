#!/usr/bin/env python3
"""Compare benchmark runs that differ only by an experimental arm.

benchmark-report.py answers "which model should hold the seat". This answers a
different question: given one model and one sample, did a change to the loop
move the verdicts, and at what cost.

Three things it does that the model report does not:

  * Scores FRESH rows only. A model that already holds a seat also appears in
    a run as an incumbent, with its past reports copied off the branch.
  * Separates false flags on HARD negatives -- packages a judge already had to
    clear -- from the rest. Reproducing the judge's workload is the failure
    mode that matters, and it is the metric the arms exist to move.
  * Says WHICH STAGE each package reached. A package that stops at the makepkg
    gate never reaches the file review, so an arm that only runs at the review
    was not tested on it. Reporting that as a pass would be counting a coin
    that was never flipped.

Usage:
  arm-report.py <run-dir> [<run-dir> ...]          # first is the baseline
  arm-report.py --package itch-setup-bin <dirs>    # follow one package across
"""

import argparse
import json
import re
import sys
from pathlib import Path


def fresh_rows(run_dir: Path):
    """This run's own answers, without the incumbent rows from the branch."""
    rows = []
    path = run_dir / "rows.jsonl"
    if not path.exists():
        return rows
    for line in path.read_text().splitlines():
        line = line.strip()
        if not line:
            continue
        try:
            row = json.loads(line)
        except json.JSONDecodeError:
            continue
        if not row.get("from_branch"):
            rows.append(row)
    return rows


def synthetics(run_dir: Path):
    out = []
    path = run_dir / "synthetics.jsonl"
    if not path.exists():
        return out
    for line in path.read_text().splitlines():
        line = line.strip()
        if line:
            try:
                out.append(json.loads(line))
            except json.JSONDecodeError:
                pass
    return out


def report_for(run_dir: Path, package: str):
    hits = list((run_dir / "reports").rglob(f"aur-sleuth-report-{package}.txt"))
    return hits[0] if hits else None


def stage_reached(run_dir: Path, package: str) -> str:
    """How far the audit got, read off the report's own verdict list.

    The makepkg gate returns exactly one result and the audit stops, so a
    single verdict naming PKGBUILD is a gate refusal. Anything more got past
    the gate and into the file reviews.
    """
    path = report_for(run_dir, package)
    if not path:
        return "?"
    text = path.read_text(errors="replace")
    files = re.findall(r"^  - file: (.*)$", text, re.M)
    if not files:
        return "none"
    if len(files) == 1:
        return "gate" if files[0].strip().strip('"') == "PKGBUILD" else "one"
    return "review"


def prompt_tokens(run_dir: Path) -> int:
    """Prompt tokens across every report this run wrote, fixtures included."""
    total = 0
    for path in (run_dir / "reports").rglob("aur-sleuth-report-*.txt"):
        try:
            head = path.read_text(errors="replace")[:4000]
        except OSError:
            continue
        m = re.search(r"^prompt_tokens: (\d+)$", head, re.M)
        if m:
            total += int(m.group(1))
    return total


def tally(run_dir: Path):
    rows = fresh_rows(run_dir)
    scored = [r for r in rows
              if r.get("reference") in ("safe", "unsafe")
              and r.get("result") in ("safe", "unsafe")]
    hard = [r for r in scored if r["reference"] == "safe" and r.get("overridden")]
    synth = synthetics(run_dir)
    return {
        "audited": len(rows),
        "scored": len(scored),
        "agree": sum(1 for r in scored if r["result"] == r["reference"]),
        "false_flags": sum(1 for r in scored
                           if r["reference"] == "safe" and r["result"] == "unsafe"),
        "misses": sum(1 for r in scored
                      if r["reference"] == "unsafe" and r["result"] == "safe"),
        "hard": len(hard),
        "hard_flags": sum(1 for r in hard if r["result"] == "unsafe"),
        "flagged": {r["package"] for r in scored
                    if r["reference"] == "safe" and r["result"] == "unsafe"},
        "cost": sum(float(r.get("cost") or 0) for r in rows)
                + sum(float(s.get("cost") or 0) for s in synth),
        # A row carries cost but no token counts, so the tokens come from the
        # reports this run wrote. Only this run's own -- an incumbent's copy
        # off the branch lives elsewhere and was paid for months ago.
        "prompt": prompt_tokens(run_dir),
        "synth_pass": sum(1 for s in synth if s.get("pass")),
        "synth_run": len(synth),
        "synth_failed": [s["fixture"] for s in synth if not s.get("pass")],
    }


def main():
    ap = argparse.ArgumentParser(description=__doc__,
                                 formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("runs", nargs="+", help="benchmark run directories; first is baseline")
    ap.add_argument("--package", help="follow one package's stage across the runs")
    args = ap.parse_args()

    dirs = [Path(d) for d in args.runs]
    for d in dirs:
        if not (d / "rows.jsonl").exists():
            print(f"no rows.jsonl under {d}", file=sys.stderr)
            return 1

    if args.package:
        print(f"{'run':<16} {'stage reached':<14} {'verdict':<10} reference")
        print("-" * 56)
        for d in dirs:
            row = next((r for r in fresh_rows(d) if r.get("package") == args.package), None)
            print(f"{d.name[:16]:<16} {stage_reached(d, args.package):<14} "
                  f"{(row or {}).get('result', '-'):<10} {(row or {}).get('reference', '-')}")
        return 0

    base = tally(dirs[0])
    header = (f"{'run':<16} {'synth':>7} {'agree':>9} {'hard flags':>11} "
              f"{'misses':>7} {'prompt tokens':>14} {'$':>9}")
    print(header)
    print("-" * len(header))
    for d in dirs:
        t = tally(d)
        agree = f"{t['agree']}/{t['scored']}"
        hard = f"{t['hard_flags']}/{t['hard']}"
        synth = f"{t['synth_pass']}/{t['synth_run']}" if t["synth_run"] else "-"
        delta = ""
        if d is not dirs[0] and base["prompt"]:
            pct = 100.0 * (t["prompt"] - base["prompt"]) / base["prompt"]
            delta = f" ({pct:+.0f}%)"
        print(f"{d.name[:16]:<16} {synth:>7} {agree:>9} {hard:>11} {t['misses']:>7} "
              f"{t['prompt']:>14,}{delta:>8} ${t['cost']:.4f}")
        if t["synth_failed"]:
            print(f"{'':<16} FIXTURES FAILED: {', '.join(t['synth_failed'])}")

    print()
    print("Which packages each run flagged, against the baseline:")
    for d in dirs[1:]:
        t = tally(d)
        cleared = base["flagged"] - t["flagged"]
        added = t["flagged"] - base["flagged"]
        print(f"  {d.name}")
        print(f"    cleared: {', '.join(sorted(cleared)) or '-'}")
        print(f"    newly flagged: {', '.join(sorted(added)) or '-'}")

    print()
    print("Stage each run reached, for packages the baseline flagged")
    print("(an arm that runs only at the file review was NOT tested on a "
          "package that stopped at the gate):")
    for pkg in sorted(base["flagged"]):
        stages = "  ".join(f"{d.name.split('-', 1)[-1]}={stage_reached(d, pkg)}"
                           for d in dirs)
        print(f"  {pkg:<26} {stages}")
    return 0


if __name__ == "__main__":
    sys.exit(main())
