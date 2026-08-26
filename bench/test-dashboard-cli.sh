#!/usr/bin/env bash
# Unit test for bench/generate-dashboard.py's command line.
#
# The no-argument path commits to the audit-reports branch, and every
# unrecognised argument used to fall through to it: running the script with
# `--help` rebuilt the page and rewrote the branch. This proves the guard
# that closed that -- an unknown flag, or a flag missing its value, exits
# non-zero before any report is read and before anything is committed.
#
# load_reports and commit_to_branch are replaced with functions that raise,
# so a regression fails here loudly instead of writing to a real branch.
#
# Costs nothing: no model is called, no network is touched, no git is run.
#
# Usage: bash bench/test-dashboard-cli.sh [-q]
set -euo pipefail

cd "$(dirname "$0")/.."

python3 - "$PWD/bench/generate-dashboard.py" "${1:-}" <<'PY'
import contextlib, importlib.util, io, sys

spec = importlib.util.spec_from_file_location("gd", sys.argv[1])
gd = importlib.util.module_from_spec(spec)
spec.loader.exec_module(gd)  # __name__ != "__main__", so main() does not run

quiet = len(sys.argv) > 2 and sys.argv[2] == "-q"
fails = 0
def check(name, cond):
    global fails
    if cond:
        if not quiet:
            print(f"  ok    {name}")
    else:
        print(f"  FAIL  {name}")
        fails += 1

# The two doors to a repository. If the guard ever lets an argument through
# to the committing path again, the test fails on this instead of on git.
class Touched(Exception):
    pass

def refuse(*a, **k):
    raise Touched("the command line reached a repository")

gd.load_reports = refuse
gd.commit_to_branch = refuse
gd.git = refuse


def run(argv):
    """main() with this argv. Returns (exit_code, stdout, stderr); exit code
    is None when it returned rather than exiting."""
    out, err, code = io.StringIO(), io.StringIO(), None
    argv_was = sys.argv
    sys.argv = ["generate-dashboard.py"] + argv
    try:
        with contextlib.redirect_stdout(out), contextlib.redirect_stderr(err):
            gd.main()
    except SystemExit as e:
        code = e.code
    finally:
        sys.argv = argv_was
    return code, out.getvalue(), err.getvalue()


# --- --help prints usage, and reads nothing ---------------------------------
for flag in ("--help", "-h"):
    code, out, err = run([flag])
    check(f"{flag} exits cleanly", code is None)
    check(f"{flag} writes usage to stdout", out.startswith("usage: generate-dashboard.py"))
    check(f"{flag} says the bare form commits", "COMMIT" in out)

# --help wins wherever it sits, so a half-typed command line still explains
# itself rather than running.
code, out, _ = run(["--emit", "/nonexistent", "--help"])
check("--help after other flags still only prints usage", code is None and out.startswith("usage:"))

# --- an unrecognised argument is an error, not a commit ---------------------
for argv in (["--helpp"], ["--emiit", "/tmp/x"], ["-x"], ["nonsense"], ["--emit", "/tmp/x", "--wat"]):
    code, out, err = run(argv)
    check(f"{' '.join(argv)} exits 2", code == 2)
    check(f"{' '.join(argv)} names the argument", "Unrecognised argument" in err)
    check(f"{' '.join(argv)} prints usage on stderr", "usage: generate-dashboard.py" in err)
    check(f"{' '.join(argv)} writes nothing to stdout", out == "")

# --- a flag missing its value is an error too -------------------------------
for flag in sorted(gd.VALUE_FLAGS):
    code, out, err = run([flag])
    check(f"{flag} with no value exits 2", code == 2)
    check(f"{flag} with no value says so", f"{flag} needs a value" in err)

# --- the flags the container actually passes are accepted -------------------
# deploy/container/scripts/entrypoint.sh runs both of these. Neither reaches
# a repository here: --print-html never does, and --emit stops at the refuse
# above, which is a Touched and not a SystemExit.
code, out, _ = run(["--print-html"])
check("--print-html returns HTML", code is None and out.lstrip().startswith("<!DOCTYPE html>"))

try:
    run(["--git-dir", "/tmp/r", "--ref", "head", "--emit", "/tmp/o",
         "--aur-metadata", "/tmp/m.gz", "--effective", "/tmp/e.json"])
    accepted = False
except Touched:
    accepted = True   # got past the guard, stopped at the first git call
check("the publish stage's full flag set is accepted", accepted)

# Every flag named in the usage text is one the guard knows, so the two
# cannot drift apart.
for flag in gd.VALUE_FLAGS | gd.BARE_FLAGS:
    check(f"{flag} is documented in the usage text", flag in gd.USAGE)

if fails:
    print(f"FAILED: {fails} check(s)")
    sys.exit(1)
if not quiet:
    print("all checks passed")
PY
