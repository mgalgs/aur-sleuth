#!/usr/bin/env python3
"""Ingest a community-submitted audit report onto the audit-reports branch.

Anyone can run `aur-sleuth <pkg>` and offer the report. What arrives is a
*claim*: the frontmatter says which model ran and what it decided, and nothing
here can check either. So the claim is kept as a claim -- `model:` still says
what the contributor says it was -- and the ingest stamps every accepted file
with what it actually is: `advisory: true` (counts toward nothing) and
`source: community` (never read by a model, never in the audited index).

`--submitted-by` is RECORDED, NEVER VERIFIED. It is whatever label the
operator passed in, usually a GitHub login taken from the pull request. It
carries no more authority than the rest of the submission.

Fail closed: one bad file refuses the whole submission, every reason listed,
exit 1, nothing written to --out. Half a submission landing would leave the
contributor guessing which half.

Usage:
  ingest-submission.py --git-dir DIR --reports-ref REF --submission-ref REF
                       --submitted-by LABEL --out DIR
                       [--needles-file FILE] [--max-files N] [--max-bytes N]

--git-dir is a throwaway repository holding both refs. Never the shared
object store's own config: a repository's config and hooks are executable
input, and the submission is untrusted (see stage_reports_repo() in
deploy/container/scripts/entrypoint.sh).

--needles-file lists the operator's internal strings, one per line, `-` for
stdin. The entrypoint pipes its own internal_string_needles() in, so this
script never carries a second copy of that list.

Accepted files are written to <out>/<pkg>/<name>.md and named by the ingest,
not the contributor: a forger controls their filename, so the archive does
not let them pick where it lands. One line per accepted file is printed as
`ACCEPT <submitted path> -> <archived path>`, then `INGESTED <n>`.
"""

import argparse
import importlib.util
import os
import re
import subprocess
import sys
from datetime import datetime, timezone

# AUR pkgbase rules: lowercase alphanumerics plus @ . _ + -, and the first
# character may not be one of the punctuation marks.
PKG_RE = re.compile(r"^[a-z0-9][a-z0-9@._+-]*$")

# The only verdicts a report may claim. "unknown" and "skipped" are what a
# crashed run leaves behind; there is no reason to archive someone else's
# crash, and accepting them would put a shape downstream code reads as
# absence into a file that says a person meant to send it.
RESULTS = {"safe", "unsafe", "inconclusive"}

# Frontmatter keys the ingest owns. Whatever the submission said about any of
# them is dropped and replaced, so a forged `advisory: false` cannot survive.
# `triggered_by` is dropped outright: it is the re-audit bookkeeping's own
# field, and a submission has no escalation behind it to record.
OWNED_KEYS = ("advisory", "source", "submitted_by", "submission_ref",
              "ingested")
DROPPED_KEYS = ("triggered_by",)

DEFAULT_MAX_FILES = 200
DEFAULT_MAX_BYTES = 262144


def load_parse_frontmatter():
    """The dashboard's own frontmatter reader, loaded from its file.

    The page decides what a report means from this parser, so the gate that
    admits a report has to read it the same way. A second copy here would be
    a second reading of the same bytes, and the two would drift.
    """
    here = os.path.dirname(os.path.abspath(__file__))
    spec = importlib.util.spec_from_file_location(
        "gd_fm", os.path.join(here, "generate-dashboard.py"))
    gd = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(gd)
    return gd.parse_frontmatter


def git(gitdir, *args, binary=False, check=True):
    result = subprocess.run(
        ["git", "--git-dir", gitdir, *args],
        capture_output=True, timeout=120,
    )
    if check and result.returncode != 0:
        raise RuntimeError(
            f"git {' '.join(args[:2])}: "
            + result.stderr.decode("utf-8", "replace").strip())
    return result.stdout if binary else result.stdout.decode("utf-8", "replace")


def submitted_paths(gitdir, reports_ref, submission_ref):
    """(added paths, refusals) for the submission.

    The submission is what the contributor ADDED on top of the branch they
    forked. A modified or deleted path is not a contribution: overwriting a
    real report with a forged one is the whole attack this ingest exists to
    stop, so either refuses the submission rather than being silently
    dropped.

    With no merge-base -- an orphan branch carrying nothing but reports, which
    is a reasonable way to offer one -- the submission is its whole tree.
    """
    base = git(gitdir, "merge-base", reports_ref, submission_ref,
               check=False).strip()
    if not base:
        paths = [p for p in git(
            gitdir, "ls-tree", "-r", "-z", "--name-only", submission_ref
        ).split("\0") if p]
        return sorted(paths), []

    # --no-renames so every record is one status and one path: a rename is
    # reported as the delete and the add it is, and both are refused below on
    # their own terms.
    out = git(gitdir, "diff", "--name-status", "-z", "--no-renames",
              base, submission_ref)
    fields = [f for f in out.split("\0") if f]
    added, refusals = [], []
    for status, path in zip(fields[0::2], fields[1::2]):
        if status == "A":
            added.append(path)
        elif status == "D":
            refusals.append(f"{path}: deletes a path on the branch; "
                            "a submission may only add files")
        else:
            refusals.append(f"{path}: modifies a path on the branch "
                            f"(status {status}); a submission may only add files")
    return sorted(added), refusals


def check_path(path, existing):
    """Every reason this path may not be archived, as a list."""
    bad = []
    if "/" not in path:
        return [f"{path}: not <package>/<file>.md"]
    pkg, _, rest = path.partition("/")
    if "/" in rest:
        bad.append(f"{path}: nested; a report is exactly <package>/<file>.md")
    if path.endswith(".json"):
        # A *-judge.json is evidence the dashboard counts directly
        # (package_state reads judge rulings), so a submitted one would be a
        # forged ruling that decides a package's state. There is no advisory
        # form of a judge file, so there is nothing to accept.
        bad.append(f"{path}: JSON; a judge ruling is not a submission")
    elif not rest.endswith(".md"):
        bad.append(f"{path}: not a .md report")
    if pkg.startswith(".") or rest.startswith("."):
        bad.append(f"{path}: dotfile or traversal")
    if pkg.startswith("_"):
        bad.append(f"{path}: not under a package directory")
    if not PKG_RE.match(pkg):
        bad.append(f"{path}: '{pkg}' is not a valid pkgbase")
    if path in existing:
        bad.append(f"{path}: already on the branch; a submission never overwrites")
    return bad


def check_content(path, raw, needles, parse_frontmatter, max_bytes):
    """Every reason this file's bytes may not be archived, as a list."""
    bad = []
    if len(raw) > max_bytes:
        bad.append(f"{path}: {len(raw)} bytes, over the {max_bytes}-byte limit")
        return bad
    try:
        text = raw.decode("utf-8")
    except UnicodeDecodeError:
        return [f"{path}: not UTF-8 text"]
    if "\0" in text:
        return [f"{path}: contains a NUL byte"]
    if "\r\n" in text:
        bad.append(f"{path}: CRLF line endings; commit the report with LF")
    for needle in needles:
        if needle in text:
            bad.append(f"{path}: carries an internal string")
            break

    fm, _ = parse_frontmatter(text)
    if not fm:
        bad.append(f"{path}: no parsable YAML frontmatter")
        return bad
    pkg = path.partition("/")[0]
    if fm.get("package") != pkg:
        bad.append(f"{path}: frontmatter package '{fm.get('package', '')}'"
                   f" is not the directory '{pkg}'")
    if not fm.get("model"):
        bad.append(f"{path}: frontmatter has no model")
    result = fm.get("result", "")
    if not result:
        bad.append(f"{path}: frontmatter has no result")
    elif result not in RESULTS:
        bad.append(f"{path}: result '{result}' is not one of "
                   + ", ".join(sorted(RESULTS)))
    return bad


def model_slug(model):
    """The model id as it appears in an archive filename.

    Same shape the pipeline already uses (`${model//\\//-}`), then anything
    outside [a-z0-9._-] folded to a dash so a contributor's `model:` value
    cannot steer where the file lands. A leading dot would be a dotfile in a
    position the publish gate refuses, so it is folded too.
    """
    slug = re.sub(r"[^a-z0-9._-]+", "-", model.strip().lower()).strip("-")
    slug = slug.lstrip(".")
    return slug or "unknown"


def rewrite(text, stamp):
    """The submitted report with the ingest's own stamp on it.

    Only the frontmatter is touched, and only the keys the ingest owns: every
    line the contributor wrote about anything else, and the whole body,
    survives byte for byte. Owned keys are stripped wherever they appear at
    the top level and re-added at the head of the block, so a second copy
    lower down cannot win the last-writer-wins parse.
    """
    end = text.find("\n---\n", 4)
    fm_text, rest = text[4:end], text[end + 5:]

    drop = re.compile(r"^(" + "|".join(OWNED_KEYS + DROPPED_KEYS) + r")\s*:")
    kept = [line for line in fm_text.split("\n") if not drop.match(line)]

    head = [
        "advisory: true",
        "source: community",
        f"submitted_by: {stamp['submitted_by']}",
        f"submission_ref: {stamp['submission_ref']}",
        f"ingested: {stamp['ingested']}",
    ]
    return "---\n" + "\n".join(head + kept) + "\n---\n" + rest


def main():
    ap = argparse.ArgumentParser(add_help=True)
    ap.add_argument("--git-dir", required=True)
    ap.add_argument("--reports-ref", required=True)
    ap.add_argument("--submission-ref", required=True)
    ap.add_argument("--submitted-by", required=True,
                    help="a label such as a GitHub login; recorded, never verified")
    ap.add_argument("--out", required=True)
    ap.add_argument("--needles-file", default="",
                    help="internal strings, one per line; '-' for stdin")
    ap.add_argument("--max-files", type=int, default=DEFAULT_MAX_FILES)
    ap.add_argument("--max-bytes", type=int, default=DEFAULT_MAX_BYTES)
    ap.add_argument("--now", default="",
                    help="UTC timestamp to stamp and name with, for tests")
    args = ap.parse_args()

    gitdir = args.git_dir
    needles = []
    if args.needles_file == "-":
        needles = [n for n in sys.stdin.read().split("\n") if n.strip()]
    elif args.needles_file:
        with open(args.needles_file, encoding="utf-8") as f:
            needles = [n for n in f.read().split("\n") if n.strip()]
    if not needles:
        print("warning: no internal-string needles given; content is not "
              "checked for operator leaks", file=sys.stderr)

    label = args.submitted_by.strip()
    # The label goes into a YAML scalar and a log line. Keep it to something
    # that cannot break either, rather than quoting it and hoping.
    label = re.sub(r"[^A-Za-z0-9._@+-]+", "-", label).strip("-")[:64]
    if not label:
        sys.exit("--submitted-by must contain at least one usable character")

    parse_frontmatter = load_parse_frontmatter()

    try:
        sha = git(gitdir, "rev-parse", "--verify", f"{args.submission_ref}^{{commit}}").strip()
        git(gitdir, "rev-parse", "--verify", f"{args.reports_ref}^{{commit}}")
    except RuntimeError as exc:
        sys.exit(f"ingest: {exc}")

    existing = {p for p in git(
        gitdir, "ls-tree", "-r", "-z", "--name-only", args.reports_ref
    ).split("\0") if p}

    paths, refusals = submitted_paths(gitdir, args.reports_ref, args.submission_ref)

    if not paths and not refusals:
        print("ingest: the submission adds no files")
        return 1
    if len(paths) > args.max_files:
        refusals.append(f"{len(paths)} files, over the {args.max_files}-file limit")
        paths = paths[:args.max_files]

    when = args.now.strip() or datetime.now(timezone.utc).strftime("%Y%m%d-%H%M%S")

    stamp = {
        "submitted_by": label,
        "submission_ref": sha,
        "ingested": datetime.strptime(when, "%Y%m%d-%H%M%S")
                            .replace(tzinfo=timezone.utc)
                            .strftime("%Y-%m-%dT%H:%M:%SZ"),
    }

    accepted = []
    taken = set(existing)
    for path in paths:
        bad = check_path(path, existing)
        if bad:
            refusals.extend(bad)
            continue
        raw = git(gitdir, "show", f"{args.submission_ref}:{path}", binary=True)
        bad = check_content(path, raw, needles, parse_frontmatter, args.max_bytes)
        if bad:
            refusals.extend(bad)
            continue

        text = raw.decode("utf-8")
        fm, _ = parse_frontmatter(text)
        pkg = path.partition("/")[0]
        slug = model_slug(fm.get("model", ""))
        target = f"{pkg}/{when}-community-{slug}.md"
        n = 1
        while target in taken:
            n += 1
            target = f"{pkg}/{when}-community-{slug}-{n}.md"
        taken.add(target)
        accepted.append((path, target, rewrite(text, stamp)))

    if refusals:
        print(f"ingest: refusing the whole submission, {len(refusals)} reason(s):")
        for r in refusals:
            print(f"  {r}")
        return 1

    for _, target, content in accepted:
        full = os.path.join(args.out, target)
        os.makedirs(os.path.dirname(full), exist_ok=True)
        with open(full, "w", encoding="utf-8") as f:
            f.write(content)
    for path, target, _ in accepted:
        print(f"ACCEPT {path} -> {target}")
    print(f"INGESTED {len(accepted)}")
    return 0


if __name__ == "__main__":
    sys.exit(main())
