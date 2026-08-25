#!/usr/bin/env bash
# Check that a setting given on the command line, in the environment, and in
# the config file resolves in that order -- and that the ones nobody passed
# are left alone.
#
# NUM_FILES_TO_REVIEW was written over with argparse's default on every run,
# so load_config() read it from the config file and sleuth_main() immediately
# discarded it. The env var the README documents had no effect either, and
# nothing said so: the audit simply reviewed ten files and looked correct.
# A silent setting is the kind of bug that survives, so it gets a test.
#
# Offline: a dry run against a synthetic fixture, with the ledger as the
# witness -- one 'additional' call per file the ceiling allowed.
#
# Usage: bash bench/test-settings-precedence.sh [-q]
set -uo pipefail

cd "$(dirname "$0")/.." || exit 2

QUIET=false
[[ "${1:-}" == "-q" ]] && QUIET=true

fails=0
ok()  { $QUIET || printf '  ok    %s\n' "$1"; }
bad() { printf '  FAIL  %s\n' "$1"; fails=$(( fails + 1 )); }

TMP="$(mktemp -d)"
trap 'rm -rf "$TMP"' EXIT

# A fixture with enough spare files that a ceiling can bind. The synthetic
# has few, so make some: inert text the walk will find and rank.
cp -r bench/synthetics/benign-npm-postinstall "$TMP/pkg"
for i in 1 2 3 4 5 6; do
    printf 'echo "helper %s"\n' "$i" > "$TMP/pkg/helper$i.sh"
done

# How many 'additional' calls a run made, which is how many files the ceiling
# let through.
additional_calls() {
    local ledger_dir="$1"
    python3 -c '
import glob, json, sys
n = 0
for f in glob.glob(sys.argv[1] + "/*.json"):
    n += sum(1 for c in json.load(open(f))["calls"] if c["stage"] == "additional")
print(n)
' "$ledger_dir"
}

# run_with <name> [VAR=VALUE ...] -- [aur-sleuth flags ...]
run_with() {
    local dir="$TMP/$1"; shift
    local -a envs=()
    while [[ $# -gt 0 && "$1" != "--" ]]; do envs+=("$1"); shift; done
    [[ "${1:-}" == "--" ]] && shift
    mkdir -p "$dir"
    env -u OPENAI_API_KEY -u NUM_FILES_TO_REVIEW "${envs[@]}" \
        AUR_SLEUTH_REPORT_DIR="$dir/reports" \
        AUR_SLEUTH_CALL_LEDGER="$dir" \
        ./aur-sleuth --pkgdir "$TMP/pkg" --output plain --dry-run "$@" \
        >"$dir/log.txt" 2>&1
    additional_calls "$dir"
}

got="$(run_with envonly NUM_FILES_TO_REVIEW=2)"
if [[ "$got" == "2" ]]; then
    ok "NUM_FILES_TO_REVIEW in the environment is honoured ($got files)"
else
    bad "NUM_FILES_TO_REVIEW=2 gave $got additional review(s), wanted 2"
fi

got="$(run_with flagwins NUM_FILES_TO_REVIEW=2 -- -n 4)"
if [[ "$got" == "4" ]]; then
    ok "-n on the command line beats the environment ($got files)"
else
    bad "-n 4 over NUM_FILES_TO_REVIEW=2 gave $got, wanted 4"
fi

got="$(run_with defaulted)"
if [[ "$got" -gt 4 ]]; then
    ok "with neither set, the built-in ceiling of 10 applies ($got files)"
else
    bad "with nothing set the run reviewed only $got file(s); the default did not apply"
fi

# The flag must not write itself into the environment when it was not given,
# because load_config() reads the config file into the same variable and
# whatever lands there last wins.
if grep -q 'if args.num_files_to_review is not None:' aur-sleuth; then
    ok "the flag is only applied when it was given"
else
    bad "sleuth_main() sets NUM_FILES_TO_REVIEW unconditionally again"
fi

echo
if (( fails > 0 )); then
    echo "FAILED: $fails check(s)"
    exit 1
fi
echo "settings precedence: all checks passed"
