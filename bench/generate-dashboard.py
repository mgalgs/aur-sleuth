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


def package_state(ps):
    """How settled a package's verdict is: confirmed, look, clean, or other.

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
    """
    audit = ps.get("audit_majority")
    judge = ps.get("judge_majority")

    # "Audits agree" has to mean more than one audit. A single cheap audit plus
    # a judge that went along with it once made rocketchat-desktop "confirmed"
    # over upstream's own build fetching from upstream's own server. Two
    # independent unsafe reports (a re-audit by the stronger model counts) or
    # it is "look", not a finding.
    if audit == "unsafe" and judge == "unsafe" and ps.get("unsafe_audits", 0) >= 2:
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

# A funding link must be https and carry nothing that could break out of an
# attribute. The page escapes it again on render; this is the outer bound.
FUNDING_URL_RE = re.compile(r"^https://[A-Za-z0-9._~:/?#@!$&()*+,;=%-]+$")


def count_aur_updates(path, now=None):
    """Packages the AUR modified in the 24 hours before `now`, or None.

    `path` is the AUR's packages-meta-v1.json.gz. A package's LastModified is
    its latest change only, so a window older than a day undercounts (a package
    touched twice in a week shows once, on the later day). The last 24 hours
    is the one window that does not: nothing has been modified "after" it yet.
    That makes it noisier than a weekly mean, and honest, which matters more
    for a number that sets a funding target.
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


def build_funding(pkg_summaries, by_date, now, updates_per_day=None,
                  daily_budget=None, url=None):
    """The funding block of data.json, or None when a number it needs is missing.

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
    funding = {
        "updates_per_day": int(updates_per_day),
        "cost_per_package": round(per_package, 4),
        "cost_window_days": COST_WINDOW_DAYS,
        "cost_window_packages": packages,
        "needed_per_day": round(needed, 2),
        "daily_budget": None,
        "covered": None,
        "url": url if url and FUNDING_URL_RE.match(url) else None,
    }
    if daily_budget is not None:
        funding["daily_budget"] = round(daily_budget, 2)
        funding["covered"] = round(min(1.0, daily_budget / needed), 4) if needed > 0 else None
    return funding


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


def build_index_data(audits, judges, now=None, funding_inputs=None):
    """Build the index JSON structure for the dashboard.

    `funding_inputs` is {updates_per_day, daily_budget, url}, each optional;
    see build_funding for what becomes of them.
    """
    now = now or datetime.now(timezone.utc)
    packages = defaultdict(lambda: {"audits": [], "judges": []})

    for a in audits:
        pkg = a["package"]
        fm = a["frontmatter"]
        cost = safe_float(fm.get("cost"))
        files = safe_int(fm.get("files_reviewed"))
        result = fm.get("result", "unknown")
        if cost == 0 and files == 0 and result not in ("skipped",):
            continue
        packages[pkg]["audits"].append({
            "filename": a["filename"],
            "result": fm.get("result", "unknown"),
            "model": fm.get("model", "unknown"),
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
            "cost": usage.get("cost") or 0,
        })

    # Tag re-audits: either from frontmatter or by cross-referencing judge data
    for pkg_data in packages.values():
        for a in pkg_data["audits"]:
            if not a["triggered_by"] and a["filename"] in reaudit_filenames:
                a["triggered_by"] = "judge"

    # Build per-package summary
    pkg_summaries = {}
    for pkg_name, pkg_data in sorted(packages.items()):
        pkg_audits = sorted(pkg_data["audits"], key=lambda a: a["date"], reverse=True)
        latest = pkg_audits[0] if pkg_audits else {}
        total_cost = sum(a["cost"] for a in pkg_audits)
        total_cost += sum(j["cost"] for j in pkg_data["judges"])

        # Re-audits count double in majority calculation
        audit_results = []
        for a in pkg_audits:
            audit_results.append(a["result"])
            if a.get("triggered_by"):
                audit_results.append(a["result"])
        judge_verdicts = [j["correct_verdict"] for j in pkg_data["judges"]]

        pkg_summaries[pkg_name] = {
            "pkgver": latest.get("pkgver", ""),
            "pkgrel": latest.get("pkgrel", ""),
            "latest_date": latest.get("date", ""),
            "first_date": pkg_audits[-1]["date"] if pkg_audits else "",
            "total_cost": round(total_cost, 6),
            "audit_count": len(pkg_audits),
            "files_reviewed": latest.get("files_reviewed", 0),
            "audits": [
                {"result": a["result"], "model": a["model"], "reaudit": bool(a.get("triggered_by"))}
                for a in pkg_audits
            ],
            "judges": [{"verdict": j["correct_verdict"], "model": j.get("model", "unknown")} for j in pkg_data["judges"]],
            "audit_majority": compute_majority(audit_results),
            "judge_majority": compute_majority(judge_verdicts),
            # Reports that said unsafe, each counted once: what "agree" rests on.
            "unsafe_audits": sum(1 for a in pkg_audits if a["result"] == "unsafe"),
        }

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

    wk_updated = wk_new = wk_confirmed = wk_look = wk_green = wk_unknown = 0
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
        if package_state(ps) in ("look", "confirmed")
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
        "funding": build_funding(pkg_summaries, by_date, now, **(funding_inputs or {})),
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


def generate_html():
    """Generate the dashboard HTML."""
    return HTML_TEMPLATE


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


HTML_TEMPLATE = r"""<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>AUR Sleuth Dashboard</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <script src="https://cdn.jsdelivr.net/npm/chart.js@4/dist/chart.umd.min.js"></script>
    <style>
        body { font-family: 'Courier New', 'Consolas', monospace; }
        .result-safe { color: #22c55e; }
        .result-unsafe { color: #ef4444; }
        .result-inconclusive { color: #f59e0b; }
        .result-contested { color: #f59e0b; }
        .result-skipped { color: #6b7280; }
        .result-unknown { color: #6b7280; }
        .badge-safe { background: #16a34a; color: white; }
        .badge-unsafe { background: #dc2626; color: white; }
        .badge-inconclusive { background: #d97706; color: white; }
        .badge-contested { background: #d97706; color: white; }
        .badge-skipped { background: #6b7280; color: white; }
        .badge-unknown { background: #6b7280; color: white; }
        .block { display: inline-block; width: 14px; height: 14px; border-radius: 2px; margin-right: 2px; cursor: default; }
        .block-safe { background: #22c55e; }
        /* Red is reserved for a finding a judge agreed with. */
        .block-unsafe { background: #ef4444; }
        /* Amber: a model flagged it and nothing has confirmed it. */
        .block-flagged { background: #f59e0b; }
        /* The same state in the activity strip, drawn hollow: beside a package
           name a filled amber dot reads as a warning about the package. */
        .block-look { background: transparent; box-shadow: inset 0 0 0 2px #a16207; }
        /* Inconclusive is the absence of an answer, not a warning, so it is
           grey with the other no-information states rather than amber. */
        .block-inconclusive { background: #64748b; }
        .block-skipped { background: #4b5563; }
        .block-unknown { background: #4b5563; }
        .block-reaudit { width: 16px; height: 16px; border: 2px solid #eab308; margin-right: 3px; }
        /* An audit verdict the judge overturned. Struck through and faded, so a
           square that stays red for the record does not read as a live finding. */
        .block-overridden { position: relative; opacity: 0.45; }
        .block-overridden::after {
            content: ''; position: absolute; left: -1px; right: -1px; top: 50%;
            height: 2px; background: #e2e8f0; transform: rotate(-45deg);
            transform-origin: center;
        }
        .detail-row { display: none; }
        .detail-row.open { display: table-row; }
        .report-body { display: none; }
        .report-body.open { display: block; }
        thead { position: sticky; top: 0; z-index: 10; }
        th { cursor: pointer; user-select: none; background: #1e293b; }
        th:hover { background: #253248; }
        .filter-btn.active { background: #3b82f6; color: white; }
        /* A headline count that filters the table. Underlined on hover only, so
           the sentence still reads as a sentence. */
        .count-link { background: none; border: 0; padding: 0; font: inherit;
                      color: inherit; cursor: pointer; }
        .count-link:hover, .count-link:focus-visible { text-decoration: underline; }
        .chip { cursor: pointer; }
        .chip:hover { border-color: #64748b; }
        /* The quoted problem code under a flagged file. The gutter carries real
           line numbers when the quote was found in the file as written. */
        .evidence { font-family: ui-monospace, SFMono-Regular, Menlo, Consolas, monospace;
                    font-size: 0.75rem; line-height: 1.35; overflow-x: auto;
                    background: #0b1220; border: 1px solid #7f1d1d; border-radius: 4px;
                    padding: 0.5rem 0.75rem; margin: 0.25rem 0 0.5rem; }
        /* width:0 + min-width:100% keeps a long quoted line from widening the
           verdict table (an auto-layout table grows to fit a cell's content;
           this makes the cell's intrinsic width zero, so the pre scrolls instead). */
        .evidence-wrap { width: 0; min-width: 100%; }
        /* Same trick one level up: an open detail (judge reasoning, the verdict
           table) must wrap to the package table's width on a phone, not widen it
           and push the reasoning off the right edge. */
        .detail-box { width: 0; min-width: 100%; box-sizing: border-box; overflow-wrap: anywhere; }
        /* The header rows (verdict, model, date...) wrap as whole items, never
           mid-word: "anywhere" would otherwise let a flex item shrink to a letter. */
        .detail-box .flex > span { white-space: nowrap; }
        .evidence .ln { display: inline-block; min-width: 3ch; margin-right: 1ch;
                        text-align: right; color: #475569; user-select: none; }
        .evidence .ln.unplaced { visibility: hidden; }
        .tok-c { color: #64748b; font-style: italic; }
        .tok-s { color: #a5d6a7; }
        .tok-k { color: #93c5fd; }
        .tok-v { color: #fcd34d; }
        .tok-d { color: #f87171; font-weight: 600; }
        .tok-add { color: #86efac; }
        .tok-del { color: #fca5a5; }
        .tok-hunk { color: #67e8f9; }
    </style>
    <script>
        tailwind.config = {
            theme: {
                extend: {
                    colors: {
                        'slate': {
                            850: '#172033',
                        }
                    }
                }
            }
        }
    </script>
</head>
<body class="bg-slate-900 text-slate-200 min-h-screen">
    <div class="max-w-7xl mx-auto px-4 py-6">
        <!-- Header -->
        <div class="flex items-center justify-between mb-6">
            <div>
                <h1 class="text-3xl font-bold text-blue-400">AUR Sleuth</h1>
                <p class="text-slate-400 text-sm mt-1">Supply-chain audits of AUR packages: is the packaging clean?</p>
            </div>
            <div class="text-right text-sm text-slate-500 shrink-0 whitespace-nowrap">
                <span id="generated-at"></span>
                <br>
                <a href="https://github.com/mgalgs/aur-sleuth" class="text-blue-400 hover:text-blue-300">GitHub</a>
            </div>
        </div>

        <!-- The answer first: how many packages, and how many are actually a
             finding. Each number filters the table. -->
        <div class="grid grid-cols-2 md:grid-cols-4 gap-4 mb-6">
            <div class="bg-slate-800 rounded-lg p-4 border border-slate-700">
                <div class="text-slate-400 text-xs uppercase tracking-wide">Packages audited</div>
                <div id="stat-packages" class="text-2xl font-bold text-white mt-1">—</div>
            </div>
            <div class="bg-slate-800 rounded-lg p-4 border border-slate-700">
                <div class="text-slate-400 text-xs uppercase tracking-wide">Confirmed malicious</div>
                <div id="stat-confirmed" class="text-2xl font-bold text-white mt-1">—</div>
            </div>
            <div class="bg-slate-800 rounded-lg p-4 border border-slate-700">
                <div class="text-slate-400 text-xs uppercase tracking-wide">Worth a closer look</div>
                <div id="stat-look" class="text-2xl font-bold text-white mt-1">—</div>
            </div>
            <div class="bg-slate-800 rounded-lg p-4 border border-slate-700">
                <div class="text-slate-400 text-xs uppercase tracking-wide">Audit reports</div>
                <div id="stat-reports" class="text-2xl font-bold text-white mt-1">—</div>
            </div>
        </div>

        <!-- Verdicts, and this week -->
        <div class="grid grid-cols-1 md:grid-cols-2 gap-6 mb-6">
            <div class="bg-slate-800 rounded-lg p-4 border border-slate-700">
                <h2 class="text-sm font-semibold text-slate-300 mb-3 uppercase tracking-wide">Verdicts</h2>
                <div class="h-56 flex items-center justify-center">
                    <canvas id="results-chart"></canvas>
                </div>
            </div>
            <div id="activity" class="bg-slate-800 rounded-lg p-4 border border-slate-700">
                <h2 class="text-sm font-semibold text-slate-300 mb-3 uppercase tracking-wide">This week</h2>
                <p id="activity-packages" class="text-slate-200"></p>
                <p id="activity-audits" class="text-slate-500 text-xs mt-1"></p>
                <div id="activity-recent-label" class="text-slate-400 text-xs mt-4 hidden"></div>
                <div id="activity-recent" class="mt-2 flex flex-wrap gap-2"></div>
            </div>
        </div>

        <!-- The ask: what auditing every AUR update costs, against what this
             runs on. Hidden until data.json carries every number it needs. -->
        <div id="funding" class="bg-slate-800 rounded-lg p-4 border border-slate-700 mb-6 hidden">
            <div class="flex flex-col sm:flex-row sm:items-center sm:justify-between gap-4">
                <div class="min-w-0 flex-1">
                    <h2 class="text-sm font-semibold text-slate-300 mb-2 uppercase tracking-wide">Audit every update</h2>
                    <p class="text-slate-200">
                        <span id="funding-needed" class="text-2xl font-bold text-white"></span>
                        <span> a day to audit every AUR update.</span>
                    </p>
                    <p id="funding-inputs" class="text-slate-400 text-sm mt-1"></p>
                    <p id="funding-budget" class="text-slate-300 text-sm mt-3"></p>
                    <div id="funding-track" class="mt-1.5 h-2 max-w-md bg-slate-900 rounded overflow-hidden" title="Share of the AUR's daily updates the current budget can audit">
                        <div id="funding-bar" class="h-2 bg-blue-500" style="width:0"></div>
                    </div>
                </div>
                <!-- Under the text on a phone, beside it where there is room. A
                     flex item, so no display class is needed (and ".block" is
                     the legend dot in this page's own styles, not Tailwind's). -->
                <a id="funding-link" class="hidden shrink-0 w-full sm:w-auto text-center bg-blue-600 hover:bg-blue-500 text-white font-semibold rounded px-4 py-2" href="#" rel="noopener" target="_blank">Chip in</a>
            </div>
        </div>

        <!-- Filters -->
        <div class="bg-slate-800 rounded-lg p-4 border border-slate-700 mb-4">
            <div class="flex flex-wrap items-center gap-3">
                <input id="search" type="text" placeholder="Search packages..."
                    class="bg-slate-700 border border-slate-600 rounded px-3 py-1.5 text-sm text-slate-200 placeholder-slate-400 focus:outline-none focus:border-blue-500 w-full sm:w-64">
                <div class="flex flex-wrap gap-1" id="filter-buttons">
                    <button class="filter-btn active px-3 py-1 rounded text-xs font-medium bg-slate-700 text-slate-300" data-filter="all">All</button>
                    <button class="filter-btn px-3 py-1 rounded text-xs font-medium bg-slate-700 text-slate-300" data-filter="clean">Clean</button>
                    <button class="filter-btn px-3 py-1 rounded text-xs font-medium bg-slate-700 text-slate-300" data-filter="unknown">No verdict</button>
                    <button class="filter-btn px-3 py-1 rounded text-xs font-medium bg-slate-700 text-slate-300" data-filter="look">Worth a closer look</button>
                    <button class="filter-btn px-3 py-1 rounded text-xs font-medium bg-slate-700 text-slate-300 border border-red-800/50" data-filter="confirmed">Confirmed</button>
                    <span class="border-l border-slate-600 mx-1"></span>
                    <button class="filter-btn px-3 py-1 rounded text-xs font-medium bg-slate-700 text-slate-300" data-filter="overridden">Overridden by a judge</button>
                    <button class="filter-btn px-3 py-1 rounded text-xs font-medium bg-slate-700 text-slate-300" data-filter="unjudged">Unjudged</button>
                </div>
                <span id="result-count" class="text-xs text-slate-500 ml-auto"></span>
            </div>
            <div class="flex flex-wrap items-center gap-x-4 gap-y-1 mt-3 text-xs text-slate-500">
                <span><span class="block block-safe"></span>clean</span>
                <span><span class="block block-flagged"></span>flagged, unconfirmed</span>
                <span><span class="block block-unsafe"></span>confirmed by a judge</span>
                <span><span class="block block-inconclusive"></span>no verdict</span>
                <span><span class="block block-unsafe block-overridden"></span>overridden by a judge</span>
                <span><span class="block block-safe block-reaudit"></span>re-audit</span>
            </div>
        </div>

        <!-- Package Table -->
        <!-- The narrow columns drop out on a phone rather than pushing the page
             sideways: package, its verdicts and when it was read are the point,
             and the rest is detail that fits on a wider screen. -->
        <div class="bg-slate-800 rounded-lg border border-slate-700 overflow-x-auto">
            <table class="w-full text-sm">
                <thead>
                    <tr class="bg-slate-750 border-b border-slate-700 text-left text-xs uppercase tracking-wide text-slate-400">
                        <th class="px-3 sm:px-4 py-3" data-sort="name">Package</th>
                        <th class="px-4 py-3 hidden md:table-cell" data-sort="version">Version</th>
                        <th class="px-3 sm:px-4 py-3" data-sort="audits">Audits</th>
                        <th class="px-4 py-3 hidden sm:table-cell" data-sort="judges">Judgements</th>
                        <th class="px-4 py-3 text-right hidden lg:table-cell" data-sort="files">Files</th>
                        <th class="px-4 py-3 text-right hidden lg:table-cell" data-sort="cost">Cost</th>
                        <th class="px-3 sm:px-4 py-3" data-sort="date">Date</th>
                    </tr>
                </thead>
                <tbody id="package-table"></tbody>
            </table>
        </div>

        <!-- For the curious: what the labels mean, and what this costs. -->
        <div class="grid grid-cols-1 md:grid-cols-2 gap-6 mt-8">
            <div class="bg-slate-800 rounded-lg p-4 border border-slate-700">
                <h2 class="text-sm font-semibold text-slate-300 mb-3 uppercase tracking-wide">How to read this page</h2>
                <p class="text-slate-400 text-sm leading-relaxed">
                    These audits look for one thing: code injected into the AUR packaging of a
                    package &mdash; in the <code>PKGBUILD</code>, an <code>.install</code> hook, or a patch.
                    They do not rate the application itself.
                </p>
                <ul class="text-slate-400 text-sm leading-relaxed mt-3 space-y-1">
                    <li><span class="result-safe font-semibold">Clean</span> &mdash; nothing found, or a flag a judge overturned.</li>
                    <li><span class="text-slate-300 font-semibold">No verdict</span> &mdash; no model reached an answer either way. Missing information, not a suspicion.</li>
                    <li><span class="text-yellow-500 font-semibold">Worth a closer look</span> &mdash; something flagged it and nothing has settled it. Usually a false positive about behaviour the application is supposed to have; not a claim that it is malicious.</li>
                    <li><span class="result-unsafe font-semibold">Confirmed malicious</span> &mdash; two independent audits said unsafe and a judge agreed.</li>
                </ul>
                <p class="text-slate-500 text-xs mt-3">Open a package to see every report, the files each one flagged, and the lines it quoted.</p>
            </div>
            <div class="bg-slate-800 rounded-lg p-4 border border-slate-700">
                <h2 class="text-sm font-semibold text-slate-300 mb-3 uppercase tracking-wide">Cost by model <span id="stat-cost" class="normal-case text-slate-500 font-normal"></span></h2>
                <div class="h-56 flex items-center justify-center">
                    <canvas id="model-chart"></canvas>
                </div>
            </div>
        </div>
    </div>

    <script>
    let DATA = null;
    // Newest audit first: the page is a record of what the tool has been doing,
    // and alphabetical put 1password at the top for months on end.
    let currentSort = {key: 'date', asc: false};
    let currentFilter = 'all';
    let searchTerm = '';
    const detailCache = {};

    const RESULT_COLORS = {
        safe: '#22c55e',
        unsafe: '#ef4444',
        inconclusive: '#f59e0b',
        contested: '#f59e0b',
        skipped: '#6b7280',
        unknown: '#6b7280',
    };

    const DANGER_SCORE = {unsafe: 3, contested: 2, inconclusive: 1, unknown: 0, safe: 0};

    function dangerScore(pkg) {
        const a = DANGER_SCORE[pkg.audit_majority] || 0;
        const j = pkg.judge_majority ? (DANGER_SCORE[pkg.judge_majority] || 0) : 0;
        const hasJudge = pkg.judges && pkg.judges.length > 0 ? 1 : 0;
        return a * 10 + j * 5 + hasJudge;
    }

    async function init() {
        try {
            const resp = await fetch('_dashboard/data.json');
            DATA = await resp.json();
        } catch (e) {
            document.getElementById('package-table').innerHTML =
                '<tr><td colspan="7" class="px-4 py-8 text-center text-slate-400">Failed to load data. Are you serving from the audit-reports branch root?</td></tr>';
            return;
        }
        renderSummary();
        renderActivity();
        renderFunding();
        renderCharts();
        renderTable();
        setupEventListeners();
        // A shareable link to one package: #pkg=<name>.
        const m = /^#pkg=(.+)$/.exec(location.hash);
        if (m) {
            try { openPackage(decodeURIComponent(m[1])); } catch (e) { /* bad hash: ignore */ }
        }
    }

    function shortModel(m) {
        return String(m).split('/').pop();
    }

    // A headline count that filters the table to exactly the packages it counts.
    // The count and the filter share packageState(), so the number the reader
    // clicked is the number of rows they get.
    function countLink(filter, text, cls) {
        return '<button type="button" class="count-link ' + cls + '" data-filter="'
            + escapeAttr(filter) + '" title="Show these in the table below">'
            + escapeHtml(text) + '</button>';
    }

    // Open one package's detail from anywhere on the page. The current filter or
    // search may be hiding its row, so both are cleared first -- clicking a
    // package and landing on nothing would be worse than losing the filter.
    function openPackage(name) {
        if (!DATA.packages || !DATA.packages[name]) return;
        currentFilter = 'all';
        searchTerm = '';
        const box = document.getElementById('search');
        if (box) box.value = '';
        document.querySelectorAll('.filter-btn').forEach(b =>
            b.classList.toggle('active', b.dataset.filter === 'all'));
        renderTable();

        const row = document.querySelector('.pkg-row[data-pkg="' + cssEscape(name) + '"]');
        if (!row) return;
        row.scrollIntoView({behavior: 'smooth', block: 'center'});
        const detail = document.getElementById('detail-' + name);
        if (detail && !detail.classList.contains('open')) toggleDetail(name);
        history.replaceState(null, '', '#pkg=' + encodeURIComponent(name));
    }

    // Package names are restricted by the AUR, but this goes into a selector, so
    // it is escaped rather than trusted.
    function cssEscape(s) {
        return window.CSS && CSS.escape ? CSS.escape(s) : String(s).replace(/["\\]/g, '\\$&');
    }

    // Apply a filter from anywhere on the page, and take the reader to it.
    function applyFilter(name) {
        currentFilter = name;
        document.querySelectorAll('.filter-btn').forEach(b =>
            b.classList.toggle('active', b.dataset.filter === name));
        renderTable();
        document.getElementById('package-table').closest('.bg-slate-800')
            .scrollIntoView({behavior: 'smooth', block: 'start'});
    }

    function joinNicely(parts) {
        if (parts.length <= 1) return parts.join('');
        if (parts.length === 2) return parts[0] + ' and ' + parts[1];
        return parts.slice(0, -1).join(', ') + ', and ' + parts[parts.length - 1];
    }

    function renderActivity() {
        const activity = document.getElementById('activity');
        const wk = (DATA.summary && DATA.summary.week) || null;
        const rec = (DATA.summary && DATA.summary.recent) || [];
        // Older data.json (before this field existed) has no week block.
        if (!wk) { activity.style.display = 'none'; return; }

        const p = wk.packages || {};
        const confirmed = Number(p.confirmed || 0);
        // data.json can be older than the page. Without the new keys every
        // count would render as a confident zero, which is worse than saying
        // nothing: show the totals and leave the breakdown out.
        const counted = Object.prototype.hasOwnProperty.call(p, 'confirmed');
        document.getElementById('activity-packages').innerHTML =
            '<span class="text-2xl font-bold text-white">' + Number(p.updated || 0).toLocaleString() + '</span>' +
            ' packages audited' +
            '<span class="text-slate-400 text-base"> (' + Number(p.new || 0) + ' new)</span>' +
            (!counted ? '' :
            '<br><span class="text-sm">' +
            countLink('clean', Number(p.green || 0) + ' clean', 'result-safe font-semibold') +
            '<span class="text-slate-500"> &middot; </span>' +
            countLink('unknown', Number(p.unknown || 0) + ' no verdict', 'text-slate-400') +
            '<span class="text-slate-500"> &middot; </span>' +
            countLink('look', Number(p.look || 0) + ' worth a closer look', 'text-slate-300') +
            '<span class="text-slate-500"> &middot; </span>' +
            (confirmed
                ? countLink('confirmed', confirmed + ' confirmed malicious', 'result-unsafe font-semibold')
                : '<span class="result-safe font-semibold">none confirmed malicious</span>') +
            '</span>');

        const parts = Object.entries(wk.by_model || {}).slice(0, 6)
            .map(([m, c]) => escapeHtml(shortModel(m)) + ' (' + Number(c) + ')');
        document.getElementById('activity-audits').innerHTML =
            Number(wk.audits_total || 0).toLocaleString() + ' audits' +
            (parts.length ? ' by ' + joinNicely(parts) : '');

        // Only the packages worth a reader's attention get a chip: a list of
        // every clean package this week is the table, repeated. A "look" chip
        // is drawn hollow, because a solid amber dot beside a name reads as a
        // warning about the package rather than what it is: noted, nothing
        // concluded.
        const DOT = {confirmed: 'block-unsafe', look: 'block-look'};
        const WHAT = {confirmed: 'two audits and a judge agree: unsafe',
                      look: 'flagged by a model; not confirmed'};
        const flagged = rec.filter(r => DOT[r.state]).slice(0, 24);
        const label = document.getElementById('activity-recent-label');
        label.classList.toggle('hidden', flagged.length === 0);
        label.textContent = flagged.length ? 'Flagged this week:' : '';
        document.getElementById('activity-recent').innerHTML = flagged.map(r => {
            const d = String(r.date || '').split('T')[0];
            return '<span class="chip inline-flex items-center gap-1.5 bg-slate-900 border border-slate-700 rounded px-2 py-1 text-xs" ' +
                'data-pkg="' + escapeAttr(r.package || '') + '" ' +
                'title="' + escapeAttr(WHAT[r.state] + ' • ' + (r.date || '') + ' — open this package') + '">' +
                '<span class="block ' + DOT[r.state] + '" style="margin-right:0"></span>' +
                '<span class="text-blue-300">' + escapeHtml(r.package || '') + '</span>' +
                '<span class="text-slate-500">' + escapeHtml(d) + '</span>' +
                '</span>';
        }).join('');
    }

    // Every number here is computed in code at publish time (see
    // build_funding); nothing a model wrote reaches this card. The link is
    // set as a property, never markup, and only when it is an https URL.
    function renderFunding() {
        const f = (DATA.summary && DATA.summary.funding) || null;
        const card = document.getElementById('funding');
        if (!f || !(Number(f.needed_per_day) > 0)) { card.classList.add('hidden'); return; }
        card.classList.remove('hidden');
        const money = (v, digits) => '$' + Number(v).toFixed(digits);

        document.getElementById('funding-needed').textContent = money(f.needed_per_day, 2);
        document.getElementById('funding-inputs').textContent =
            Number(f.updates_per_day).toLocaleString() + ' packages updated in the last 24 hours, at about '
            + money(f.cost_per_package, 3) + ' per package.';

        const budget = document.getElementById('funding-budget');
        const track = document.getElementById('funding-track');
        if (f.daily_budget != null && f.covered != null) {
            const pct = Math.round(Number(f.covered) * 100);
            budget.textContent = 'The current budget is ' + money(f.daily_budget, 2) + ' a day. That covers '
                + (pct < 1 ? 'under 1%' : pct + '%') + '.';
            document.getElementById('funding-bar').style.width = Math.max(1, Math.min(100, pct)) + '%';
            track.classList.remove('hidden');
        } else {
            budget.textContent = '';
            track.classList.add('hidden');
        }

        const link = document.getElementById('funding-link');
        if (typeof f.url === 'string' && /^https:\/\/[^\s"'<>]+$/.test(f.url)) {
            link.href = f.url;
            link.classList.remove('hidden');
        } else {
            link.classList.add('hidden');
        }
    }

    function renderSummary() {
        const s = DATA.summary;
        document.getElementById('stat-packages').textContent = s.packages_audited.toLocaleString();
        document.getElementById('stat-reports').textContent = s.total_reports.toLocaleString();
        document.getElementById('stat-cost').textContent = '$' + s.total_cost.toFixed(2) + ' all time';
        document.getElementById('generated-at').textContent = 'Updated ' + String(DATA.generated_at || 'unknown').split('T')[0];

        // The same rule as the table and the chart, so the number a reader
        // taps is the number of rows they get.
        let confirmed = 0, look = 0;
        for (const pkg of Object.values(DATA.packages)) {
            const st = packageState(pkg);
            if (st === 'confirmed') confirmed++;
            if (st === 'look') look++;
        }
        const c = document.getElementById('stat-confirmed');
        c.innerHTML = countLink('confirmed', confirmed.toLocaleString(), confirmed ? 'result-unsafe' : 'result-safe');
        document.getElementById('stat-look').innerHTML = countLink('look', look.toLocaleString(), look ? 'text-yellow-500' : 'text-slate-300');
    }

    function renderCharts() {
        const s = DATA.summary;

        // Verdicts per package, after the judge. Charting the raw per-report results would
        // put verdicts the judge overturned into a headline figure; a package
        // the judge cleared is simply clean here, and the audit that called it
        // unsafe stays visible in its own row.
        const STATE_LABEL = {clean: 'Clean', look: 'Worth a closer look',
                             confirmed: 'Confirmed malicious', unknown: 'No verdict'};
        const STATE_COLOR = {clean: '#22c55e', look: '#f59e0b',
                             confirmed: '#ef4444', unknown: '#64748b'};
        const states = s.package_states
            || {unknown: Object.keys(DATA.packages || {}).length};
        const stateKeys = ['clean', 'unknown', 'look', 'confirmed'].filter(k => states[k]);
        const resultsCtx = document.getElementById('results-chart').getContext('2d');
        new Chart(resultsCtx, {
            type: 'doughnut',
            data: {
                labels: stateKeys.map(k => STATE_LABEL[k] || k),
                datasets: [{
                    data: stateKeys.map(k => states[k]),
                    backgroundColor: stateKeys.map(k => STATE_COLOR[k] || '#6b7280'),
                    borderColor: '#1e293b',
                    borderWidth: 2,
                }],
            },
            options: {
                responsive: true,
                maintainAspectRatio: false,
                plugins: {
                    legend: {
                        // Beside the ring where there is room; under it on a phone,
                        // where beside it the labels were cut mid-word.
                        position: window.innerWidth < 640 ? 'bottom' : 'right',
                        labels: { color: '#94a3b8', font: { family: "'Courier New', monospace", size: 11 } },
                    },
                },
            },
        });

        // Model cost bar chart
        const modelCtx = document.getElementById('model-chart').getContext('2d');
        const modelEntries = Object.entries(s.by_model).filter(([, v]) => v.cost > 0);
        const modelColors = ['#3b82f6', '#8b5cf6', '#ec4899', '#f59e0b', '#22c55e', '#06b6d4'];
        new Chart(modelCtx, {
            type: 'bar',
            data: {
                labels: modelEntries.map(([m]) => m.split('/').pop()),
                datasets: [{
                    label: 'Cost ($)',
                    data: modelEntries.map(([, v]) => v.cost),
                    backgroundColor: modelEntries.map((_, i) => modelColors[i % modelColors.length]),
                    borderWidth: 0,
                    borderRadius: 4,
                }],
            },
            options: {
                responsive: true,
                maintainAspectRatio: false,
                indexAxis: 'y',
                plugins: {
                    legend: { display: false },
                    tooltip: {
                        callbacks: {
                            label: ctx => `$${ctx.raw.toFixed(4)} (${modelEntries[ctx.dataIndex][1].count} runs)`,
                        },
                    },
                },
                scales: {
                    x: {
                        ticks: { color: '#94a3b8', callback: v => '$' + v.toFixed(2) },
                        grid: { color: '#334155' },
                    },
                    y: {
                        ticks: { color: '#94a3b8', font: { family: "'Courier New', monospace", size: 10 } },
                        grid: { display: false },
                    },
                },
            },
        });
    }

    // The same rule as package_state() in generate-dashboard.py. The headline
    // counts and these filters must agree: clicking "2 confirmed" has to produce
    // exactly two rows, or one of the two numbers is lying.
    function packageState(pkg) {
        const audit = pkg.audit_majority;
        const judge = pkg.judge_majority;
        // Mirrors package_state() in Python: two unsafe reports or it is not confirmed.
        if (audit === 'unsafe' && judge === 'unsafe' && (pkg.unsafe_audits || 0) >= 2) return 'confirmed';
        if (judge === 'safe') return 'clean';
        if (audit === 'unsafe' || audit === 'contested' || judge === 'unsafe') return 'look';
        if (audit === 'safe') return 'clean';
        return 'unknown';
    }

    function matchesPreset(pkg, preset) {
        switch (preset) {
            case 'all': return true;
            case 'confirmed':
            case 'look':
            case 'clean':
            case 'unknown':
                return packageState(pkg) === preset;
            case 'overridden':
                // The judge disagreed with an audit that called it unsafe. Worth
                // its own view: these are the false positives being caught.
                return pkg.judge_majority === 'safe'
                    && (pkg.audits || []).some(a => a.result === 'unsafe' || a.result === 'inconclusive');
            case 'unjudged':
                return !pkg.judges || pkg.judges.length === 0;
            default: return true;
        }
    }

    function getFilteredPackages() {
        let entries = Object.entries(DATA.packages);

        if (currentFilter !== 'all') {
            entries = entries.filter(([, p]) => matchesPreset(p, currentFilter));
        }
        if (searchTerm) {
            const term = searchTerm.toLowerCase();
            entries = entries.filter(([name]) => name.toLowerCase().includes(term));
        }

        const key = currentSort.key;
        entries.sort((a, b) => {
            let va, vb;
            switch (key) {
                case 'name': va = a[0]; vb = b[0]; break;
                case 'version': va = a[1].pkgver; vb = b[1].pkgver; break;
                case 'audits': va = dangerScore(a[1]); vb = dangerScore(b[1]); break;
                case 'judges': va = (a[1].judges || []).length; vb = (b[1].judges || []).length; break;
                case 'files': va = a[1].files_reviewed; vb = b[1].files_reviewed; break;
                case 'cost': va = a[1].total_cost; vb = b[1].total_cost; break;
                case 'date': va = a[1].latest_date; vb = b[1].latest_date; break;
                default: va = a[0]; vb = b[0];
            }
            if (typeof va === 'string') {
                const cmp = va.localeCompare(vb);
                return currentSort.asc ? cmp : -cmp;
            }
            return currentSort.asc ? va - vb : vb - va;
        });

        return entries;
    }

    // judgeVerdict is the judge's majority for this package, when there is one.
    // An audit the judge overturned is struck through rather than left standing:
    // a red square next to a judgement that cleared the package says the package
    // is dangerous, when what happened is that a model was wrong about it.
    function renderBlocks(items, type, judgeVerdict) {
        if (!items || items.length === 0) {
            return '<span class="text-slate-600">—</span>';
        }
        return items.map(item => {
            const value = type === 'audit' ? item.result : item.verdict;
            const model = (item.model || 'unknown').split('/').pop();
            const reaudit = item.reaudit ? ' block-reaudit' : '';
            const label = item.reaudit ? 're-audit' : type;
            // Colour says how much weight the verdict carries, not just what it
            // said. Red is only for a finding the judge agreed with: a lone
            // model's "unsafe" is usually a false positive, and painting it the
            // same red as a confirmed one says something the evidence does not.
            let shade = value || 'unknown';
            let note = '';
            if (type === 'audit') {
                if (judgeVerdict === 'safe' && (value === 'unsafe' || value === 'inconclusive')) {
                    note = ' — the judge did not agree; overridden';
                } else if (value === 'unsafe' && judgeVerdict !== 'unsafe') {
                    shade = 'flagged';        // amber: nobody has confirmed it
                    note = ' — flagged, not confirmed by a judge';
                }
            }
            const overridden = type === 'audit' && judgeVerdict === 'safe'
                && (value === 'unsafe' || value === 'inconclusive');
            const cls = overridden ? ' block-overridden' : '';
            return `<span class="block block-${escapeAttr(shade)}${reaudit}${cls}" title="${escapeAttr(model)}: ${escapeAttr(value || 'unknown')} (${label})${escapeAttr(note)}"></span>`;
        }).join('');
    }

    function renderTable() {
        const entries = getFilteredPackages();
        const tbody = document.getElementById('package-table');

        document.getElementById('result-count').textContent = `${entries.length} package${entries.length !== 1 ? 's' : ''}`;

        tbody.innerHTML = entries.map(([name, pkg]) => {
            const date = pkg.latest_date ? pkg.latest_date.split('T')[0] : '—';
            const safeId = escapeAttr(name);

            return `<tr class="border-b border-slate-700/50 hover:bg-slate-750 cursor-pointer pkg-row" data-pkg="${safeId}">
                <td class="px-3 sm:px-4 py-2.5 font-medium text-blue-400 break-words">${escapeHtml(name)}
                    <div class="text-xs text-slate-500 font-normal sm:hidden">${escapeHtml(date)}</div></td>
                <td class="px-4 py-2.5 text-slate-400 hidden md:table-cell">${escapeHtml(pkg.pkgver || '—')}</td>
                <td class="px-3 sm:px-4 py-2.5"><span class="inline-flex items-center gap-0.5">${renderBlocks(pkg.audits, 'audit', pkg.judge_majority)}</span></td>
                <td class="px-4 py-2.5 hidden sm:table-cell"><span class="inline-flex items-center gap-0.5">${renderBlocks(pkg.judges, 'judge')}</span></td>
                <td class="px-4 py-2.5 text-right text-slate-400 hidden lg:table-cell">${pkg.files_reviewed === 0 && pkg.audits && pkg.audits.every(a => a.result === 'skipped' || a.result === 'inconclusive') ? '—' : escapeHtml(pkg.files_reviewed)}</td>
                <td class="px-4 py-2.5 text-right text-slate-400 hidden lg:table-cell">$${pkg.total_cost.toFixed(4)}</td>
                <td class="px-3 sm:px-4 py-2.5 text-slate-400 whitespace-nowrap">${escapeHtml(date)}</td>
            </tr>
            <tr class="detail-row" id="detail-${safeId}">
                <td colspan="7" class="p-0">
                    <div class="detail-box p-6 bg-slate-850 border-t border-slate-600">
                        <div class="detail-content text-slate-400">Loading...</div>
                    </div>
                </td>
            </tr>`;
        }).join('');
    }

    async function toggleDetail(name) {
        const row = document.getElementById('detail-' + name);
        if (!row) return;

        if (row.classList.contains('open')) {
            row.classList.remove('open');
            return;
        }

        document.querySelectorAll('.detail-row.open').forEach(r => r.classList.remove('open'));
        row.classList.add('open');

        const content = row.querySelector('.detail-content');

        if (detailCache[name]) {
            content.innerHTML = renderDetail(name, detailCache[name]);
            return;
        }

        try {
            const resp = await fetch(`_dashboard/pkg/${name}.json`);
            const data = await resp.json();
            detailCache[name] = data;
            content.innerHTML = renderDetail(name, data);
        } catch (e) {
            content.innerHTML = '<p class="text-red-400">Failed to load package details.</p>';
        }
    }

    function renderDetail(name, data) {
        let html = '';

        // Judge section
        if (data.judges && data.judges.length > 0) {
            html += `<h3 class="text-sm font-semibold text-slate-300 uppercase tracking-wide mb-2">Judge Verdicts (${data.judges.length})</h3>`;
            for (const j of data.judges) {
                const d = j.data;
                html += `<div class="bg-slate-800 rounded p-4 border border-slate-700 mb-3">
                    <div class="flex flex-wrap gap-x-4 gap-y-1 mb-3 text-sm">
                        <span>Verdict: <span class="result-${escapeAttr(d.correct_verdict)} font-bold">${escapeHtml(d.correct_verdict)}</span></span>
                        <span>Confidence: <strong>${escapeHtml(d.confidence)}</strong></span>
                        <span>Model: <span class="text-slate-400">${escapeHtml((d._judge_usage || {}).model || '?')}</span></span>
                        ${d.re_audit_recommended ? '<span class="text-yellow-500">&#x26a0; Re-audit recommended</span>' : ''}
                    </div>
                    <p class="text-sm text-slate-300 whitespace-pre-wrap">${escapeHtml(d.reasoning || '')}</p>
                    ${d.coverage_issues && d.coverage_issues.length ? '<div class="mt-2 text-xs text-yellow-400">Coverage issues: ' + d.coverage_issues.map(escapeHtml).join(', ') + '</div>' : ''}
                    ${d.re_audit_focus && d.re_audit_focus.length ? '<div class="mt-1 text-xs text-yellow-400">Re-audit focus: ' + d.re_audit_focus.map(escapeHtml).join(', ') + '</div>' : ''}
                </div>`;
            }
        }

        // Audit reports
        if (data.audits && data.audits.length > 0) {
            html += `<h3 class="text-sm font-semibold text-slate-300 uppercase tracking-wide mb-2">Audit Reports (${data.audits.length})</h3>`;
            for (const a of data.audits) {
                const fm = a.frontmatter;
                const result = fm.result || 'unknown';
                const model = fm.model || 'unknown';
                const date = (fm.date || '').split('T')[0];
                const fv = fm.file_verdicts || [];

                html += `<div class="bg-slate-800 rounded p-4 border border-slate-700 mb-3">
                    <div class="flex flex-wrap gap-4 text-sm mb-2">
                        <span class="result-${escapeAttr(result)} font-bold">${escapeHtml(result)}</span>
                        <span class="text-slate-400">${escapeHtml(model)}</span>
                        <span class="text-slate-500">${escapeHtml(date)}</span>
                        <span class="text-slate-500">${escapeHtml(fm.files_reviewed || 0)} files</span>
                        <span class="text-slate-500">$${(parseFloat(fm.cost) || 0).toFixed(4)}</span>
                        <span class="text-slate-500">${(parseFloat(fm.execution_time) || 0).toFixed(1)}s</span>
                    </div>`;

                if (fv.length > 0) {
                    html += `<table class="w-full text-xs mb-2 border-collapse">
                        <thead><tr class="text-slate-500">
                            <th class="text-left py-1 pr-3">File</th>
                            <th class="text-left py-1 pr-3 whitespace-nowrap">Status</th>
                            <th class="text-left py-1">Summary</th>
                        </tr></thead><tbody>`;
                    for (const v of fv) {
                        html += `<tr class="border-t border-slate-700/50">
                            <td class="py-1 pr-3 text-blue-300">${escapeHtml(v.file || '')}</td>
                            <td class="py-1 pr-3 whitespace-nowrap result-${escapeAttr(v.status || 'unknown')}">${escapeHtml(v.status || '?')}</td>
                            <td class="py-1 text-slate-400">${escapeHtml(v.summary || '')}</td>
                        </tr>`;
                        if (v.evidence) {
                            html += `<tr><td colspan="3" class="pb-1">${renderEvidence(v)}</td></tr>`;
                        }
                    }
                    html += '</tbody></table>';
                }

                const bodyId = 'body-' + name.replace(/[^a-zA-Z0-9-]/g, '_') + '-' + a.filename.replace(/[^a-zA-Z0-9]/g, '_');
                html += `<button onclick="document.getElementById('${bodyId}').classList.toggle('open')"
                    class="text-xs text-blue-400 hover:text-blue-300 mt-1">Toggle full report</button>
                    <pre id="${bodyId}" class="report-body mt-2 text-xs text-slate-400 whitespace-pre-wrap bg-slate-900 rounded p-3 border border-slate-700 max-h-96 overflow-y-auto">${escapeHtml(a.body || '')}</pre>
                </div>`;
            }
        }

        return html || '<p class="text-slate-500">No details available.</p>';
    }

    function escapeHtml(text) {
        const div = document.createElement('div');
        div.textContent = text;
        return div.innerHTML;
    }

    // --- Evidence snippets ---------------------------------------------------
    // The quote is model output over attacker-controlled input. Every token
    // passes through escapeHtml; the highlighter only decides which class wraps
    // it. No external library: the page must stay self-contained.

    function langForFile(name) {
        const base = (name || '').split('/').pop();
        const ext = base.includes('.') ? base.split('.').pop().toLowerCase() : '';
        if (base === 'PKGBUILD' || base === 'Makefile' || base === 'configure') return 'bash';
        if (['sh', 'bash', 'zsh', 'install', 'bashrc', 'profile'].includes(ext)) return 'bash';
        if (ext === 'py') return 'python';
        if (['patch', 'diff'].includes(ext)) return 'diff';
        if (['js', 'mjs', 'cjs', 'ts'].includes(ext)) return 'js';
        if (ext === '') return 'bash';   // rel, bump, update: maintainer scripts
        return 'plain';
    }

    // Rules are tried in order at each position; the sticky flag anchors them.
    const LANG_RULES = {
        bash: [
            ['c', /#[^\n]*/y],
            ['s', /"(?:\\.|[^"\\])*"|'[^']*'/y],
            ['v', /\$\{[^}\n]*\}|\$\(|\$[A-Za-z_@#?*0-9][A-Za-z0-9_]*/y],
            ['d', /\b(?:curl|wget|eval|base64|xxd|openssl|nc|ncat|socat|chmod|chown|sudo|dd|nohup|exec|python[0-9.]*|perl|bash|sh|setsid|crontab|systemctl)\b/y],
            ['k', /\b(?:if|then|else|elif|fi|for|while|until|do|done|case|esac|in|function|return|exit|local|export|declare|readonly|set|unset|source|cd|mkdir|install|cp|mv|rm|ln|echo|printf|cat|sed|awk|grep|tar|git|make|cmake|meson|ninja|cargo|npm|pip|true|false)\b/y],
        ],
        python: [
            ['c', /#[^\n]*/y],
            ['s', /"{3}[\s\S]*?"{3}|'{3}[\s\S]*?'{3}|"(?:\\.|[^"\\\n])*"|'(?:\\.|[^'\\\n])*'/y],
            ['d', /\b(?:eval|exec|compile|__import__|subprocess|os\.system|os\.popen|urllib|requests|socket|base64|marshal|pickle|ctypes|zlib)\b/y],
            ['k', /\b(?:import|from|def|class|return|if|elif|else|for|while|try|except|finally|with|as|lambda|yield|pass|raise|in|not|and|or|is|None|True|False|open|print)\b/y],
        ],
        js: [
            ['c', /\/\/[^\n]*|\/\*[\s\S]*?\*\//y],
            ['s', /`(?:\\.|[^`\\])*`|"(?:\\.|[^"\\\n])*"|'(?:\\.|[^'\\\n])*'/y],
            ['d', /\b(?:eval|Function|child_process|exec|execSync|spawn|fetch|require|atob|Buffer|XMLHttpRequest|WebSocket)\b/y],
            ['k', /\b(?:const|let|var|function|return|if|else|for|while|do|switch|case|break|continue|new|class|import|export|from|async|await|try|catch|finally|throw|typeof|instanceof|this|null|undefined|true|false)\b/y],
        ],
    };

    function highlightLine(line, lang) {
        if (lang === 'diff') {
            const cls = /^(\+\+\+|---|@@)/.test(line) ? 'tok-hunk'
                : line.startsWith('+') ? 'tok-add'
                : line.startsWith('-') ? 'tok-del' : '';
            return cls ? `<span class="${cls}">${escapeHtml(line)}</span>` : escapeHtml(line);
        }
        const rules = LANG_RULES[lang];
        if (!rules) return escapeHtml(line);
        const word = /[A-Za-z0-9_]+|[\s\S]/y;
        let out = '', i = 0;
        while (i < line.length) {
            let matched = false;
            for (const [cls, re] of rules) {
                re.lastIndex = i;
                const m = re.exec(line);
                if (m && m[0].length) {
                    out += `<span class="tok-${cls}">${escapeHtml(m[0])}</span>`;
                    i += m[0].length;
                    matched = true;
                    break;
                }
            }
            if (!matched) {
                word.lastIndex = i;
                const m = word.exec(line);
                out += escapeHtml(m[0]);
                i += m[0].length;
            }
        }
        return out;
    }

    function renderEvidence(v) {
        const lang = langForFile(v.file);
        const lines = String(v.evidence).split('\n');
        const start = Number(v.evidence_line) || 0;
        const body = lines.map((line, n) => {
            const ln = start ? `<span class="ln">${start + n}</span>` : '<span class="ln unplaced">0</span>';
            return ln + highlightLine(line, lang);
        }).join('\n');
        const where = start ? `line ${start}` : 'quoted by the auditor; not matched to a line';
        return `<div class="evidence-wrap"><div class="text-xs text-slate-500 mt-1">Evidence &middot; ${escapeHtml(where)}</div>
            <pre class="evidence">${body}</pre></div>`;
    }

    function escapeAttr(text) {
        return String(text).replace(/&/g,'&amp;').replace(/"/g,'&quot;').replace(/'/g,'&#39;').replace(/</g,'&lt;').replace(/>/g,'&gt;');
    }

    function setupEventListeners() {
        document.getElementById('search').addEventListener('input', e => {
            searchTerm = e.target.value;
            renderTable();
        });

        document.getElementById('filter-buttons').addEventListener('click', e => {
            const btn = e.target.closest('.filter-btn');
            if (!btn) return;
            document.querySelectorAll('.filter-btn').forEach(b => b.classList.remove('active'));
            btn.classList.add('active');
            currentFilter = btn.dataset.filter;
            renderTable();
        });

        // A headline count anywhere on the page filters the table, and a
        // package chip opens that package. Delegated, because the panels are
        // re-rendered.
        document.addEventListener('click', e => {
            const link = e.target.closest('.count-link');
            if (link) { applyFilter(link.dataset.filter); return; }
            const chip = e.target.closest('.chip');
            if (chip && chip.dataset.pkg) openPackage(chip.dataset.pkg);
        });

        document.querySelectorAll('th[data-sort]').forEach(th => {
            th.addEventListener('click', () => {
                const key = th.dataset.sort;
                if (currentSort.key === key) {
                    currentSort.asc = !currentSort.asc;
                } else {
                    currentSort = {key, asc: true};
                }
                document.querySelectorAll('th[data-sort]').forEach(h => {
                    h.textContent = h.textContent.replace(/ [▲▼]$/, '');
                });
                th.textContent += currentSort.asc ? ' ▲' : ' ▼';
                renderTable();
            });
        });

        document.getElementById('package-table').addEventListener('click', e => {
            const row = e.target.closest('.pkg-row');
            if (!row) return;
            toggleDetail(row.dataset.pkg);
        });
    }

    init();
    </script>
</body>
</html>
"""


def build_files(audits, judges, now=None, funding_inputs=None):
    """Everything the page reads, as {path: content}, from loaded reports."""
    now = now or datetime.now(timezone.utc)
    index_data = build_index_data(audits, judges, now, funding_inputs)
    index_data["generated_at"] = now.strftime("%Y-%m-%dT%H:%M:%SZ")
    files = {"_dashboard/data.json": json.dumps(index_data, separators=(",", ":"))}
    for pkg_name, detail in build_package_details(audits, judges).items():
        files[f"_dashboard/pkg/{pkg_name}.json"] = json.dumps(detail, separators=(",", ":"))
    return files


def main():
    global GIT_DIR
    # The publish stage rewrites index.html from this template instead of
    # trusting the copy on the branch, which the audit stage can write. That
    # rewrite happens before any repository is staged, so printing the template
    # must not touch git.
    if "--print-html" in sys.argv[1:]:
        sys.stdout.write(generate_html())
        return

    # The publish stage's other use: build the JSON from a given repository
    # and write it under a directory, committing nothing. The stage then adds
    # the files to the commit it makes, so the published data is built by
    # trusted code from the branch as it stands -- the audit stage's copy on
    # the branch never goes out.
    args = sys.argv[1:]

    def opt(flag):
        return args[args.index(flag) + 1] if flag in args else None

    # The funding card's inputs. Each is optional; without one the card is
    # left out. --aur-metadata is the AUR's packages-meta-v1.json.gz, counted
    # against the clock, not the commit: the dump is as fresh as its download.
    funding_inputs = {
        "updates_per_day": count_aur_updates(opt("--aur-metadata")) if opt("--aur-metadata") else None,
        "daily_budget": read_daily_budget(opt("--effective")) if opt("--effective") else None,
        "url": opt("--funding-url"),
    }

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
        files = build_files(audits, judges, now, funding_inputs)
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
    files = build_files(audits, judges, funding_inputs=funding_inputs)
    files["index.html"] = generate_html()
    files[".nojekyll"] = ""

    print(f"Committing {len(files)} files to {REPORTS_BRANCH}...")
    commit_to_branch(files)


if __name__ == "__main__":
    main()
