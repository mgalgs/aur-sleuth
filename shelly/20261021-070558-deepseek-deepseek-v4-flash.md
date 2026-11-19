---
package: shelly
pkgver: 3.1.8
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 27126
completion_tokens: 3145
total_tokens: 30271
cost: 0.003040856
execution_time: 59.65
files_reviewed: 6
files_skipped: 0
maintainer_files: 6
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-21T07:05:58Z
file_verdicts:
  - file: com.shellyorg.shelly-notifications.desktop
    status: safe
    summary: Standard desktop entry file; no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard metadata file, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Clean PKGBUILD with no malicious indicators.
  - file: com.shellyorg.shelly.desktop
    status: safe
    summary: Standard .desktop file, no security issues.
  - file: shellybuild.conf
    status: safe
    summary: A standard config file with no executable or malicious content.
  - file: shelly-flatpak-integrate
    status: safe
    summary: Legitimate flatpak integration script for Shelly.
---

Materializing shelly from local mirror...
Materialized shelly
Analyzing shelly AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources the PKGBUILD top-level scope only. The top-level code consists of standard variable assignments, array definitions, and a `case` statement that selects dependency metadata based on the `SHELLY_LIBALPM` environment variable. All of this is benign packaging logic. The `case` statement can print an error and return 1 for invalid input, but it performs no network access, no command substitution that fetches or executes remote content, and no file modification.

Suspicious-looking operations such as `zig build`, `msgfmt`, `install`, `readelf`, and `sed` appear only inside `build()`, `check()`, and `package_*()` functions. These functions are not executed by `makepkg --printsrcinfo`, so they are out of scope for this narrow gate and will be audited in the full PKGBUILD review. No obfuscation, encoded payloads, or unexpected network behavior exists at parse time.
</details>
<evidence>
</evidence>
<summary>
Top-level PKGBUILD sourcing is benign; only metadata and safe conditional variables execute.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD sourcing is benign; only metadata and safe conditional variables execute.
Reviewing the 6 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/6] Reviewing .SRCINFO...
[0/6] Reviewing .SRCINFO, PKGBUILD...
[0/6] Reviewing .SRCINFO, PKGBUILD, com.shellyorg.shelly-notifications.desktop...
LLM auditresponse for com.shellyorg.shelly-notifications.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.desktop` file for a notification service. It defines metadata such as name, comment, categories, keywords, and the executable path `/usr/bin/shelly-notifications`. There are no embedded commands, network requests, obfuscated content, or any mechanism that could execute arbitrary code. The file follows the freedesktop.org Desktop Entry specification and contains only localized strings and configuration keys. No security concerns are present.
</details>
<evidence></evidence>
<summary>Standard desktop entry file; no security issues.</summary>
</security_assessment>

[0/6] Reviewing .SRCINFO, PKGBUILD, com.shellyorg.shelly-notifications.desktop, com.shellyorg.shelly.desktop...
[1/6] Reviewing .SRCINFO, PKGBUILD, com.shellyorg.shelly.desktop...
+ Reviewed com.shellyorg.shelly-notifications.desktop. Status: SAFE -- Standard desktop entry file; no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR .SRCINFO metadata file for the `shelly` package. It describes package version, dependencies, and source locations. All sources point to the official GitHub repository for the project and have valid SHA-256 checksums. No suspicious URLs, obfuscated data, or executable code is present. The file is purely declarative and follows normal packaging conventions. No evidence of malicious behavior was found.
</details>
<evidence>
</evidence>
<summary>Standard metadata file, no security issues.</summary>
</security_assessment>

[2/6] Reviewing PKGBUILD, com.shellyorg.shelly.desktop...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata file, no security issues.
[2/6] Reviewing PKGBUILD, com.shellyorg.shelly.desktop, shelly-flatpak-integrate...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard Arch packaging practices. The source tarball is fetched from the official GitHub repository with pinned SHA256 checksums for all files. The build process uses the upstream Zig build system and installs binaries, desktop entries, icons, shell completions, man pages, translations, and a flatpak integration script. There is no obfuscated code, no unexpected network requests, no data exfiltration, and no execution of unverified code. The polkit policy is a normal part of the application&#x27;s functionality to allow privileged operations.
</details>
<evidence></evidence>
<summary>Clean PKGBUILD with no malicious indicators.</summary>
</security_assessment>

[2/6] Reviewing PKGBUILD, com.shellyorg.shelly.desktop, shelly-flatpak-integrate, shellybuild.conf...
[3/6] Reviewing com.shellyorg.shelly.desktop, shelly-flatpak-integrate, shellybuild.conf...
+ Reviewed PKGBUILD. Status: SAFE -- Clean PKGBUILD with no malicious indicators.
LLM auditresponse for com.shellyorg.shelly.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Freedesktop.org .desktop file for the Shelly package manager application. It defines the application name, icon, execution command (`/usr/bin/shelly-ui %u`), categories, localized keywords, MIME type handlers (including for AppStream, Flatpak, and AppImage), and desktop actions for Flatpak operations. There is no obfuscated code, no network requests, no dangerous commands like `curl`, `wget`, `eval`, or `base64`, and no unexpected file operations. All `Exec` lines reference the installed binary `/usr/bin/shelly-ui` with standard arguments. The file performs purely declarative desktop integration and contains no supply-chain attack indicators.
</details>
<evidence></evidence>
<summary>Standard .desktop file, no security issues.</summary>
</security_assessment>

[4/6] Reviewing shelly-flatpak-integrate, shellybuild.conf...
+ Reviewed com.shellyorg.shelly.desktop. Status: SAFE -- Standard .desktop file, no security issues.
LLM auditresponse for shellybuild.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a configuration file for the Shelly AUR builder. It contains only comments and commented-out configuration options for build, package, destination, and sandbox settings. There are no executable commands, no network requests, no obfuscated code, and no attempts to fetch or execute external content. The file is entirely inert and follows standard packaging configuration practices. No security concerns exist.
</details>
<evidence>
</evidence>
<summary>A standard config file with no executable or malicious content.</summary>
</security_assessment>

[5/6] Reviewing shelly-flatpak-integrate...
+ Reviewed shellybuild.conf. Status: SAFE -- A standard config file with no executable or malicious content.
LLM auditresponse for shelly-flatpak-integrate:
<security_assessment>
<decision>SAFE</decision>
<details>
The script `shelly-flatpak-integrate` performs standard desktop file integration for the Shelly application. It iterates over system and user Flatpak application directories, copies desktop files to `~/.local/share/applications/`, and appends a custom `[Desktop Action ShellyManage]` section that launches `/usr/bin/shelly-ui --page flatpak-install`. The operation uses atomic replacement with temporary files and handles errors gracefully. There are no network requests, no execution of untrusted code, no obfuscation, no system file modifications outside the user's desktop applications directory, and no exfiltration of data. The behavior is consistent with a legitimate application integration helper and does not exhibit signs of a supply-chain attack.
</details>
<evidence>
</evidence>
<summary>Legitimate flatpak integration script for Shelly.</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed shelly-flatpak-integrate. Status: SAFE -- Legitimate flatpak integration script for Shelly.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 27,126
  Completion Tokens: 3,145
  Total Tokens: 30,271
  Total Cost: $0.003041
  Execution Time: 59.65 seconds

Final Status: SAFE


No issues found.
