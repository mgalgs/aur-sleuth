---
package: pi-coding-agent-bin
pkgver: 0.84.4
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 8532
completion_tokens: 2906
total_tokens: 11438
cost: 0.001270964464
execution_time: 43.89
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: ok
upstream_files: 215
upstream_named_files: 0
unpinned_sources: 0
date: 2026-08-31T11:06:26Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard prebuilt binary PKGBUILD with pinned checksums; no malicious behavior found.
---

Cloning https://aur.archlinux.org/pi-coding-agent-bin.git...
Cloned pi-coding-agent-bin
Analyzing pi-coding-agent-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD defines static variables and source URLs in the global scope, and does not contain a `pkgver()` function. No top-level commands, `eval`, `curl`, `wget`, or other dangerous operations are present. The only actions performed during the specified `makepkg` commands are fetching the sources and extracting archives from the project's own GitHub repository, which is standard and expected for an AUR package. There is no code that could execute malicious behavior during sourcing or fetching.
</details>
<evidence>
</evidence>
<summary>No malicious code in global scope or pkgver().</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code in global scope or pkgver().
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Reviewing the 2 file(s) in the AUR repository. The 215 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a metadata-only declarative file for the AUR package `pi-coding-agent-bin`. It contains no executable code, no scripts, no network requests, and no file operations. All sources point to the official GitHub releases of the upstream project (`earendil-works/pi`) over HTTPS, and all checksums are pinned with explicit SHA-256 values (none are set to "SKIP"). Dependencies and optional dependencies are standard and appropriate for a coding agent. There is no evidence of obfuscation, backdoors, data exfiltration, or any other supply-chain attack indicators. This file is consistent with normal AUR packaging practices.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file, no malicious content.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>This PKGBUILD follows standard AUR packaging practices for a prebuilt binary package. The binary tarballs are downloaded from the project's own GitHub releases (earendil-works/pi) at a pinned version tag (v0.84.4), and all sources, including the LICENSE file, have concrete sha256 checksums, so integrity is verified by makepkg. The package() function only installs the extracted bundle into /opt, creates a /usr/bin/pi symlink, and installs the license file; there are no build-time downloads, no shell code beyond the install commands, no obfuscation, and no network or system-modifying behavior outside normal packaging.

The !strip/!debug/!lto options are documented as necessary for the prebuilt Bun standalone binary and are benign. There are no prepare()/build() steps that fetch or execute untrusted content at build time. I find no evidence of malicious code, data exfiltration, backdoors, or unexpected host access.</details>
<evidence></evidence>
<summary>Standard prebuilt binary PKGBUILD with pinned checksums; no malicious behavior found.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard prebuilt binary PKGBUILD with pinned checksums; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 8,532
  Completion Tokens: 2,906
  Total Tokens: 11,438
  Total Cost: $0.001271
  Execution Time: 43.89 seconds

Final Status: SAFE


No issues found.
