#!/usr/bin/env python3
"""Summarise what a sweep is about to publish, and optionally ask a model about it.

Advisory only. The publish gate in the container entrypoint decides whether a
branch may be pushed at all; nothing here blocks anything, by design. A model
reading these reports is reading text that a hostile package influenced, so it
is the wrong thing to put in front of a decision. It is a reasonable thing to
put in front of a person.

The model's read has exactly one job: spot a leak of the operator's own
private details (a credential, an internal hostname, a path on the machine
that ran the audit) that the fixed-string check in the entrypoint would not
know to look for. It does not review packages and it does not second-guess
verdicts; an earlier, wider brief had it re-arguing audit findings.

This exists because the person about to publish wants to know what is in the
sweep, and reading several hundred reports is not how they will find out.

Usage:
  review-pending.py --git-dir DIR --head REF [--base REF]
                    [--gate pass|fail] [--internal-file FILE]
                    [--model MODEL] [--max-reviews N] [--batch-size N]
                    [--workers N] [--no-llm]

The last line printed is `REVIEW_JSON ` followed by one JSON object holding
everything above in machine-readable form, for a caller that wants the answer
without parsing prose. --gate and --internal-file are the entrypoint's own
findings, passed in so the object is complete.
"""

import argparse
import json
import os
import re
import subprocess
import sys
from collections import Counter, defaultdict
from concurrent.futures import ThreadPoolExecutor, as_completed

# Verdicts a person would want pointed out in the summary: a report that
# claims danger, or one that could not make up its mind. (The model's read
# covers every text regardless; see summarise().)
FLAGGED = {"unsafe", "inconclusive"}

# A skipped or unknown audit produced no findings to read, so sending one to a
# model buys nothing -- bench/judge.sh declines to judge all-skipped packages
# for the same reason. They are still counted, because a sweep that is mostly
# skips is worth noticing.
DEGRADED = {"skipped", "unknown"}

# One report can be long, and a sweep can hold hundreds. Both bounds are here to
# keep an advisory pass from costing more than the audit that produced it.
MAX_REPORT_CHARS = 12000
# What a cut report ends with. The model is told this is ours, and a concern
# that is plainly about the cut is dismissed in code below; see cut_concern().
CUT_MARKER = "[... REPORT CUT HERE BY THE REVIEWER. The cut is ours, not the report's. ...]"
# Words a concern about our own cut uses. Matched only against concerns on a
# report we actually cut, so a genuinely truncated report elsewhere still counts.
_CUT_WORDS = re.compile(
    r"cut[ -]?off|cut here|cuts? (?:off|short)|truncat|abrupt|incomplete|unfinished"
    r"|mid-sentence|ends? (?:suddenly|early|prematurely)|trails? off",
    re.IGNORECASE,
)
# 0 means every generated text in the sweep. The read is advisory, and a text
# nobody read is the one a leak hides in, so the default is to read them all.
DEFAULT_MAX_REVIEWS = 0
# Reports per request. Batching is for the model's benefit, not the budget's: a
# few reports at a time keeps each request inside a context the model can
# actually attend to, and one weak batch cannot bury the rest.
DEFAULT_BATCH = 8
# Batches in flight. The review Job has a deadline, and a large sweep is many
# batches; a few at a time keeps the wall clock down without hammering the API.
DEFAULT_WORKERS = 4


def git(gitdir, *args, check=True):
    result = subprocess.run(
        ["git", "--git-dir", gitdir, *args],
        capture_output=True, text=True, timeout=120,
    )
    if check and result.returncode != 0:
        raise RuntimeError(f"git {' '.join(args)}: {result.stderr.strip()}")
    return result.stdout


def parse_frontmatter(text):
    """Read the leading `---` block. Returns {} when there is not one."""
    if not text.startswith("---"):
        return {}
    fields = {}
    for line in text.split("\n")[1:]:
        if line.strip() == "---":
            break
        key, sep, value = line.partition(":")
        if sep:
            fields[key.strip()] = value.strip()
    return fields


def tree_paths(gitdir, ref):
    out = git(gitdir, "ls-tree", "-r", "-z", "--name-only", ref)
    return {p for p in out.split("\0") if p}


def pending_paths(gitdir, head, base):
    """Paths this push would add or change.

    Deletions are left out on purpose: a path that no longer exists at head
    has no content to read, and counting it would report a phantom broken
    report for every file a sweep removes or renames.
    """
    if not base:
        return sorted(tree_paths(gitdir, head))
    out = git(gitdir, "diff", "--name-only", "-z", "--diff-filter=ACMR",
              f"{base}..{head}")
    return sorted(p for p in out.split("\0") if p)


def summarise(gitdir, head, base):
    paths = pending_paths(gitdir, head, base)
    known = tree_paths(gitdir, base) if base else set()
    known_pkgs = {p.split("/")[0] for p in known if "/" in p and not p.startswith("_")}

    audits, judges, packages = [], [], set()
    for path in paths:
        if "/" not in path or path.startswith("_"):
            continue
        pkg = path.split("/")[0]
        packages.add(pkg)
        if path.endswith(".md"):
            audits.append(path)
        elif path.endswith("-judge.json"):
            judges.append(path)

    verdicts = Counter()
    by_package = defaultdict(list)
    flagged = []
    # Every generated text the push would publish: each audit report and each
    # judge file. The model's read covers all of them, not only the flagged
    # ones -- a package that talked the auditor into SAFE while getting it to
    # write something out is exactly the report that would otherwise go unread.
    texts = []
    degraded = 0
    for path in audits:
        text = git(gitdir, "show", f"{head}:{path}", check=False)
        fields = parse_frontmatter(text)
        result = fields.get("result", "unknown")
        verdicts[result] += 1
        entry = {
            "path": path,
            "package": path.split("/")[0],
            "model": fields.get("model", "?"),
            "result": result,
            "pkgver": fields.get("pkgver", ""),
            "text": text,
        }
        by_package[entry["package"]].append(entry)
        texts.append(entry)
        if result in FLAGGED:
            flagged.append(entry)
        elif result in DEGRADED:
            degraded += 1
    for path in judges:
        raw = git(gitdir, "show", f"{head}:{path}", check=False)
        model = "judge"
        try:
            model = str(((json.loads(raw).get("_judge_usage") or {}).get("model")) or "judge")
        except (ValueError, AttributeError):
            pass
        texts.append({
            "path": path, "package": path.split("/")[0], "model": f"{model} (judge)",
            "result": "judge", "pkgver": "", "text": raw,
        })

    commits = 0
    if base:
        out = git(gitdir, "rev-list", "--count", f"{base}..{head}", check=False).strip()
        commits = int(out) if out.isdigit() else 0

    return {
        "commits": commits,
        "packages": sorted(packages),
        "new_packages": sorted(packages - known_pkgs),
        "audit_reports": len(audits),
        "judge_reports": len(judges),
        "verdicts": dict(verdicts),
        "flagged": flagged,
        "texts": texts,
        "degraded": degraded,
    }


def cut_report(text):
    """Bound a report for the model. Returns (text, was_cut).

    The cut lands on a line boundary, never mid-sentence, because a sentence
    that stops dead is exactly what the model is asked to look for in item 3
    of its prompt, and it kept reporting our own cut as one. The marker then
    says whose cut it is.
    """
    if len(text) <= MAX_REPORT_CHARS:
        return text, False
    head = text[:MAX_REPORT_CHARS]
    nl = head.rfind("\n")
    # A report with no newline in its first 12k characters is one long line;
    # cutting that mid-line is the only option, and the marker still explains it.
    if nl > MAX_REPORT_CHARS // 2:
        head = head[:nl]
    return head.rstrip() + "\n\n" + CUT_MARKER + "\n", True


def normalise(text):
    """Whitespace-insensitive form for the quote check: models re-wrap lines."""
    return " ".join(str(text or "").split())


def unquoted_concern(concern, texts):
    """True when the concern's quote is not in the report it names.

    The quote is what makes a concern checkable. A real item-1 concern can
    always point at the sentence that addresses the reader; a concern that
    re-argues the verdict has nothing to quote, or quotes something that is
    not there. Matching is whitespace-insensitive and case-sensitive, against
    every report the batch carried for that package.
    """
    quote = normalise(concern.get("quote"))
    if len(quote) < 8:
        return True
    for t in texts.get(concern.get("package"), []):
        if quote in normalise(t):
            return False
    return True


def cut_concern(concern, cut_packages):
    """True when a concern is the model reporting our own cut of a report it was
    told we cut. Decided here rather than left to the prompt: the prompt already
    said so and the model still raised it, batch after batch."""
    if concern.get("package") not in cut_packages:
        return False
    return bool(_CUT_WORDS.search(concern.get("detail", "") + " " + concern.get("kind", "")))


def parse_model_json(content):
    """Best-effort parse of a model's JSON reply into a dict.

    Models wrap the JSON in prose or a code fence and sometimes put a literal
    newline inside a string value (which is invalid strict JSON). Try, in order:
    a fenced block, the whole reply, and the first "{"..last "}" slice -- each
    first strict, then with strict=False so a literal control character inside a
    string is tolerated. Returns the parsed dict, or None.

    None covers a truncated reply and a reply that carries more than one top-level
    object: no single slice parses, so nothing is returned rather than trusting
    the first fragment (which, in hostile-influenced text, could be a decoy).
    """
    if not content:
        return None

    candidates = []
    if "```json" in content:
        candidates.append(content.split("```json", 1)[1].split("```", 1)[0])
    elif "```" in content:
        candidates.append(content.split("```", 1)[1].split("```", 1)[0])
    candidates.append(content)
    # The first "{"..last "}" slice drops surrounding prose. It parses only when
    # there is a single object; two top-level objects leave a slice that does
    # not parse, so a leading decoy cannot shadow the real answer.
    start, end = content.find("{"), content.rfind("}")
    if start != -1 and end > start:
        candidates.append(content[start:end + 1])

    for text in candidates:
        text = text.strip()
        if not text:
            continue
        for strict in (True, False):
            try:
                obj = json.loads(text, strict=strict)
            except (ValueError, TypeError, RecursionError):
                obj = None
            if isinstance(obj, dict):
                return obj
    return None


def ask_model(entries, model, base_url, api_key):
    """Ask a model whether anything here should not be published. Advisory."""
    try:
        from openai import OpenAI
    except ImportError:
        return {"_error": "the openai package is not installed"}

    client = OpenAI(
        base_url=base_url, api_key=api_key,
        default_headers={
            "HTTP-Referer": "https://github.com/mgalgs/aur-sleuth",
            "X-Title": "aur-sleuth-review",
        },
    )

    blocks = []
    cut = set()
    for e in entries:
        body, was_cut = cut_report(e["text"])
        if was_cut:
            cut.add(e["package"])
        blocks.append(f"=== {e['package']} ({e['model']}) ===\n{body}")

    prompt = f"""These AUR package audit reports are about to be published on a public site.
You have ONE job: find anything in them that leaks something private about the
people or machines that RAN these audits. Nothing else.

A leak is text that belongs to the operator, not to the package:
- an API key, token, password, or anything that looks like a credential
- an internal hostname, a cluster-internal service name, a private IP address
- a filesystem path on the operator's machine (a home directory, a scratch
  directory, a path that names the operator's own setup)
- the operator's own email address or account name

NOT a leak, and not your business:
- credentials, hostnames, URLs, and paths that belong to the audited package --
  its PKGBUILD, its upstream project, its build scripts, its README. Those are
  public already.
- what a package does, whether it is safe, or whether a report's verdict is
  right. You are not reviewing packages. Do not comment on them.
- the cut marker "{CUT_MARKER}": long reports are cut there by this script.

For each leak, copy the text from the report EXACTLY, character for character,
into "quote". A leak you cannot quote is not a leak. Most batches have none;
an empty list is the expected answer.

{chr(10).join(blocks)}

Respond in JSON, no markdown fencing:
{{
  "concerns": [{{"package": "name", "kind": "leak", "quote": "verbatim text from the report", "detail": "one sentence: what it is"}}],
  "summary": "one sentence overall"
}}"""

    try:
        resp = client.chat.completions.create(
            model=model,
            messages=[{"role": "user", "content": prompt}],
            temperature=0.2, max_tokens=2048,
        )
        content = resp.choices[0].message.content or ""
    except Exception as exc:
        return {"_error": str(exc)}

    # The advisory read must never crash the run, so any parse-time failure
    # (including a RecursionError on pathologically nested input) is caught.
    try:
        parsed = parse_model_json(content)
    except Exception as exc:
        return {"_error": f"could not parse the model reply: {exc}"}

    # A usable reply carries the requested shape. A dict with neither key -- "{}",
    # or something off-schema -- is a broken reply, not an all-clear, and is
    # reported as one. The start of the reply goes with it so a person can see
    # what came back. The sentinel key is "_error" so it cannot collide with an
    # "error" key the model itself might emit.
    if not isinstance(parsed, dict) or not ("concerns" in parsed or "summary" in parsed):
        head = " ".join(content.split())[:200] or "(empty reply)"
        return {"_error": f"the model did not return a usable review; reply began: {head}"}
    # Which reports this batch saw cut, for cut_concern(). Underscored like
    # "_error" so a model-emitted key cannot collide with it.
    parsed["_cut"] = sorted(cut)
    texts = defaultdict(list)
    for e in entries:
        texts[e["package"]].append(e["text"])
    parsed["_texts"] = dict(texts)
    return parsed


def review_batches(entries, model, base_url, api_key, batch_size, workers):
    """Read every entry, a batch at a time, and gather what came back.

    One weak or failed batch must not lose the others, so each is reported
    separately and the caller is told how many succeeded. Batches run
    concurrently but results are collected in order, so the same sweep reads the
    same way twice.
    """
    batches = [entries[i:i + batch_size] for i in range(0, len(entries), batch_size)]
    results = [None] * len(batches)

    if len(batches) == 1 or workers <= 1:
        for i, b in enumerate(batches):
            results[i] = ask_model(b, model, base_url, api_key)
    else:
        with ThreadPoolExecutor(max_workers=min(workers, len(batches))) as pool:
            futures = {pool.submit(ask_model, b, model, base_url, api_key): i
                       for i, b in enumerate(batches)}
            for f in as_completed(futures):
                i = futures[f]
                try:
                    results[i] = f.result()
                except Exception as exc:  # a crash here must not lose the rest
                    results[i] = {"_error": str(exc)}

    concerns, dismissed, errors, ok = [], [], [], 0
    for i, verdict in enumerate(results):
        if not isinstance(verdict, dict) or "_error" in verdict:
            detail = verdict.get("_error", "no answer") if isinstance(verdict, dict) else "no answer"
            errors.append(f"batch {i + 1}: {detail}")
            continue
        ok += 1
        cut_packages = set(verdict.get("_cut") or [])
        texts = verdict.get("_texts") or {}
        for c in verdict.get("concerns") or []:
            if not isinstance(c, dict):
                continue
            entry = {
                "package": str(c.get("package", "?"))[:100],
                "kind": str(c.get("kind", "?"))[:100],
                "quote": str(c.get("quote", ""))[:500],
                "detail": str(c.get("detail", ""))[:500],
            }
            # Dismissed, not dropped: the count goes out with the result, so a
            # reader can see the model raised it and why it does not stand.
            if cut_concern(entry, cut_packages):
                entry["dismissed"] = "about the reviewer's own cut"
                dismissed.append(entry)
            elif unquoted_concern(entry, texts):
                entry["dismissed"] = "the quote is not in the report"
                dismissed.append(entry)
            else:
                concerns.append(entry)

    read = sum(len(batches[i]) for i, v in enumerate(results)
               if isinstance(v, dict) and "_error" not in v)
    return {"concerns": concerns, "dismissed": dismissed, "errors": errors,
            "batches": len(batches), "batches_ok": ok, "read": read}


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--git-dir", required=True)
    ap.add_argument("--head", required=True)
    ap.add_argument("--base", default="")
    ap.add_argument("--gate", choices=["pass", "fail"], default="pass",
                    help="the entrypoint's path gate result, for the summary")
    ap.add_argument("--internal-file", default="",
                    help="file listing paths that carry an internal string, one per line")
    ap.add_argument("--model", default=os.environ.get(
        "AUR_SLEUTH_REVIEW_MODEL", "deepseek/deepseek-v4-flash"))
    ap.add_argument("--max-reviews", type=int, default=DEFAULT_MAX_REVIEWS,
                    help="cap on generated texts to read; 0 (the default) reads all")
    ap.add_argument("--batch-size", type=int, default=DEFAULT_BATCH,
                    help="reports per request")
    ap.add_argument("--workers", type=int, default=DEFAULT_WORKERS,
                    help="batches in flight")
    ap.add_argument("--no-llm", action="store_true")
    args = ap.parse_args()

    internal = []
    if args.internal_file:
        try:
            with open(args.internal_file, encoding="utf-8") as f:
                internal = [line.strip() for line in f if line.strip()]
        except OSError:
            pass

    s = summarise(args.git_dir, args.head, args.base)

    # Built up as the text is printed, and printed last as one line. It holds
    # the same facts as the prose, so a reader of either sees the same thing.
    out = {
        "gate": args.gate,
        "internal": internal,
        "publishable": args.gate == "pass" and not internal,
        "head": args.head,
        "base": args.base,
        "pending": s["commits"],
        "packages": len(s["packages"]),
        "new_packages": len(s["new_packages"]),
        "audit_reports": s["audit_reports"],
        "judge_reports": s["judge_reports"],
        "verdicts": s["verdicts"],
        "degraded": s["degraded"],
        "flagged": len(s["flagged"]),
        "llm": {"status": "skipped"},
    }

    def finish(code):
        print("REVIEW_JSON " + json.dumps(out, separators=(",", ":"), sort_keys=True))
        return code

    print("Pending publication")
    print(f"  commits:        {s['commits']}")
    print(f"  packages:       {len(s['packages'])}"
          f" ({len(s['new_packages'])} not published before)")
    print(f"  audit reports:  {s['audit_reports']}")
    print(f"  judge reports:  {s['judge_reports']}")
    if s["verdicts"]:
        breakdown = ", ".join(f"{k}={v}" for k, v in sorted(s["verdicts"].items()))
        print(f"  verdicts:       {breakdown}")
    if s["new_packages"]:
        shown = ", ".join(s["new_packages"][:12])
        more = "" if len(s["new_packages"]) <= 12 else f", +{len(s['new_packages']) - 12} more"
        print(f"  new:            {shown}{more}")

    if s["degraded"]:
        print(f"  no findings:    {s['degraded']} report(s) skipped or errored")

    flagged = s["flagged"]
    if flagged:
        print(f"\nReports worth a look ({len(flagged)}):")
        for e in flagged[:40]:
            print(f"  {e['result']:<13} {e['package']} [{e['model']}]")
        if len(flagged) > 40:
            print(f"  ... and {len(flagged) - 40} more")
    else:
        print("\nNothing flagged: no report came back unsafe or inconclusive.")

    texts = s["texts"]
    if not texts:
        return finish(0)
    if args.no_llm:
        return finish(0)

    api_key = os.environ.get("OPENAI_API_KEY", "")
    if not api_key:
        print("\nNo OPENAI_API_KEY: skipping the model's read.")
        return finish(0)

    subset = texts if args.max_reviews <= 0 else texts[:args.max_reviews]
    nbatch = max(1, args.batch_size)
    njudge = sum(1 for e in texts if e["result"] == "judge")
    what = f"{len(texts) - njudge} audit report(s) and {njudge} judge file(s)"
    if len(texts) > len(subset):
        print(f"\nAsking {args.model} to read the first {len(subset)}"
              f" of {what}, {nbatch} at a time, for operator leaks...")
    else:
        print(f"\nAsking {args.model} to read all {what},"
              f" {nbatch} at a time, for operator leaks...")

    got = review_batches(
        subset, args.model,
        os.environ.get("OPENAI_BASE_URL", "https://openrouter.ai/api/v1"),
        api_key, nbatch, args.workers,
    )
    out["llm"] = {"status": "ok", "model": args.model, "read": got["read"],
                  "of": len(texts), "concerns": got["concerns"],
                  "dismissed": len(got["dismissed"]),
                  "summary": "", "batches": got["batches"],
                  "batches_ok": got["batches_ok"]}

    concerns = got["concerns"]
    # The summary is built here rather than taken from one batch: with several
    # batches there is no single model sentence that describes the whole read,
    # and a count that matches the list is more use than prose that might not.
    if got["batches_ok"] == 0:
        # Advisory, so a total failure is reported and changes no outcome.
        out["llm"]["status"] = "error"
        out["llm"]["summary"] = ("the review did not complete: "
                                 + "; ".join(got["errors"])[:280])
        print(f"  the review did not complete: {'; '.join(got['errors'])}")
        return finish(0)

    summary = f"{len(concerns)} concern(s) across {got['read']} report(s)"
    if got["dismissed"]:
        summary += f"; {len(got['dismissed'])} dismissed (unquotable, or about the reviewer's own cut)"
    out["llm"]["dismissed_concerns"] = got["dismissed"][:50]
    if got["errors"]:
        out["llm"]["status"] = "partial"
        summary += f"; {len(got['errors'])} batch(es) failed"
    out["llm"]["summary"] = summary[:500]
    out["llm"]["errors"] = [e[:200] for e in got["errors"]]

    if not concerns:
        print(f"  no concerns raised across {got['read']} report(s).")
    else:
        print(f"  {len(concerns)} concern(s) raised:")
        for c in concerns:
            print(f"    [{c['kind']}] {c['package']}: {c['detail']}")
            print(f"        \"{c['quote']}\"")
    if got["dismissed"]:
        print(f"  {len(got['dismissed'])} dismissed in code:")
        for c in got["dismissed"]:
            print(f"    [{c['kind']}] {c['package']}: {c['detail']} -- {c['dismissed']}")
    for e in got["errors"]:
        print(f"  incomplete: {e}")
    print("\n  Advisory only. This model read text a hostile package can influence.")
    return finish(0)


if __name__ == "__main__":
    sys.exit(main())
