---
package: claude-desktop-extra
pkgver: 1.40609.0
pkgrel: 3
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: b9e20f728bbe0de1871ebaca31738c802edc31f8
prompt_tokens: 16761
completion_tokens: 2655
total_tokens: 19416
cost: 0.00178598532
execution_time: 56.59
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: ok
upstream_files: 3054
upstream_named_files: 1
unpinned_sources: 0
injection_attempts: 0
date: 2026-08-31T19:17:09Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard prebuilt AUR package with pinned checksums; no malicious behavior found.
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO metadata; no security concerns.
  - file: claude-desktop-extra.install
    status: safe
    summary: Standard post-install hooks, no malicious behavior detected.
---

Cloning https://aur.archlinux.org/claude-desktop-extra.git...
Cloned claude-desktop-extra
Analyzing claude-desktop-extra AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only static variable definitions, arrays, comments, and a `package()` function. No command substitutions, backtick executions, or other code that runs at global scope during sourcing. The `source` array points to expected GitHub release tarballs with pinned checksums (not SKIP). The `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo` commands will only fetch those tarballs via HTTPS and extract them — no code from the extracted archives is executed during this step. There is no `pkgver()` function or other top-level executable code that could be abused.
</details>
<evidence></evidence>
<summary>No malicious code executes during fetch/printsrcinfo.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code executes during fetch/printsrcinfo.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: the PKGBUILD names 1 file(s) in the downloaded sources (src/launcher/claude-desktop); they are upstream content and were not reviewed.
Reviewing the 3 file(s) in the AUR repository. The 3054 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, claude-desktop-extra.install...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a prebuilt binary package. It fetches two pinned, checksum-verified release tarballs from the maintainer's own GitHub repository, which is the declared package source. No `eval`, `base64`, `wget`, `curl`, or any obfuscated/encoded commands appear anywhere in the file.

The `package()` function only performs routine installation work: copying the prebuilt application tree into `/usr/lib/claude-desktop`, creating a launcher, desktop entry, icons, and license file. Setting SUID `4755` on `chrome-sandbox` is expected behavior for Chromium-based applications and is not a supply-chain indicator. No data exfiltration, remote code execution, backdoors, or modifications to unrelated system files are present.

The main consideration is that the package relies on maintainer-provided prebuilt binaries rather than building from source; however, the checksums are pinned and the downloads come from the package's own upstream repository. This is a trust/hygiene choice common to AUR binary packages, not evidence of malice.
</details>
<evidence>
</evidence>
<summary>
Standard prebuilt AUR package with pinned checksums; no malicious behavior found.
</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, claude-desktop-extra.install...
+ Reviewed PKGBUILD. Status: SAFE -- Standard prebuilt AUR package with pinned checksums; no malicious behavior found.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file is a standard metadata file for an Arch User Repository package. It declares the package base, version, dependencies, architecture-specific source URLs, and SHA256 checksums. The sources are hosted on the package's own GitHub releases page under the same repository (`patrickjaja/claude-desktop-extra`). There is no code execution, no obfuscation, no unexpected network requests, and no commands that could exfiltrate data or install backdoors. The file purely describes the package; it is not a script. The use of `sha256sums` (not `SKIP`) provides integrity verification for the downloaded archives. No evidence of malicious behavior or supply-chain attack is present.
</details>
<evidence></evidence>
<summary>Standard .SRCINFO metadata; no security concerns.</summary>
</security_assessment>

[2/3] Reviewing claude-desktop-extra.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO metadata; no security concerns.
LLM auditresponse for claude-desktop-extra.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The install script performs standard post-installation tasks for the Claude Desktop package: setting the SUID bit on the chrome-sandbox binary (matching the official .deb postinst behavior), writing an AppArmor profile to allow unprivileged user namespaces (common for Chrome/VS Code/1Password on AppArmor 4.0+ systems), and refreshing desktop/icon caches. All operations target the package's own installation paths or system directories in expected ways. No network requests, obfuscated code, unexpected file operations, or execution of downloaded content are present. The informational notes about optional Cowork dependencies and legacy repo renaming are benign user-facing messages. This is a conventional Arch Linux install script with no malicious behavior.
</details>
<evidence></evidence>
<summary>Standard post-install hooks, no malicious behavior detected.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed claude-desktop-extra.install. Status: SAFE -- Standard post-install hooks, no malicious behavior detected.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 16,761
  Completion Tokens: 2,655
  Total Tokens: 19,416
  Total Cost: $0.001786
  Execution Time: 56.59 seconds

Final Status: SAFE


No issues found.
