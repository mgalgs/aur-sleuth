---
package: claude-desktop-extra
pkgver: 1.37937.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: bf65c6be33eadea3455007f8db36db9ddf76ab3c
prompt_tokens: 16655
completion_tokens: 2860
total_tokens: 19515
cost: 0.001982559250
execution_time: 220.46
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
upstream_files: 3051
upstream_named_files: 1
unpinned_sources: 0
date: 2026-08-26T07:04:01Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Metadata-only file; no malicious content found.
  - file: claude-desktop-extra.install
    status: safe
    summary: Standard packaging hook, no malicious behavior.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD, no malicious code found.
---

Cloning https://aur.archlinux.org/claude-desktop-extra.git...
Cloned claude-desktop-extra
Analyzing claude-desktop-extra AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is safe to source and use with `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo`. The global/top-level scope only defines variables and arrays (pkgname, pkgver, sources, checksums, etc.). There are no command substitutions, no downloads or code execution at parse time, and no `pkgver()` function that could run code. The `source` arrays reference the package's own upstream GitHub releases over https and have explicit sha256 checksums. All potentially executable code resides inside `package()`, which is not run during the requested commands. No suspicious behavior is present in the top-level scope that could trigger during source fetching.
</details>
<evidence>
</evidence>
<summary>No malicious code executes during source fetching or PKGBUILD parsing; only variable definitions and function bodies are present, SAFE.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code executes during source fetching or PKGBUILD parsing; only variable definitions and function bodies are present, SAFE.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: the PKGBUILD names 1 file(s) in the downloaded sources (src/launcher/claude-desktop); they are upstream content and were not reviewed.
Reviewing the 3 file(s) in the AUR repository. The 3051 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, claude-desktop-extra.install...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is a standard Arch package metadata file. It contains only package metadata: name, version, description, URL, dependencies, and source URLs with SHA-256 checksums. The sources are fetched from the same GitHub repository as the package URL, which is typical for AUR packages. There are no scripts, no obfuscated code, no unexpected network destinations, and no commands of any kind. The file does not perform any actions; it merely describes the package for `makepkg`. The presence of third-party sources (a community fork of Claude Desktop) is the package's declared upstream and does not constitute a supply-chain attack within the file itself.
</details>
<evidence>
</evidence>
<summary>Metadata-only file; no malicious content found.</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, claude-desktop-extra.install...
+ Reviewed .SRCINFO. Status: SAFE -- Metadata-only file; no malicious content found.
LLM auditresponse for claude-desktop-extra.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard pacman install hook for the `claude-desktop-extra` AUR package. It performs expected post-install tasks: setting SUID on the Chrome sandbox, writing an AppArmor profile to allow unprivileged user namespaces (matching patterns used by Chrome/VS Code/1Password), refreshing desktop/icon caches, and printing informational messages about optional dependencies and repo migration.  

All file writes are limited to the package's own installation paths (`/usr/lib/claude-desktop/` and `/etc/apparmor.d/claude-desktop`). No network requests, no obfuscated code, no hidden commands, and no exfiltration of data. The AppArmor profile operation is gated on the presence of the AppArmor 4.0 ABI and runs with error suppression, following standard packaging practices.  

There are no supply-chain attack indicators. Every operation serves the application's stated purpose of providing a sandboxed desktop environment.
</details>
<evidence></evidence>
<summary>Standard packaging hook, no malicious behavior.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed claude-desktop-extra.install. Status: SAFE -- Standard packaging hook, no malicious behavior.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD for `claude-desktop-extra` follows standard Arch Linux packaging practices. The source tarball is downloaded from the maintainer's GitHub releases with pinned SHA256 checksums. The `package()` function copies the pre-built tree into `/usr/lib/claude-desktop`, sets the required SUID bit on `chrome-sandbox`, installs a launcher script, desktop entry, icons, and license file — all expected operations for an Electron-based application packaged as a binary tarball.

There is no obfuscated code, no `eval`/`base64`/`curl`/`wget` calls, no unexpected network requests, no data exfiltration attempts, and no backdoors. The dependencies and optdependencies are thoroughly documented. The only potential concern is the reliance on the maintainer's pre-patched tarball (trust dependency), but the checksum pinning ensures integrity, and this is normal for AUR binary packages. The referenced `.install` script is not included in this file and would need separate review, but the PKGBUILD itself contains no malicious or dangerous behavior.
</details>
<evidence>
</evidence>
<summary>Standard AUR PKGBUILD, no malicious code found.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD, no malicious code found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 16,655
  Completion Tokens: 2,860
  Total Tokens: 19,515
  Total Cost: $0.001983
  Execution Time: 220.46 seconds

Final Status: SAFE


No issues found.
