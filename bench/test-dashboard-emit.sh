#!/usr/bin/env bash
# `generate-dashboard.py --emit` must build, from the same commit, the same
# files byte for byte: the publish stage compares the rebuilt site with the
# last one to skip a no-op publish, so a reordered key or list publishes a
# page whose data did not change.
#
# The fixture branch (bench/fixtures/dashboard-emit-build.sh) has packages
# with several audits, judges, an unparseable judge, a non-UTF-8 report,
# CRLF bodies, paths git quotes, a symlink, a submodule entry, and the
# _dashboard/, index.html and .nojekyll entries the loader skips. The golden
# under bench/fixtures/dashboard-emit/ was produced by the loader as it was
# before --emit streamed per package (one `git show` per path, every body in
# memory), so this pins the streaming one to that output.
#
# The no-argument path shares the loader, so its build_files() output is
# checked against the same golden too.
#
# Costs nothing: no model is called, no network is touched.
#
# Usage: bash bench/test-dashboard-emit.sh [-q]
set -euo pipefail

cd "$(dirname "$0")/.."

quiet=false
[[ "${1:-}" == "-q" ]] && quiet=true
tmp="$(mktemp -d)"
trap 'rm -rf "$tmp"' EXIT
fails=0
ok() { $quiet || printf '  ok    %s\n' "$1"; }
fail() { printf '  FAIL  %s\n' "$1"; fails=$(( fails + 1 )); }

bash bench/fixtures/dashboard-emit-build.sh "$tmp/repo.git"
sha="$(git --git-dir "$tmp/repo.git" rev-parse audit-reports)"
cat > "$tmp/effective.json" <<'JSON'
{"AUR_SLEUTH_DAILY_BUDGET": "1.50", "AUR_SLEUTH_ESCALATIONS_PER_RUN": "2", "AUR_SLEUTH_RUNS_PER_DAY": "4", "AUR_SLEUTH_REAUDIT_MODEL": "model/c"}
JSON

python3 bench/generate-dashboard.py --git-dir "$tmp/repo.git" --ref "$sha" \
    --emit "$tmp/out" --effective "$tmp/effective.json" 2> "$tmp/stderr"
if diff -r bench/fixtures/dashboard-emit "$tmp/out" > "$tmp/diff"; then
    ok "--emit output is byte-identical to the golden"
else
    fail "--emit output differs from the golden:"
    sed 's/^/        /' "$tmp/diff" | head -20
fi
if grep -qx '11 file(s) from 13 audit and 3 judge report(s)' "$tmp/stderr"; then
    ok "--emit reports the same counts"
else
    fail "--emit counts: $(cat "$tmp/stderr")"
fi

# The no-argument path and the other callers keep load_reports() with bodies.
python3 - "$PWD/bench/generate-dashboard.py" "$tmp/repo.git" "$sha" \
    "$tmp/effective.json" bench/fixtures/dashboard-emit > "$tmp/py" 2>&1 <<'PY' || true
import importlib.util, os, sys
from datetime import datetime, timezone

spec = importlib.util.spec_from_file_location("gd", sys.argv[1])
gd = importlib.util.module_from_spec(spec)
spec.loader.exec_module(gd)
gd.GIT_DIR, gd.REPORTS_BRANCH = sys.argv[2], sys.argv[3]
golden = sys.argv[5]

audits, judges = gd.load_reports()
print("bodies kept" if all("body" in a for a in audits) else "FAIL bodies dropped")
now = datetime(2026, 10, 1, 12, 0, tzinfo=timezone.utc)
files = gd.build_files(audits, judges, now,
                       {"updates_per_day": None,
                        "daily_budget": gd.read_daily_budget(sys.argv[4])},
                       gd.read_escalation_settings(sys.argv[4]))
want = {}
for root, _, names in os.walk(golden):
    for n in names:
        full = os.path.join(root, n)
        with open(full, encoding="utf-8") as f:
            want[os.path.relpath(full, golden)] = f.read()
print("build_files matches" if files == want else "FAIL build_files differs")
PY
grep -qx "bodies kept" "$tmp/py" && ok "load_reports() keeps bodies by default" \
    || fail "load_reports() default: $(cat "$tmp/py")"
grep -qx "build_files matches" "$tmp/py" && ok "build_files() matches the golden" \
    || fail "build_files(): $(cat "$tmp/py")"

if (( fails > 0 )); then
    echo "FAILED: $fails check(s)"
    exit 1
fi
echo "dashboard-emit: all checks passed"
