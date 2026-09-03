#!/usr/bin/env bash
# Offline checks for the AUR-mirror pre-fetch: aur_mirror_dir(),
# git_ls_remote_head(), git_head_sha(), materialize_from_mirror(), and
# download_package_to_tmpdir()'s wiring of all four.
#
# The design's one invariant is that a local mirror can only ever supply
# bytes for a SHA the canonical host (aur.archlinux.org) already named --
# never decide which commit gets audited. This suite's SHA-mismatch case is
# the proof: it hands download_package_to_tmpdir() a mirror branch with
# different (attacker-controlled, in a real attack) content than the
# canonical commit, and checks the audited PKGBUILD is the canonical one,
# not the mirror's.
#
# Fully offline: "aur.archlinux.org" and the "archlinux/aur mirror" are both
# synthetic bare git repositories under a temp dir, reached over local paths
# substituted in for the real URL at the subprocess boundary. No network, and
# no clone of the real archlinux/aur mirror (~2 GiB, irrelevant to what this
# suite proves).
#
# Usage: bash bench/test-aur-mirror.sh [-q]
set -euo pipefail

cd "$(dirname "$0")/.."

python3 - "$PWD/aur-sleuth" "${1:-}" <<'PY'
import importlib.machinery
import importlib.util
import os
import shutil
import subprocess
import sys
import tempfile
from pathlib import Path

path = sys.argv[1]
quiet = len(sys.argv) > 2 and sys.argv[2] == "-q"
loader = importlib.machinery.SourceFileLoader("aur_sleuth", path)
spec = importlib.util.spec_from_loader(loader.name, loader)
sleuth = importlib.util.module_from_spec(spec)
loader.exec_module(sleuth)

fails = 0
def check(name, cond, got=None):
    global fails
    if cond:
        if not quiet:
            print(f"  ok    {name}")
    else:
        print(f"  FAIL  {name}" + (f" (got {got!r})" if got is not None else ""))
        fails += 1

GIT_ENV = dict(os.environ)
GIT_ENV.update({
    "GIT_AUTHOR_NAME": "t", "GIT_AUTHOR_EMAIL": "t@t",
    "GIT_COMMITTER_NAME": "t", "GIT_COMMITTER_EMAIL": "t@t",
})

root = Path(tempfile.mkdtemp(prefix="aur-mirror-test-"))
work = root / "work"
work.mkdir()

def make_bare(name):
    d = root / name
    subprocess.run(["git", "init", "--quiet", "--bare", str(d)],
                    check=True, capture_output=True, text=True)
    # Fix HEAD explicitly rather than trust init.defaultBranch, which varies
    # by git version and local config.
    subprocess.run(["git", "--git-dir", str(d), "symbolic-ref", "HEAD", "refs/heads/master"],
                    check=True, capture_output=True, text=True)
    return d

def seed(content, pushes):
    """Commit a PKGBUILD with `content` in a throwaway worktree and push the
    same commit -- identical SHA -- to each (remote_path, branch) in pushes.
    Returns the commit SHA."""
    wt = Path(tempfile.mkdtemp(dir=root))
    (wt / "PKGBUILD").write_text(content)
    subprocess.run(["git", "init", "--quiet"], cwd=wt, env=GIT_ENV,
                    check=True, capture_output=True, text=True)
    subprocess.run(["git", "add", "PKGBUILD"], cwd=wt, env=GIT_ENV,
                    check=True, capture_output=True, text=True)
    subprocess.run(["git", "commit", "--quiet", "-m", "x"], cwd=wt, env=GIT_ENV,
                    check=True, capture_output=True, text=True)
    sha = subprocess.run(["git", "rev-parse", "HEAD"], cwd=wt, env=GIT_ENV,
                          check=True, capture_output=True, text=True).stdout.strip()
    for remote, branch in pushes:
        subprocess.run(["git", "push", "--quiet", str(remote), f"HEAD:refs/heads/{branch}"],
                        cwd=wt, env=GIT_ENV, check=True, capture_output=True, text=True)
    shutil.rmtree(wt)
    return sha

# --- the substitution boundary: "https://aur.archlinux.org/<pkgbase>.git" ---
# maps to a local bare repo path for the duration of one call. Everything
# else about download_package_to_tmpdir runs unmodified -- this is the one
# seam needed to keep the real function's own hardcoded canonical URL
# offline-testable.
_real_run = subprocess.run
_redirect = {}

def _redirecting_run(cmd, *a, **kw):
    if isinstance(cmd, list):
        cmd = [_redirect.get(c, c) for c in cmd]
    return _real_run(cmd, *a, **kw)

class FakeTui:
    def update_status(self, *a, **kw):
        pass

    def finalize_step(self, *a, **kw):
        pass

def fetch(package_name, canonical_repo, mirror_dir=None, clone_url=None):
    """Call the real download_package_to_tmpdir() with the canonical URL
    redirected to canonical_repo and AUR_SLEUTH_MIRROR_DIR set (or unset) as
    given. Returns the resulting package directory."""
    _redirect.clear()
    _redirect[f"https://aur.archlinux.org/{package_name}.git"] = str(canonical_repo)
    if mirror_dir is None:
        os.environ.pop("AUR_SLEUTH_MIRROR_DIR", None)
    else:
        os.environ["AUR_SLEUTH_MIRROR_DIR"] = str(mirror_dir)
    subprocess.run = _redirecting_run
    sleuth.resolve_pkgbase = lambda name: name
    try:
        return sleuth.download_package_to_tmpdir(FakeTui(), work, package_name, clone_url=clone_url)
    finally:
        subprocess.run = _real_run

def has_alternates(pkgdir):
    return (pkgdir / ".git" / "objects" / "info" / "alternates").is_file()

# =============================================================================
# Scenario A: mirror hit -- the mirror's branch is at the exact canonical SHA.
# =============================================================================
canonical_a = make_bare("canonical-a")
mirror = make_bare("mirror")  # one shared "big monorepo" mirror, like the real one
content_a = "pkgname=pkg-hit\npkgver=1\n"
sha_a = seed(content_a, [(canonical_a, "master"), (mirror, "pkg-hit")])

pkgdir = fetch("pkg-hit", canonical_a, mirror_dir=mirror)
check("mirror hit: PKGBUILD content is correct",
      (pkgdir / "PKGBUILD").read_text() == content_a)
check("mirror hit: HEAD matches the canonical SHA",
      subprocess.run(["git", "-C", str(pkgdir), "rev-parse", "HEAD"],
                      capture_output=True, text=True, check=True).stdout.strip() == sha_a)
check("mirror hit: materialized via --shared from the mirror (alternates present)",
      has_alternates(pkgdir))
shutil.rmtree(pkgdir)

# =============================================================================
# Scenario B: SHA mismatch -- the mirror's branch exists but points at a
# different commit than the canonical host. This is the security-critical
# case: the mirror's content must never reach the audit.
# =============================================================================
canonical_b = make_bare("canonical-b")
canonical_content_b = "pkgname=pkg-mismatch\npkgver=2\n"
malicious_content_b = "pkgname=pkg-mismatch\npkgver=EVIL-INJECTED\n"
sha_canonical_b = seed(canonical_content_b, [(canonical_b, "master")])
sha_mirror_b = seed(malicious_content_b, [(mirror, "pkg-mismatch")])
check("fixture sanity: canonical and mirror commits differ", sha_canonical_b != sha_mirror_b)

pkgdir = fetch("pkg-mismatch", canonical_b, mirror_dir=mirror)
check("SHA mismatch: audited content is the canonical content",
      (pkgdir / "PKGBUILD").read_text() == canonical_content_b)
check("SHA mismatch: audited content is NOT the mirror's content",
      (pkgdir / "PKGBUILD").read_text() != malicious_content_b)
check("SHA mismatch: HEAD is the canonical SHA, not the mirror's",
      subprocess.run(["git", "-C", str(pkgdir), "rev-parse", "HEAD"],
                      capture_output=True, text=True, check=True).stdout.strip() == sha_canonical_b)
check("SHA mismatch: fell back to a direct clone (no alternates)",
      not has_alternates(pkgdir))
shutil.rmtree(pkgdir)

# =============================================================================
# Scenario C: branch missing from the mirror -- a new or unmirrored package.
# =============================================================================
canonical_c = make_bare("canonical-c")
content_c = "pkgname=pkg-missing\npkgver=3\n"
seed(content_c, [(canonical_c, "master")])  # no push to `mirror` at all

pkgdir = fetch("pkg-missing", canonical_c, mirror_dir=mirror)
check("branch missing: falls back cleanly to the canonical content",
      (pkgdir / "PKGBUILD").read_text() == content_c)
check("branch missing: fell back to a direct clone (no alternates)",
      not has_alternates(pkgdir))
shutil.rmtree(pkgdir)

# =============================================================================
# Scenario D: feature disabled -- AUR_SLEUTH_MIRROR_DIR unset. Behavior must
# be identical to a direct clone, and the mirror path must never be entered.
# =============================================================================
canonical_d = make_bare("canonical-d")
content_d = "pkgname=pkg-disabled\npkgver=4\n"
seed(content_d, [(canonical_d, "master")])

_real_materialize = sleuth.materialize_from_mirror
def _boom(*a, **kw):
    raise AssertionError("materialize_from_mirror must not be called when disabled")
sleuth.materialize_from_mirror = _boom
try:
    pkgdir = fetch("pkg-disabled", canonical_d, mirror_dir=None)
finally:
    sleuth.materialize_from_mirror = _real_materialize
check("disabled: direct-clone content is correct",
      (pkgdir / "PKGBUILD").read_text() == content_d)
check("disabled: no alternates (a plain direct clone)",
      not has_alternates(pkgdir))
shutil.rmtree(pkgdir)

# =============================================================================
# Scenario E: --clone-url given -- the mirror must be skipped even though a
# working mirror_dir is configured. This rests on pkgbase staying None when
# clone_url is supplied (download_package_to_tmpdir only resolves pkgbase in
# the `if not clone_url:` branch); if that resolution were ever hoisted out of
# the branch, the mirror would silently start being consulted for a
# caller-chosen URL, which the mirror has no branch keyed for. Reuses the
# _boom guard from Scenario D.
# =============================================================================
canonical_e = make_bare("canonical-e")
content_e = "pkgname=pkg-explicit-url\npkgver=5\n"
seed(content_e, [(canonical_e, "master")])

sleuth.materialize_from_mirror = _boom
try:
    pkgdir = fetch("pkg-explicit-url", canonical_e, mirror_dir=mirror, clone_url=str(canonical_e))
finally:
    sleuth.materialize_from_mirror = _real_materialize
check("--clone-url: direct-clone content is correct",
      (pkgdir / "PKGBUILD").read_text() == content_e)
check("--clone-url: no alternates (mirror was never consulted)",
      not has_alternates(pkgdir))
shutil.rmtree(pkgdir)

# =============================================================================
# Small direct checks of the helpers, cheap and worth pinning on their own.
# =============================================================================
os.environ.pop("AUR_SLEUTH_MIRROR_DIR", None)
check("aur_mirror_dir(): unset means off", sleuth.aur_mirror_dir() is None)
os.environ["AUR_SLEUTH_MIRROR_DIR"] = "   "
check("aur_mirror_dir(): whitespace-only means off", sleuth.aur_mirror_dir() is None)
os.environ["AUR_SLEUTH_MIRROR_DIR"] = str(root / "does-not-exist")
check("aur_mirror_dir(): a path that is not a directory means off", sleuth.aur_mirror_dir() is None)
os.environ["AUR_SLEUTH_MIRROR_DIR"] = str(mirror)
check("aur_mirror_dir(): a real directory passes through", sleuth.aur_mirror_dir() == str(mirror))
os.environ.pop("AUR_SLEUTH_MIRROR_DIR", None)

check("git_ls_remote_head(): a path with no repository returns None",
      sleuth.git_ls_remote_head(str(root / "does-not-exist")) is None)
check("git_ls_remote_head(): the canonical repo resolves the pushed SHA",
      sleuth.git_ls_remote_head(str(canonical_a)) == sha_a)
check("git_head_sha(): a non-repository directory returns None",
      sleuth.git_head_sha(str(work)) is None)

missing_branch_dest = Path(tempfile.mkdtemp(dir=root))
missing_branch_dest.rmdir()
check("materialize_from_mirror(): a missing branch returns False, not an exception",
      sleuth.materialize_from_mirror(str(mirror), "no-such-pkg", "deadbeef" * 5, str(missing_branch_dest)) is False)

shutil.rmtree(root, ignore_errors=True)

if fails:
    print(f"FAILED: {fails} check(s)")
    sys.exit(1)
print("aur mirror: all checks passed")
PY
