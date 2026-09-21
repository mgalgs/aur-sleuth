#!/usr/bin/env bash
# Test makepkg-with-sleuthing's decision: which makepkg invocations skip the
# audit. Offline: the decision block is extracted from the wrapper and run on
# its own, so no makepkg runs and no model is called.
#
# The rule the cases below encode: skip only what exits before makepkg
# extracts the sources. Everything else runs maintainer-authored code --
# prepare(), pkgver(), build(), package(), an .install hook -- and the audit
# exists to come first. The argv sets are the real ones yay and paru pass
# (yay pkg/sync/build/installer.go, paru src/install.rs), because the wrapper
# is only ever reached through a helper's --makepkg hook.
#
# Usage: bash bench/test-makepkg-wrapper.sh [-q]
set -euo pipefail

cd "$(dirname "$0")/.."

QUIET=false
[[ "${1:-}" == "-q" ]] && QUIET=true

fails=0
ok()  { $QUIET || printf '  ok    %s\n' "$1"; }
bad() { printf '  FAIL  %s\n' "$1"; fails=$(( fails + 1 )); }

# Run the wrapper's own decision block, never a copy of it: a copy drifts, and
# a drifted copy of this particular table is a silently unaudited build.
BLOCK=$(sed -n '/^skip=false/,/^done$/p' makepkg-with-sleuthing)
[[ -n "$BLOCK" ]] || { echo "  FAIL  could not extract the decision block"; exit 1; }

# shellcheck disable=SC2154  # $skip is set by the eval'd block above.
decide() { eval "$BLOCK"; [[ "$skip" == yes ]] && echo SKIP || echo AUDIT; }

check() {
    local want="$1" note="$2"; shift 2
    local got; got="$(decide "$@")"
    if [[ "$got" == "$want" ]]; then ok "$want  $* -- $note"
    else bad "$*: want $want, got $got -- $note"; fi
}

# Must audit: these reach maintainer-authored code.
check AUDIT 'paru fetch: extracts, runs prepare() and pkgver()' -ofA -C
check AUDIT 'paru fetch, chroot'                                -ofA
check AUDIT 'yay fetch: extracts, runs prepare() and pkgver()'  --nobuild -f -C
check AUDIT 'yay fetch, already-built variant'                  --nobuild --noextract --ignorearch
check AUDIT 'paru build: build(), package(), .install'          -feA --noconfirm --noprepare --holdver -c
check AUDIT 'yay build'                                         -f --noconfirm --noextract --noprepare --holdver -c
check AUDIT 'hand-run fetch'                                    -o
check AUDIT 'hand-run build and install'                        -si
check AUDIT 'plain forced build'                                -fA
# -D and -p take an argument that swallows the rest of the cluster, so the
# trailing g is that argument, not the geninteg flag: these are real builds.
check AUDIT '-D consumes the cluster: build in dir "g"'         -Dg
check AUDIT '-p consumes the cluster: build with script "g"'    -pg
check AUDIT '-D mid-cluster still consumes the rest'            -fDg

# May skip: these exit before extract_sources, so nothing the maintainer wrote
# has run yet.
check SKIP  'downloads and checksums, then exits'               --verifysource -Af -Cc
check SKIP  'geninteg exits before extraction'                  -g
check SKIP  'geninteg, long form'                               --geninteg
check SKIP  'geninteg exits first, ahead of the -o path'        -og
check SKIP  'geninteg inside a cluster'                         -cg
check SKIP  'metadata only'                                     --packagelist
check SKIP  'metadata only'                                     --printsrcinfo
check SKIP  'no package involved'                               --help
check SKIP  'no package involved'                               -V

if (( fails > 0 )); then
    printf '  %d case(s) failed\n' "$fails"
    exit 1
fi
$QUIET || echo "  all cases passed"
