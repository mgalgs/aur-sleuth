#!/usr/bin/env bash
# Unit tests for bench/generate-dashboard.py's command line, and for how the
# page renders a community submission.
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
# The second half lifts the square-rendering functions out of
# bench/dashboard/app.js and runs them, so the attribution a community square
# carries on hover is asserted against the real code rather than described.
# That needs node, which nothing else here does; without it those checks say
# SKIP rather than failing, loudly enough to notice.
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
PY

# --- what a community square says when you hover it --------------------------
#
# A submission's square is the same muted advisory glyph every other advisory
# report gets -- no new readout, no new count. What is added is the title:
# who sent it and how far in they are, which is the whole of what a community
# report is worth. bench/test-ingest.sh proves the two values reach the page's
# JSON; this proves the page puts them on the square.

QUIET=false
[[ "${1:-}" == "-q" ]] && QUIET=true
fails=0
ok()  { $QUIET || printf '  ok    %s\n' "$1"; }
bad() { printf '  FAIL  %s\n' "$1"; fails=$(( fails + 1 )); }

if command -v node >/dev/null 2>&1; then
    lift() { sed -n "/^function $1(/,/^}/p" bench/dashboard/app.js; }
    html="$( { lift escapeAttr; lift shortModel; lift communityTitle; lift renderSquares
               cat <<'JS'
const audits = [
    {result: 'unsafe', model: 'openai/gpt-5.4', advisory: true, source: 'community',
     submitted_by: 'octocat', submitted_ring: '2'},
    {result: 'safe', model: 'openrouter/free', advisory: true},
    {result: 'unsafe', model: 'x/y', advisory: true, source: 'community',
     submitted_by: 'a"b', submitted_ring: '<3'},
];
process.stdout.write(renderSquares(audits, 'audit', {}));
JS
             } | node )"
    if grep -qF 'title="community — submitted by octocat, ring 2"' <<< "$html"; then
        ok "a community square attributes on hover"
    else
        bad "the community square carries no attribution: $html"
    fi
    if grep -qF 'sq sq-advisory' <<< "$html" \
       && ! grep -qF 'sq-unsafe' <<< "$html"; then
        ok "it is still the advisory glyph: no new readout, no new count"
    else
        bad "a community unsafe should render as the advisory square: $html"
    fi
    if grep -qF 'advisory — informational only, not a vote' <<< "$html"; then
        ok "an ordinary advisory square keeps its own title"
    else
        bad "the non-community advisory title was lost: $html"
    fi
    if grep -qF 'a&quot;b' <<< "$html" && grep -qF '&lt;3' <<< "$html" \
       && ! grep -qF 'by a"b' <<< "$html"; then
        ok "both values are escaped as attribute text"
    else
        bad "the attribution is not escaped: $html"
    fi

    # --- what a report's meta line says it measured -------------------------
    #
    # The ingest strips a submission's cost and execution time, because a
    # submission spent none of this deployment's money. The page has to carry
    # that through: an omitted measurement is omitted, never a zero that reads
    # like a real audit which happened to cost nothing.
    metas="$( { lift shortModel; lift fmtNum; lift reportMeta
                cat <<'JS'
const community = {model: 'openai/gpt-5.4', date: '2026-08-28T09:00:00Z',
                   source: 'community', submitted_by: 'octocat', files_reviewed: '7'};
const measured = {model: 'openai/gpt-5.4', date: '2026-08-28T09:00:00Z',
                  files_reviewed: '0', cost: '0', execution_time: '0'};
process.stdout.write(reportMeta(community) + '\n' + reportMeta(measured) + '\n');
JS
              } | node )"
    if [[ "$(head -1 <<< "$metas")" != *'$'* && "$(head -1 <<< "$metas")" != *'0s'* ]]; then
        ok "a community report claims no cost and no run time"
    else
        bad "a community report was given a measurement it does not carry: $metas"
    fi
    # `$0.0000` is the literal the page prints, not an expansion.
    # shellcheck disable=SC2016
    if [[ "$(sed -n 2p <<< "$metas")" == *'$0.0000'*'0s'* ]]; then
        ok "a real audit that measured zero still says zero"
    else
        bad "a measured zero should still be shown: $metas"
    fi
    if [[ "$(head -1 <<< "$metas")" == *'7 files'* ]]; then
        ok "the file count, which the ingest does not strip, survives"
    else
        bad "the submitted file count was dropped: $metas"
    fi

    # --- which models the diagram gives a seat to ---------------------------
    #
    # auditRow() sorts a model into the seat row or the advisory row by
    # whether its advisory reports outnumber its votes. A submission names
    # whichever model the contributor ran, so counting submissions there let
    # five of them naming the paid model push that model out of the seat row
    # -- the deployment's own picture of itself, rewritten from outside it.
    # The generator's half of this is proved in bench/test-coverage.sh.
    row="$( { lift auditRow
              cat <<'JS'
const vote = {model: 'openai/gpt-5.4', result: 'safe'};
const sent = {model: 'openai/gpt-5.4', result: 'safe', advisory: true, source: 'community'};
const free = {model: 'openrouter/free', result: 'safe', advisory: true};
globalThis.DATA = {
    summary: {week: {by_model: {'openai/gpt-5.4': 1, 'openrouter/free': 1}}},
    packages: {
        p1: {audits: [vote, free]},
        c1: {audits: [sent]}, c2: {audits: [sent]}, c3: {audits: [sent]},
        c4: {audits: [sent]}, c5: {audits: [sent]},
    },
};
const r = auditRow();
process.stdout.write(JSON.stringify({seat: r.seat.map(b => b.model),
                                     advisory: r.advisory.map(b => b.model)}));
JS
            } | node )"
    if [[ "$row" == '{"seat":["openai/gpt-5.4"],"advisory":["openrouter/free"]}' ]]; then
        ok "submissions naming the seat model do not unseat it"
    else
        bad "the seat row was moved by community reports: $row"
    fi
else
    # Nothing else in this repository needs node, so a machine without it is
    # not a regression -- but the skip is printed even under -q, because a
    # check nobody runs is the same as no check.
    printf '  SKIP  node is not installed; app.js was not executed here\n'
fi

if (( fails )); then
    printf 'FAILED: %d check(s)\n' "$fails"
    exit 1
fi
$QUIET || echo "all checks passed"
