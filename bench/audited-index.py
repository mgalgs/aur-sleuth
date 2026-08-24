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

With --include-advisory, advisory coverage counts too. Real runs never pass
it: an advisory report is information, not an audit, so the package must
stay a candidate for the real seats. An advisory run does pass it, so each
recurring sweep digs deeper into the popular set instead of re-covering the
same head forever.
"""

import json
import sys

REAL = {"safe", "unsafe", "inconclusive"}


def main():
    include_advisory = "--include-advisory" in sys.argv[1:]
    data = json.load(sys.stdin)
    for name, pkg in data.get("packages", {}).items():
        pkgver = pkg.get("pkgver", "")
        if not pkgver:
            continue
        audits = pkg.get("audits") or []
        # Advisory reports are informational, not audits: a package that has
        # only advisory looks stays a candidate for the real seats.
        covered = any(
            a.get("result") in REAL
            and (include_advisory or not a.get("advisory"))
            for a in audits
        )
        if not covered:
            continue
        pkgrel = pkg.get("pkgrel", "")
        print(f"{name}\t{pkgver}-{pkgrel}" if pkgrel else f"{name}\t{pkgver}")
    return 0


if __name__ == "__main__":
    sys.exit(main())
