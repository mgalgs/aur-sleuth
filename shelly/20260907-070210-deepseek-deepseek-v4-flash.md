---
package: shelly
pkgver: 3.1.3
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 24041
completion_tokens: 3461
total_tokens: 27502
cost: 0.002743507578
execution_time: 95.54
files_reviewed: 6
files_skipped: 0
maintainer_files: 6
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-07T07:02:10Z
file_verdicts:
  - file: com.shellyorg.shelly-notifications.desktop
    status: safe
    summary: Benign desktop entry file; no malicious behavior or suspicious content found.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no malicious content.
  - file: com.shellyorg.shelly.desktop
    status: safe
    summary: Standard desktop entry, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD, no malicious content found.
  - file: shellybuild.conf
    status: safe
    summary: Inert configuration file with no malicious content.
  - file: shelly-flatpak-integrate
    status: safe
    summary: Post-install Flatpak integration script, no malicious behavior.
---

Materializing shelly from local mirror...
Materialized shelly
Analyzing shelly AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The global scope of this PKGBUILD contains only static variable assignments (pkgver, source, sha256sums, etc.) and function declarations (build, check, package_shelly, package_shelly-flatpak-backend). No command substitutions, backtick executions, or function calls exist at the top level that would execute code during `makepkg --printsrcinfo`. The `_source_dir` assignment uses a safe parameter expansion on `pkgver`. There is no obfuscated code, no network requests, and no dangerous commands in the global scope. Therefore, running `makepkg --printsrcinfo` is safe.
</details>
<evidence></evidence>
<summary>No malicious code in global scope during sourcing.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code in global scope during sourcing.
Reviewing the 6 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/6] Reviewing .SRCINFO...
[0/6] Reviewing .SRCINFO, PKGBUILD...
[0/6] Reviewing .SRCINFO, PKGBUILD, com.shellyorg.shelly-notifications.desktop...
LLM auditresponse for com.shellyorg.shelly-notifications.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Freedesktop `.desktop` entry file. It defines an application named "Shelly Notifications" that launches `/usr/bin/shelly-notifications` with the `shelly-tray` icon. It contains only metadata: localized name/comment fields, categories, keywords, and desktop-entry flags such as `Terminal=false` and `NoDisplay=true`.

There is no executable logic, no network access, no encoded or obfuscated content, and no file manipulation. The `Exec` line simply points to a binary that is expected to be installed as part of the package itself. This is consistent with normal packaging practice and contains no indicators of malicious or supply-chain behavior.
</details>
<evidence>
</evidence>
<summary>
Benign desktop entry file; no malicious behavior or suspicious content found.</summary>
</security_assessment>

[0/6] Reviewing .SRCINFO, PKGBUILD, com.shellyorg.shelly-notifications.desktop, com.shellyorg.shelly.desktop...
[1/6] Reviewing .SRCINFO, PKGBUILD, com.shellyorg.shelly.desktop...
+ Reviewed com.shellyorg.shelly-notifications.desktop. Status: SAFE -- Benign desktop entry file; no malicious behavior or suspicious content found.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a standard AUR package metadata file. It defines the package base, version, dependencies, and sources. All sources point to the project's official GitHub repository (Seafoam-Labs/Shelly-ALPM). Checksums are provided for every source file, indicating the package maintainer has pinned the expected content. There is no executable code, no network requests, no obfuscation, and no evidence of supply-chain attack. The file is purely declarative and follows normal AUR packaging practices.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata, no malicious content.</summary>
</security_assessment>

[1/6] Reviewing .SRCINFO, PKGBUILD, com.shellyorg.shelly.desktop, shelly-flatpak-integrate...
[2/6] Reviewing PKGBUILD, com.shellyorg.shelly.desktop, shelly-flatpak-integrate...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no malicious content.
LLM auditresponse for com.shellyorg.shelly.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Linux desktop entry (`.desktop` file) for the Shelly application, described as "A Modern Arch Package Manager". It defines the application name, icon, categories, MIME types, and desktop actions for Flatpak operations. All `Exec` lines reference `/usr/bin/shelly-ui` with expected arguments. There is no executable code, no network operations, no obfuscation, no file system manipulation beyond launching the application. This is a normal packaging file with no security concerns.
</details>
<evidence></evidence>
<summary>Standard desktop entry, no security issues.</summary>
</security_assessment>

[3/6] Reviewing PKGBUILD, shelly-flatpak-integrate...
+ Reviewed com.shellyorg.shelly.desktop. Status: SAFE -- Standard desktop entry, no security issues.
[3/6] Reviewing PKGBUILD, shelly-flatpak-integrate, shellybuild.conf...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard Arch Linux package build file for the "shelly" package manager. All source tarballs are downloaded from the official GitHub repository with pinned version and SHA-256 checksums, ensuring integrity. The build process compiles multiple Zig subprojects, generates shell completions and man pages, and installs binaries, desktop files, a polkit policy, icons, and translations into the package directory. There are no network requests beyond the declared sources, no obfuscated code, no dangerous commands (eval, base64, curl, wget), and no file operations outside the expected scope. The polkit policy and dependencies (sudo, pkexec) are appropriate for a package manager that requires privilege escalation. No evidence of supply-chain attack or malicious behavior was found.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD, no malicious content found.</summary>
</security_assessment>

[4/6] Reviewing shelly-flatpak-integrate, shellybuild.conf...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD, no malicious content found.
LLM auditresponse for shellybuild.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a configuration template for Shelly's AUR builder, containing only commented-out default settings for build, package, and destination directories. There are no executable commands, no network requests, no obfuscation, and no file operations. The content is entirely passive and inert, consisting solely of explanatory comments and commented configuration keys with example values. No evidence of any malicious or dangerous behavior.</details>
<evidence></evidence>
<summary>Inert configuration file with no malicious content.</summary>
</security_assessment>

[5/6] Reviewing shelly-flatpak-integrate...
+ Reviewed shellybuild.conf. Status: SAFE -- Inert configuration file with no malicious content.
LLM auditresponse for shelly-flatpak-integrate:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a standard post-install integration helper that adds a &quot;Manage in Shelly&quot; desktop action to Flatpak .desktop files. It reads from the standard Flatpak export directories, copies files to the user's local applications directory (`$HOME/.local/share/applications`), and appends a `[Desktop Action]` section that runs `/usr/bin/shelly-ui --page flatpak-install`. This is expected behavior for a Flatpak management tool—no network requests, no obfuscated code, no dangerous commands beyond routine file and desktop-database operations. The script operates only within the user's application-scope directories, so it poses no supply-chain threat.
</details>
<evidence></evidence>
<summary>Post-install Flatpak integration script, no malicious behavior.</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed shelly-flatpak-integrate. Status: SAFE -- Post-install Flatpak integration script, no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 24,041
  Completion Tokens: 3,461
  Total Tokens: 27,502
  Total Cost: $0.002744
  Execution Time: 95.54 seconds

Final Status: SAFE


No issues found.
