#!/usr/bin/env python3
"""Prune a benchmark run's raw artifacts, keeping only what still has
something to say.

A benchmark run writes the full audit transcript (log-<pkg>.txt) and the
report for every package x model, per-fixture synthetic artifacts, and --
for the judge role -- the branch reports it materialised as judge input.
One wide run left 24.6 GB of that on the volume; the scoring summaries
the run exists to produce total ~25 KB.

The summaries (rows.jsonl, synthetics.jsonl, sample.jsonl, result.json)
are never touched. Raw artifacts are kept only where the summary row
cannot answer the follow-up question "why?": a row whose verdict
disagrees with the settled reference, and a synthetic fixture the model
failed. An artifact that agreed is deleted -- the agreement is already
the row.

Deleted unconditionally:
  - judge-input/: materialised from the audit-reports branch with
    `git show`, so it reproduces exactly.
  - aur-sleuth-* directories: package source trees an audit that was
    killed mid-run left behind.

Usage: prune-bench-run.py <run-dir> [--dry-run]
"""

import argparse
import json
import shutil
import sys
from pathlib import Path


def slugify(model: str) -> str:
    return model.replace("/", "-")


def load_jsonl(path: Path) -> list:
    rows = []
    if path.is_file():
        for line in path.read_text(encoding="utf-8").splitlines():
            line = line.strip()
            if not line:
                continue
            try:
                rows.append(json.loads(line))
            except ValueError:
                continue
    return rows


def tree_size(path: Path) -> int:
    if path.is_file():
        return path.stat().st_size
    return sum(f.stat().st_size for f in path.rglob("*") if f.is_file())


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("run_dir")
    parser.add_argument("--dry-run", action="store_true",
                        help="print what would be deleted, delete nothing")
    args = parser.parse_args()

    run = Path(args.run_dir)
    reports = run / "reports"
    if not run.is_dir():
        print(f"Error: not a run directory: {run}", file=sys.stderr)
        return 2
    if not reports.is_dir():
        print(f"Nothing to prune: {reports} does not exist")
        return 0

    rows = load_jsonl(run / "rows.jsonl")
    synths = load_jsonl(run / "synthetics.jsonl")

    # A row is worth its raw artifacts only when it disagrees with a settled
    # reference. reference "unknown" has nothing to disagree with.
    keep_pkg = set()
    for r in rows:
        if r.get("reference") in ("safe", "unsafe") and r.get("result") != r.get("reference"):
            keep_pkg.add((slugify(r.get("model", "")), r.get("package", "")))
    keep_syn = set()
    for s in synths:
        if not s.get("pass"):
            keep_syn.add((slugify(s.get("model", "")), s.get("fixture", "")))

    freed = 0
    removed = 0

    def rm(path: Path):
        nonlocal freed, removed
        freed += tree_size(path)
        removed += 1
        if args.dry_run:
            print(f"would delete {path}")
        elif path.is_dir():
            shutil.rmtree(path, ignore_errors=True)
        else:
            path.unlink(missing_ok=True)

    def pkg_kept(slug: str, name: str) -> bool:
        # log files are log-<pkg>.txt, or log-judge-<pkg>.txt for the judge
        # role. A package whose own name starts with "judge-" makes the two
        # readings ambiguous, so a hit under either reading keeps the file.
        candidates = {name}
        if name.startswith("judge-"):
            candidates.add(name[len("judge-"):])
        return any((slug, c) in keep_pkg for c in candidates)

    for slugdir in sorted(p for p in reports.iterdir() if p.is_dir()):
        slug = slugdir.name

        for leak in slugdir.glob("aur-sleuth-*"):
            # Directories only: the same prefix also matches the reports,
            # which have their own rule below.
            if leak.is_dir():
                rm(leak)
        judge_input = slugdir / "judge-input"
        if judge_input.is_dir():
            rm(judge_input)

        for f in slugdir.glob("log-*.txt"):
            name = f.name[len("log-"):-len(".txt")]
            if not pkg_kept(slug, name):
                rm(f)
        for f in slugdir.glob("aur-sleuth-report-*.txt"):
            pkg = f.name[len("aur-sleuth-report-"):-len(".txt")]
            if (slug, pkg) not in keep_pkg:
                rm(f)

        judge_dir = slugdir / "judge"
        if judge_dir.is_dir():
            for f in judge_dir.glob("*.json"):
                if (slug, f.stem) not in keep_pkg:
                    rm(f)

        syn_dir = slugdir / "synthetics"
        if syn_dir.is_dir():
            for fixdir in sorted(p for p in syn_dir.iterdir() if p.is_dir()):
                if (slug, fixdir.name) not in keep_syn:
                    rm(fixdir)

        # Directories the pruning emptied say nothing either.
        if not args.dry_run:
            for d in (judge_dir, syn_dir, slugdir):
                if d.is_dir() and not any(d.iterdir()):
                    d.rmdir()

    verb = "would free" if args.dry_run else "freed"
    print(f"{run.name}: {verb} {freed / 1024 / 1024:.1f} MiB "
          f"({removed} artifact(s) pruned, {len(keep_pkg)} disagreement(s) "
          f"and {len(keep_syn)} failed synthetic(s) kept)")
    return 0


if __name__ == "__main__":
    sys.exit(main())
