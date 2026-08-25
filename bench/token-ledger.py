#!/usr/bin/env python3
"""Read per-call token ledgers and say where the audit loop spends its prompt.

A report's frontmatter carries one prompt_tokens for the whole package, which
cannot say which stage spent it. The ledger splits every call by stage --
gate, required, select, additional -- and names the file it was about. This
prints that, per package and in total, and diffs two sets so a change to the
loop can be shown to have saved what it claims.

Usage:
  token-ledger.py DIR_OR_FILE [...]                 one set, per-stage table
  token-ledger.py DIR --compare BASELINE_DIR        before/after, per package
  token-ledger.py DIR --by-file [--top N]           the biggest single calls
  token-ledger.py DIR --calibrate                   chars per token, measured

Ledgers come from `aur-sleuth --call-ledger PATH` (live: real token counts) or
from bench/dry-run-tokens.sh (offline: counts estimated from characters).
"""

import argparse
import json
import sys
from pathlib import Path

STAGES = ["gate", "required", "select", "additional", "review", "unknown"]


def load(paths):
    """Every ledger under the given files/directories, keyed by package."""
    ledgers = {}
    for p in paths:
        path = Path(p)
        files = sorted(path.glob("*.json")) if path.is_dir() else [path]
        for f in files:
            try:
                data = json.loads(f.read_text(encoding="utf-8"))
            except (OSError, json.JSONDecodeError) as e:
                print(f"skipping {f}: {e}", file=sys.stderr)
                continue
            if "calls" not in data:
                continue
            ledgers[data.get("package", f.stem)] = data
    return ledgers


def totals(data):
    """Prompt tokens per stage, plus the package total, for one ledger."""
    per_stage = {}
    for call in data["calls"]:
        s = per_stage.setdefault(call.get("stage", "unknown"),
                                 {"calls": 0, "prompt": 0, "completion": 0, "chars": 0})
        s["calls"] += 1
        s["prompt"] += call.get("prompt_tokens", 0)
        s["completion"] += call.get("completion_tokens", 0)
        s["chars"] += call.get("prompt_chars", 0)
    return per_stage


def stage_order(names):
    known = [s for s in STAGES if s in names]
    return known + sorted(n for n in names if n not in STAGES)


def fmt(n):
    return f"{n:,}"


def print_table(ledgers):
    grand = {}
    rows = []
    for pkg in sorted(ledgers):
        per_stage = totals(ledgers[pkg])
        for stage, s in per_stage.items():
            g = grand.setdefault(stage, {"calls": 0, "prompt": 0, "completion": 0, "chars": 0})
            for k in g:
                g[k] += s[k]
        rows.append((pkg, sum(s["prompt"] for s in per_stage.values()), per_stage))

    names = stage_order(set(grand))
    header = f"{'package':<38} {'total':>9}  " + "  ".join(f"{n:>10}" for n in names)
    print(header)
    print("-" * len(header))
    for pkg, total, per_stage in sorted(rows, key=lambda r: -r[1]):
        cells = "  ".join(
            f"{fmt(per_stage.get(n, {}).get('prompt', 0)):>10}" for n in names
        )
        print(f"{pkg[:38]:<38} {fmt(total):>9}  {cells}")
    print("-" * len(header))
    total_prompt = sum(g["prompt"] for g in grand.values())
    cells = "  ".join(f"{fmt(grand[n]['prompt']):>10}" for n in names)
    print(f"{'TOTAL prompt tokens':<38} {fmt(total_prompt):>9}  {cells}")
    cells = "  ".join(
        f"{(100 * grand[n]['prompt'] / total_prompt if total_prompt else 0):>9.1f}%"
        for n in names
    )
    print(f"{'share':<38} {'':>9}  {cells}")
    cells = "  ".join(f"{fmt(grand[n]['calls']):>10}" for n in names)
    print(f"{'calls':<38} {fmt(sum(g['calls'] for g in grand.values())):>9}  {cells}")
    if len(rows):
        print(f"\n{len(rows)} package(s), "
              f"mean {fmt(round(total_prompt / len(rows)))} prompt tokens each")
    completion = sum(g["completion"] for g in grand.values())
    if completion:
        print(f"completion tokens: {fmt(completion)} "
              f"({total_prompt / completion:.1f}:1 prompt:completion)")


def print_compare(after, before):
    common = sorted(set(after) & set(before))
    missing = sorted(set(before) - set(after))
    header = f"{'package':<38} {'before':>10} {'after':>10} {'delta':>10} {'change':>8}"
    print(header)
    print("-" * len(header))
    tb = ta = 0
    for pkg in common:
        b = sum(s["prompt"] for s in totals(before[pkg]).values())
        a = sum(s["prompt"] for s in totals(after[pkg]).values())
        tb += b
        ta += a
        pct = (100.0 * (a - b) / b) if b else 0.0
        print(f"{pkg[:38]:<38} {fmt(b):>10} {fmt(a):>10} {fmt(a - b):>10} {pct:>7.1f}%")
    print("-" * len(header))
    pct = (100.0 * (ta - tb) / tb) if tb else 0.0
    print(f"{'TOTAL':<38} {fmt(tb):>10} {fmt(ta):>10} {fmt(ta - tb):>10} {pct:>7.1f}%")

    # Per stage, so a saving is attributed rather than asserted.
    print()
    header = f"{'stage':<38} {'before':>10} {'after':>10} {'delta':>10} {'change':>8}"
    print(header)
    print("-" * len(header))
    names = set()
    for pkg in common:
        names |= set(totals(before[pkg])) | set(totals(after[pkg]))
    for stage in stage_order(names):
        b = sum(totals(before[pkg]).get(stage, {}).get("prompt", 0) for pkg in common)
        a = sum(totals(after[pkg]).get(stage, {}).get("prompt", 0) for pkg in common)
        pct = (100.0 * (a - b) / b) if b else 0.0
        print(f"{stage:<38} {fmt(b):>10} {fmt(a):>10} {fmt(a - b):>10} {pct:>7.1f}%")
    if missing:
        print(f"\nNot in the after set (excluded from every total above): "
              f"{', '.join(missing)}")


def print_by_file(ledgers, top):
    rows = []
    for pkg, data in ledgers.items():
        for call in data["calls"]:
            rows.append((call.get("prompt_tokens", 0), pkg, call.get("stage", "?"),
                         call.get("label", ""), call.get("user_chars", 0)))
    rows.sort(reverse=True)
    header = (f"{'prompt':>9} {'stage':<11} {'package':<26} {'file':<46} "
              f"{'user chars':>10}")
    print(header)
    print("-" * len(header))
    for prompt, pkg, stage, label, chars in rows[:top]:
        print(f"{fmt(prompt):>9} {stage:<11} {pkg[:26]:<26} {label[-46:]:<46} "
              f"{fmt(chars):>10}")


def print_calibration(ledgers):
    """Characters per prompt token, from calls a model actually answered.

    The dry run has no tokenizer; this is where its constant comes from.
    """
    chars = tokens = n = 0
    for data in ledgers.values():
        for call in data["calls"]:
            if call.get("estimated"):
                continue
            chars += call.get("prompt_chars", 0)
            tokens += call.get("prompt_tokens", 0)
            n += 1
    if not tokens:
        print("No live calls in these ledgers (all estimated); nothing to calibrate.")
        return
    print(f"{n} live call(s): {fmt(chars)} prompt characters, {fmt(tokens)} prompt "
          f"tokens\nchars per token: {chars / tokens:.2f}  "
          f"(set AUR_SLEUTH_CHARS_PER_TOKEN to this for the dry run)")


def main():
    ap = argparse.ArgumentParser(description=__doc__,
                                 formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("paths", nargs="+", help="ledger files or directories holding them")
    ap.add_argument("--compare", metavar="DIR", help="baseline to diff against")
    ap.add_argument("--by-file", action="store_true", help="rank the individual calls")
    ap.add_argument("--top", type=int, default=30, help="rows for --by-file")
    ap.add_argument("--calibrate", action="store_true",
                    help="characters per token, from live calls")
    args = ap.parse_args()

    ledgers = load(args.paths)
    if not ledgers:
        print("No ledgers found.", file=sys.stderr)
        return 1

    if args.calibrate:
        print_calibration(ledgers)
    elif args.compare:
        baseline = load([args.compare])
        if not baseline:
            print(f"No ledgers under {args.compare}", file=sys.stderr)
            return 1
        print_compare(ledgers, baseline)
    elif args.by_file:
        print_by_file(ledgers, args.top)
    else:
        print_table(ledgers)
    return 0


if __name__ == "__main__":
    sys.exit(main())
