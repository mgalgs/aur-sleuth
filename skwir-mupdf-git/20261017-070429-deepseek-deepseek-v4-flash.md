---
package: skwir-mupdf-git
pkgbase: skwir-git
pkgver: 0.1.0.r51.g17cf86d
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 13385
completion_tokens: 2570
total_tokens: 15955
cost: 0.001685775
execution_time: 63.22
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-17T07:04:28Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Metadata file with no executable content; standard and safe.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD for skwir, no malicious signs.
---

skwir-mupdf-git is built from skwir-git
Materializing skwir-mupdf-git from local mirror...
Materialized skwir-mupdf-git
Analyzing skwir-mupdf-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>The PKGBUILD contains no command substitutions, eval statements, or other code execution in the global scope. All variable definitions (source, pkgver, etc.) are simple string assignments or arrays. Function bodies (pkgver, prepare, build, package_*) are only defined, not invoked, at source time. Therefore, running `makepkg --printsrcinfo` to parse this file does not execute any malicious code. The content is consistent with a standard AUR packaging script.</details>
<evidence></evidence>
<summary>Safe to run makepkg --printsrcinfo on this PKGBUILD.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe to run makepkg --printsrcinfo on this PKGBUILD.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a metadata-only declarative file used by Arch Linux package managers to describe the package. It contains no executable code, no shell commands, no network requests beyond standard upstream source URLs (GitHub for the main project and pdfium binaries), and no obfuscated or encoded content. Checksums are properly provided for the pdfium tarballs, and `SKIP` for the VCS source is normal AUR practice. There is no evidence of malicious behavior, data exfiltration, backdoors, or unusual system modifications.
</details>
<evidence></evidence>
<summary>Metadata file with no executable content; standard and safe.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Metadata file with no executable content; standard and safe.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices. Source is fetched from the upstream GitHub repository (git) and PDFium binaries are downloaded from the official pdfium-binaries GitHub releases with pinned SHA‑256 checksums. Build steps use `cargo build --frozen`, which respects the locked dependency graph and is reproducible. Installation places binaries and supporting files into the standard directories under `$pkgdir`. There are no suspicious network requests, obfuscated commands, `eval`/`base64`, or unexpected file operations that would indicate a supply‑chain attack. The only dynamic check in `prepare()` verifies that upstream&#x27;s pdfium.lock matches the package&#x27;s pinned PDFium version, which is a legitimate consistency guard.
</details>
<evidence>
</evidence>
<summary>Standard AUR PKGBUILD for skwir, no malicious signs.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD for skwir, no malicious signs.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,385
  Completion Tokens: 2,570
  Total Tokens: 15,955
  Total Cost: $0.001686
  Execution Time: 63.22 seconds

Final Status: SAFE


No issues found.
