---
package: claude-desktop-extra
pkgver: 1.40609.0
pkgrel: 3
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 16682
completion_tokens: 2403
total_tokens: 19085
cost: 0.001903965728
execution_time: 47.7
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: ok
upstream_files: 3054
upstream_named_files: 1
unpinned_sources: 0
date: 2026-08-31T07:05:28Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Clean PKGBUILD with no malicious content.
  - file: claude-desktop-extra.install
    status: safe
    summary: Standard install hook, no malicious behavior found.
---

Cloning https://aur.archlinux.org/claude-desktop-extra.git...
Cloned claude-desktop-extra
Analyzing claude-desktop-extra AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable assignments, arrays, and comments at the top level. There is no `pkgver()` function defined, no command substitutions or executable code in the global scope, and no dangerous operations that would execute during `makepkg --nobuild --nodeps --noprepare` or `makepkg --printsrcinfo`. The `source` arrays point to the maintainer's own GitHub releases (patrickjaja/claude-desktop-extra), with valid SHA256 checksums provided. The `package()` function is defined but will not execute during these commands. The external `.install` file is referenced but not sourced during this phase. No evidence of obfuscated code, data exfiltration, or unexpected network requests beyond the declared package sources.
</details>
<evidence></evidence>
<summary>No dangerous code executes during source fetch or PKGBUILD sourcing.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous code executes during source fetch or PKGBUILD sourcing.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: the PKGBUILD names 1 file(s) in the downloaded sources (src/launcher/claude-desktop); they are upstream content and were not reviewed.
Reviewing the 3 file(s) in the AUR repository. The 3054 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, claude-desktop-extra.install...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file is a standard AUR metadata file for the `claude-desktop-extra` package. It declares package metadata, dependencies, and two source tarballs hosted on GitHub under the same repository (`patrickjaja/claude-desktop-extra`). Both sources include pinned SHA256 checksums, meaning the content is verified at build time. No obfuscation, no network requests to unexpected hosts, no dangerous commands, and no system modifications are defined in this file. The dependencies are standard Linux desktop libraries appropriate for a GUI application like Claude Desktop. There is no evidence of malicious or supply-chain attack behavior.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file, no security issues.</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, claude-desktop-extra.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices. It downloads a pre-built tarball from the maintainer's GitHub releases with pinned SHA-256 checksums, then installs the files into `/usr/lib/claude-desktop`, sets the SUID bit on the Chrome sandbox (required for Electron applications), and installs a launcher script, desktop entry, icons, and license file. There is no obfuscated code, no suspicious network requests, no eval/curl|bash patterns, no data exfiltration, and no backdoors. The only potential supply-chain risk is reliance on the maintainer's pre-built tarball, but that is an upstream/trust concern beyond the scope of this file. The PKGBUILD itself is clean and transparent.
</details>
<evidence></evidence>
<summary>Clean PKGBUILD with no malicious content.</summary>
</security_assessment>

[2/3] Reviewing claude-desktop-extra.install...
+ Reviewed PKGBUILD. Status: SAFE -- Clean PKGBUILD with no malicious content.
LLM auditresponse for claude-desktop-extra.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard pacman install hook for the `claude-desktop-extra` package. It performs expected post-installation tasks: setting the SUID bit on the chrome-sandbox binary, installing an AppArmor profile (with proper gating on AppArmor 4.0+), and refreshing desktop/icon caches. It also prints informational notes about optional dependencies and a repository rename — these are purely informational and do not modify any system configuration. All commands are well-known standard utilities (chmod, chown, apparmor_parser, update-desktop-database, etc.) and operate only within the package&#x27;s own file paths or standard system directories. There is no obfuscated code, no network requests, no data exfiltration, and no execution of untrusted content. The script is consistent with packaging best practices.
</details>
<evidence></evidence>
<summary>Standard install hook, no malicious behavior found.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed claude-desktop-extra.install. Status: SAFE -- Standard install hook, no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 16,682
  Completion Tokens: 2,403
  Total Tokens: 19,085
  Total Cost: $0.001904
  Execution Time: 47.70 seconds

Final Status: SAFE


No issues found.
