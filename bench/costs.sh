#!/usr/bin/env bash
# Cost dashboard — aggregate costs from the audit-reports branch.
# Usage: costs.sh [--by-model | --by-date | --by-package | --summary]
#   Default: --summary
set -euo pipefail

cd "$(dirname "$0")/.."

REPORTS_BRANCH="audit-reports"
VIEW="${1:---summary}"

if ! git rev-parse --verify "$REPORTS_BRANCH" &>/dev/null; then
    echo "No $REPORTS_BRANCH branch found." >&2
    exit 1
fi

_FILE_LIST=$(git ls-tree -r "$REPORTS_BRANCH" --name-only)
export _FILE_LIST

BRANCH="$REPORTS_BRANCH" VIEW="$VIEW" python3 << 'PYEOF'
import sys, os, re, json, subprocess
from collections import defaultdict

branch = os.environ["BRANCH"]
view = os.environ["VIEW"]

files = os.environ["_FILE_LIST"].strip().split("\n")

audits = []
judges = []

for path in files:
    try:
        raw = subprocess.run(
            ["git", "show", f"{branch}:{path}"],
            capture_output=True, text=True, timeout=5,
        ).stdout
    except Exception:
        continue

    pkg = path.split("/")[0]

    if path.endswith("-judge.json"):
        try:
            data = json.loads(raw)
            usage = data.get("_judge_usage", {})
            judges.append({
                "package": pkg,
                "model": usage.get("model", "unknown"),
                "cost": usage.get("cost") or 0,
                "prompt_tokens": usage.get("prompt_tokens", 0),
                "completion_tokens": usage.get("completion_tokens", 0),
                "date": path.split("/")[1][:8],
                "type": "judge",
                "verdict": data.get("correct_verdict", ""),
                "re_audit": data.get("re_audit_recommended", False),
            })
        except (json.JSONDecodeError, KeyError):
            pass
    else:
        # Audit report — parse YAML frontmatter
        fm = {}
        if raw.startswith("---\n"):
            end = raw.find("\n---\n", 4)
            if end > 0:
                for line in raw[4:end].split("\n"):
                    m = re.match(r'^(\w+):\s*(.*)', line)
                    if m:
                        fm[m.group(1)] = m.group(2).strip()

        cost_val = fm.get("cost", "0")
        try:
            cost = float(cost_val)
        except ValueError:
            cost = 0

        audits.append({
            "package": pkg,
            "model": fm.get("model", "unknown"),
            "cost": cost,
            "prompt_tokens": int(fm.get("prompt_tokens", 0)),
            "completion_tokens": int(fm.get("completion_tokens", 0)),
            "result": fm.get("result", "unknown"),
            "date": fm.get("date", "")[:10],
            "execution_time": float(fm.get("execution_time", 0)),
            "files_reviewed": int(fm.get("files_reviewed", 0)),
            "type": "audit",
        })

all_items = audits + judges
total_cost = sum(i["cost"] for i in all_items)
audit_cost = sum(i["cost"] for i in audits)
judge_cost = sum(i["cost"] for i in judges)
total_pt = sum(i["prompt_tokens"] for i in all_items)
total_ct = sum(i["completion_tokens"] for i in all_items)

if view == "--summary":
    pkgs = set(a["package"] for a in audits)
    judged_pkgs = set(j["package"] for j in judges)
    re_audit_count = sum(1 for j in judges if j.get("re_audit"))

    print("=== Cost Dashboard ===\n")
    print(f"{'Packages audited:':<24} {len(pkgs)}")
    print(f"{'Total audit reports:':<24} {len(audits)}")
    print(f"{'Judge reviews:':<24} {len(judges)} ({len(judged_pkgs)} packages)")
    print(f"{'Flagged for re-audit:':<24} {re_audit_count}")
    print()
    print(f"{'Audit cost:':<24} ${audit_cost:.4f}")
    print(f"{'Judge cost:':<24} ${judge_cost:.4f}")
    print(f"{'Total cost:':<24} ${total_cost:.4f}")
    print()
    print(f"{'Tokens (prompt):':<24} {total_pt:,}")
    print(f"{'Tokens (completion):':<24} {total_ct:,}")
    print(f"{'Tokens (total):':<24} {total_pt + total_ct:,}")

    if audits:
        avg = audit_cost / len(audits)
        print(f"\n{'Avg cost/audit:':<24} ${avg:.6f}")
    if judges:
        avg = judge_cost / len(judges)
        print(f"{'Avg cost/judge:':<24} ${avg:.6f}")

    # Result breakdown
    results = defaultdict(int)
    for a in audits:
        results[a["result"]] += 1
    print("\n--- Results ---")
    for r in sorted(results, key=results.get, reverse=True):
        print(f"  {r:<16} {results[r]:>4}")

elif view == "--by-model":
    by_model = defaultdict(lambda: {"count": 0, "cost": 0, "pt": 0, "ct": 0})
    for i in all_items:
        m = by_model[i["model"]]
        m["count"] += 1
        m["cost"] += i["cost"]
        m["pt"] += i["prompt_tokens"]
        m["ct"] += i["completion_tokens"]

    print(f"{'Model':<45} {'Count':>6} {'Cost':>10} {'Tokens':>12}")
    print("-" * 75)
    for model in sorted(by_model, key=lambda m: by_model[m]["cost"], reverse=True):
        m = by_model[model]
        tokens = m["pt"] + m["ct"]
        print(f"{model:<45} {m['count']:>6} ${m['cost']:>9.4f} {tokens:>11,}")
    print("-" * 75)
    print(f"{'TOTAL':<45} {len(all_items):>6} ${total_cost:>9.4f} {total_pt+total_ct:>11,}")

elif view == "--by-date":
    by_date = defaultdict(lambda: {"audits": 0, "judges": 0, "cost": 0})
    for a in audits:
        d = a["date"] or "unknown"
        by_date[d]["audits"] += 1
        by_date[d]["cost"] += a["cost"]
    for j in judges:
        dd = j["date"]
        d = dd[:4] + "-" + dd[4:6] + "-" + dd[6:8] if len(dd) >= 8 else "unknown"
        by_date[d]["judges"] += 1
        by_date[d]["cost"] += j["cost"]

    print(f"{'Date':<14} {'Audits':>7} {'Judges':>7} {'Cost':>10}")
    print("-" * 40)
    for date in sorted(by_date):
        d = by_date[date]
        print(f"{date:<14} {d['audits']:>7} {d['judges']:>7} ${d['cost']:>9.4f}")
    print("-" * 40)
    print(f"{'TOTAL':<14} {len(audits):>7} {len(judges):>7} ${total_cost:>9.4f}")

elif view == "--by-package":
    by_pkg = defaultdict(lambda: {"audits": 0, "judges": 0, "cost": 0, "result": ""})
    for a in audits:
        p = by_pkg[a["package"]]
        p["audits"] += 1
        p["cost"] += a["cost"]
        p["result"] = a["result"]
    for j in judges:
        p = by_pkg[j["package"]]
        p["judges"] += 1
        p["cost"] += j["cost"]

    # Sort by cost descending
    print(f"{'Package':<35} {'Audits':>7} {'Judge':>6} {'Cost':>10} {'Result':<12}")
    print("-" * 72)
    for pkg in sorted(by_pkg, key=lambda p: by_pkg[p]["cost"], reverse=True)[:30]:
        p = by_pkg[pkg]
        print(f"{pkg:<35} {p['audits']:>7} {p['judges']:>6} ${p['cost']:>9.4f} {p['result']:<12}")
    remaining = len(by_pkg) - 30
    if remaining > 0:
        print(f"  ... and {remaining} more packages")
    print("-" * 72)
    print(f"{'TOTAL':<35} {len(audits):>7} {len(judges):>6} ${total_cost:>9.4f}")

else:
    print(f"Unknown view: {view}", file=sys.stderr)
    print("Usage: costs.sh [--summary | --by-model | --by-date | --by-package]", file=sys.stderr)
    sys.exit(1)
PYEOF
