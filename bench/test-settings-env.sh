#!/usr/bin/env bash
# Test the environment-to-flag mapping in deploy/container/scripts/entrypoint.sh.
#
# A deployment overrides the budget or the models by projecting a ConfigMap into
# the container, so these values arrive from outside the image. Two things need
# to hold: the value has to reach bench/pipeline.sh, and a value that is not the
# shape it claims to be has to be refused -- pipeline.sh interpolates the budget
# into a `python3 -c` string, where a non-number is code.
#
# Usage: bash bench/test-settings-env.sh [-q]
set -euo pipefail

cd "$(dirname "$0")/.."
ENTRYPOINT="deploy/container/scripts/entrypoint.sh"

QUIET=false
[[ "${1:-}" == "-q" ]] && QUIET=true

fails=0
ok()  { $QUIET || printf '  ok    %s\n' "$1"; }
bad() { printf '  FAIL  %s\n' "$1"; fails=$(( fails + 1 )); }

# Run the mapping in a subshell with a given environment, and echo the flags it
# produces. Exits non-zero when the entrypoint refuses a value.
flags_for() {
    (
        set -euo pipefail
        # Both are called by the code that arrives through the eval below.
        # shellcheck disable=SC2329
        log() { :; }
        # shellcheck disable=SC2329
        die() { echo "die: $*" >&2; exit 1; }
        eval "$(sed -n '/^collect_audit_env_flags()/,/^}/p' "$ENTRYPOINT")"
        AUDIT_ENV_FLAGS=()
        for kv in "$@"; do export "${kv?}"; done
        collect_audit_env_flags
        printf '%s\n' "${AUDIT_ENV_FLAGS[*]:-}"
    )
}

expect_flags() {
    local want="$1"; shift
    local got
    if ! got="$(flags_for "$@" 2>/dev/null)"; then
        bad "refused, but should have accepted: $*"
        return
    fi
    if [[ "$got" == "$want" ]]; then
        ok "$* -> ${want:-<none>}"
    else
        bad "$* -> got '$got', want '$want'"
    fi
}

expect_refused() {
    if flags_for "$@" >/dev/null 2>&1; then
        bad "should have been REFUSED: $*"
    else
        ok "refused $*"
    fi
}

echo "== nothing set means nothing added =="
expect_flags ""

echo "== values reach the pipeline as flags =="
expect_flags "--daily-budget 0.50" AUR_SLEUTH_DAILY_BUDGET=0.50
expect_flags "--jobs 4" AUR_SLEUTH_JOBS=4
expect_flags "--reaudit-model anthropic/claude-sonnet-4.6" \
    AUR_SLEUTH_REAUDIT_MODEL=anthropic/claude-sonnet-4.6
expect_flags "--audit-models qwen/qwen3-235b-a22b-2507,deepseek/deepseek-v4-flash" \
    AUR_SLEUTH_AUDIT_MODELS=qwen/qwen3-235b-a22b-2507,deepseek/deepseek-v4-flash
expect_flags "--daily-budget 1.00 --jobs 2" \
    AUR_SLEUTH_DAILY_BUDGET=1.00 AUR_SLEUTH_JOBS=2
expect_flags "--updated-share 0.8" AUR_SLEUTH_UPDATED_SHARE=0.8
expect_flags "--seed-top 1000" AUR_SLEUTH_SEED_TOP=1000
expect_flags "--audit-timeout 600" AUR_SLEUTH_AUDIT_TIMEOUT=600
expect_flags "--updated-count 25" AUR_SLEUTH_UPDATED_COUNT=25
expect_flags "--seed-count 10" AUR_SLEUTH_SEED_COUNT=10
expect_flags "--packages icaclient,snapd" AUR_SLEUTH_PACKAGES=icaclient,snapd
expect_flags "--escalate pcloud-drive" AUR_SLEUTH_ESCALATE=pcloud-drive
expect_flags "--escalate-pending true" AUR_SLEUTH_ESCALATE_PENDING=true
expect_flags "--run-budget 2.50" AUR_SLEUTH_RUN_BUDGET=2.50
expect_flags "--free-models z-ai/glm-5.2:free,stealth/ox-alpha" \
    AUR_SLEUTH_FREE_MODELS=z-ai/glm-5.2:free,stealth/ox-alpha
expect_flags "--free-timeout 180" AUR_SLEUTH_FREE_TIMEOUT=180
expect_flags "--advisory true" AUR_SLEUTH_ADVISORY=true

echo "== a budget that is not a number is code, so refuse it =="
expect_refused 'AUR_SLEUTH_DAILY_BUDGET=1) or __import__("os").system("id") or (0'
expect_refused "AUR_SLEUTH_DAILY_BUDGET=abc"
expect_refused "AUR_SLEUTH_DAILY_BUDGET=1.0.0"
expect_refused "AUR_SLEUTH_DAILY_BUDGET=-1"
expect_refused "AUR_SLEUTH_DAILY_BUDGET=1e9"

echo "== other malformed values =="
expect_refused "AUR_SLEUTH_JOBS=4.5"
expect_refused "AUR_SLEUTH_JOBS=; rm -rf /"
expect_refused "AUR_SLEUTH_MIN_VOTES=lots"
expect_refused 'AUR_SLEUTH_JUDGE_MODEL=a b'
# shellcheck disable=SC2016  # the literal text is the point
expect_refused 'AUR_SLEUTH_JUDGE_MODEL=$(id)'
expect_refused "AUR_SLEUTH_AUDIT_MODELS=a,,b"
expect_refused "AUR_SLEUTH_AUDIT_MODELS=a,"
expect_refused "AUR_SLEUTH_UPDATED_SHARE=abc"
expect_refused 'AUR_SLEUTH_UPDATED_SHARE=0.8) or (1'
# Out of range is refused at the container boundary, not left to abort the run.
expect_refused "AUR_SLEUTH_UPDATED_SHARE=1.5"
expect_refused "AUR_SLEUTH_UPDATED_SHARE=2"
# `timeout 0` is no timeout at all: the one value the setting must never be.
expect_refused "AUR_SLEUTH_AUDIT_TIMEOUT=0"
expect_refused "AUR_SLEUTH_AUDIT_TIMEOUT=00"
expect_refused "AUR_SLEUTH_AUDIT_TIMEOUT=-5"
# Package lists: a name may not start with a hyphen (it would read as a flag),
# and shell metacharacters are not package names.
expect_refused "AUR_SLEUTH_PACKAGES=-rf"
expect_refused "AUR_SLEUTH_PACKAGES=a,,b"
expect_refused "AUR_SLEUTH_PACKAGES=a b"
# shellcheck disable=SC2016  # the literal text is the point
expect_refused 'AUR_SLEUTH_ESCALATE=$(id)'
expect_refused "AUR_SLEUTH_ESCALATE=pkg;id"
expect_refused "AUR_SLEUTH_UPDATED_COUNT=ten"
expect_refused "AUR_SLEUTH_ESCALATE_PENDING=yes"
# A zero run budget would gate the run shut, which is the opposite of what
# the setting exists for.
expect_refused "AUR_SLEUTH_RUN_BUDGET=0"
expect_refused "AUR_SLEUTH_RUN_BUDGET=0.00"
expect_refused "AUR_SLEUTH_RUN_BUDGET=-2"
expect_refused "AUR_SLEUTH_ADVISORY=yes"
expect_refused "AUR_SLEUTH_ADVISORY=1"

echo "== the pipeline takes the last flag, so the environment wins =="
out="$(bash bench/pipeline.sh --daily-budget 2.00 --jobs 8 \
        --daily-budget 0.25 --jobs 3 \
        --dry-run --packages-file /dev/null --skip-judge --skip-dashboard 2>&1 || true)"
# shellcheck disable=SC2016  # matching a literal dollar sign in the log line
if grep -q 'budget=\$0.25' <<< "$out" && grep -q 'jobs=3' <<< "$out"; then
    ok "a later --daily-budget/--jobs overrides an earlier one"
else
    bad "override did not take effect; config line was: $(grep -m1 Config: <<< "$out")"
fi

echo
if (( fails > 0 )); then
    echo "FAILED: $fails check(s)"
    exit 1
fi
echo "settings from the environment: all checks passed"
