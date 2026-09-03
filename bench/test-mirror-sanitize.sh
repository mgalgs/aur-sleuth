#!/usr/bin/env bash
# Test sanitize_mirror() and refresh_aur_mirror() in
# deploy/container/scripts/entrypoint.sh directly, as shell -- the two
# functions that keep the aur-mirror pre-fetch safe against a hostile
# PKGBUILD from a previous audit stage, and the ones bench/test-aur-mirror.sh
# does not reach (that suite is a Python harness over aur-sleuth's own
# aur_mirror_dir()/materialize_from_mirror(), never entrypoint.sh's shell).
#
# Two regressions this pins:
#
#   - sanitize_mirror() must never fail. entrypoint.sh runs under
#     `set -euo pipefail` with no trap on the `prepare` stage, so any
#     unguarded failure inside it kills the whole stage -- no audit, review
#     or publish runs again until an operator intervenes. A PKGBUILD the
#     audit stage ran can turn $AUR_MIRROR_DIR/config into a directory
#     before the next prepare run; `cat >` cannot truncate a directory.
#
#   - refresh_aur_mirror() must sanitize the mirror's config before it asks
#     git whether the mirror is usable, not after. A hostile config git
#     itself refuses (an unknown repositoryformatversion) would otherwise
#     read as "not a usable git repository" and force a full re-clone of a
#     multi-GiB mirror on every single prepare run, forever, since the same
#     PKGBUILD plants the same config again before the next one.
#
# Usage: bash bench/test-mirror-sanitize.sh [-q]
set -euo pipefail

cd "$(dirname "$0")/.."
ENTRYPOINT="deploy/container/scripts/entrypoint.sh"

QUIET=false
[[ "${1:-}" == "-q" ]] && QUIET=true

# Lift the functions under test out of the shipped script, the same way
# bench/test-publish-gate.sh does, so this tests the shipped text rather
# than a copy of it.
eval "$(sed -n '/^sanitize_mirror()/,/^}/p' "$ENTRYPOINT")"
eval "$(sed -n '/^refresh_aur_mirror()/,/^}/p' "$ENTRYPOINT")"

log() { $QUIET || echo "      $*"; }

FAILS="$(mktemp)"
ok()   { $QUIET || printf '  ok    %s\n' "$1"; }
bad()  { printf '  FAIL  %s\n' "$1"; echo "$1" >> "$FAILS"; }

tmp="$(mktemp -d)"
trap 'rm -rf "$tmp" "$FAILS"' EXIT
export GIT_AUTHOR_NAME=t GIT_AUTHOR_EMAIL=t@t GIT_COMMITTER_NAME=t GIT_COMMITTER_EMAIL=t@t

echo "== sanitize_mirror survives a config a PKGBUILD turned into a directory =="
AUR_MIRROR_DIR="$tmp/clobbered"
AUR_MIRROR_URL="https://example.invalid/aur.git"
git init --bare --quiet "$AUR_MIRROR_DIR"
rm -f "$AUR_MIRROR_DIR/config"
mkdir "$AUR_MIRROR_DIR/config"

if ( set -e; sanitize_mirror ); then
    ok "sanitize_mirror exits 0 against a clobbered config"
else
    bad "sanitize_mirror should not fail when config is a directory"
fi

if [[ -f "$AUR_MIRROR_DIR/config" ]] && grep -qF "$AUR_MIRROR_URL" "$AUR_MIRROR_DIR/config"; then
    ok "config is a plain file naming the mirror URL afterward"
else
    bad "config should be a plain file naming $AUR_MIRROR_URL afterward"
fi

echo "== refresh_aur_mirror sanitizes before it validates =="
canonical="$tmp/canonical.git"
mirror="$tmp/mirror.git"
git init --bare --quiet "$canonical"
(
    work="$tmp/work"
    git clone --quiet "$canonical" "$work"
    cd "$work"
    printf 'x\n' > f
    git add f
    git commit --quiet -m t
    git push --quiet origin HEAD:refs/heads/main
)
git clone --quiet --mirror "$canonical" "$mirror"

# A config git itself refuses. Confirmed separately (not asserted here,
# to keep the fixture portable across git versions) that this makes
# `rev-parse --git-dir` fail before the fix is applied.
sed -i 's/repositoryformatversion = 0/repositoryformatversion = 99/' "$mirror/config"

# A marker only a real re-clone would lose. A fresh `git clone --mirror`
# recreates the directory from scratch, so this cannot survive one.
touch "$mirror/MARKER"

AUR_MIRROR_DIR="$mirror"
AUR_MIRROR_URL="$canonical"
AUR_MIRROR_TIMEOUT=10

refresh_aur_mirror

if [[ -e "$mirror/MARKER" ]]; then
    ok "mirror was repaired in place, not deleted and re-cloned"
else
    bad "mirror should have been sanitized in place; it was re-cloned instead"
fi

if git --git-dir="$mirror" rev-parse --git-dir >/dev/null 2>&1; then
    ok "mirror is a usable git repository afterward"
else
    bad "mirror should be usable after refresh_aur_mirror"
fi

echo
if [[ -s "$FAILS" ]]; then
    echo "FAILED: $(wc -l < "$FAILS") check(s)"
    exit 1
fi
echo "All checks passed."
