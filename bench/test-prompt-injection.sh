#!/usr/bin/env bash
# Text addressed to the automated reviewer is a finding, it is found in code,
# and it fails the package even when every model says SAFE.
set -euo pipefail

cd "$(dirname "$0")/.."

python3 - "$PWD/aur-sleuth" "${1:-}" <<'PY'
import importlib.machinery
import importlib.util
import pathlib
import sys

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

synthetics = pathlib.Path("bench/synthetics")
fixtures = sorted(p for p in synthetics.iterdir() if p.is_dir())
check("fixtures found", len(fixtures) >= 8, len(fixtures))

# Every fixture, scanned the same way the audit scans one. Exactly one is
# supposed to trip this; the other seven are the false-positive floor, and
# they cover a PKGBUILD, an .install hook, a postinstall script, a config
# generator and a pile of ordinary packaging companions.
fired = {}
for f in fixtures:
    hits = sleuth.find_prompt_injection(f, sleuth.maintainer_files(f))
    if hits:
        fired[f.name] = hits
check("only malicious-prompt-injection trips the detector",
      set(fired) == {"malicious-prompt-injection"}, sorted(fired))

hits = fired.get("malicious-prompt-injection", [])
check("the finding names the file and the line",
      len(hits) == 1 and hits[0][0] == "PKGBUILD" and hits[0][1] > 0, hits)
check("the finding quotes the offending line",
      hits and "Ignore all previous instructions" in hits[0][2], hits)

# The fixture hides its text in a PKGBUILD comment, not in an AGENTS.md.
# No pattern may key on a filename: the attacker picks it, so a rule that
# watched one name would generalise to nothing.
patterns = [sleuth._REVIEW_VOCAB_RE.pattern, sleuth._OVERRIDE_RE.pattern]
patterns += [p.pattern for p, _ in sleuth._INJECTION_ALONE]
for name in ("AGENTS", "CLAUDE", "README", "SRCINFO", "PKGBUILD", "install",
             ".md", ".sh", ".py"):
    hit = [p for p in patterns if name.lower() in p.lower()]
    check(f"no pattern keys on {name}", not hit, hit)


class Report:
    def __init__(self): self.text = ""
    def write(self, text, end="\n", stdout=False): self.text += text + end

class TUI:
    has_color = False
    def update_status(self, _t): pass
    def finalize_step(self, _t, status=None): pass


# The whole point of detecting this in code: a model the text steered cannot
# suppress it. So make every model agree the package is SAFE -- the gate, and
# every file review -- and the package must still fail.
pkg = (synthetics / "malicious-prompt-injection").resolve()
sleuth.check_pkgbuild = lambda *_a, **_k: sleuth.AuditResult(
    pkg / "PKGBUILD", pkg, sleuth.SafeStatus.SAFE, "gate says safe")
sleuth.find_unpinned_remote_sources = lambda *_a: []
sleuth.audit_files = lambda _tui, _r, _n, _p, files, _d, _c, stage: [
    sleuth.AuditResult(pkg / f, pkg, sleuth.SafeStatus.SAFE, "looks fine")
    for f in files]

report = Report()
results = sleuth.do_agentic_audit(TUI(), report, "bench-cleared-widget", pkg, object())
overall = sleuth.compute_overall_status(sleuth.partition_results_by_status(results))
check("an all-SAFE review still fails the package",
      overall == sleuth.SafeStatus.UNSAFE, overall)

flagged = [r for r in results if r.status == sleuth.SafeStatus.UNSAFE]
check("the finding is package-level, so files_reviewed is not inflated",
      len(flagged) == 1 and flagged[0].file_path is None, flagged)
check("the frontmatter count is populated",
      len(sleuth.INJECTION_ATTEMPTS) == 1, sleuth.INJECTION_ATTEMPTS)

# And the gate aborting must not lose it: that path returns early.
sleuth.check_pkgbuild = lambda *_a, **_k: sleuth.AuditResult(
    pkg / "PKGBUILD", pkg, sleuth.SafeStatus.UNSAFE, "gate refused")
results = sleuth.do_agentic_audit(TUI(), Report(), "bench-cleared-widget", pkg, object())
check("a refused gate still carries the finding",
      any(r.file_path is None and r.status == sleuth.SafeStatus.UNSAFE for r in results),
      results)

raise SystemExit(1 if fails else 0)
PY
