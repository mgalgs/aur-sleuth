---
package: shelly
pkgver: 3.3.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 29465
completion_tokens: 3806
total_tokens: 33271
cost: 0.00333693
execution_time: 37.81
files_reviewed: 6
files_skipped: 0
maintainer_files: 6
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-14T08:10:14Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with no malicious behavior observed.
  - file: com.shellyorg.shelly.desktop
    status: safe
    summary: Standard .desktop file, no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Metadata-only file; no executable or dangerous content.
  - file: com.shellyorg.shelly-notifications.desktop
    status: safe
    summary: Standard desktop entry file, no security concerns.
  - file: shellybuild.conf
    status: safe
    summary: Configuration file, no malicious content.
  - file: shelly-flatpak-integrate
    status: safe
    summary: Clean flatpack integration script, no malicious code.
---

Materializing shelly from local mirror...
Materialized shelly
Analyzing shelly AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
During `makepkg --printsrcinfo`, only top-level scope code is executed. The PKGBUILD's global code consists solely of variable assignments, a case statement that reads an environment variable (`SHELLY_LIBALPM`) and sets some internal variables or prints an error message, and a parameter expansion for `_source_dir`. None of these operations execute network requests, download or run payloads, or exfiltrate data. The case statement's `return 1` in the default branch is a harmless early exit if the variable is invalid. There are no dangerous commands (eval, curl, wget, etc.) in the top-level scope. Therefore, executing `makepkg --printsrcinfo` on this PKGBUILD is safe.
</details>
<evidence></evidence>
<summary>No dangerous top-level code; safe to source.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code; safe to source.
Reviewing the 6 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/6] Reviewing .SRCINFO...
[0/6] Reviewing .SRCINFO, com.shellyorg.shelly-notifications.desktop...
[0/6] Reviewing .SRCINFO, com.shellyorg.shelly-notifications.desktop, PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard Arch packaging practices. All source files have pinned SHA-256 checksums, so the build is reproducible from a known version. The build process compiles several Zig submodules using the upstream build system (`zig build`) and installs the resulting binaries, libraries, desktop files, icons, translations, completions, man page, and a polkit policy file — all expected for a package manager GUI/CLI tool. There are no obfuscated commands, no unexpected network requests, and no operations that modify files outside the package's own install prefix or system configuration directories that are not standard for the application's functionality (e.g., polkit policy for privilege elevation).

The only network interaction is fetching the source tarball from the project's official GitHub repository (pinned by hash). The helper scripts referenced in the source array are all part of the AUR repository itself and are installed into the package. No runtime downloads, `curl | bash`, or similar patterns are present. The build uses the compiled binary itself to generate shell completions and the man page — this is normal and not suspicious.

The PKGBUILD also correctly handles the optional native libalpm dependency and the flatpak backend subpackage, all consistent with the package's stated purpose as a modern Arch package manager.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with no malicious behavior observed.</summary>
</security_assessment>

[0/6] Reviewing .SRCINFO, com.shellyorg.shelly-notifications.desktop, PKGBUILD, com.shellyorg.shelly.desktop...
[1/6] Reviewing .SRCINFO, com.shellyorg.shelly-notifications.desktop, com.shellyorg.shelly.desktop...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with no malicious behavior observed.
LLM auditresponse for com.shellyorg.shelly.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Freedesktop `.desktop` entry file for the `shelly` AUR package (a GUI package manager for Arch Linux). It defines application metadata, icons, categories, MIME type associations, and desktop actions (Flatpak Install/Update/Remove). All `Exec` lines reference `/usr/bin/shelly-ui` with benign flags (`%u`, `--page ...`), which is the expected main binary of the package. There is no obfuscated code, no network requests, no downloads, no file operations outside of normal desktop integration, and no evidence of any malicious or supply-chain attack behavior. The file simply registers the application with the desktop environment.
</details>
<evidence></evidence>
<summary>Standard .desktop file, no security concerns.</summary>
</security_assessment>

[1/6] Reviewing .SRCINFO, com.shellyorg.shelly-notifications.desktop, com.shellyorg.shelly.desktop, shelly-flatpak-integrate...
[2/6] Reviewing .SRCINFO, com.shellyorg.shelly-notifications.desktop, shelly-flatpak-integrate...
+ Reviewed com.shellyorg.shelly.desktop. Status: SAFE -- Standard .desktop file, no security concerns.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a metadata-only manifest for the AUR package `shelly`. It declares package version, dependencies, sources (all pointing to the official GitHub repository with pinned checksums), and split package definitions. No executable code, obfuscated strings, network requests, or system modifications are present. The file follows standard AUR packaging conventions and contains no signs of malicious content.
</details>
<evidence></evidence>
<summary>Metadata-only file; no executable or dangerous content.</summary>
</security_assessment>

[2/6] Reviewing .SRCINFO, com.shellyorg.shelly-notifications.desktop, shelly-flatpak-integrate, shellybuild.conf...
[3/6] Reviewing com.shellyorg.shelly-notifications.desktop, shelly-flatpak-integrate, shellybuild.conf...
+ Reviewed .SRCINFO. Status: SAFE -- Metadata-only file; no executable or dangerous content.
LLM auditresponse for com.shellyorg.shelly-notifications.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard freedesktop.org desktop entry file. It defines an application entry for the "Shelly Notifications" service, with an Exec line pointing to `/usr/bin/shelly-notifications`. There are no suspicious commands, no network requests, no obfuscated code, and no file operations beyond declaring an application metadata entry. The file does not contain any executable logic or data that could exfiltrate information or modify the system. It is a benign configuration file.
</details>
<evidence></evidence>
<summary>Standard desktop entry file, no security concerns.</summary>
</security_assessment>

[4/6] Reviewing shelly-flatpak-integrate, shellybuild.conf...
+ Reviewed com.shellyorg.shelly-notifications.desktop. Status: SAFE -- Standard desktop entry file, no security concerns.
LLM auditresponse for shellybuild.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a configuration file for the Shelly AUR builder. It contains only comments and commented-out example settings for build flags, package options, destination paths, and sandbox features. There is no executable code, no network requests, no obfuscation, no file operations, and no references to dangerous commands (curl, wget, eval, base64, etc.). The content is entirely declarative and conforms to standard packaging configuration practices. No evidence of supply-chain tampering or malicious behavior was found.
</details>
<evidence>
</evidence>
<summary>Configuration file, no malicious content.</summary>
</security_assessment>

[5/6] Reviewing shelly-flatpak-integrate...
+ Reviewed shellybuild.conf. Status: SAFE -- Configuration file, no malicious content.
LLM auditresponse for shelly-flatpak-integrate:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a flatpak integration helper for the Shelly package. It iterates over installed flatpak desktop entry files and adds a custom "Manage in Shelly" action to each, writing the modified file to the user's `~/.local/share/applications` directory. The operations are local to the user's desktop environment and use only standard tools (grep, sed, cp, mv, mktemp, chmod, update-desktop-database). There is no network access, no downloading or execution of code, no obfuscation, no exfiltration of data, and no modification of system files outside the intended scope. The script follows safe atomic file update patterns (temp file + mv). The added action calls the package's own binary (`/usr/bin/shelly-ui`) with a built-in argument; this is the expected upstream application functionality, not an injected payload. No evidence of supply-chain attack or malicious behavior is present.
</details>
<evidence></evidence>
<summary>Clean flatpack integration script, no malicious code.</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed shelly-flatpak-integrate. Status: SAFE -- Clean flatpack integration script, no malicious code.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 29,465
  Completion Tokens: 3,806
  Total Tokens: 33,271
  Total Cost: $0.003337
  Execution Time: 37.81 seconds

Final Status: SAFE


No issues found.
