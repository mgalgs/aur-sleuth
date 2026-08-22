#!/usr/bin/env bash
# Check that nothing writes machine-specific detail into a report.
#
# Reports get published. Anything the TUI prints is written into the report as
# well, so a working directory or an API endpoint in a TUI call becomes a
# published fact about the machine that ran the audit.
#
# This is a source check rather than an output check, because output checks
# missed it: the synthetic tests run with --pkgdir and never clone, so the clone
# path's messages never appear in a synthetic report at all. A leak there passes
# every runtime test while still reaching every real report.
#
# Usage: bash bench/test-report-hygiene.sh [-q]
set -euo pipefail

cd "$(dirname "$0")/.."

QUIET=false
[[ "${1:-}" == "-q" ]] && QUIET=true

fails=0
ok()  { $QUIET || printf '  ok    %s\n' "$1"; }
bad() { printf '  FAIL  %s\n' "$1"; fails=$(( fails + 1 )); }

echo "== the TUI writes into the report, so it must not carry local paths =="
# Local paths and the endpoint. Anything matched here is printed to a report.
hits="$(grep -nE 'tui\.(update_status|finalize_step)\(' aur-sleuth \
    | grep -E 'tmpdir|pkgdir|report_path|get_base_url|base_url' || true)"
if [[ -z "$hits" ]]; then
    ok "no TUI call embeds a working directory, report path, or endpoint"
else
    bad "a TUI call would publish machine detail:"
    printf '        %s\n' "$hits"
fi

echo "== the frontmatter must not carry the endpoint =="
if grep -qE '^\s*f"base_url: ' aur-sleuth; then
    bad "frontmatter still writes base_url"
else
    ok "frontmatter does not write base_url"
fi

# provider is derived, and deriving it from the hostname is what leaked it.
if grep -qE 'provider = re\.sub' aur-sleuth; then
    bad "provider is still derived from the endpoint hostname"
else
    ok "provider is not derived from the endpoint hostname"
fi

echo "== any report lying around must be clean =="
# Best-effort: only checks reports that happen to exist, so it can pass
# vacuously. The source checks above are the ones that always run.
shopt -s nullglob
reports=(/tmp/aur-sleuth/aur-sleuth-report-*.txt)
if (( ${#reports[@]} == 0 )); then
    ok "no local reports to scan (source checks above still applied)"
else
    dirty=0
    for f in "${reports[@]}"; do
        if grep -qE 'svc\.cluster\.local|base_url:|/data/bulk-reports|Cloned repository to /|working in /' "$f"; then
            bad "machine detail in $(basename "$f")"
            dirty=$(( dirty + 1 ))
        fi
    done
    (( dirty == 0 )) && ok "${#reports[@]} local report(s) carry no machine detail"
fi

echo
if (( fails > 0 )); then
    echo "FAILED: $fails check(s)"
    exit 1
fi
echo "report hygiene: all checks passed"
