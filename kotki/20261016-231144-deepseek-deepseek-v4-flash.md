---
package: kotki
pkgver: 0.6.0.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 13522
completion_tokens: 1673
total_tokens: 15195
cost: 0.001534988
execution_time: 34.93
files_reviewed: 4
files_skipped: 1
maintainer_files: 5
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-16T23:11:44Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR package metadata with upstream source and checksums; no security issues found.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file; no security issues found.
  - file: kotki-0.6.0-1.tar.gz
    status: skipped
    summary: "Skipping binary file: kotki-0.6.0-1.tar.gz"
  - file: fix-pykotki.patch
    status: safe
    summary: Legitimate build-configuration patch; no malicious or suspicious behavior found.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with pinned upstream source and checksums; no malicious behavior found.
---

Materializing kotki from local mirror...
Materialized kotki
Analyzing kotki AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources only the global/top-level scope of this PKGBUILD. The global scope contains only static variable assignments, array definitions (`pkgname`, `makedepends`, `source`, `sha256sums`), and function definitions for `prepare()`, `build()`, and the two `package_*()` functions. There are no top-level command substitutions, no `eval`, no `curl`/`wget`, no encoded payloads, and no file-modifying or network operations that would execute during sourcing.

The `prepare()`, `build()`, and `package_*()` functions contain build/install logic that will be audited in the full review, but none of that code runs during `makepkg --printsrcinfo`. The source URLs point to the package&#39;s own upstream GitHub project, and checksums are pinned rather than skipped. No supply-chain indicators are present at this gate.
</details>
<evidence>
</evidence>
<summary>
Global scope is static; only variable and function definitions execute. Safe for printsrcinfo.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Global scope is static; only variable and function definitions execute. Safe for printsrcinfo.
Reviewing the 5 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, .gitignore...
[0/5] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file describes a standard AUR package for `kotki`, a translation engine. It declares sources from the project's own upstream GitHub repository (`https://github.com/terslang/kotki`) plus a local patch file, with SHA-256 checksums provided for both. Dependencies and package splits (`kotki` and `python-kotki`) are consistent with normal packaging practice.

No suspicious network destinations, obfuscated commands, eval/base64 tricks, unexpected file operations, or attempts to exfiltrate data appear in this file. This is a routine package metadata file and does not exhibit supply-chain attack indicators.
</details>
<evidence>
</evidence>
<summary>
Standard AUR package metadata with upstream source and checksums; no security issues found.
</summary>
</security_assessment>

[0/5] Reviewing .SRCINFO, .gitignore, PKGBUILD, fix-pykotki.patch...
[1/5] Reviewing .gitignore, PKGBUILD, fix-pykotki.patch...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR package metadata with upstream source and checksums; no security issues found.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` used in an Arch Linux packaging repository. It lists build artifacts and intermediate directories such as `*.pkg.tar.*`, `src/`, `pkg/`, and `chroot/`, which are normal outputs of `makepkg` and related tooling.

No network requests, no encoded or obfuscated content, no file operations beyond standard ignore patterns, and no commands are present. There is nothing in this file that deviates from ordinary AUR packaging practice or that could constitute malicious behavior.
</details>
<evidence>
</evidence>
<summary>
Standard .gitignore file; no security issues found.</summary>
</security_assessment>

[2/5] Reviewing PKGBUILD, fix-pykotki.patch...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore file; no security issues found.
[2/5] Reviewing PKGBUILD, fix-pykotki.patch, kotki-0.6.0-1.tar.gz...
[3/5] Reviewing PKGBUILD, fix-pykotki.patch...
! Reviewed kotki-0.6.0-1.tar.gz. Status: SKIPPED -- Skipping binary file: kotki-0.6.0-1.tar.gz
LLM auditresponse for fix-pykotki.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch only adjusts the build configuration for the Python bindings of kotki. It removes an unnecessary include of `project_version.h` and modifies `CMakeLists.txt` so the bindings link against either the system-installed kotki (`kotki::kotki-lib-SHARED`) or the vendored in-tree target (`kotki-lib`) depending on a `VENDORED_LIBS` option. This is a standard, transparent packaging/building change and contains no hidden commands, network activity, encoded payloads, or file operations outside the normal build process.
</details>
<evidence></evidence>
<summary>
Legitimate build-configuration patch; no malicious or suspicious behavior found.</summary>
</security_assessment>

[4/5] Reviewing PKGBUILD...
+ Reviewed fix-pykotki.patch. Status: SAFE -- Legitimate build-configuration patch; no malicious or suspicious behavior found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practice. It downloads a pinned upstream release tarball from the project's own GitHub repository and verifies both source files with fixed SHA-256 checksums. There are no suspicious network requests, no encoded or obfuscated commands, and no dangerous shell constructs such as `eval`, `curl | bash`, or `base64` decoding.

The `prepare()` function applies a local patch and uses `sed` to adjust build flags in `setup.py`, which is normal build-time customization. The `build()` and package functions only invoke the upstream build system (`cmake`, `python -m build`, `python -m installer`) and install files into the staging directory and `$pkgdir`, as expected. No exfiltration, backdoors, credential access, or unexpected system modifications were found.
</details>
<evidence>
</evidence>
<summary>
Standard PKGBUILD with pinned upstream source and checksums; no malicious behavior found.
</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with pinned upstream source and checksums; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
(Skipped 1 file: kotki-0.6.0-1.tar.gz)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,522
  Completion Tokens: 1,673
  Total Tokens: 15,195
  Total Cost: $0.001535
  Execution Time: 34.93 seconds

Final Status: SAFE


No issues found.


Audit Skips:

kotki-0.6.0-1.tar.gz: [SKIPPED] Skipping binary file: kotki-0.6.0-1.tar.gz
