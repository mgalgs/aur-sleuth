---
package: claude-desktop-extra
pkgver: 4.23118.0
pkgrel: 3
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 20357
completion_tokens: 9297
total_tokens: 29654
cost: 0.003544541
execution_time: 112.14
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-06T04:03:16Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Metadata only, no executable code, no malicious indicators.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with pinned checksums; no malicious behavior.
  - file: claude-desktop-extra.install
    status: safe
    summary: Standard packaging script; no malicious behavior.
---

Materializing claude-desktop-extra from local mirror...
Materialized claude-desktop-extra
Analyzing claude-desktop-extra AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The global/top-level scope of this PKGBUILD—the only code executed by `makepkg --printsrcinfo`—contains only standard declarative statements: comments, variable assignments (strings and arrays for `pkgname`, `pkgver`, `depends`, `source`, `sha256sums`, etc.), and a function definition for `package()`. There are no command substitutions (`$(...)`), backticks, `eval` calls, network requests, or file operations that would execute during sourcing. The `source` arrays point to pre-built tarballs on the project's own GitHub releases page, and the corresponding `sha256sums` are pinned to specific cryptographic hashes rather than `SKIP`, providing integrity verification when sources are later downloaded. The `package()` function, while detailed, is a function definition and is not invoked during metadata parsing. No obfuscated or encoded commands are present. Therefore, running `makepkg --printsrcinfo` on this PKGBUILD poses no risk of executing malicious code at this stage.
</details>
<evidence>
</evidence>
<summary>Global scope is purely declarative; no executable commands.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Global scope is purely declarative; no executable commands.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, claude-desktop-extra.install...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is a metadata descriptor for an AUR package. It contains no executable code, no obfuscated strings, no network requests, and no file operations. The source tarballs are fetched from the maintainer's GitHub releases with pinned checksums (SHA256). The dependencies and optional dependencies are all standard libraries and tools for a desktop application that runs Electron and offers features like Computer Use, MCP extensions, and VM coworking. There is no evidence of a supply-chain attack; the file simply declares package metadata.

The only potential concern is that the source is hosted on the package maintainer's GitHub rather than the official Claude Desktop upstream. However, this is expected for an AUR package that adds "extra features" on top of the official build. The checksums are pinned, which reduces risk. No malicious behavior is present.
</details>
<evidence></evidence>
<summary>Metadata only, no executable code, no malicious indicators.</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, claude-desktop-extra.install...
+ Reviewed .SRCINFO. Status: SAFE -- Metadata only, no executable code, no malicious indicators.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a well-structured, transparent packaging script that follows standard Arch Linux/AUR practices. The package downloads a pre-built tarball from the maintainer's GitHub releases with **pinned SHA256 checksums** for both x86_64 and aarch64 architectures—this is a best practice and ensures integrity. All operations in `package()` are standard: installing files under `/usr/lib/claude-desktop`, setting the SUID bit on the Chromium sandbox (expected for Electron apps), creating desktop entries, icons, MIME types, and a small JSON release stamp. There are no `curl|bash`, `eval`, base64-decoded blobs, unexpected network requests, or file operations outside the package's own install prefix. The script validates that expected files exist in the tarball before proceeding, which is good defensive packaging. No evidence of data exfiltration, backdoors, credential theft, or code execution from untrusted sources exists in this file.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with pinned checksums; no malicious behavior.</summary>
</security_assessment>

[2/3] Reviewing claude-desktop-extra.install...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with pinned checksums; no malicious behavior.
LLM auditresponse for claude-desktop-extra.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a pacman install hook that performs routine post-install tasks for the claude-desktop-extra package. It sets the SUID bit on the included chrome-sandbox binary (exactly as the upstream .deb does), installs an AppArmor profile to permit the application's user namespace sandbox, and refreshes the desktop database and icon cache. The script contains no network requests, no obfuscated code, no data exfiltration, and no execution of untrusted content. All file operations are confined to the package's own files and standard system configuration directories (AppArmor profiles, desktop cache). The printed notes about optional dependencies and repository migration are purely informational.
</details>
<evidence></evidence>
<summary>Standard packaging script; no malicious behavior.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed claude-desktop-extra.install. Status: SAFE -- Standard packaging script; no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 20,357
  Completion Tokens: 9,297
  Total Tokens: 29,654
  Total Cost: $0.003545
  Execution Time: 112.14 seconds

Final Status: SAFE


No issues found.
