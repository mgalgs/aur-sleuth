#!/usr/bin/env python3
"""One scheduled run's share of the day's budget.

The daily budget is shared by the scheduled runs of one day, evenly over
the runs still to come: a run may spend what is left of the day divided by
how many runs remain, itself included. A run that overruns its share --
judge and escalation work is never gated -- shrinks the shares after it
instead of gating them outright; a run that is skipped hands its share
forward; the last run of the day gets whatever is left. Before this, the
first run of a day was entitled to the whole budget and the five after it
found the day spent.

    room           = max(0, daily - spent)
    runs remaining = runs_per_day - floor(hour / (24 / runs_per_day)), at least 1
    slice          = room / runs remaining
    gate           = spent + slice          what this run may reach
    audit          = spent + slice * share  where the audit loop stops

A room under half a cent is no room: a slice that small would let the
audit loop start one batch it cannot pay for.

Usage: budget-slice.py --daily USD --spent USD --runs-per-day N --hour H
                       --share FRACTION
Prints one line: gate audit slice runs_remaining

Every input is a typed argument, never interpolated into code; this is the
one place the arithmetic lives, so the tests pin the hour here and the
pipeline never has to.
"""

import argparse
import math
import sys


def slice_budget(daily, spent, runs_per_day, hour, share):
    room = max(0.0, daily - spent)
    if room < 0.005:
        room = 0.0
    period = 24 / runs_per_day
    remaining = max(1, runs_per_day - math.floor(hour / period))
    piece = room / remaining
    return (round(spent + piece, 6), round(spent + piece * share, 6),
            round(piece, 6), remaining)


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--daily", type=float, required=True)
    ap.add_argument("--spent", type=float, required=True)
    ap.add_argument("--runs-per-day", type=int, required=True)
    ap.add_argument("--hour", type=int, required=True)
    ap.add_argument("--share", type=float, required=True)
    a = ap.parse_args()
    if a.daily <= 0 or a.spent < 0 or a.runs_per_day < 1 \
            or not 0 <= a.hour <= 23 or not 0.1 <= a.share <= 1:
        print("budget-slice.py: an input is out of range", file=sys.stderr)
        return 2
    gate, audit, piece, remaining = slice_budget(
        a.daily, a.spent, a.runs_per_day, a.hour, a.share)
    print(f"{gate:.6f} {audit:.6f} {piece:.6f} {remaining}")
    return 0


if __name__ == "__main__":
    sys.exit(main())
