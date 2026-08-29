#!/usr/bin/env python3
"""Generate a static GitHub Pages dashboard from the audit-reports branch."""

import json
import os
import re
import subprocess
import sys
import tempfile
from collections import Counter, defaultdict
from datetime import datetime, timedelta, timezone

REPORTS_BRANCH = "audit-reports"

# The command line, in one place. Flags that take a value are listed apart
# from the ones that do not, because main() checks every argument against
# these before it runs anything -- see the guard there for why.
VALUE_FLAGS = {"--emit", "--git-dir", "--ref", "--aur-metadata", "--effective"}
BARE_FLAGS = {"--print-html"}

USAGE = """\
usage: generate-dashboard.py [--print-html | --emit DIR] [options]

Builds the public page at mgalgs.io/aur-sleuth from the audit-reports branch:
one inlined index.html, _dashboard/data.json, and one _dashboard/pkg/<name>.json
per package.

Modes:
  (no arguments)    Build all of it and COMMIT to the local audit-reports
                    branch. This is the only mode that writes to a repository.
  --print-html      Write index.html to stdout. Reads no repository.
  --emit DIR        Write the JSON files under DIR. Commits nothing.

Options, with --emit:
  --git-dir DIR     Read the branch from this repository rather than the one
                    in the working directory.
  --ref BRANCH      Read reports from this ref rather than audit-reports.
  --aur-metadata F  The AUR's packages-meta-v1.json.gz, for the coverage line.
  --effective F     The effective settings file, for the daily budget and the
                    escalation queue.

  -h, --help        Show this and exit.

To preview a change to bench/dashboard/ without touching any branch, use
--emit and --print-html together; never the no-argument form.
"""

# Set by --git-dir: read the branch from this repository instead of the one
# in the working directory. The publish stage uses it to build the page's
# JSON from its own throwaway repository, never running git in the shared
# store (see deploy/container/README.md for why that matters).
GIT_DIR = None


def git(*args, **kwargs):
    cmd = ["git"]
    if GIT_DIR:
        cmd += ["--git-dir", GIT_DIR]
    result = subprocess.run(
        cmd + list(args),
        capture_output=True, text=True, timeout=30, **kwargs,
    )
    if result.returncode != 0:
        raise RuntimeError(f"git {' '.join(args)}: {result.stderr.strip()}")
    return result.stdout


_YAML_ESCAPES = {"n": "\n", "t": "\t", '"': '"', "\\": "\\"}


def yaml_scalar(value):
    """Read one inline YAML value as aur-sleuth's _yaml_escape() writes it.

    The tool quotes a value only when it has to (a colon, a newline, a tab, a
    quote...), so a value arrives either bare or double-quoted with backslash
    escapes. Anything else is not something the tool emits, and it is left
    alone rather than guessed at.
    """
    value = value.strip()
    if len(value) >= 2 and value[0] == '"' and value[-1] == '"':
        out = []
        i = 1
        while i < len(value) - 1:
            c = value[i]
            if c == "\\" and i + 1 < len(value) - 1:
                out.append(_YAML_ESCAPES.get(value[i + 1], "\\" + value[i + 1]))
                i += 2
            else:
                out.append(c)
                i += 1
        return "".join(out)
    return value


# The keys one file_verdicts entry may carry, and how to read each.
_VERDICT_KEYS = {
    "status": yaml_scalar,
    "summary": yaml_scalar,
    "evidence": yaml_scalar,
    "evidence_line": lambda v: safe_int(yaml_scalar(v), 0) or None,
}


def parse_frontmatter(raw):
    """Parse YAML frontmatter from a markdown report, including file_verdicts."""
    if not raw.startswith("---\n"):
        return {}, raw
    end = raw.find("\n---\n", 4)
    if end < 0:
        return {}, raw
    fm_text = raw[4:end]
    body = raw[end + 5:]

    fm = {}
    file_verdicts = []
    in_verdicts = False
    current_verdict = {}

    for line in fm_text.split("\n"):
        if in_verdicts:
            stripped = line.strip()
            if stripped.startswith("- file:"):
                if current_verdict:
                    file_verdicts.append(current_verdict)
                current_verdict = {"file": yaml_scalar(stripped[7:])}
            elif not line.startswith(" ") and not line.startswith("\t") and stripped:
                in_verdicts = False
                if current_verdict:
                    file_verdicts.append(current_verdict)
                    current_verdict = {}
                m = re.match(r"^(\w[\w_]*):\s*(.*)", line)
                if m:
                    fm[m.group(1)] = yaml_scalar(m.group(2))
            elif current_verdict:
                key, sep, value = stripped.partition(":")
                reader = _VERDICT_KEYS.get(key) if sep else None
                if reader:
                    parsed = reader(value)
                    if parsed is not None:
                        current_verdict[key] = parsed
        else:
            if line.strip() == "file_verdicts:":
                in_verdicts = True
                continue
            m = re.match(r"^(\w[\w_]*):\s*(.*)", line)
            if m:
                fm[m.group(1)] = yaml_scalar(m.group(2))

    if current_verdict:
        file_verdicts.append(current_verdict)
    if file_verdicts:
        fm["file_verdicts"] = file_verdicts

    return fm, body


def compute_majority(results):
    """Compute majority verdict from a list of result/verdict strings."""
    if not results:
        return None
    safe = sum(1 for r in results if r == 'safe')
    unsafe = sum(1 for r in results if r == 'unsafe')
    if unsafe > safe:
        return 'unsafe'
    if safe > unsafe:
        return 'safe'
    if safe > 0:
        return 'contested'
    return 'inconclusive'


def effective_audit_result(frontmatter):
    """Return a verdict only when the audit actually reviewed a file.

    Older runners could turn a failed ``makepkg`` source download into an
    ``unsafe`` package-level result.  A report with no reviewed files carries
    no security evidence, so keep it out of the verdict math.  Genuine
    findings from a partial audit (``files_reviewed`` > 0) remain findings.
    """
    result = frontmatter.get("result", "unknown")
    if (result == "unsafe"
            and frontmatter.get("source_fetch") == "failed"
            and safe_int(frontmatter.get("files_reviewed")) == 0):
        return "skipped"
    return result


# How many escalation audits a package gets before the pipeline stops paying
# for opinions. Each escalation is a fresh audit by a model that has not yet
# read the package, followed by a fresh judge ruling. The third is the bounded
# final-resolution cycle; when all three have not settled it, the models
# disagree and no further call will change that.
ESCALATION_CAP = 3


def package_state(ps):
    """How settled a package's verdict is: confirmed, look, disputed, clean,
    or other.

    The models decide, and nothing overrides them. There was a file of
    hand-settled verdicts that outranked the pipeline; both entries in it were
    false positives on upstream files, and the fix for a false positive is
    the detection, not a list of exceptions to it. A package the pipeline
    gets wrong is re-audited or its cause is fixed in code; it is not edited
    into the right answer.

    "confirmed" is deliberately narrow -- the audits agreed on unsafe AND the
    judge agreed with them. Only that may be presented as a finding.

    Everything else carrying a flag is "look": one model said unsafe and another
    did not, or a report was inconclusive. On this corpus that is usually a false
    positive on a package that is merely doing something that looks alarming, and
    the threat model says risky-but-legitimate is not a finding (CLAUDE.md,
    "The test to apply"). Publishing those under a real package's name, in red,
    as "suspicious" would be an accusation the evidence does not support -- the
    same harm the publish review is told to watch for. So the page counts them
    separately and says plainly what they are.

    "disputed" is "look" after ESCALATION_CAP escalations: the models still
    disagree, and the pipeline stops spending on it. Terminal until a person
    settles it.
    """
    audit = ps.get("audit_majority")
    # The judge's LATEST ruling, not a majority over every ruling it ever
    # made. Each ruling reads every report there is, so a later one has
    # strictly more evidence -- the escalation audit it was convened to
    # weigh. A majority let two rulings made before that audit existed
    # outvote the one that read it, and snapd sat in "look" with rulings
    # unsafe, unsafe, safe.
    judge = ps.get("judge_latest")

    # "Audits agree" has to mean more than one MODEL. A single cheap audit plus
    # a judge that went along with it once made rocketchat-desktop "confirmed"
    # over upstream's own build fetching from upstream's own server; then two
    # reports from the same model counted as two independent opinions, and
    # they share every failure mode. Two distinct models saying unsafe (an
    # escalation audit counts) or it is "look", not a finding.
    if audit == "unsafe" and judge == "unsafe" and ps.get("unsafe_models", 0) >= 2:
        return "confirmed"
    # The judge read the audits and disagreed with them. It is the better model
    # looking at the same evidence, so its answer stands: a package it cleared is
    # clean, not "worth a look". Leaving it flagged would keep a package that did
    # nothing wrong on a public list of ones that might have.
    if judge == "safe":
        return "clean"
    # Something actually called it unsafe and nothing has settled it. "contested"
    # counts because it means one model said unsafe and another said safe.
    if audit in ("unsafe", "contested") or judge == "unsafe":
        if ps.get("escalations", 0) >= ESCALATION_CAP:
            return "disputed"
        return "look"
    if audit == "safe":
        return "clean"
    # Everything left is inconclusive or skipped: no model reached a verdict
    # either way. That is missing information, not a suspicion, and it is the
    # single largest group -- 66 of 76 packages once carried the "worth a closer
    # look" label on this basis alone, which read as an accusation about
    # packages nothing had ever flagged.
    return "unknown"


def safe_float(v, default=0.0):
    try:
        return float(v)
    except (ValueError, TypeError):
        return default


def safe_int(v, default=0):
    try:
        return int(v)
    except (ValueError, TypeError):
        return default


# --- Funding: what auditing every AUR update would cost ------------------------
#
# Three inputs, each decidable in code, none from a model:
#   - how many packages the AUR updates in a day, from the AUR's own metadata
#     dump (the file bench/pipeline.sh discovers candidates from);
#   - what one package costs this pipeline, from the branch's recent reports;
#   - the budget the pipeline actually runs with, from pipeline/effective.json.
# The page multiplies the first two and compares with the third.

# The trailing window the per-package cost is averaged over. Long enough to
# smooth a quiet day, short enough that a cheaper re-audit model shows up
# within two weeks rather than being buried under months of the old one.
COST_WINDOW_DAYS = 14

def count_aur_updates(path, now=None):
    """Packages the AUR modified in the 24 hours before `now`, or None.

    `path` is the AUR's packages-meta-v1.json.gz. A package's LastModified is
    its latest change only, so a window older than a day undercounts (a package
    touched twice in a week shows once, on the later day). The last 24 hours
    is the one window that does not: nothing has been modified "after" it yet.
    That makes it noisier than a weekly mean, and honest, which matters more
    for a number the page states as fact.
    """
    import gzip
    try:
        with gzip.open(path, "rt", encoding="utf-8") as f:
            packages = json.load(f)
    except (OSError, ValueError, EOFError):
        return None
    if not isinstance(packages, list):
        return None
    cutoff = (now or datetime.now(timezone.utc)).timestamp() - 86400
    count = 0
    for p in packages:
        if isinstance(p, dict) and safe_float(p.get("LastModified"), 0) >= cutoff:
            count += 1
    return count


def read_daily_budget(path):
    """The budget the last pipeline run resolved to, as a float, or None.

    pipeline/effective.json is written by the audit stage, which runs hostile
    code, so nothing in it is trusted as text: one field is read, and only a
    number comes out of it.
    """
    try:
        with open(path, encoding="utf-8") as f:
            data = json.load(f)
    except (OSError, ValueError):
        return None
    if not isinstance(data, dict):
        return None
    value = safe_float(data.get("AUR_SLEUTH_DAILY_BUDGET"), -1.0)
    return value if value >= 0 else None


def _whole_number(v, minimum):
    """v as an int, or None unless it is a whole number >= minimum."""
    f = safe_float(v, None)
    if f is None or not float(f).is_integer():
        return None
    n = int(f)
    return n if n >= minimum else None


def read_escalation_settings(path):
    """How many escalations a run may start, how many runs a day, and which
    models the escalation seat holds -- from pipeline/effective.json.

    Same discipline as read_daily_budget: the audit stage that writes this
    file runs hostile code, so every field is validated and only whole
    numbers and plain model ids come out of it.
    """
    empty = {"per_run": None, "runs_per_day": None, "models": []}
    try:
        with open(path, encoding="utf-8") as f:
            data = json.load(f)
    except (OSError, ValueError):
        return empty
    if not isinstance(data, dict):
        return empty

    models = []
    for key in ("AUR_SLEUTH_REAUDIT_MODEL", "AUR_SLEUTH_TIEBREAK_MODEL",
                "AUR_SLEUTH_FINAL_AUDIT_MODEL"):
        v = data.get(key)
        if isinstance(v, str) and v and len(v) <= 200:
            models.append(v)

    return {
        "per_run": _whole_number(data.get("AUR_SLEUTH_ESCALATIONS_PER_RUN"), 0),
        "runs_per_day": _whole_number(data.get("AUR_SLEUTH_RUNS_PER_DAY"), 1),
        "models": models,
    }


def build_coverage(pkg_summaries, by_date, now, updates_per_day=None,
                   daily_budget=None):
    """The coverage block of data.json, or None when a number it needs is missing.

    The per-package cost is everything the pipeline spent in the trailing
    window (audits, judges, re-audits) over the packages it audited in that
    window, so it is the marginal cost of one more package under the current
    models, not an all-time mean that remembers a retired judge.
    """
    window_start = (now - timedelta(days=COST_WINDOW_DAYS)).strftime("%Y-%m-%d")
    cost = sum(v["cost"] for d, v in by_date.items() if d >= window_start)
    packages = sum(1 for ps in pkg_summaries.values()
                   if (ps["latest_date"] or "")[:10] >= window_start)
    if not packages or cost <= 0 or not updates_per_day:
        return None
    per_package = cost / packages
    needed = updates_per_day * per_package
    coverage = {
        "updates_per_day": int(updates_per_day),
        "cost_per_package": round(per_package, 4),
        "cost_window_days": COST_WINDOW_DAYS,
        "cost_window_packages": packages,
        "needed_per_day": round(needed, 2),
        "daily_budget": None,
        "covered": None,
    }
    if daily_budget is not None:
        coverage["daily_budget"] = round(daily_budget, 2)
        coverage["covered"] = round(min(1.0, daily_budget / needed), 4) if needed > 0 else None
    return coverage


def load_reports():
    """Read all reports from the audit-reports branch."""
    file_list = git("ls-tree", "-r", REPORTS_BRANCH, "--name-only").strip().split("\n")

    audits = []
    judges = []

    for path in file_list:
        if path.startswith("_dashboard/") or path == "index.html" or path == ".nojekyll":
            continue
        try:
            raw = git("show", f"{REPORTS_BRANCH}:{path}")
        except Exception:
            continue

        pkg = path.split("/")[0]
        filename = path.split("/", 1)[1] if "/" in path else path

        if path.endswith("-judge.json"):
            try:
                data = json.loads(raw)
                judges.append({"package": pkg, "filename": filename, "data": data})
            except (json.JSONDecodeError, KeyError):
                pass
        elif path.endswith(".md") or path.endswith(".txt"):
            fm, body = parse_frontmatter(raw)
            audits.append({
                "package": pkg,
                "filename": filename,
                "frontmatter": fm,
                "body": body,
            })

    return audits, judges


def build_index_data(audits, judges, now=None, coverage_inputs=None, escalation_inputs=None):
    """Build the index JSON structure for the dashboard.

    `coverage_inputs` is {updates_per_day, daily_budget}, each optional;
    see build_coverage for what becomes of them.

    `escalation_inputs` is {per_run, runs_per_day, models}, from
    read_escalation_settings, each optional. `models` decides which "look"
    packages get `escalation_exhausted`; it is never itself published.
    """
    now = now or datetime.now(timezone.utc)
    packages = defaultdict(lambda: {"audits": [], "judges": []})

    for a in audits:
        pkg = a["package"]
        fm = a["frontmatter"]
        cost = safe_float(fm.get("cost"))
        files = safe_int(fm.get("files_reviewed"))
        result = effective_audit_result(fm)
        if cost == 0 and files == 0 and result not in ("skipped",):
            continue
        packages[pkg]["audits"].append({
            "filename": a["filename"],
            "result": result,
            "model": fm.get("model", "unknown"),
            "model_alias": fm.get("model_alias", ""),
            "cost": safe_float(fm.get("cost")),
            "date": fm.get("date", ""),
            "execution_time": safe_float(fm.get("execution_time")),
            "files_reviewed": safe_int(fm.get("files_reviewed")),
            "files_skipped": safe_int(fm.get("files_skipped")),
            "prompt_tokens": safe_int(fm.get("prompt_tokens")),
            "completion_tokens": safe_int(fm.get("completion_tokens")),
            "total_tokens": safe_int(fm.get("total_tokens")),
            "pkgver": fm.get("pkgver", ""),
            "pkgrel": fm.get("pkgrel", ""),
            "file_verdicts": fm.get("file_verdicts", []),
            "triggered_by": fm.get("triggered_by", ""),
            # Advisory reports are data, never verdicts: shown, and excluded
            # from every piece of state math below.
            "advisory": fm.get("advisory", "") == "true",
            # Who said it. "community" is a report someone outside the
            # pipeline submitted; the ingest stamps it advisory too, so the
            # state math above already ignores it. This carries the stamp on
            # to the page and to bench/audited-index.py, where "advisory" is
            # not enough on its own: an advisory RUN counts as coverage for
            # the next sweep, and a submission must never do that.
            "source": fm.get("source", ""),
            "submitted_by": fm.get("submitted_by", ""),
        })

    # Build set of re-audit filenames from judge data for backward compat
    reaudit_filenames = set()
    for j in judges:
        data = j["data"]
        rr = data.get("reaudit_report", "")
        if rr:
            reaudit_filenames.add(rr.split("/", 1)[1] if "/" in rr else rr)

    for j in judges:
        pkg = j["package"]
        data = j["data"]
        usage = data.get("_judge_usage", {})
        packages[pkg]["judges"].append({
            "filename": j["filename"],
            "correct_verdict": data.get("correct_verdict", ""),
            "confidence": data.get("confidence", ""),
            "reasoning": data.get("reasoning", ""),
            "re_audit_recommended": data.get("re_audit_recommended", False),
            "re_audit_focus": data.get("re_audit_focus", []),
            "coverage_issues": data.get("coverage_issues", []),
            "false_positives": data.get("false_positives", []),
            "false_negatives": data.get("false_negatives", []),
            "model": usage.get("model", "unknown"),
            "model_alias": usage.get("model_alias", ""),
            "cost": usage.get("cost") or 0,
            # For folding, below; dropped before the summary is built.
            "_ruling": (tuple(data.get("audits_judged") or []), data.get("reasoning", "")),
            "_reaudit_copy": bool(data.get("reaudit_date")),
        })

    # Tag re-audits: either from frontmatter or by cross-referencing judge data
    for pkg_data in packages.values():
        for a in pkg_data["audits"]:
            if not a["triggered_by"] and a["filename"] in reaudit_filenames:
                a["triggered_by"] = "judge"

    # Fold re-archived rulings. bench/judge.sh used to archive a judge file a
    # second time after the re-audit it asked for, with reaudit_* fields
    # added and the verdict copied unchanged. On the branch that is a second
    # file, and it read as a second ruling: pcloud-drive showed three
    # "unsafe" judgements when one judge had ruled once and been copied. A
    # copy is the same ruling (same audits read, same reasoning) carrying a
    # reaudit_date; the original it duplicates is dropped and the copy, with
    # its metadata, stands in its place.
    for pkg_data in packages.values():
        rulings = pkg_data["judges"]
        kept = []
        for i, j in enumerate(rulings):
            copied_later = any(
                later["_ruling"] == j["_ruling"] and later["_reaudit_copy"]
                for later in rulings[i + 1:]
            )
            if not copied_later:
                kept.append(j)
        for j in kept:
            del j["_ruling"], j["_reaudit_copy"]
        pkg_data["judges"] = kept

    # Build per-package summary
    pkg_summaries = {}
    for pkg_name, pkg_data in sorted(packages.items()):
        pkg_audits = sorted(pkg_data["audits"], key=lambda a: a["date"], reverse=True)
        latest = pkg_audits[0] if pkg_audits else {}
        total_cost = sum(a["cost"] for a in pkg_audits)
        total_cost += sum(j["cost"] for j in pkg_data["judges"])

        # Re-audits count double in majority calculation. Advisory reports
        # count zero: they are context for a judge, never a vote.
        audit_results = []
        for a in pkg_audits:
            if a.get("advisory"):
                continue
            audit_results.append(a["result"])
            if a.get("triggered_by"):
                audit_results.append(a["result"])
        # A judge cannot create a verdict from reports that reviewed no files.
        # This specifically prevents legacy source-fetch failures from being
        # published as unsafe solely because an old judge guessed at them.
        has_audited_evidence = any(
            a.get("files_reviewed", 0) > 0
            and not a.get("advisory")
            for a in pkg_audits
        )
        judge_verdicts = (
            [j["correct_verdict"] for j in pkg_data["judges"]]
            if has_audited_evidence else []
        )

        pkg_summaries[pkg_name] = {
            "pkgver": latest.get("pkgver", ""),
            "pkgrel": latest.get("pkgrel", ""),
            "latest_date": latest.get("date", ""),
            "first_date": pkg_audits[-1]["date"] if pkg_audits else "",
            "total_cost": round(total_cost, 6),
            "audit_count": len(pkg_audits),
            "files_reviewed": latest.get("files_reviewed", 0),
            "audits": [
                {"result": a["result"], "model": a["model"],
                 **({"model_alias": a["model_alias"]} if a.get("model_alias") else {}),
                 "reaudit": bool(a.get("triggered_by")),
                 **({"advisory": True} if a.get("advisory") else {}),
                 **({"source": a["source"]} if a.get("source") else {})}
                for a in pkg_audits
            ],
            "judges": [{"verdict": j["correct_verdict"], "model": j.get("model", "unknown"),
                        **({"model_alias": j["model_alias"]} if j.get("model_alias") else {})}
                       for j in (pkg_data["judges"] if has_audited_evidence else [])],
            "audit_majority": compute_majority(audit_results),
            "judge_majority": compute_majority(judge_verdicts),
            # The ruling that read the most evidence. Judge files sort by
            # name, and the name is the archive timestamp.
            "judge_latest": judge_verdicts[-1] if judge_verdicts else None,
            # Distinct models that said unsafe: what "agree" rests on. Two
            # reports from one model are one opinion. Advisory reports never
            # count here.
            "unsafe_models": len({a["model"] for a in pkg_audits
                                  if a["result"] == "unsafe" and not a.get("advisory")}),
            # Escalation audits so far, against ESCALATION_CAP.
            "escalations": sum(1 for a in pkg_audits
                               if a.get("triggered_by") and not a.get("advisory")),
        }
        # The state is decided here, once, and the page reads it. The page
        # used to carry its own copy of package_state() in JavaScript, and
        # nothing checked that the two copies agreed.
        pkg_summaries[pkg_name]["state"] = package_state(pkg_summaries[pkg_name])

    # The escalation worklist, exactly as bench/pending-escalations.py builds
    # it: every "look" package, alphabetical, MINUS the ones every listed
    # escalation model has already read -- pe.worklist() skips exactly those
    # (nothing left to ask), so they are not actually waiting in line, and
    # numbering them in would overstate every later package's wait. A
    # package that model set has exhausted gets escalation_exhausted and no
    # queue_position: stuck, not queued. When the models are unknown (no
    # --effective), exhaustion cannot be decided, so every "look" package is
    # queued, same as before.
    look_names = sorted(name for name, ps in pkg_summaries.items() if ps["state"] == "look")
    escalation_models = (escalation_inputs or {}).get("models") or []
    queued_names = []
    for name in look_names:
        ps = pkg_summaries[name]
        if escalation_models:
            heard = {a.get("model") for a in ps["audits"] if not a.get("advisory")}
            if all(m in heard for m in escalation_models):
                ps["escalation_exhausted"] = True
                continue
        queued_names.append(name)
    for i, name in enumerate(queued_names, start=1):
        pkg_summaries[name]["queue_position"] = i

    # Aggregate stats
    audit_cost = sum(safe_float(a["frontmatter"].get("cost")) for a in audits)
    judge_cost = sum((j["data"].get("_judge_usage", {}).get("cost") or 0) for j in judges)
    total_pt = sum(safe_int(a["frontmatter"].get("prompt_tokens")) for a in audits)
    total_ct = sum(safe_int(a["frontmatter"].get("completion_tokens")) for a in audits)

    results = defaultdict(int)
    for a in audits:
        results[a["frontmatter"].get("result", "unknown")] += 1

    by_model = defaultdict(lambda: {"count": 0, "cost": 0.0, "tokens": 0})
    for a in audits:
        fm = a["frontmatter"]
        m = by_model[fm.get("model", "unknown")]
        m["count"] += 1
        m["cost"] += safe_float(fm.get("cost"))
        m["tokens"] += safe_int(fm.get("total_tokens"))
    for j in judges:
        usage = j["data"].get("_judge_usage", {})
        model = usage.get("model", "unknown")
        m = by_model[model]
        m["count"] += 1
        m["cost"] += usage.get("cost") or 0
        m["tokens"] += (usage.get("prompt_tokens", 0) or 0) + (usage.get("completion_tokens", 0) or 0)

    by_date = defaultdict(lambda: {"audits": 0, "judges": 0, "cost": 0.0})
    for a in audits:
        d = a["frontmatter"].get("date", "")[:10] or "unknown"
        by_date[d]["audits"] += 1
        by_date[d]["cost"] += safe_float(a["frontmatter"].get("cost"))
    for j in judges:
        fname = j["filename"]
        d = fname[:4] + "-" + fname[4:6] + "-" + fname[6:8] if len(fname) >= 8 else "unknown"
        by_date[d]["judges"] += 1
        by_date[d]["cost"] += (j["data"].get("_judge_usage", {}).get("cost") or 0)

    # --- Trailing-week activity, for the public dashboard headline ---
    # "Now" is generation time; data.json is rebuilt every run, so the window
    # always trails the latest audits. ISO date strings compare correctly, so a
    # lexical compare against the cutoff is enough -- no per-row date parsing.
    # These count what aur-sleuth AUDITED this week, not every AUR update: the
    # audit set is drawn from recently-updated and top-popular packages.
    week_start = (now - timedelta(days=7)).strftime("%Y-%m-%d")

    wk_updated = wk_new = wk_confirmed = wk_look = wk_disputed = wk_green = wk_unknown = 0
    for ps in pkg_summaries.values():
        if (ps["latest_date"] or "")[:10] < week_start:
            continue
        wk_updated += 1
        if (ps["first_date"] or "")[:10] >= week_start:
            wk_new += 1
        state = package_state(ps)
        if state == "confirmed":
            wk_confirmed += 1
        elif state == "look":
            wk_look += 1
        elif state == "disputed":
            wk_disputed += 1
        elif state == "clean":
            wk_green += 1
        else:
            wk_unknown += 1

    wk_by_model = defaultdict(int)
    wk_audits_total = 0
    for a in audits:
        if a["frontmatter"].get("date", "")[:10] >= week_start:
            wk_audits_total += 1
            wk_by_model[a["frontmatter"].get("model", "unknown")] += 1

    # The activity strip: one entry per PACKAGE, not per audit. Per audit, a
    # package the two models disagreed about appeared twice, once green and once
    # red, which reads as an alarming finding when it is only a disagreement.
    # The package's settled state is the honest summary of it.
    # The packages a reader would want named: the ones flagged this week, in
    # either unsettled or confirmed state. Every clean package is in the table;
    # listing them here again was a wall of chips that said nothing.
    recent = [
        {"package": name, "state": package_state(ps), "date": ps["latest_date"],
         "audits": len(ps["audits"])}
        for name, ps in pkg_summaries.items()
        if package_state(ps) in ("look", "disputed", "confirmed")
        and (ps["latest_date"] or "")[:10] >= week_start
    ]
    # Newest first, confirmed ahead of the rest (sorts are stable).
    recent.sort(key=lambda r: r["date"] or "", reverse=True)
    recent.sort(key=lambda r: r["state"] != "confirmed")
    recent = recent[:24]

    summary = {
        "packages_audited": len(pkg_summaries),
        "total_reports": len(audits),
        "total_judges": len(judges),
        "audit_cost": round(audit_cost, 4),
        "judge_cost": round(judge_cost, 4),
        "total_cost": round(audit_cost + judge_cost, 4),
        "total_prompt_tokens": total_pt,
        "total_completion_tokens": total_ct,
        "total_tokens": total_pt + total_ct,
        "results": dict(sorted(results.items(), key=lambda x: -x[1])),
        # Per PACKAGE, after the judge has had its say -- what the page charts.
        # "results" above is per audit REPORT and still counts a verdict the
        # judge overturned, so charting it puts overridden findings in a headline
        # figure. Those belong in a package's own row, not in the summary.
        "package_states": dict(Counter(package_state(ps)
                                       for ps in pkg_summaries.values())),
        "by_model": {k: {"count": v["count"], "cost": round(v["cost"], 4), "tokens": v["tokens"]}
                     for k, v in sorted(by_model.items(), key=lambda x: -x[1]["cost"])},
        "by_date": {k: {"audits": v["audits"], "judges": v["judges"], "cost": round(v["cost"], 4)}
                    for k, v in sorted(by_date.items())},
        "re_audit_count": sum(1 for j in judges if j["data"].get("re_audit_recommended")),
        "week": {
            "start": week_start,
            "packages": {"updated": wk_updated, "new": wk_new,
                         "confirmed": wk_confirmed, "look": wk_look,
                         "disputed": wk_disputed,
                         "green": wk_green, "unknown": wk_unknown},
            "audits_total": wk_audits_total,
            # "unknown" is not worth naming on the public headline; audits_total
            # still counts it, so the named models need not sum to the total.
            "by_model": dict(sorted(((k, v) for k, v in wk_by_model.items() if k != "unknown"),
                                    key=lambda x: -x[1])),
        },
        "recent": recent,
        # What auditing every AUR update would cost, against the budget the
        # pipeline runs with. None until every input is known; the page then
        # leaves the card out rather than showing a confident zero.
        "coverage": build_coverage(pkg_summaries, by_date, now, **(coverage_inputs or {})),
        # The escalation cadence: what a "look" package's queue position
        # means in practice. per_run/runs_per_day are None when
        # pipeline/effective.json was not given or did not carry them; the
        # page then drops just those clauses of the sentence.
        "escalation": {
            "cap": ESCALATION_CAP,
            "queue_length": len(queued_names),
            "per_run": (escalation_inputs or {}).get("per_run"),
            "runs_per_day": (escalation_inputs or {}).get("runs_per_day"),
        },
    }

    return {"summary": summary, "packages": pkg_summaries}


def build_package_details(audits, judges):
    """Build per-package detail JSON with full report bodies."""
    packages = defaultdict(lambda: {"audits": [], "judges": []})

    for a in audits:
        packages[a["package"]]["audits"].append({
            "filename": a["filename"],
            "frontmatter": a["frontmatter"],
            "body": a["body"],
        })

    for j in judges:
        packages[j["package"]]["judges"].append({
            "filename": j["filename"],
            "data": j["data"],
        })

    return dict(packages)


# The page's source: a skeleton, a stylesheet and a script, as real files so
# an editor or a linter sees each for what it is. The published page is still
# ONE file. The publish gate lets nothing but index.html and inert data onto
# the branch, and index.html only because the publish stage rebuilds it from
# the image every time (rewrite_dashboard_html in entrypoint.sh). Shipping
# app.css and app.js as files would mean two more paths to allow and rebuild,
# so generate_html() inlines them instead and the boundary stays where it is.
DASHBOARD_DIR = os.path.join(os.path.dirname(os.path.abspath(__file__)), "dashboard")

# What the skeleton says where the inlined blocks go. Exact strings, matched
# once each: the skeleton also works served as-is from bench/dashboard/ for a
# quick look, with the same two tags doing their ordinary job.
_CSS_TAG = '<link rel="stylesheet" href="app.css">'
_JS_TAG = '<script src="app.js"></script>'


def _read_dashboard_file(name):
    with open(os.path.join(DASHBOARD_DIR, name), encoding="utf-8") as f:
        return f.read()


def _inline(html, tag, replacement):
    if html.count(tag) != 1:
        raise RuntimeError(f"dashboard/index.html must carry exactly one {tag}")
    return html.replace(tag, replacement)


def generate_html():
    """The dashboard as one self-contained HTML string."""
    css = _read_dashboard_file("app.css")
    js = _read_dashboard_file("app.js")
    # An inlined block ends at the first closing tag the parser sees, whatever
    # the file meant by it. Refuse, rather than publish half a page.
    for name, text, closer in (("app.css", css, "</style"), ("app.js", js, "</script")):
        if closer in text.lower():
            raise RuntimeError(f"dashboard/{name} contains {closer}>, which would end its inline block")
    html = _read_dashboard_file("index.html")
    html = _inline(html, _CSS_TAG, "<style>\n" + css + "</style>")
    html = _inline(html, _JS_TAG, "<script>\n" + js + "</script>")
    return html


def commit_to_branch(files):
    """Commit generated files to the audit-reports branch using git plumbing."""
    fd, tmpindex = tempfile.mkstemp()
    os.close(fd)
    os.remove(tmpindex)

    try:
        env = os.environ.copy()
        env["GIT_INDEX_FILE"] = tmpindex

        # Start from existing tree
        if subprocess.run(
            ["git", "rev-parse", "--verify", REPORTS_BRANCH],
            capture_output=True,
        ).returncode == 0:
            subprocess.run(
                ["git", "read-tree", REPORTS_BRANCH],
                env=env, check=True,
            )

        # Add each generated file
        for path, content in files.items():
            blob = subprocess.run(
                ["git", "hash-object", "-w", "--stdin"],
                input=content, capture_output=True, text=True, check=True,
            ).stdout.strip()
            subprocess.run(
                ["git", "update-index", "--add", "--cacheinfo", f"100644,{blob},{path}"],
                env=env, check=True,
            )

        tree = subprocess.run(
            ["git", "write-tree"],
            env=env, capture_output=True, text=True, check=True,
        ).stdout.strip()

        parent_args = []
        if subprocess.run(
            ["git", "rev-parse", "--verify", REPORTS_BRANCH],
            capture_output=True,
        ).returncode == 0:
            parent_args = ["-p", REPORTS_BRANCH]

        commit = subprocess.run(
            ["git", "commit-tree", tree] + parent_args + ["-m", "dashboard: regenerate static site"],
            capture_output=True, text=True, check=True,
        ).stdout.strip()

        subprocess.run(
            ["git", "update-ref", f"refs/heads/{REPORTS_BRANCH}", commit],
            check=True,
        )

        print(f"Dashboard committed to {REPORTS_BRANCH} ({commit[:10]})")

    finally:
        if os.path.exists(tmpindex):
            os.remove(tmpindex)


def build_files(audits, judges, now=None, coverage_inputs=None, escalation_inputs=None):
    """Everything the page reads, as {path: content}, from loaded reports."""
    now = now or datetime.now(timezone.utc)
    index_data = build_index_data(audits, judges, now, coverage_inputs, escalation_inputs)
    index_data["generated_at"] = now.strftime("%Y-%m-%dT%H:%M:%SZ")
    files = {"_dashboard/data.json": json.dumps(index_data, separators=(",", ":"))}
    for pkg_name, detail in build_package_details(audits, judges).items():
        files[f"_dashboard/pkg/{pkg_name}.json"] = json.dumps(detail, separators=(",", ":"))
    return files


def main():
    global GIT_DIR
    args = sys.argv[1:]

    if "-h" in args or "--help" in args:
        sys.stdout.write(USAGE)
        return

    # Every argument is checked before anything runs. An unrecognised one used
    # to fall through to the no-argument path, which commits: `--help` itself
    # rebuilt the page and rewrote the branch. Now a typo is an error, and the
    # branch is only written when the command line asked for nothing else.
    i = 0
    while i < len(args):
        flag = args[i]
        if flag in VALUE_FLAGS:
            if i + 1 >= len(args):
                print(f"{flag} needs a value.\n", file=sys.stderr)
                sys.stderr.write(USAGE)
                sys.exit(2)
            i += 2
        elif flag in BARE_FLAGS:
            i += 1
        else:
            print(f"Unrecognised argument: {flag}\n", file=sys.stderr)
            sys.stderr.write(USAGE)
            sys.exit(2)

    # The publish stage rewrites index.html from this template instead of
    # trusting the copy on the branch, which the audit stage can write. That
    # rewrite happens before any repository is staged, so printing the template
    # must not touch git.
    if "--print-html" in args:
        sys.stdout.write(generate_html())
        return

    # The publish stage's other use: build the JSON from a given repository
    # and write it under a directory, committing nothing. The stage then adds
    # the files to the commit it makes, so the published data is built by
    # trusted code from the branch as it stands -- the audit stage's copy on
    # the branch never goes out.
    def opt(flag):
        return args[args.index(flag) + 1] if flag in args else None

    # The coverage line's inputs. Each is optional; without one the line is
    # left out. --aur-metadata is the AUR's packages-meta-v1.json.gz, counted
    # against the clock, not the commit: the dump is as fresh as its download.
    coverage_inputs = {
        "updates_per_day": count_aur_updates(opt("--aur-metadata")) if opt("--aur-metadata") else None,
        "daily_budget": read_daily_budget(opt("--effective")) if opt("--effective") else None,
    }
    escalation_inputs = read_escalation_settings(opt("--effective")) if opt("--effective") else None

    if "--emit" in args:
        global REPORTS_BRANCH
        out_dir = opt("--emit")
        if opt("--git-dir"):
            GIT_DIR = opt("--git-dir")
        if opt("--ref"):
            REPORTS_BRANCH = opt("--ref")
        audits, judges = load_reports()
        # Stamped with the commit's own time, not the clock: the same commit
        # must build the same files, or every publish would make a new commit
        # for a page whose data did not change.
        stamp = git("log", "-1", "--format=%cI", REPORTS_BRANCH).strip()
        try:
            now = datetime.fromisoformat(stamp).astimezone(timezone.utc)
        except ValueError:
            now = None
        files = build_files(audits, judges, now, coverage_inputs, escalation_inputs)
        for path, content in files.items():
            full = os.path.join(out_dir, path)
            os.makedirs(os.path.dirname(full), exist_ok=True)
            with open(full, "w", encoding="utf-8") as f:
                f.write(content)
        print(f"{len(files)} file(s) from {len(audits)} audit and {len(judges)} judge report(s)",
              file=sys.stderr)
        return

    os.chdir(os.path.join(os.path.dirname(os.path.abspath(__file__)), ".."))

    if subprocess.run(
        ["git", "rev-parse", "--verify", REPORTS_BRANCH],
        capture_output=True,
    ).returncode != 0:
        print(f"No {REPORTS_BRANCH} branch found.", file=sys.stderr)
        sys.exit(1)

    print("Loading reports from audit-reports branch...")
    audits, judges = load_reports()
    print(f"  {len(audits)} audit reports, {len(judges)} judge reports")

    print("Building the page's data...")
    files = build_files(audits, judges, coverage_inputs=coverage_inputs, escalation_inputs=escalation_inputs)
    files["index.html"] = generate_html()
    files[".nojekyll"] = ""

    print(f"Committing {len(files)} files to {REPORTS_BRANCH}...")
    commit_to_branch(files)


if __name__ == "__main__":
    main()
