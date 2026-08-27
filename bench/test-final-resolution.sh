#!/usr/bin/env bash
# The third escalation is a distinct final audit followed by the final judge.
set -euo pipefail
cd "$(dirname "$0")/.."
quiet=false; [[ "${1:-}" == "-q" ]] && quiet=true
fails=0
ok() { $quiet || printf '  ok    %s\n' "$1"; }
bad() { printf '  FAIL  %s\n' "$1"; fails=$((fails + 1)); }

tmp="$(mktemp)"
trap 'rm -f "$tmp"' EXIT
sed -n '/^ruling_model_for_audit()/,/^}/p' bench/pipeline.sh > "$tmp"
JUDGE_MODEL=j/ordinary
FINAL_AUDIT_MODEL=a/final
FINAL_JUDGE_MODEL=j/final
# shellcheck disable=SC1090
. "$tmp"

[[ "$(ruling_model_for_audit a/strong)" == j/ordinary ]] \
    && ok "ordinary escalations use the ordinary judge" \
    || bad "ordinary escalation selected the wrong judge"
[[ "$(ruling_model_for_audit a/final)" == j/final ]] \
    && ok "the final audit uses the final judge" \
    || bad "final audit selected the wrong judge"

python3 - "$PWD/bench/generate-dashboard.py" <<'PY' || fails=$((fails + 1))
import importlib.util, sys
spec = importlib.util.spec_from_file_location("gd", sys.argv[1])
gd = importlib.util.module_from_spec(spec); spec.loader.exec_module(gd)
assert gd.ESCALATION_CAP == 3, gd.ESCALATION_CAP
assert gd.package_state({"audit_majority":"contested", "judge_latest":"unsafe",
                         "unsafe_models":1, "escalations":2}) == "look"
assert gd.package_state({"audit_majority":"contested", "judge_latest":"unsafe",
                         "unsafe_models":1, "escalations":3}) == "disputed"
PY
(( fails == 0 )) || exit 1
$quiet || echo "final resolution: all checks passed"
