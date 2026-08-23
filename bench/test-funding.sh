#!/usr/bin/env bash
# Unit test for the funding card's numbers in bench/generate-dashboard.py:
# count_aur_updates() on a synthetic AUR dump, read_daily_budget() on a
# synthetic effective.json, and build_funding() over both. Every number on
# the card is computed here, in code, so this is where it is proved.
#
# Costs nothing: no model is called, no network is touched.
#
# Usage: bash bench/test-funding.sh [-q]
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

# --- build_funding: the arithmetic, and when the card is left out ------------
recent = (now - timedelta(days=3)).strftime("%Y-%m-%dT%H:%M:%S")
old = (now - timedelta(days=40)).strftime("%Y-%m-%dT%H:%M:%S")
pkgs = {
    "p1": {"latest_date": recent},
    "p2": {"latest_date": recent},
    "p3": {"latest_date": old},         # outside the window: not counted
    "p4": {"latest_date": ""},
}
by_date = {
    recent[:10]: {"cost": 0.03},
    old[:10]: {"cost": 5.0},            # a retired judge's spend: ignored
}
f = gd.build_funding(pkgs, by_date, now, updates_per_day=800, daily_budget=1.0,
                     url="https://example.com/x?y=1")
check("funding built", f is not None)
check("cost per package from the window only", f and f["cost_per_package"] == 0.015)
check("window package count", f and f["cost_window_packages"] == 2)
check("needed = updates x cost", f and f["needed_per_day"] == 12.0)
check("covered = budget / needed", f and f["covered"] == round(1.0 / 12.0, 4))
check("budget carried", f and f["daily_budget"] == 1.0)
check("https url carried", f and f["url"] == "https://example.com/x?y=1")

f = gd.build_funding(pkgs, by_date, now, updates_per_day=800)
check("no budget -> no coverage", f and f["daily_budget"] is None and f["covered"] is None)
check("no url -> None", f and f["url"] is None)
f = gd.build_funding(pkgs, by_date, now, updates_per_day=800, daily_budget=100.0)
check("coverage capped at 1", f and f["covered"] == 1.0)
for bad in ("http://example.com", "javascript:alert(1)", 'https://x"y', "https://x y", "https://x'y"):
    f = gd.build_funding(pkgs, by_date, now, updates_per_day=800, url=bad)
    check(f"bad url dropped: {bad}", f and f["url"] is None)

check("no updates count -> no card", gd.build_funding(pkgs, by_date, now, updates_per_day=None) is None)
check("zero updates -> no card", gd.build_funding(pkgs, by_date, now, updates_per_day=0) is None)
check("nothing audited in the window -> no card",
      gd.build_funding({"p3": {"latest_date": old}}, by_date, now, updates_per_day=800) is None)
check("no spend in the window -> no card",
      gd.build_funding(pkgs, {recent[:10]: {"cost": 0.0}}, now, updates_per_day=800) is None)

# --- the whole thing lands in data.json under summary.funding ----------------
data = gd.build_index_data([], [], now, {"updates_per_day": 800, "daily_budget": None, "url": None})
check("summary.funding present (None with no reports)", "funding" in data["summary"] and data["summary"]["funding"] is None)

if fails:
    print(f"FAILED: {fails} check(s)")
    sys.exit(1)
print("funding: all checks passed")
PY
