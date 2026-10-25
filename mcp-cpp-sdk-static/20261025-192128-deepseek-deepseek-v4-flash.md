---
package: mcp-cpp-sdk-static
pkgbase: mcp-cpp-sdk
pkgver: 0.2.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 9260
completion_tokens: 5472
total_tokens: 14732
cost: 0.001838564
execution_time: 103.71
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 1
injection_attempts: 0
date: 2026-10-25T19:21:28Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with no malicious code.
---

mcp-cpp-sdk-static is built from mcp-cpp-sdk
Materializing mcp-cpp-sdk-static from local mirror...
Materialized mcp-cpp-sdk-static
Analyzing mcp-cpp-sdk-static AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources only the global/top-level scope of this PKGBUILD. The global scope consists solely of standard metadata variable assignments: pkgbase, pkgname, pkgver, pkgrel, pkgdesc, arch, url, license, options, depends, makedepends, source, sha256sums, and validpgpkeys. There are no top-level command substitutions, backticks, eval-style constructs, network-fetching expressions, or file-modifying operations. The `source` array references the upstream GitHub release tarball and its `.asc` signature; the `${pkgver}` expansion is a plain variable substitution. The `prepare()`, `build()`, and `package_*()` functions contain the only operational commands, and those are not executed by `makepkg --printsrcinfo`. The `SKIP` checksum on the signature file is out of scope for this narrow gate and is not a safety issue at parse time.
</details>
<evidence>
</evidence>
<summary>
Global scope is only metadata assignments; no malicious top-level code executes. Safe.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Global scope is only metadata assignments; no malicious top-level code executes. Safe.
Note: 1 remote source(s) have no checksum (sha256sums=SKIP), so the bytes are not verifiable: mcp-cpp-sdk-0.2.0.tar.gz.asc::https://github.com/yurirocha15/mcp-cpp-sdk/releases/download/v0.2.0/mcp-cpp-sdk-0.2.0.tar.gz.asc
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `.SRCINFO` is pure metadata describing the package structure and sources. It defines package name, version, dependencies, upstream URL, source tarball and signature URLs, a PGP key fingerprint, and checksums. There are no executable commands, no network operations, and no obfuscated content. The `&gt;` entities are standard escaping for version constraints (e.g., `>=`). The presence of a SKIP checksum alongside a real one is normal for detached signature files. The upstream URL points to a GitHub repository (likely the author's fork), which is a routine practice for AUR packages. No security concerns are present in this file.</details>
<evidence></evidence>
<summary>Standard AUR metadata, no security issues.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard Arch packaging practices. It downloads a source tarball and signature from the declared upstream GitHub releases, verifies the tarball with a provided SHA256 checksum, and performs a GPG signature verification using a key extracted from the tarball itself while checking hardcoded key fingerprints. The prepare() function runs a Python script from the source to verify the signature status; this is part of the upstream's integrity verification, not injected code. The build() runs cmake and ctest as expected. No obfuscated code, unexpected network requests, file exfiltration, or backdoors are present. The key-import-from-tarball pattern is a trust‑hygiene concern but not evidence of malice.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with no malicious code.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with no malicious code.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 9,260
  Completion Tokens: 5,472
  Total Tokens: 14,732
  Total Cost: $0.001839
  Execution Time: 103.71 seconds

Final Status: SAFE


No issues found.
