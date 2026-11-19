---
package: codebase-memory-mcp-ui-bin
pkgbase: codebase-memory-mcp-bin
pkgver: 0.12.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 9160
completion_tokens: 1966
total_tokens: 11126
cost: 0.001191372
execution_time: 45.36
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-20T11:21:35Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD, no malicious behavior found.
  - file: .SRCINFO
    status: safe
    summary: "Safe: standard metadata, duplicate checksum is a typo."
---

codebase-memory-mcp-ui-bin is built from codebase-memory-mcp-bin
Materializing codebase-memory-mcp-ui-bin from local mirror...
Materialized codebase-memory-mcp-ui-bin
Analyzing codebase-memory-mcp-ui-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources the PKGBUILD top-level scope. The top-level code consists of standard variable/array definitions, checksum arrays, and source arrays. The only executable top-level construct is a `for` loop that builds and `eval`s package function definitions from the hardcoded `_pkgdescs` and `_srcdirs` arrays. Although `eval` is used, it only defines `package_*` functions; it does not invoke them and contains no external input, command substitution, network access, or file modification. No `prepare()`, `build()`, or `package()` functions run during this step. The contents of those functions (including the `tar` extraction in `prepare()` and `install` commands) are out of scope for this narrow gate.
</details>
<evidence>
</evidence>
<summary>
Top-level code only defines static functions; no malicious execution at source time.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level code only defines static functions; no malicious execution at source time.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard split-package definition that downloads prebuilt binaries from the official GitHub releases of the upstream project `DeusData/codebase-memory-mcp`. All source URLs point to the project's own release assets with pinned version `0.12.1`. Checksums (`sha512sums`) are provided and not set to `SKIP`, ensuring integrity of the downloaded archives. The `prepare()` function simply extracts the UI tarball into a subdirectory. The `eval` usage is a common AUR pattern to dynamically generate package functions for split packages; it operates solely on variables defined within the PKGBUILD (the `pkgname` array and associated associative arrays) and does not evaluate any external or untrusted input. No suspicious network requests, obfuscated code, unexpected file operations, or backdoor-like behavior is present. The file follows normal AUR packaging practices.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD, no malicious behavior found.</summary>
</security_assessment>

[1/2] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD, no malicious behavior found.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file is standard packaging metadata for an AUR binary package. All source URLs point to the official GitHub releases of the project (`https://github.com/DeusData/codebase-memory-mcp`). Checksums (SHA-512) are provided for all sources, though there is a noticeable error: the two x86_64 tarballs (main binary and UI) share the same checksum value, which is likely a copy-paste mistake. This is a packaging quality issue, not evidence of malicious intent. No obfuscated code, dangerous commands, or unexpected network destinations are present. The file contains no executable code and does not deviate from normal AUR packaging practices.
</details>
<evidence>
</evidence>
<summary>Safe: standard metadata, duplicate checksum is a typo.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Safe: standard metadata, duplicate checksum is a typo.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 9,160
  Completion Tokens: 1,966
  Total Tokens: 11,126
  Total Cost: $0.001191
  Execution Time: 45.36 seconds

Final Status: SAFE


No issues found.
