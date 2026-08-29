#!/usr/bin/env bash
# Unit test for the coverage line's numbers in bench/generate-dashboard.py:
# count_aur_updates() on a synthetic AUR dump, read_daily_budget() on a
# synthetic effective.json, and build_coverage() over both. Every number the
# page states is computed here, in code, so this is where it is proved.
#
# Costs nothing: no model is called, no network is touched.
#
# Usage: bash bench/test-coverage.sh [-q]
set -euo pipefail

cd "$(dirname "$0")/.."

python3 - "$PWD/bench/generate-dashboard.py" "${1:-}" <<'PY'
import gzip, importlib.util, json, os, sys, tempfile
from datetime import datetime, timedelta, timezone

spec = importlib.util.spec_from_file_location("gd", sys.argv[1])
gd = importlib.util.module_from_spec(spec)
spec.loader.exec_module(gd)  # __name__ != "__main__", so main() does not run

quiet = len(sys.argv) > 2 and sys.argv[2] == "-q"
fails = 0
def check(name, cond):
    global fails
    if cond:
        if not quiet:
            print(f"  ok    {name}")
    else:
        print(f"  FAIL  {name}")
        fails += 1

now = datetime(2026, 8, 23, 12, 0, tzinfo=timezone.utc)
tmp = tempfile.mkdtemp()

def write_gz(name, obj):
    path = os.path.join(tmp, name)
    with gzip.open(path, "wt", encoding="utf-8") as f:
        json.dump(obj, f)
    return path

def write(name, text):
    path = os.path.join(tmp, name)
    with open(path, "w", encoding="utf-8") as f:
        f.write(text)
    return path

# --- count_aur_updates: the last 24 hours, nothing older, nothing odd --------
t = now.timestamp()
dump = write_gz("meta.json.gz", [
    {"Name": "a", "LastModified": t - 60},             # an hour ago: counted
    {"Name": "b", "LastModified": t - 86400 + 1},      # just inside: counted
    {"Name": "c", "LastModified": t - 86400 - 1},      # just outside
    {"Name": "d", "LastModified": t - 7 * 86400},      # a week ago
    {"Name": "e"},                                     # no timestamp
    {"Name": "f", "LastModified": "not a number"},
    "not a package",
])
check("counts the last 24 hours only", gd.count_aur_updates(dump, now) == 2)
check("missing file -> None", gd.count_aur_updates(os.path.join(tmp, "nope.gz"), now) is None)
check("not gzip -> None", gd.count_aur_updates(write("plain.json", "[]"), now) is None)
check("not a list -> None", gd.count_aur_updates(write_gz("obj.json.gz", {"a": 1}), now) is None)
check("empty dump -> 0", gd.count_aur_updates(write_gz("empty.json.gz", []), now) == 0)

# --- read_daily_budget: one number out of an untrusted file ------------------
check("budget read as a float",
      gd.read_daily_budget(write("eff.json", '{"AUR_SLEUTH_DAILY_BUDGET":"1.00","x":"<b>"}')) == 1.0)
check("budget missing -> None", gd.read_daily_budget(write("eff2.json", '{"AUR_SLEUTH_JOBS":"4"}')) is None)
check("budget not a number -> None",
      gd.read_daily_budget(write("eff3.json", '{"AUR_SLEUTH_DAILY_BUDGET":"<script>"}')) is None)
check("budget negative -> None",
      gd.read_daily_budget(write("eff4.json", '{"AUR_SLEUTH_DAILY_BUDGET":"-1"}')) is None)
check("effective.json not an object -> None",
      gd.read_daily_budget(write("eff5.json", '[1,2]')) is None)
check("effective.json missing -> None", gd.read_daily_budget(os.path.join(tmp, "nope.json")) is None)

# --- build_coverage: the arithmetic, and when the line is left out -----------
recent = (now - timedelta(days=3)).strftime("%Y-%m-%dT%H:%M:%S")
old = (now - timedelta(days=40)).strftime("%Y-%m-%dT%H:%M:%S")
pkgs = {
    "p1": {"latest_date": recent, "latest_measured_date": recent},
    "p2": {"latest_date": recent, "latest_measured_date": recent},
    "p3": {"latest_date": old, "latest_measured_date": old},   # outside: not counted
    "p4": {"latest_date": "", "latest_measured_date": ""},
    # Audited long ago, submitted about this week: the package's latest_date
    # is inside the window and nothing this pipeline spent is. It belongs in
    # neither side of the division.
    "p5": {"latest_date": recent, "latest_measured_date": old},
}
by_date = {
    recent[:10]: {"cost": 0.03},
    old[:10]: {"cost": 5.0},            # a retired judge's spend: ignored
}
f = gd.build_coverage(pkgs, by_date, now, updates_per_day=800, daily_budget=1.0)
check("coverage built", f is not None)
check("cost per package from the window only", f and f["cost_per_package"] == 0.015)
check("window package count", f and f["cost_window_packages"] == 2)
check("needed = updates x cost", f and f["needed_per_day"] == 12.0)
check("covered = budget / needed", f and f["covered"] == round(1.0 / 12.0, 4))
check("budget carried", f and f["daily_budget"] == 1.0)
check("nothing solicits: no url field", f and "url" not in f)
# The denominator is what THIS pipeline audited. A submission carries a date
# the contributor wrote and no spend, so counting its package would divide the
# same money by a bigger number: the published cost_per_package would fall
# with every submission, and needed_per_day with it.
check("a submitted date alone does not enter the denominator",
      f and f["cost_window_packages"] == 2 and f["cost_per_package"] == 0.015)
audited_here = dict(pkgs, p5={"latest_date": recent, "latest_measured_date": recent})
f5 = gd.build_coverage(audited_here, by_date, now, updates_per_day=800, daily_budget=1.0)
check("the same package audited here does",
      f5 and f5["cost_window_packages"] == 3)

f = gd.build_coverage(pkgs, by_date, now, updates_per_day=800)
check("no budget -> no coverage", f and f["daily_budget"] is None and f["covered"] is None)
f = gd.build_coverage(pkgs, by_date, now, updates_per_day=800, daily_budget=100.0)
check("coverage capped at 1", f and f["covered"] == 1.0)

check("no updates count -> no line", gd.build_coverage(pkgs, by_date, now, updates_per_day=None) is None)
check("zero updates -> no line", gd.build_coverage(pkgs, by_date, now, updates_per_day=0) is None)
check("nothing audited in the window -> no line",
      gd.build_coverage({"p3": {"latest_date": old, "latest_measured_date": old}},
                        by_date, now, updates_per_day=800) is None)
check("no spend in the window -> no line",
      gd.build_coverage(pkgs, {recent[:10]: {"cost": 0.0}}, now, updates_per_day=800) is None)

# --- the whole thing lands in data.json under summary.coverage ---------------
data = gd.build_index_data([], [], now, {"updates_per_day": 800, "daily_budget": None})
check("summary.coverage present (None with no reports)",
      "coverage" in data["summary"] and data["summary"]["coverage"] is None)

# --- what a community submission does NOT move -------------------------------
#
# The scenario the accounting has to survive: one paid audit this week, and
# five submissions naming the model that ran it. bench/ingest-submission.py
# strips a submission's cost and token counts, but `model` and `date` stay --
# a report without them says nothing -- so anything that COUNTS reports is
# still steerable from outside unless it is filtered here. Each figure below
# is one a reader takes as a statement about this deployment's own spending.
def report(pkg, fm):
    return {"package": pkg, "filename": pkg + ".md", "frontmatter": fm, "body": ""}

paid = report("p1", {"model": "openai/gpt-5.4", "date": recent, "result": "safe",
                     "cost": "0.05", "files_reviewed": "9", "total_tokens": "1000",
                     "prompt_tokens": "900", "completion_tokens": "100"})
sent = [report("c%d" % i,
               {"model": "openai/gpt-5.4", "date": recent, "result": "safe",
                "files_reviewed": "3", "advisory": "true", "source": "community",
                "submitted_by": "octocat", "submitted_ring": "2"})
        for i in range(5)]
d = gd.build_index_data([paid] + sent, [], now,
                        {"updates_per_day": 100, "daily_budget": None})
s = d["summary"]
check("the week's per-model count is what this pipeline ran",
      s["week"]["by_model"] == {"openai/gpt-5.4": 1} and s["week"]["audits_total"] == 1)
check("and the week's packages-read count agrees with it",
      s["week"]["packages"]["updated"] == 1 and s["week"]["packages"]["new"] == 1)
check("the all-time per-model table too",
      list(s["by_model"]) == ["openai/gpt-5.4"] and s["by_model"]["openai/gpt-5.4"]["count"] == 1)
check("the spend figure is the money that was spent",
      s["audit_cost"] == 0.05 and s["total_tokens"] == 1000)
check("cost per package is not divided by packages nobody audited here",
      s["coverage"]["cost_window_packages"] == 1
      and s["coverage"]["cost_per_package"] == 0.05
      and s["coverage"]["needed_per_day"] == 5.0)
# The other half of the claim: nothing was hidden. A submission is on the
# branch, it is counted as a report, and its package has its row.
check("the submissions are still there, and still attributed",
      s["total_reports"] == 6 and s["results"]["safe"] == 6 and len(d["packages"]) == 6
      and d["packages"]["c0"]["audits"][0]["source"] == "community"
      and d["packages"]["c0"]["audits"][0]["submitted_by"] == "octocat")

if fails:
    print(f"FAILED: {fails} check(s)")
    sys.exit(1)
print("coverage: all checks passed")
PY
