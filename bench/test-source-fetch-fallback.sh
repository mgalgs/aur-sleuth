#!/usr/bin/env bash
# A failed upstream download must not suppress review of the maintainer's
# repository files. Downloaded files are outside aur-sleuth's threat model.
set -euo pipefail

cd "$(dirname "$0")/.."

python3 - "$PWD/aur-sleuth" "${1:-}" <<'PY'
import importlib.machinery
import importlib.util
import pathlib
import sys
import tempfile

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

class Report:
    def __init__(self):
        self.text = ""
    def write(self, text):
        self.text += text

class TUI:
    has_color = False
    def update_status(self, _text, report_msg=None): pass
    def finalize_step(self, _text, status=None, report_msg=None): pass

with tempfile.TemporaryDirectory() as d:
    pkg = pathlib.Path(d)
    (pkg / "PKGBUILD").write_text("pkgname=x\npkgver=1\npkgrel=1\n", encoding="utf-8")
    (pkg / "readme.sh").write_text("#!/bin/sh\necho instructions\n", encoding="utf-8")

    safe = sleuth.AuditResult(pkg / "PKGBUILD", pkg, sleuth.SafeStatus.SAFE, "gate safe")
    reviewed = []
    sleuth.check_pkgbuild = lambda *_args, **_kwargs: safe
    sleuth.download_sources = lambda *_args, **_kwargs: False
    sleuth.find_unpinned_remote_sources = lambda *_args: []
    sleuth.count_upstream_files = lambda *_args: (_ for _ in ()).throw(
        AssertionError("must not inspect partial downloads"))
    sleuth.find_upstream_invocations = lambda *_args: (_ for _ in ()).throw(
        AssertionError("must not inspect partial downloads"))
    def audit_files(_tui, _report, _name, _pkg, files, _desc, _client, stage):
        reviewed.extend(files)
        return [sleuth.AuditResult(pkg / f, pkg, sleuth.SafeStatus.SAFE, "reviewed") for f in files]
    sleuth.audit_files = audit_files

    report = Report()
    results = sleuth.do_agentic_audit(TUI(), report, "x", pkg, object())
    check("download failure still audits maintainer files",
          reviewed == [pathlib.Path("PKGBUILD"), pathlib.Path("readme.sh")], reviewed)
    check("result comes from file audits, not a package skip",
          all(r.status == sleuth.SafeStatus.SAFE and r.file_path for r in results), results)
    check("fetch failure is retained as a diagnostic",
          sleuth.SOURCE_FETCH_STATUS[0] == "failed" and "continuing" in report.text,
          (sleuth.SOURCE_FETCH_STATUS[0], report.text))
    check("partial upstream facts remain empty",
          sleuth.UPSTREAM_FILE_COUNT[0] == 0 and sleuth.UPSTREAM_NAMED == [],
          (sleuth.UPSTREAM_FILE_COUNT, sleuth.UPSTREAM_NAMED))

raise SystemExit(1 if fails else 0)
PY
