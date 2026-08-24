#!/usr/bin/env python3
"""The already-audited index, from _dashboard/data.json on stdin.

One line per package that has actually been audited: "name<TAB>pkgver-pkgrel"
(pkgrel omitted when a report never carried one). discover_packages skips
these at their current version.

A package whose every audit failed -- result unknown or skipped, the marks a
rate-limited or crashed run leaves -- is NOT audited: printing it would pin
the failure until the next version bump, when the soft-failure rule says a
failed audit is absence and discovery should simply try again next run. The
judge applies the same rule to its triggers (bench/judge.sh).
"""

import json
import sys

REAL = {"safe", "unsafe", "inconclusive"}


def main():
    data = json.load(sys.stdin)
    for name, pkg in data.get("packages", {}).items():
        pkgver = pkg.get("pkgver", "")
        if not pkgver:
            continue
        audits = pkg.get("audits") or []
        if not any(a.get("result") in REAL for a in audits):
            continue
        pkgrel = pkg.get("pkgrel", "")
        print(f"{name}\t{pkgver}-{pkgrel}" if pkgrel else f"{name}\t{pkgver}")
    return 0


if __name__ == "__main__":
    sys.exit(main())
