---
package: shelly-flatpak-backend-bin
pkgbase: shelly-bin
pkgver: 3.1.2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 22218
completion_tokens: 3675
total_tokens: 25893
cost: 0.002619902208
execution_time: 65.18
files_reviewed: 6
files_skipped: 0
maintainer_files: 6
source_fetch: ok
upstream_files: 46
upstream_named_files: 0
unpinned_sources: 0
date: 2026-08-31T07:01:24Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard metadata file; no security issues.
  - file: com.shellyorg.shelly-notifications.desktop
    status: safe
    summary: Benign desktop entry file; no security issues found.
  - file: shelly-flatpak-integrate
    status: safe
    summary: Legitimate integration script, no malicious behavior
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD, pinned upstream sources with checksums; no evidence of malicious code.
  - file: com.shellyorg.shelly.desktop
    status: safe
    summary: Standard .desktop file for package manager UI.
  - file: shellybuild.conf
    status: safe
    summary: Inert configuration file, no security concerns.
---

shelly-flatpak-backend-bin is built from shelly-bin
Cloning https://aur.archlinux.org/shelly-bin.git...
Cloned shelly-flatpak-backend-bin
Analyzing shelly-flatpak-backend-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only defines variables, arrays, and function definitions at the top level. No code executes during sourcing because there are no command substitutions, no `pkgver()` function, and no other callable statements. All the `package_*()` functions are only invoked later by makepkg, not during the two specified commands (`--nobuild --nodeps --noprepare` and `--printsrcinfo`). The source URLs point to the project's own GitHub releases over HTTPS, which is standard and expected for an AUR binary package. There is no obfuscation, no dangerous network destinations, and no code that would run during this narrow gate.
</details>
<evidence></evidence>
<summary>No dangerous top-level code; safe to fetch sources.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code; safe to fetch sources.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Reviewing the 6 file(s) in the AUR repository. The 46 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/6] Reviewing .SRCINFO...
[0/6] Reviewing .SRCINFO, PKGBUILD...
[0/6] Reviewing .SRCINFO, PKGBUILD, com.shellyorg.shelly-notifications.desktop...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard .SRCINFO metadata file from a legitimate AUR package. It declares sources from the project's own GitHub releases with valid SHA-256 checksums. No executable code, no obfuscation, no suspicious network requests or system modifications. The dependencies are typical for an Arch package manager and its Flatpak backend. The file adheres to normal packaging standards and does not exhibit any supply-chain attack indicators.
</details>
<evidence>
</evidence>
<summary>Standard metadata file; no security issues.</summary>
</security_assessment>

[1/6] Reviewing PKGBUILD, com.shellyorg.shelly-notifications.desktop...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata file; no security issues.
[1/6] Reviewing PKGBUILD, com.shellyorg.shelly-notifications.desktop, com.shellyorg.shelly.desktop...
LLM auditresponse for com.shellyorg.shelly-notifications.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard freedesktop.org desktop entry file for the Shelly Notifications application. It declares the application name, localized descriptions, icon, categories, keywords, and an Exec line pointing to the installed system binary `/usr/bin/shelly-notifications`. There are no suspicious network operations, encoded commands, file modifications, or attempts to execute anything outside the package's own installed application. The `NoDisplay=true` flag is a normal desktop-entry setting for background or notification services.
</details>
<evidence>
</evidence>
<summary>
Benign desktop entry file; no security issues found.</summary>
</security_assessment>

[1/6] Reviewing PKGBUILD, com.shellyorg.shelly-notifications.desktop, com.shellyorg.shelly.desktop, shelly-flatpak-integrate...
[2/6] Reviewing PKGBUILD, com.shellyorg.shelly.desktop, shelly-flatpak-integrate...
+ Reviewed com.shellyorg.shelly-notifications.desktop. Status: SAFE -- Benign desktop entry file; no security issues found.
LLM auditresponse for shelly-flatpak-integrate:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a legitimate integration helper that adds a "Manage in Shelly" right-click action to Flatpak desktop entries. It copies `.desktop` files to the user's local applications directory, appends a `Desktop Action` section, and runs `update-desktop-database`. All file operations are confined to the user's home directory (`~/.local/share/applications`) and standard system flatpak export directories. The executed command (`/usr/bin/shelly-ui`) is the package's own binary. There is no network activity, obfuscation, or deviation from expected packaging practices.
</details>
<evidence></evidence>
<summary>Legitimate integration script, no malicious behavior</summary>
</security_assessment>

[2/6] Reviewing PKGBUILD, com.shellyorg.shelly.desktop, shelly-flatpak-integrate, shellybuild.conf...
[3/6] Reviewing PKGBUILD, com.shellyorg.shelly.desktop, shellybuild.conf...
+ Reviewed shelly-flatpak-integrate. Status: SAFE -- Legitimate integration script, no malicious behavior
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices. It downloads two prebuilt tarballs and supporting files from the project's own GitHub releases at a pinned version, with sha256 checksums for every source item. There are no suspicious network requests, no eval or base64-obfuscated commands, no curl-piped-to-shell patterns, and no writes outside `$pkgdir` during packaging.

The only mildly notable operation is `"$srcdir/shelly" utility --docs | go-md2man &gt; "$srcdir/shelly.1"`, which executes the downloaded binary at build time to generate its own man page. This is not unusual for a prebuilt CLI package, and the binary comes from the same checksummed upstream release. The polkit policy and installed helper script support the package's stated purpose; without their contents showing otherwise, nothing here indicates injected or malicious behavior.
</details>
<evidence>
</evidence>
<summary>
Standard PKGBUILD, pinned upstream sources with checksums; no evidence of malicious code.
</summary>
</security_assessment>

[4/6] Reviewing com.shellyorg.shelly.desktop, shellybuild.conf...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD, pinned upstream sources with checksums; no evidence of malicious code.
LLM auditresponse for com.shellyorg.shelly.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.desktop` entry for the Shelly application, a package manager frontend. It defines the application name, icon, categories, MIME types, and three desktop actions (Flatpak Install/Update/Remove). All `Exec` lines reference the legitimate binary `/usr/bin/shelly-ui` with appropriate arguments. There is no obfuscation, network requests, file manipulation, or any deviation from standard desktop file practice. The content is entirely declarative and poses no security risk.
</details>
<evidence></evidence>
<summary>Standard .desktop file for package manager UI.</summary>
</security_assessment>

[5/6] Reviewing shellybuild.conf...
+ Reviewed com.shellyorg.shelly.desktop. Status: SAFE -- Standard .desktop file for package manager UI.
LLM auditresponse for shellybuild.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a configuration template for Shelly, an AUR builder. All settings are commented out, providing default examples. There is no executable code, no network requests, no obfuscation, and no system modifications. The file is inert and solely intended for user customization.
</details>
<evidence></evidence>
<summary>Inert configuration file, no security concerns.</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed shellybuild.conf. Status: SAFE -- Inert configuration file, no security concerns.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 22,218
  Completion Tokens: 3,675
  Total Tokens: 25,893
  Total Cost: $0.002620
  Execution Time: 65.18 seconds

Final Status: SAFE


No issues found.
