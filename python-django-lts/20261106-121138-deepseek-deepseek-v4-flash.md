---
package: python-django-lts
pkgver: 5.2.19
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 8362
completion_tokens: 1503
total_tokens: 9865
cost: 0.001034488
execution_time: 48.82
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-06T12:11:38Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard metadata; no malicious content detected.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD; fetches official upstream artifacts, installs normally, no malicious behavior.
---

Materializing python-django-lts from local mirror...
Materialized python-django-lts
Analyzing python-django-lts AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` only sources the global/top-level scope of this PKGBUILD. All top-level statements are simple variable/array assignments (`pkgname`, `pkgver`, `source`, `sha256sums`, etc.) and static strings. There are no command substitutions, no `eval`, no network fetching, and no executable code at global scope. The `prepare()` and `package()` functions, which perform the actual download extraction and installation steps, are not executed during `--printsrcinfo`.

The `source` array references `files.pythonhosted.org` and `raw.githubusercontent.com`, which are normal upstream locations for this Django package, but these are not fetched or validated during this command. Checksums are provided, though even missing/SKIP checksums would not affect this gate. No genuinely malicious behavior is present in the top-level scope.
</details>
<evidence>
</evidence>
<summary>
Top-level PKGBUILD scope contains only static assignments; printsrcinfo is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD scope contains only static assignments; printsrcinfo is safe.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is a standard metadata file for an AUR package. It declares the package name, version, dependencies, and sources. All source URLs point to official, well-known locations: the Python Package Index (files.pythonhosted.org) for the Django wheel, and GitHub (raw.githubusercontent.com/django/django) for the bash completion script. Both sources include explicit SHA256 checksums, which are not set to SKIP. There are no instructions, commands, or obfuscated content in this file; it is purely declarative. No supply-chain attack indicators are present.
</details>
<evidence></evidence>
<summary>Standard metadata; no malicious content detected.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata; no malicious content detected.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Arch packaging practice for a Python package. It fetches the upstream Django wheel from files.pythonhosted.org and the official bash completion script from the django/django repository at the matching tagged version, both with pinned sha256 checksums. The prepare() function only extracts the dist-info/licenses directory from the wheel; package() installs the wheel with python -m installer into $pkgdir, creates symlinks to django-admin, installs the completion file, and copies license files. There is no obfuscated code, no eval/base64/curl-piped-to-shell, no network fetch at build time beyond the declared sources, and no modification of any files outside the package destination. No malicious or dangerous behavior is present.
</details>
<evidence>
</evidence>
<summary>
Standard PKGBUILD; fetches official upstream artifacts, installs normally, no malicious behavior.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD; fetches official upstream artifacts, installs normally, no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 8,362
  Completion Tokens: 1,503
  Total Tokens: 9,865
  Total Cost: $0.001034
  Execution Time: 48.82 seconds

Final Status: SAFE


No issues found.
