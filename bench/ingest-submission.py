#!/usr/bin/env python3
"""Ingest a community-submitted audit report onto the audit-reports branch.

Anyone can run `aur-sleuth <pkg>` and offer the report. What arrives is a
*claim*: the frontmatter says which model ran and what it decided, and nothing
here can check either. So the claim is kept as a claim -- `model:` still says
what the contributor says it was -- and the ingest stamps every accepted file
with what it actually is: `advisory: true` (counts toward nothing) and
`source: community` (never read by a model, never in the audited index).

Who sent it IS verified, and twice over. A report arrives over the
maintainer's private network, through a gateway that identifies the caller by
their node and stamps the invitation ring it came in on, so `--submitted-by`
and `--submission-ring` are facts the transport established rather than
labels a submission chose. Neither is re-derived here. But the gateway's
label is not trusted alone: the submission's commit has to carry a signature
made by a key on the `trusted-contributors` branch
(`--allowed-signers`, an SSH allowed_signers file), the signature's principal
has to be the commit's own author email, and the `# <login>` comment on that
key's line has to be what `--submitted-by` says. What is recorded is the
login the KEY maps to. A submission whose signature does not verify, or whose
key is on nobody's line, is refused whole.

What is verified is WHO, never WHAT. The report's own claims are untouched by
any of it: a signed report from a registered contributor is still `advisory:
true`, still `source: community`, still read by no model.

Fail closed: one bad file refuses the whole submission, every reason listed,
exit 1, nothing written to --out. Half a submission landing would leave the
contributor guessing which half.

Usage:
  ingest-submission.py --git-dir DIR --reports-ref REF --submission-ref REF
                       --submitted-by LOGIN --submission-ring N
                       --allowed-signers FILE --out DIR
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
OWNED_KEYS = ("advisory", "source", "submitted_by", "submitted_ring",
              "submission_ref", "ingested")

# Keys dropped outright, because a submission has nothing true to say in them.
# `triggered_by` is the re-audit bookkeeping's own field, and a submission has
# no escalation behind it. The rest are this pipeline's ACCOUNTING: a submitted
# `cost: 999999` has no run behind it, and a submission spent none of this
# deployment's money, so the honest value is no value at all rather than a zero
# it did not measure.
#
# Dropping them is not by itself what keeps a submission out of the public
# spend figure, and it must not be read as if it were: `model` and `date` stay,
# because a report without them says nothing, and any aggregate that COUNTS
# reports still moves when one lands. What keeps those honest is the other
# half, in bench/generate-dashboard.py: every figure that says what this
# pipeline spent or which model ran is computed over the non-community reports
# (`pipeline_audits`, and `latest_measured_date` for the coverage
# denominator). Neither half is sufficient alone.
DROPPED_KEYS = ("triggered_by", "cost", "prompt_tokens", "completion_tokens",
                "total_tokens", "execution_time")

DEFAULT_MAX_FILES = 200
DEFAULT_MAX_BYTES = 262144

# A GitHub login, as bench/trusted-contributors.sh permits one. Applied to
# what is read OUT of the registry too: the file is the maintainer's, but a
# value that lands in YAML is checked where it is used, not where it came
# from.
LOGIN_RE = re.compile(r"^[A-Za-z0-9-]{1,39}$")

# What `git verify-commit` says when an ssh signature checks out. The
# principal it names is the allowed_signers line the key was found on.
GOOD_SIG_RE = re.compile(r'^Good "[^"]*" signature for (\S+) with ', re.M)

# The invitation rings the gateway may stamp a submission with.
RINGS = (1, 2, 3)


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


def signer_login(gitdir, sha, allowed_signers):
    """(login, refusals): whose registered key signed this commit.

    Three questions, and all three have to answer the same person:

      - Does the signature verify against the registry? `git verify-commit`
        with the registry as its allowed_signers file is the whole of that
        check, and the file is used exactly as the branch holds it.
      - Is the principal the signature was accepted under the commit's own
        author email? Otherwise a contributor could sign for an author line
        naming somebody else.
      - Which line is that key on? The `# <login>` comment on it is the
        identity the report is recorded under, because that is the identity
        the key proves. The caller compares it to what the gateway said.
    """
    proc = subprocess.run(
        ["git", "--git-dir", gitdir,
         "-c", "gpg.format=ssh",
         "-c", f"gpg.ssh.allowedSignersFile={allowed_signers}",
         "verify-commit", sha],
        capture_output=True, timeout=120,
    )
    out = (proc.stdout + proc.stderr).decode("utf-8", "replace")
    if proc.returncode != 0:
        return "", [f"the submission commit {sha[:12]} is not signed by a key on "
                    f"the trusted-contributors branch: "
                    f"{out.strip().splitlines()[-1] if out.strip() else 'no signature'}"]
    match = GOOD_SIG_RE.search(out)
    if not match:
        return "", [f"the submission commit {sha[:12]} verified without naming a "
                    "principal; refusing rather than guessing whose it is"]
    principal = match.group(1)

    author = git(gitdir, "log", "-1", "--format=%ae", sha).strip()
    if principal != author:
        return "", [f"the signature is {principal}'s but the commit's author is "
                    f"{author}; a submission is signed by its author"]

    with open(allowed_signers, encoding="utf-8") as f:
        for line in f:
            line = line.strip()
            if not line or line.startswith("#"):
                continue
            fields = line.split()
            if len(fields) == 5 and fields[0] == principal and fields[3] == "#":
                login = fields[4]
                if not LOGIN_RE.match(login):
                    return "", [f"the registry line for {principal} has "
                                f"'{login}' where a GitHub login belongs"]
                return login, []
    return "", [f"{principal} verified the signature but is on no line of the "
                "registry that names a login"]


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
    if pkg in existing:
        # `index.html` is a valid pkgbase by the regex above and a blob on the
        # branch. Writing under it would need the same name to be a file and a
        # directory, which git refuses -- as an error in the middle of the
        # stage, after the refusal list was printed. Refused here instead, on
        # the same footing as every other rule.
        bad.append(f"{path}: '{pkg}' is a file on the branch, not a package")
    return bad


def check_content(path, raw, needles, parse_frontmatter, max_bytes, ingested):
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
    # The date is the contributor's claim about when they ran it, and it is
    # kept as one -- but not a claim to have run it after sending it. The
    # dashboard sorts a package's reports by this string and takes the newest
    # as `latest`, so a report dated 2099 takes over the displayed version and
    # date of any package this pipeline has not audited itself.
    #
    # The shape is checked before the value, and that order is the point. An
    # earlier version matched `^\d{4}-\d{2}-\d{2}T` and compared only when it
    # matched, which made the guard OPT-IN: `date: 2099-01-01` skipped it by
    # leaving out one character, and still sorted newest, because the sort is
    # a plain string compare that does not care about the `T`. A guard the
    # attacker turns off by deleting a character is not a guard. So a `date`
    # that is present must parse, and anything present and unparseable is
    # refused rather than waved through.
    #
    # Two shapes are accepted: the `%Y-%m-%dT%H:%M:%SZ` the tool itself writes,
    # and the bare `%Y-%m-%d` a hand-written report plausibly carries. The
    # compare is on the date part alone, against the date part of `ingested`.
    # A report timestamped a few hours ahead inside the same UTC day is clock
    # skew, not an attack, and refusing it would be a false refusal; the thing
    # being defended is which report a reader sees as the package's newest,
    # and a day is the granularity that shows.
    #
    # An ABSENT date stays allowed. It sorts as the empty string, which is
    # oldest, so a report with no date is the last thing `latest` would pick
    # -- the conservative direction, and the opposite of the failure above.
    date = fm.get("date", "")
    if date:
        if not re.fullmatch(r"\d{4}-\d{2}-\d{2}(T\d{2}:\d{2}:\d{2}Z)?", date):
            bad.append(f"{path}: date '{date}' is not YYYY-MM-DD or "
                       f"YYYY-MM-DDTHH:MM:SSZ")
        elif date[:10] > ingested[:10]:
            bad.append(f"{path}: dated {date}, which is after it was submitted "
                       f"({ingested})")
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

    # Leading whitespace is allowed for, deliberately. A `source:` indented
    # under `file_verdicts:` is not a top-level key to the dashboard's parser
    # -- but a simpler reader elsewhere may take it for one, and no report has
    # a legitimate nested key by any of these names.
    drop = re.compile(r"^\s*(" + "|".join(OWNED_KEYS + DROPPED_KEYS) + r")\s*:")
    kept = [line for line in fm_text.split("\n") if not drop.match(line)]

    head = [
        "advisory: true",
        "source: community",
        f"submitted_by: {stamp['submitted_by']}",
        f"submitted_ring: {stamp['submitted_ring']}",
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
                    help="the GitHub login the gateway identified the caller as; "
                         "checked against the login the signing key maps to")
    ap.add_argument("--submission-ring", required=True, type=int,
                    help="the invitation ring the gateway saw the caller on, 1-3")
    ap.add_argument("--allowed-signers", required=True,
                    help="the trusted-contributors file, as an SSH "
                         "allowed_signers file")
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
    if not LOGIN_RE.match(label):
        sys.exit(f"--submitted-by must be a GitHub login, not '{label}'")
    if args.submission_ring not in RINGS:
        sys.exit(f"--submission-ring must be one of "
                 + ", ".join(str(r) for r in RINGS)
                 + f", not {args.submission_ring}")

    parse_frontmatter = load_parse_frontmatter()

    try:
        sha = git(gitdir, "rev-parse", "--verify", f"{args.submission_ref}^{{commit}}").strip()
        git(gitdir, "rev-parse", "--verify", f"{args.reports_ref}^{{commit}}")
    except RuntimeError as exc:
        sys.exit(f"ingest: {exc}")

    # Who signed it, before anything the submission says is read. A signature
    # that does not verify refuses the whole submission on its own, without
    # any file being looked at: there is nobody to attribute it to.
    login, sig_refusals = signer_login(gitdir, sha, args.allowed_signers)
    if sig_refusals:
        print("ingest: refusing the whole submission, "
              f"{len(sig_refusals)} reason(s):")
        for r in sig_refusals:
            print(f"  {r}")
        return 1
    if login != label:
        print("ingest: refusing the whole submission, 1 reason(s):")
        print(f"  the gateway identified the caller as '{label}' but the key "
              f"that signed the commit is registered to '{login}'")
        return 1

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
        "submitted_by": login,
        "submitted_ring": args.submission_ring,
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
        bad = check_content(path, raw, needles, parse_frontmatter,
                            args.max_bytes, stamp["ingested"])
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
