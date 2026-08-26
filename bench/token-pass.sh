#!/usr/bin/env bash
# Measure what the audit loop sends, over a fixed set of packages.
#
# Two modes, and a token pass wants both:
#
#   --dry (the default) calls no model. What the loop sends is
#   package-determined -- the same files and the same bytes whichever model
#   holds the seat -- so the input side can be measured exactly, offline and
#   for free. This is the yardstick a change is judged by: run it before, run
#   it after, diff. It answers the file-selection call with the deterministic
#   ranking, which takes the full quota every time, so its `additional` figure
#   is an UPPER BOUND -- a real model is told the quota is a ceiling and often
#   picks fewer.
#
#   --live spends money and calls the model in OPENAI_MODEL. It is what says
#   how the stages really divide, and it is the only source of characters per
#   token, which the dry run's estimate is calibrated from.
#
# Each package is cloned ONCE into the work directory and reused on every later
# run, sources and all. Re-cloning would let a -git package's upstream move
# between the before and after run, which is the one thing a before/after
# comparison cannot survive.
#
# Nothing here touches the audit-reports branch: reports land under --out and
# stay there.
#
# Usage: token-pass.sh --out DIR [--live] [--model M] [--work DIR] [--jobs N]
#                      pkg [pkg...]
#        token-pass.sh --out DIR --packages-from FILE
#
# Then read the numbers with:  bench/token-ledger.py DIR
set -euo pipefail

cd "$(dirname "$0")/.." || exit 2
SLEUTH="$PWD/aur-sleuth"

OUT=""
WORK="${AUR_SLEUTH_DRY_RUN_WORK:-$HOME/aur-sleuth-data/dry-run/packages}"
JOBS=4
LIVE=false
MODEL=""
# Passed as -n, always, so the operator's own config file cannot move the
# baseline out from under a comparison. 10 is what an unconfigured run uses.
PACKAGES=()

while [[ $# -gt 0 ]]; do
    case "$1" in
        --out) OUT="$2"; shift 2 ;;
        --work) WORK="$2"; shift 2 ;;
        --jobs) JOBS="$2"; shift 2 ;;
        --live) LIVE=true; shift ;;
        --dry) LIVE=false; shift ;;
        --model) MODEL="$2"; shift 2 ;;
        --packages-from) mapfile -t -O "${#PACKAGES[@]}" PACKAGES < "$2"; shift 2 ;;
        -*) echo "Unknown option: $1" >&2; exit 1 ;;
        *) PACKAGES+=("$1"); shift ;;
    esac
done

[[ -n "$OUT" ]] || { echo "--out is required" >&2; exit 1; }
[[ ${#PACKAGES[@]} -gt 0 ]] || { echo "no packages given" >&2; exit 1; }
[[ "$JOBS" =~ ^[1-9][0-9]*$ ]] || { echo "--jobs must be a positive number" >&2; exit 1; }
if $LIVE; then
    [[ -n "${OPENAI_API_KEY:-}" || -f "$HOME/.config/aur-sleuth.conf" || -f /etc/aur-sleuth.conf ]] \
        || { echo "--live needs OPENAI_API_KEY or an aur-sleuth.conf holding one" >&2; exit 1; }
else
    [[ -z "$MODEL" ]] || { echo "--model means nothing without --live" >&2; exit 1; }
fi

mkdir -p "$OUT" "$OUT/reports" "$OUT/ledgers" "$OUT/logs" "$WORK"

log() { echo "[$(date '+%H:%M:%S')] $*"; }

one_package() {
    local pkg="$1"
    local dir="$WORK/$pkg"
    # One pass at a time per package directory. Every run calls makepkg there,
    # which writes src/ and pkg/, so a before-pass and an after-pass started
    # together would each measure a tree the other was rewriting -- and the
    # numbers would look plausible.
    exec 9>"$WORK/.$pkg.lock"
    flock 9
    local -a mode=()
    if [[ ! -d "$dir/.git" ]]; then
        rm -rf "$dir"
        if ! git clone --quiet "https://aur.archlinux.org/${pkg}.git" "$dir" 2>"$OUT/logs/$pkg.clone.log"; then
            echo "CLONE-FAILED $pkg" >&2
            return 0
        fi
    fi
    [[ "$LIVE" == true ]] || mode+=(--dry-run)
    [[ -z "$MODEL" ]] || mode+=(--model "$MODEL")
    # One ledger directory per package asked for. The ledger inside it is named
    # for the package makepkg reports, which is not always the name that was
    # asked for (a split package answers under its first pkgname), so the
    # directory is the only handle this loop can be sure of.
    local ledger_dir="$OUT/ledgers/$pkg"
    mkdir -p "$ledger_dir"
    AUR_SLEUTH_REPORT_DIR="$OUT/reports/$pkg" AUR_SLEUTH_CALL_LEDGER="$ledger_dir" \
        timeout 1200 "$SLEUTH" --pkgdir "$dir" --output plain \
            "${mode[@]}" >"$OUT/logs/$pkg.log" 2>&1 || true
    if compgen -G "$ledger_dir/*.json" >/dev/null; then
        echo "OK $pkg"
    else
        echo "NO-LEDGER $pkg (see $OUT/logs/$pkg.log)" >&2
    fi
}
export -f one_package
export SLEUTH WORK OUT LIVE MODEL

if $LIVE; then
    log "LIVE pass over ${#PACKAGES[@]} package(s) with ${MODEL:-\$OPENAI_MODEL} -- this spends money"
else
    log "Dry pass over ${#PACKAGES[@]} package(s) -- no model is called"
fi
log "Ledgers into $OUT (sources under $WORK)"
printf '%s\n' "${PACKAGES[@]}" | xargs -P "$JOBS" -I{} bash -c 'one_package "$@"' _ {}
log "Done. Read it with: bench/token-ledger.py $OUT"
