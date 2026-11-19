---
package: claude-desktop-extra
pkgver: 5.11492.2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 20645
completion_tokens: 2803
total_tokens: 23448
cost: 0.00236259
execution_time: 25.49
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-13T12:02:50Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR .SRCINFO; no malicious content.
  - file: claude-desktop-extra.install
    status: safe
    summary: Standard install script with no malicious behavior.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD, pinned checksums, no malicious behavior.
---

Materializing claude-desktop-extra from local mirror...
Materialized claude-desktop-extra
Analyzing claude-desktop-extra AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's top-level scope consists only of variable assignments (pkgname, pkgver, etc.), comments, and the definition of the `package()` function. No dangerous commands (curl, wget, eval, backtick command substitutions, $() expansions, or similar) exist in the global scope that would execute during `makepkg --printsrcinfo`. The `install` variable points to a filename, not a command. All suspicious content (file operations, network fetches, system modifications) resides inside the `package()` function, which is NOT executed during this parsing step. Therefore running `makepkg --printsrcinfo` is safe.
</details>
<evidence>
</evidence>
<summary>No dangerous top-level code; safe to parse.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code; safe to parse.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, claude-desktop-extra.install...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a metadata file describing the package, its dependencies, sources, and checksums. It contains no executable code, obfuscated commands, or suspicious operations. The source tarball is fetched from the project's own GitHub releases with pinned checksums (SHA256). Dependencies are standard library packages. Optdepends are described with explanatory comments that reflect the package's stated feature set (Computer Use, Cowork VM, MCP extensions, etc.). There is no evidence of data exfiltration, backdoors, or supply-chain injection. The file follows standard AUR packaging conventions.
</details>
<evidence></evidence>
<summary>Standard AUR .SRCINFO; no malicious content.</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, claude-desktop-extra.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR .SRCINFO; no malicious content.
LLM auditresponse for claude-desktop-extra.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard pacman `.install` script that performs expected post-install/post-upgrade/post-remove actions for a desktop application. It sets the SUID bit on the chrome-sandbox binary (required by Chromium's sandbox), installs an AppArmor profile to allow unprivileged user namespaces (standard for Electron/Chromium apps on modern Linux), refreshes desktop and icon caches, and prints informational messages about optional dependencies and repo migration. All file operations are confined to the package's own installed paths (`/usr/lib/claude-desktop/`) and standard system configuration (`/etc/apparmor.d/`). There is no obfuscation, no network requests, no data exfiltration, no unexpected command execution, and no deviation from legitimate packaging practices.
</details>
<evidence></evidence>
<summary>Standard install script with no malicious behavior.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed claude-desktop-extra.install. Status: SAFE -- Standard install script with no malicious behavior.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard packaging script for an unofficial Claude Desktop build. It downloads a pre-built tarball from the maintainer's GitHub releases with pinned SHA256 checksums for both architectures. All operations in `package()` are transparent and expected: installing files to `/usr/lib/claude-desktop/`, setting SUID on chrome-sandbox, writing a release metadata JSON, installing launcher/desktop entry/icons/GNOME search provider/MIME types, and deploying udev rules and polkit actions for the application's own TPM/KVM features. There are no obfuscated commands, no unexpected network requests, no data exfiltration, and no execution of untrusted code. The source integrity is verified via checksums, and all file operations stay within the package's own scope. The `.install` file is not visible here but is referenced for standard migration tasks; nothing in the PKGBUILD itself raises security concerns.
</details>
<evidence>
</evidence>
<summary>Standard PKGBUILD, pinned checksums, no malicious behavior.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD, pinned checksums, no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 20,645
  Completion Tokens: 2,803
  Total Tokens: 23,448
  Total Cost: $0.002363
  Execution Time: 25.49 seconds

Final Status: SAFE


No issues found.
