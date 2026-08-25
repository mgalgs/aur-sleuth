#!/usr/bin/env bash
# Measure what the audit loop would send, for a fixed set of packages, offline.
#
# What goes out is package-determined: the same files and the same bytes
# whichever model holds the seat. So a change to the loop can be measured
# exactly, before any model is paid, by building every prompt and counting it.
# That is what --dry-run does; this drives it over a package set and collects
# the per-call ledgers.
#
# Each package is cloned ONCE into the work directory and reused on every
# later run, sources and all. Re-cloning would let a -git package's upstream
# move between the before and after run, which is the one thing a before/after
# comparison cannot survive.
#
# Usage: dry-run-tokens.sh --out DIR [--work DIR] [--jobs N] pkg [pkg...]
#        dry-run-tokens.sh --out DIR --packages-from FILE
#
# Then read the numbers with:  bench/token-ledger.py DIR
set -euo pipefail

cd "$(dirname "$0")/.."
SLEUTH="$PWD/aur-sleuth"

OUT=""
WORK="${AUR_SLEUTH_DRY_RUN_WORK:-$HOME/aur-sleuth-data/dry-run/packages}"
JOBS=4
PACKAGES=()

while [[ $# -gt 0 ]]; do
    case "$1" in
        --out) OUT="$2"; shift 2 ;;
        --work) WORK="$2"; shift 2 ;;
        --jobs) JOBS="$2"; shift 2 ;;
        --packages-from) mapfile -t -O "${#PACKAGES[@]}" PACKAGES < "$2"; shift 2 ;;
        -*) echo "Unknown option: $1" >&2; exit 1 ;;
        *) PACKAGES+=("$1"); shift ;;
    esac
done

[[ -n "$OUT" ]] || { echo "--out is required" >&2; exit 1; }
[[ ${#PACKAGES[@]} -gt 0 ]] || { echo "no packages given" >&2; exit 1; }
[[ "$JOBS" =~ ^[1-9][0-9]*$ ]] || { echo "--jobs must be a positive number" >&2; exit 1; }

mkdir -p "$OUT" "$WORK"

log() { echo "[$(date '+%H:%M:%S')] $*"; }

one_package() {
    local pkg="$1"
    local dir="$WORK/$pkg"
    if [[ ! -d "$dir/.git" ]]; then
        rm -rf "$dir"
        if ! git clone --quiet "https://aur.archlinux.org/${pkg}.git" "$dir" 2>"$OUT/$pkg.clone.log"; then
            echo "CLONE-FAILED $pkg" >&2
            return 0
        fi
    fi
    # No key, no network to a model, no branch: AUR_SLEUTH_DRY_RUN makes every
    # call local. makepkg still fetches the package sources, once.
    if AUR_SLEUTH_REPORT_DIR="$OUT/reports" \
       timeout 900 "$SLEUTH" --pkgdir "$dir" --output plain \
           --dry-run --call-ledger "$OUT/$pkg.json" >"$OUT/$pkg.log" 2>&1; then
        :
    fi
    if [[ -f "$OUT/$pkg.json" ]]; then
        echo "OK $pkg"
    else
        echo "NO-LEDGER $pkg (see $OUT/$pkg.log)" >&2
    fi
}
export -f one_package
export SLEUTH WORK OUT

mkdir -p "$OUT/reports"
log "Dry-running ${#PACKAGES[@]} package(s) into $OUT (sources under $WORK)"
printf '%s\n' "${PACKAGES[@]}" | xargs -P "$JOBS" -I{} bash -c 'one_package "$@"' _ {}
log "Done. Read it with: bench/token-ledger.py $OUT"
