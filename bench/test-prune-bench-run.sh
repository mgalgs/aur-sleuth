#!/usr/bin/env bash
# Offline test for bench/prune-bench-run.py.
#
# Builds a fake benchmark run directory -- two models, one agreeing and one
# disagreeing package row each, one passed and one failed synthetic, a
# judge-input tree, a leaked source tree -- prunes it, and checks that
# exactly the artifacts with something left to say survive. A pruner's
# expensive bug is deleting the wrong thing, and its quiet bug is keeping
# everything; both are asserted here.
#
# Usage: bash bench/test-prune-bench-run.sh [-q]
# shellcheck disable=SC2015  # `A && ok || bad` reads as if-then-else here, which is safe: ok() cannot fail.
set -euo pipefail

cd "$(dirname "$0")/.."

QUIET=false
[[ "${1:-}" == "-q" ]] && QUIET=true

fails=0
ok()  { $QUIET || printf '  ok    %s\n' "$1"; }
bad() { printf '  FAIL  %s\n' "$1"; fails=$(( fails + 1 )); }

tmp="$(mktemp -d)"
trap 'rm -rf "$tmp"' EXIT

run="$tmp/20990101-000000"
slug="prov-model-a"
mkdir -p "$run/reports/$slug"

# --- summaries: one agreeing row, one disagreeing row, judge-role rows ---
cat > "$run/rows.jsonl" <<'EOF'
{"model":"prov/model-a","package":"agrees","reference":"safe","result":"safe","cost":0.01}
{"model":"prov/model-a","package":"differs","reference":"safe","result":"unsafe","cost":0.01}
{"model":"prov/model-a","package":"unsettled","reference":"unknown","result":"unsafe","cost":0.01}
{"model":"prov/model-a","package":"judged-agrees","reference":"unsafe","result":"unsafe","cost":0.01}
{"model":"prov/model-a","package":"judged-differs","reference":"unsafe","result":"safe","cost":0.01}
EOF
cat > "$run/synthetics.jsonl" <<'EOF'
{"model":"prov/model-a","fixture":"benign-passed","expected":0,"exit":0,"pass":true,"cost":0}
{"model":"prov/model-a","fixture":"malicious-missed","expected":1,"exit":0,"pass":false,"cost":0}
EOF
echo '{"run":"fake"}' > "$run/result.json"
: > "$run/sample.jsonl"

# --- raw artifacts ---
d="$run/reports/$slug"
for pkg in agrees differs unsettled; do
    echo transcript > "$d/log-$pkg.txt"
    echo report > "$d/aur-sleuth-report-$pkg.txt"
done
mkdir -p "$d/judge" "$d/judge-input/judged-agrees/0" "$d/judge-input/judged-differs/0"
for pkg in judged-agrees judged-differs; do
    echo transcript > "$d/log-judge-$pkg.txt"
    echo '{}' > "$d/judge/$pkg.json"
    echo report > "$d/judge-input/$pkg/0/aur-sleuth-report-$pkg.txt"
done
mkdir -p "$d/synthetics/benign-passed" "$d/synthetics/malicious-missed"
echo report > "$d/synthetics/benign-passed/aur-sleuth-report-x.txt"
echo report > "$d/synthetics/malicious-missed/aur-sleuth-report-x.txt"
mkdir -p "$d/aur-sleuth-abc123/src"
echo leak > "$d/aur-sleuth-abc123/src/PKGBUILD"

python3 bench/prune-bench-run.py "$run" > "$tmp/prune.log" 2>&1 \
    || { bad "pruner exited $? -- $(cat "$tmp/prune.log")"; echo "$fails test(s) failed"; exit 1; }

echo "== summaries are never touched =="
for f in rows.jsonl synthetics.jsonl result.json sample.jsonl; do
    [[ -f "$run/$f" ]] && ok "$f survives" || bad "$f was deleted"
done

echo "== a disagreement keeps its raw artifacts =="
[[ -f "$d/log-differs.txt" ]] && ok "log for the differing audit kept" \
    || bad "log for the differing audit deleted"
[[ -f "$d/aur-sleuth-report-differs.txt" ]] && ok "report for the differing audit kept" \
    || bad "report for the differing audit deleted"
[[ -f "$d/log-judge-judged-differs.txt" ]] && ok "judge log for the differing ruling kept" \
    || bad "judge log for the differing ruling deleted"
[[ -f "$d/judge/judged-differs.json" ]] && ok "ruling for the differing judge row kept" \
    || bad "ruling for the differing judge row deleted"
[[ -d "$d/synthetics/malicious-missed" ]] && ok "failed synthetic kept" \
    || bad "failed synthetic deleted"

echo "== agreement is already the row; its raw artifacts go =="
[[ ! -f "$d/log-agrees.txt" ]] && ok "log for the agreeing audit deleted" \
    || bad "log for the agreeing audit kept"
[[ ! -f "$d/aur-sleuth-report-agrees.txt" ]] && ok "report for the agreeing audit deleted" \
    || bad "report for the agreeing audit kept"
[[ ! -f "$d/log-unsettled.txt" ]] && ok "log for the unsettled-reference audit deleted" \
    || bad "log for the unsettled-reference audit kept"
[[ ! -f "$d/log-judge-judged-agrees.txt" ]] && ok "judge log for the agreeing ruling deleted" \
    || bad "judge log for the agreeing ruling kept"
[[ ! -f "$d/judge/judged-agrees.json" ]] && ok "ruling for the agreeing judge row deleted" \
    || bad "ruling for the agreeing judge row kept"
[[ ! -d "$d/synthetics/benign-passed" ]] && ok "passed synthetic deleted" \
    || bad "passed synthetic kept"

echo "== reproducible and leaked trees go unconditionally =="
[[ ! -d "$d/judge-input" ]] && ok "judge-input deleted" || bad "judge-input kept"
[[ ! -d "$d/aur-sleuth-abc123" ]] && ok "leaked source tree deleted" \
    || bad "leaked source tree kept"

echo "== running it again changes nothing =="
python3 bench/prune-bench-run.py "$run" > "$tmp/prune2.log" 2>&1 \
    || bad "second run exited $? -- $(cat "$tmp/prune2.log")"
[[ -f "$d/log-differs.txt" && -f "$run/rows.jsonl" ]] && ok "idempotent" \
    || bad "second run deleted survivors"

if (( fails > 0 )); then
    echo "$fails test(s) failed"
    exit 1
fi
$QUIET || echo "all tests passed"
