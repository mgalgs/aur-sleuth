---
package: cursor-bin
pkgver: 3.19.19
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 13068
completion_tokens: 2021
total_tokens: 15089
cost: 0.001516048660
execution_time: 58.04
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-09T07:01:39Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore listing build artifacts; no suspicious or malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR binary package, no malicious content.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; no malicious content detected.
  - file: rg.sh
    status: safe
    summary: Simple argument wrapper, no security concerns.
---

Materializing cursor-bin from local mirror...
Materialized cursor-bin
Analyzing cursor-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only top-level variable assignments (pkgname, pkgver, source, sha512sums, etc.) and a package() function definition. No commands or command substitutions are executed in the global scope. The source URLs are merely defined as strings, and no download or execution occurs during sourcing. There is no malicious code present that would run when `makepkg --printsrcinfo` sources the file.
</details>
<evidence></evidence>
<summary>No top-level execution; only variable definitions.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level execution; only variable definitions.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, PKGBUILD...
[0/4] Reviewing .SRCINFO, PKGBUILD, .gitignore...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` for an AUR package repository. It lists build artifacts and packaging outputs such as the downloaded AppImage, the built `.pkg.tar.zst`, extracted package tree contents (`pkg/cursor-bin/...`), and the local source icon (`src/cursor.png`). These entries are exactly what an AUR maintainer would want to exclude from version control after building or packaging the application.

There is no executable code, no network activity, no obfuscation, and no file-system manipulation beyond the normal and expected exclusion of generated files from Git tracking. No security concerns are present.
</details>
<evidence>
</evidence>
<summary>
Standard .gitignore listing build artifacts; no suspicious or malicious content.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, PKGBUILD, .gitignore, rg.sh...
[1/4] Reviewing .SRCINFO, PKGBUILD, rg.sh...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore listing build artifacts; no suspicious or malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a prebuilt binary package. It downloads the official upstream .deb from `downloads.cursor.com` and helper scripts from the official Arch Linux packaging repository (`gitlab.archlinux.org`). The `package()` function extracts the archive, relocates files, creates symlinks, and installs wrapper scripts using `sed`, `install`, `ln`, `mv`, and `tar`. No obfuscated code, no unexpected network requests or downloads, and no dangerous commands like `eval`, `curl`, `wget`, or `base64` are present. The `SKIP` checksum for the main binary is not inherently malicious—it is a packaging choice, and the remaining sources have pinned checksums. The modifications via `sed` are limited to adjusting paths and names to integrate with the system Electron and standard Linux directories. There is no evidence of exfiltration, backdoors, or supply-chain injection.
</details>
<evidence></evidence>
<summary>Standard AUR binary package, no malicious content.</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, rg.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR binary package, no malicious content.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is a standard AUR metadata file. It declares a package name, version, dependencies, and sources. All sources point to legitimate, expected locations – the upstream cursor.com download, and helper scripts from the official Arch Linux packaging repository. Checksums are provided for each source, indicating intent to verify integrity (none are set to SKIP). There is no executable code, no obfuscation, and no suspicious network destinations. The file does not contain any instructions that could exfiltrate data, download malicious code, or modify the system outside normal packaging expectations. It poses no supply-chain risk beyond the inherent trust placed in the declared upstream and Arch Linux infrastructure.
</details>
<evidence></evidence>
<summary>Standard AUR metadata; no malicious content detected.</summary>
</security_assessment>

[3/4] Reviewing rg.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; no malicious content detected.
LLM auditresponse for rg.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a simple wrapper script that replaces the argument `--cursor-ignore` with `--ignore-file` before executing the real `rg` binary. It performs no network requests, no file system modifications, no obfuscation, and no execution of untrusted code. The operation is a standard packaging convenience for the Cursor editor, which needs to pass a custom ignore file pattern to ripgrep. There is no evidence of malicious behavior.
</details>
<evidence>
</evidence>
<summary>Simple argument wrapper, no security concerns.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed rg.sh. Status: SAFE -- Simple argument wrapper, no security concerns.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,068
  Completion Tokens: 2,021
  Total Tokens: 15,089
  Total Cost: $0.001516
  Execution Time: 58.04 seconds

Final Status: SAFE


No issues found.
