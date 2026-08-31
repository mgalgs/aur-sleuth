---
package: shelly
pkgver: 3.1.2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 24146
completion_tokens: 3087
total_tokens: 27233
cost: 0.002686533920
execution_time: 135.75
files_reviewed: 6
files_skipped: 0
maintainer_files: 6
source_fetch: ok
upstream_files: 469
upstream_named_files: 5
unpinned_sources: 0
date: 2026-08-31T07:04:33Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO metadata, no security concerns.
  - file: com.shellyorg.shelly-notifications.desktop
    status: safe
    summary: Standard .desktop file, no security issues.
  - file: com.shellyorg.shelly.desktop
    status: safe
    summary: Standard desktop entry, no security concerns.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD, no suspicious behavior.
  - file: shellybuild.conf
    status: safe
    summary: Inert configuration template with no malicious content.
  - file: shelly-flatpak-integrate
    status: safe
    summary: Flatpak integration script, no malicious patterns found.
---

Cloning https://aur.archlinux.org/shelly.git...
Cloned shelly
Analyzing shelly AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD defines only variables and functions at the top level. No `eval`, `curl`, `wget`, or other commands are executed during sourcing or `pkgver()`. The `source` array includes an HTTPS tarball from the project's official GitHub release and additional local configuration files, all with specified SHA‑256 checksums. No code outside of `build()`, `check()`, or `package()` functions is executed by `makepkg --nobuild --nodeps --noprepare` or `--printsrcinfo`. Therefore, running these commands poses no security risk.
</details>
<evidence>
</evidence>
<summary>No malicious top-level or pkgver() code; source fetching is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious top-level or pkgver() code; source fetching is safe.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: the PKGBUILD names 5 file(s) in the downloaded sources (src/Shelly-ALPM-3.1.2/assets/shelly-shell-symbolic.svg, src/Shelly-ALPM-3.1.2/assets/shelly-updates-symbolic.svg, src/Shelly-ALPM-3.1.2/assets/shellylogo-tray.png and 2 more); they are upstream content and were not reviewed.
Reviewing the 6 file(s) in the AUR repository. The 469 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/6] Reviewing .SRCINFO...
[0/6] Reviewing .SRCINFO, PKGBUILD...
[0/6] Reviewing .SRCINFO, PKGBUILD, com.shellyorg.shelly-notifications.desktop...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.SRCINFO` metadata file for an Arch User Repository (AUR) package. It contains only declarative fields: package name, version, source URLs with pinned tarball checksums, dependencies, and split package definitions. All source URLs point to the project's own GitHub repository (`github.com/Seafoam-Labs`), and all checksums are provided (none are set to `SKIP`). There are no executable instructions, no obfuscated code, no network requests, and no references to untrusted hosts. The file follows normal AUR packaging conventions and does not exhibit any malicious or dangerous behavior.
</details>
<evidence>
</evidence>
<summary>Standard .SRCINFO metadata, no security concerns.</summary>
</security_assessment>

[0/6] Reviewing .SRCINFO, PKGBUILD, com.shellyorg.shelly-notifications.desktop, com.shellyorg.shelly.desktop...
[1/6] Reviewing PKGBUILD, com.shellyorg.shelly-notifications.desktop, com.shellyorg.shelly.desktop...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO metadata, no security concerns.
LLM auditresponse for com.shellyorg.shelly-notifications.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard freedesktop.org `.desktop` file for a notification service. It defines the application name, comments, categories, and an `Exec` line that runs `/usr/bin/shelly-notifications`, a binary installed by the package. There are no network requests, obfuscated commands, dangerous system operations, or any other signs of malicious behavior. The file is entirely benign and follows normal packaging conventions for a tray notification service.
</details>
<evidence></evidence>
<summary>Standard .desktop file, no security issues.</summary>
</security_assessment>

[2/6] Reviewing PKGBUILD, com.shellyorg.shelly.desktop...
+ Reviewed com.shellyorg.shelly-notifications.desktop. Status: SAFE -- Standard .desktop file, no security issues.
[2/6] Reviewing PKGBUILD, com.shellyorg.shelly.desktop, shelly-flatpak-integrate...
LLM auditresponse for com.shellyorg.shelly.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard .desktop entry for the Shelly package manager application. It defines the launcher with localized metadata, MIME type associations, and three desktop actions for Flatpak operations. All `Exec` lines point to `/usr/bin/shelly-ui` with expected arguments. There is no obfuscated code, no network requests, no suspicious file operations, and no deviation from normal packaging practices for a desktop entry file.
</details>
<evidence>

</evidence>
<summary>Standard desktop entry, no security concerns.</summary>
</security_assessment>

[2/6] Reviewing PKGBUILD, com.shellyorg.shelly.desktop, shelly-flatpak-integrate, shellybuild.conf...
[3/6] Reviewing PKGBUILD, shelly-flatpak-integrate, shellybuild.conf...
+ Reviewed com.shellyorg.shelly.desktop. Status: SAFE -- Standard desktop entry, no security concerns.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices. All external sources are pinned with SHA-256 checksums (including the tarball from the official GitHub release). The build process only invokes the upstream build system (zig build) and standard shell commands for installation, completion generation, and translation handling. No suspicious network requests, obfuscated code, eval, base64 decoding, or unexpected file operations are present. The polkit policy installation is normal for a package manager that requires administrative privileges. There is no evidence of injected malicious code or supply chain attack.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD, no suspicious behavior.</summary>
</security_assessment>

[4/6] Reviewing shelly-flatpak-integrate, shellybuild.conf...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD, no suspicious behavior.
LLM auditresponse for shellybuild.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a commented configuration template for the `shelly` AUR builder. It contains only commented-out lines that define optional build, package, and destination settings. There is no executable code, no network requests, no file modifications, and no obfuscated content. The file is completely inert and serves solely as documentation for users who wish to customize the builder's behavior. No security concerns exist.
</details>
<evidence></evidence>
<summary>Inert configuration template with no malicious content.</summary>
</security_assessment>

[5/6] Reviewing shelly-flatpak-integrate...
+ Reviewed shellybuild.conf. Status: SAFE -- Inert configuration template with no malicious content.
LLM auditresponse for shelly-flatpak-integrate:
<security_assessment>
<decision>SAFE</decision>
<details>
The script `shelly-flatpak-integrate` is a Flatpak integration helper for the Shelly package. It adds a &quot;Manage in Shelly&quot; desktop action to Flatpak application `.desktop` files by copying them to the user&#x27;s local applications directory and appending a Desktop Action definition that launches `/usr/bin/shelly-ui`. This behavior is standard for a package that provides a GUI for managing Flatpak installations. There is no network activity, no downloading or executing of remote code, no obfuscation, no exfiltration of data, and no modification of unrelated system files. All operations are limited to Flatpak launchers and the user&#x27;s own `.local/share/applications` directory. The script is idempotent and uses only standard shell commands. It does not exhibit any of the genuinely malicious patterns described in the guidelines.
</details>
<evidence></evidence>
<summary>Flatpak integration script, no malicious patterns found.</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed shelly-flatpak-integrate. Status: SAFE -- Flatpak integration script, no malicious patterns found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 24,146
  Completion Tokens: 3,087
  Total Tokens: 27,233
  Total Cost: $0.002687
  Execution Time: 135.75 seconds

Final Status: SAFE


No issues found.
