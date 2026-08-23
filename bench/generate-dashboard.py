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


def git(*args, **kwargs):
    result = subprocess.run(
        ["git"] + list(args),
        capture_output=True, text=True, timeout=30, **kwargs,
    )
    if result.returncode != 0:
        raise RuntimeError(f"git {' '.join(args)}: {result.stderr.strip()}")
    return result.stdout


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
                current_verdict = {"file": stripped[7:].strip()}
            elif stripped.startswith("status:") and current_verdict:
                current_verdict["status"] = stripped[7:].strip()
            elif stripped.startswith("summary:") and current_verdict:
                current_verdict["summary"] = stripped[8:].strip()
            elif not line.startswith(" ") and not line.startswith("\t") and stripped:
                in_verdicts = False
                if current_verdict:
                    file_verdicts.append(current_verdict)
                    current_verdict = {}
                m = re.match(r"^(\w[\w_]*):\s*(.*)", line)
                if m:
                    fm[m.group(1)] = m.group(2).strip()
        else:
            if line.strip() == "file_verdicts:":
                in_verdicts = True
                continue
            m = re.match(r"^(\w[\w_]*):\s*(.*)", line)
            if m:
                fm[m.group(1)] = m.group(2).strip()

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
    if ps.get("audit_majority") == "unsafe" and ps.get("judge_majority") == "unsafe":
        return "confirmed"
    # The judge read the audits and disagreed with them. It is the better model
    # looking at the same evidence, so its answer stands: a package it cleared is
    # clean, not "worth a look". Leaving it flagged would keep a package that did
    # nothing wrong on a public list of ones that might have.
    if ps.get("judge_majority") == "safe":
        return "clean"
    if (ps.get("audit_majority") in ("unsafe", "contested", "inconclusive")
            or ps.get("judge_majority") == "unsafe"):
        return "look"
    if ps.get("audit_majority") == "safe":
        return "clean"
    return "other"


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


def build_index_data(audits, judges):
    """Build the index JSON structure for the dashboard."""
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
    week_start = (datetime.now(timezone.utc) - timedelta(days=7)).strftime("%Y-%m-%d")

    wk_updated = wk_new = wk_confirmed = wk_look = wk_green = 0
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
    recent = [
        {"package": name, "state": package_state(ps), "date": ps["latest_date"],
         "audits": len(ps["audits"])}
        for name, ps in pkg_summaries.items()
    ]
    recent.sort(key=lambda r: r["date"] or "", reverse=True)
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
                         "green": wk_green},
            "audits_total": wk_audits_total,
            # "unknown" is not worth naming on the public headline; audits_total
            # still counts it, so the named models need not sum to the total.
            "by_model": dict(sorted(((k, v) for k, v in wk_by_model.items() if k != "unknown"),
                                    key=lambda x: -x[1])),
        },
        "recent": recent,
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
        <div class="flex items-center justify-between mb-8">
            <div>
                <h1 class="text-3xl font-bold text-blue-400">AUR Sleuth Dashboard</h1>
                <p class="text-slate-400 text-sm mt-1">LLM-powered AUR package security audits</p>
            </div>
            <div class="text-right text-sm text-slate-500">
                <span id="generated-at"></span>
                <br>
                <a href="https://github.com/mgalgs/aur-sleuth" class="text-blue-400 hover:text-blue-300">GitHub</a>
            </div>
        </div>

        <!-- This week's activity -->
        <div id="activity" class="bg-slate-800 rounded-lg p-5 border border-slate-700 mb-6">
            <p id="activity-packages" class="text-slate-200"></p>
            <p id="activity-audits" class="text-slate-400 text-sm mt-1"></p>
            <p class="text-slate-500 text-xs mt-3 leading-relaxed">
                These audits look for one thing: code injected into the AUR packaging of a
                package &mdash; in the <code>PKGBUILD</code>, an <code>.install</code> hook, or a patch.
                &ldquo;Worth a closer look&rdquo; means a model wanted a second opinion, most often
                about something the application legitimately does; it is not a claim that
                the package is malicious, and on this corpus most such flags are false
                positives. Only &ldquo;confirmed&rdquo; means the audits and the judge agreed.
            </p>
            <div id="activity-recent" class="mt-4 flex flex-wrap gap-2"></div>
        </div>

        <!-- Summary Cards -->
        <div class="grid grid-cols-2 md:grid-cols-4 gap-4 mb-8">
            <div class="bg-slate-800 rounded-lg p-4 border border-slate-700">
                <div class="text-slate-400 text-xs uppercase tracking-wide">Packages</div>
                <div id="stat-packages" class="text-2xl font-bold text-white mt-1">—</div>
            </div>
            <div class="bg-slate-800 rounded-lg p-4 border border-slate-700">
                <div class="text-slate-400 text-xs uppercase tracking-wide">Audit Reports</div>
                <div id="stat-reports" class="text-2xl font-bold text-white mt-1">—</div>
            </div>
            <div class="bg-slate-800 rounded-lg p-4 border border-slate-700">
                <div class="text-slate-400 text-xs uppercase tracking-wide">Total Cost</div>
                <div id="stat-cost" class="text-2xl font-bold text-white mt-1">—</div>
            </div>
            <div class="bg-slate-800 rounded-lg p-4 border border-slate-700">
                <div class="text-slate-400 text-xs uppercase tracking-wide">Needs Attention</div>
                <div id="stat-attention" class="text-2xl font-bold text-red-400 mt-1">—</div>
            </div>
        </div>

        <!-- Charts Row -->
        <div class="grid grid-cols-1 md:grid-cols-2 gap-6 mb-8">
            <div class="bg-slate-800 rounded-lg p-4 border border-slate-700">
                <h2 class="text-sm font-semibold text-slate-300 mb-3 uppercase tracking-wide">Packages, after the judge</h2>
                <div class="h-64 flex items-center justify-center">
                    <canvas id="results-chart"></canvas>
                </div>
            </div>
            <div class="bg-slate-800 rounded-lg p-4 border border-slate-700">
                <h2 class="text-sm font-semibold text-slate-300 mb-3 uppercase tracking-wide">Cost by Model</h2>
                <div class="h-64 flex items-center justify-center">
                    <canvas id="model-chart"></canvas>
                </div>
            </div>
        </div>

        <!-- Filters -->
        <div class="bg-slate-800 rounded-lg p-4 border border-slate-700 mb-4">
            <div class="flex flex-wrap items-center gap-3">
                <input id="search" type="text" placeholder="Search packages..."
                    class="bg-slate-700 border border-slate-600 rounded px-3 py-1.5 text-sm text-slate-200 placeholder-slate-400 focus:outline-none focus:border-blue-500 w-full sm:w-64">
                <div class="flex flex-wrap gap-1" id="filter-buttons">
                    <button class="filter-btn active px-3 py-1 rounded text-xs font-medium bg-slate-700 text-slate-300" data-filter="all">All</button>
                    <button class="filter-btn px-3 py-1 rounded text-xs font-medium bg-slate-700 text-slate-300 border border-red-800/50" data-filter="needs-attention">Needs Attention</button>
                    <button class="filter-btn px-3 py-1 rounded text-xs font-medium bg-slate-700 text-slate-300" data-filter="confirmed-safe">Confirmed Safe</button>
                    <button class="filter-btn px-3 py-1 rounded text-xs font-medium bg-slate-700 text-slate-300" data-filter="contested">Contested</button>
                    <span class="border-l border-slate-600 mx-1"></span>
                    <button class="filter-btn px-3 py-1 rounded text-xs font-medium bg-slate-700 text-slate-300" data-filter="unsafe">Unsafe</button>
                    <button class="filter-btn px-3 py-1 rounded text-xs font-medium bg-slate-700 text-slate-300" data-filter="safe">Safe</button>
                    <button class="filter-btn px-3 py-1 rounded text-xs font-medium bg-slate-700 text-slate-300" data-filter="unjudged">Unjudged</button>
                </div>
                <span id="result-count" class="text-xs text-slate-500 ml-auto"></span>
            </div>
            <div class="flex flex-wrap items-center gap-x-4 gap-y-1 mt-3 text-xs text-slate-500">
                <span><span class="block block-safe"></span>no findings</span>
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
        renderCharts();
        renderTable();
        setupEventListeners();
    }

    function shortModel(m) {
        return String(m).split('/').pop();
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

        // Only "confirmed" -- audits agreed unsafe AND the judge agreed -- is
        // shown in red. A single model's "unsafe" is usually a false positive on
        // a package that merely looks alarming, so it is counted plainly as
        // something to look at, never coloured as an accusation.
        const p = wk.packages || {};
        const confirmed = Number(p.confirmed || 0);
        // data.json is written by the audit stage and the page by the publish
        // stage, so a page can be newer than the data it reads. Without the new
        // keys every count would render as a confident zero, which is worse than
        // saying nothing: show the totals and leave the breakdown out.
        const counted = Object.prototype.hasOwnProperty.call(p, 'confirmed');
        document.getElementById('activity-packages').innerHTML =
            '<span class="text-2xl font-bold text-white">' + Number(p.updated || 0).toLocaleString() + '</span>' +
            ' packages audited in the past week ' +
            '<span class="text-slate-400 text-base">(' + Number(p.new || 0) + ' new)</span>' +
            (!counted ? '' :
            '<br><span class="text-base">' +
            '<span class="result-safe font-semibold">' + Number(p.green || 0) + ' clean</span>' +
            '<span class="text-slate-500"> &middot; </span>' +
            '<span class="text-slate-300">' + Number(p.look || 0) + ' worth a closer look</span>' +
            '<span class="text-slate-500"> &middot; </span>' +
            (confirmed
                ? '<span class="result-unsafe font-semibold">' + confirmed + ' confirmed</span>'
                : '<span class="result-safe font-semibold">none confirmed malicious</span>') +
            '</span>');

        const parts = Object.entries(wk.by_model || {}).slice(0, 6)
            .map(([m, c]) => escapeHtml(shortModel(m)) + ' (' + Number(c) + ')');
        document.getElementById('activity-audits').innerHTML =
            Number(wk.audits_total || 0).toLocaleString() + ' security audits' +
            (parts.length ? ' by ' + joinNicely(parts) : '');

        // One chip per package, coloured by its settled state. Per audit, a
        // package the models disagreed about showed twice -- green and red --
        // which reads as a finding when it is only a disagreement.
        // "Worth a closer look" is drawn hollow, not filled. A solid amber dot
        // beside a package name reads as a warning about that package; an
        // outline reads as what it is -- noted, nothing concluded.
        const DOT = {confirmed: 'block-unsafe', look: 'block-look',
                     clean: 'block-safe', other: 'block-skipped'};
        const WHAT = {confirmed: 'audits and judge agree: unsafe',
                      look: 'flagged by a model; not confirmed',
                      clean: 'no findings', other: 'no verdict'};
        document.getElementById('activity-recent').innerHTML = rec.map(r => {
            const d = String(r.date || '').split('T')[0];
            const st = DOT[r.state] ? r.state : 'other';
            return '<span class="inline-flex items-center gap-1.5 bg-slate-900 border border-slate-700 rounded px-2 py-1 text-xs" ' +
                'title="' + escapeAttr((WHAT[st] || '') + ' • ' + (r.date || '')) + '">' +
                '<span class="block ' + DOT[st] + '" style="margin-right:0"></span>' +
                '<span class="text-blue-300">' + escapeHtml(r.package || '') + '</span>' +
                '<span class="text-slate-500">' + escapeHtml(d) + '</span>' +
                '</span>';
        }).join('');
    }

    function renderSummary() {
        const s = DATA.summary;
        document.getElementById('stat-packages').textContent = s.packages_audited.toLocaleString();
        document.getElementById('stat-reports').textContent = s.total_reports.toLocaleString();
        document.getElementById('stat-cost').textContent = '$' + s.total_cost.toFixed(2);
        document.getElementById('generated-at').textContent = 'Generated: ' + (DATA.generated_at || 'unknown');

        let attention = 0;
        for (const pkg of Object.values(DATA.packages)) {
            if (pkg.audit_majority === 'unsafe' && pkg.judge_majority === 'unsafe') attention++;
        }
        document.getElementById('stat-attention').textContent = attention.toLocaleString();
    }

    function renderCharts() {
        const s = DATA.summary;

        // Packages, after the judge. Charting the raw per-report results would
        // put verdicts the judge overturned into a headline figure; a package
        // the judge cleared is simply clean here, and the audit that called it
        // unsafe stays visible in its own row.
        const STATE_LABEL = {clean: 'No findings', look: 'Worth a closer look',
                             confirmed: 'Confirmed', other: 'No verdict'};
        const STATE_COLOR = {clean: '#22c55e', look: '#f59e0b',
                             confirmed: '#ef4444', other: '#6b7280'};
        const states = s.package_states
            || {other: Object.keys(DATA.packages || {}).length};
        const stateKeys = ['clean', 'look', 'confirmed', 'other'].filter(k => states[k]);
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
                        position: 'right',
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

    function matchesPreset(pkg, preset) {
        switch (preset) {
            case 'all': return true;
            case 'needs-attention':
                return pkg.audit_majority === 'unsafe' && pkg.judge_majority === 'unsafe';
            case 'confirmed-safe':
                return pkg.audit_majority === 'safe' && (pkg.judge_majority === 'safe' || !pkg.judge_majority);
            case 'contested':
                return pkg.judge_majority && pkg.audit_majority !== pkg.judge_majority
                    && (pkg.audit_majority === 'safe' || pkg.audit_majority === 'unsafe')
                    && (pkg.judge_majority === 'safe' || pkg.judge_majority === 'unsafe');
            case 'unsafe':
                return pkg.audit_majority === 'unsafe';
            case 'safe':
                return pkg.audit_majority === 'safe';
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
                    <div class="p-6 bg-slate-850 border-t border-slate-600">
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
                    <div class="flex gap-4 mb-3 text-sm">
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
                            <th class="text-left py-1 pr-3">Status</th>
                            <th class="text-left py-1">Summary</th>
                        </tr></thead><tbody>`;
                    for (const v of fv) {
                        html += `<tr class="border-t border-slate-700/50">
                            <td class="py-1 pr-3 text-blue-300">${escapeHtml(v.file || '')}</td>
                            <td class="py-1 pr-3 result-${escapeAttr(v.status || 'unknown')}">${escapeHtml(v.status || '?')}</td>
                            <td class="py-1 text-slate-400">${escapeHtml(v.summary || '')}</td>
                        </tr>`;
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


def main():
    # The publish stage rewrites index.html from this template instead of
    # trusting the copy on the branch, which the audit stage can write. That
    # rewrite happens before any repository is staged, so printing the template
    # must not touch git.
    if "--print-html" in sys.argv[1:]:
        sys.stdout.write(generate_html())
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

    print("Building index data...")
    index_data = build_index_data(audits, judges)

    index_data["generated_at"] = datetime.now(timezone.utc).strftime("%Y-%m-%dT%H:%M:%SZ")

    print("Building per-package details...")
    package_details = build_package_details(audits, judges)

    print("Generating HTML...")
    html = generate_html()

    files = {
        "index.html": html,
        ".nojekyll": "",
        "_dashboard/data.json": json.dumps(index_data, separators=(",", ":")),
    }
    for pkg_name, detail in package_details.items():
        files[f"_dashboard/pkg/{pkg_name}.json"] = json.dumps(detail, separators=(",", ":"))

    print(f"Committing {len(files)} files to {REPORTS_BRANCH}...")
    commit_to_branch(files)


if __name__ == "__main__":
    main()
