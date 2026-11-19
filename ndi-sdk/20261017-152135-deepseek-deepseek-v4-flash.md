---
package: ndi-sdk
pkgver: 6.3.2.0.20260413.g5396c5f15
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 8570
completion_tokens: 1486
total_tokens: 10056
cost: 0.001050322
execution_time: 25.1
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-17T15:21:33Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with pinned official source; no malicious behavior found.
  - file: PKGBUILD
    status: safe
    summary: "Safe: official upstream source, pinned checksum, standard extraction and packaging only."
---

Materializing ndi-sdk from local mirror...
Materialized ndi-sdk
Analyzing ndi-sdk AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's top-level scope contains only variable assignments and array definitions. No command substitutions, function calls, or other executable statements exist at the global level. The `prepare()`, `build()`, and `package()` functions contain shell commands, but these are not executed during `makepkg --printsrcinfo`. Therefore, sourcing this PKGBUILD is safe.
</details>
<evidence></evidence>
<summary>No dangerous top-level code.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO is standard AUR package metadata for the NDI SDK. It declares the upstream source from the official vendor domain (downloads.ndi.tv) with a pinned SHA-256 checksum, lists normal dependencies (avahi, glibc), and sets packaging options such as `!debug` and `!strip`. There is no embedded code, no download-and-execute behavior, no obfuscation, and no suspicious file or network operations.

The `noextract` entry and the use of a prebuilt vendor tarball are consistent with packaging a binary SDK. The checksum is pinned rather than skipped, which is good practice. No evidence of malicious or supply-chain-injected behavior was found in this file.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata with pinned official source; no malicious behavior found.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with pinned official source; no malicious behavior found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows normal AUR packaging practices. The source tarball is fetched from the official NDI downloads domain (`downloads.ndi.tv`) and has a pinned sha256 checksum. No unusual or unexpected network requests occur during `prepare()` or `package()`.

The `prepare()` function extracts a self-extracting installer script by locating the `__NDI_ARCHIVE_BEGIN__` marker and piping the remainder to `tar`. This is a standard technique for unpacking the payload of such installer scripts and does not execute the installer script or any untrusted code. The `package()` function only installs binaries, headers, libraries, documentation, and license files into `$pkgdir`. There is no obfuscation, credential access, data exfiltration, or execution of downloaded code outside the normal packaging workflow.
</details>
<evidence>
</evidence>
<summary>
Safe: official upstream source, pinned checksum, standard extraction and packaging only.
</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Safe: official upstream source, pinned checksum, standard extraction and packaging only.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 8,570
  Completion Tokens: 1,486
  Total Tokens: 10,056
  Total Cost: $0.001050
  Execution Time: 25.10 seconds

Final Status: SAFE


No issues found.
