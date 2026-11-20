---
package: shelly-flatpak-backend-bin
pkgbase: shelly-bin
pkgver: 3.4.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 28249
completion_tokens: 5669
total_tokens: 33918
cost: 0.00356283
execution_time: 68.23
files_reviewed: 6
files_skipped: 0
maintainer_files: 6
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-20T00:42:57Z
file_verdicts:
  - file: com.shellyorg.shelly-notifications.desktop
    status: safe
    summary: Standard .desktop configuration file with no security issues.
  - file: .SRCINFO
    status: safe
    summary: Safe, standard AUR metadata file.
  - file: com.shellyorg.shelly.desktop
    status: safe
    summary: Standard .desktop file, no security issues.
  - file: shellybuild.conf
    status: safe
    summary: Safe configuration file with no executable code.
  - file: shelly-flatpak-integrate
    status: safe
    summary: Legitimate integration script, no security issues found.
  - file: PKGBUILD
    status: safe
    summary: "Benign PKGBUILD: pinned upstream sources, standard install steps, no malicious behavior found."
---

shelly-flatpak-backend-bin is built from shelly-bin
Materializing shelly-flatpak-backend-bin from local mirror...
Cloning https://aur.archlinux.org/shelly-bin.git...
Cloned shelly-flatpak-backend-bin
Analyzing shelly-flatpak-backend-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The global scope of this PKGBUILD contains only standard variable definitions, an array of source URLs pointing to the project's own GitHub release assets, and a case statement that reads an environment variable (`SHELLY_LIBALPM`) to conditionally set dependency lists. The case statement prints an error and returns 1 on invalid input, which is benign error handling—not a security threat. There is no obfuscation, no network requests executed during sourcing, no dangerous command substitutions, and no code that exfiltrates data or downloads untrusted payloads. All potentially risky operations (file copying, binary verification, script execution) are confined to the package functions (`package_shelly-bin` and `package_shelly-flatpak-backend-bin`), which are not executed by `makepkg --printsrcinfo`. Therefore, sourcing this PKGBUILD to print metadata is safe.
</details>
<evidence></evidence>
<summary>No dangerous global scope code.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous global scope code.
Reviewing the 6 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/6] Reviewing .SRCINFO...
[0/6] Reviewing .SRCINFO, PKGBUILD...
[0/6] Reviewing .SRCINFO, PKGBUILD, com.shellyorg.shelly-notifications.desktop...
LLM auditresponse for com.shellyorg.shelly-notifications.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Freedesktop.org `.desktop` entry file for the Shelly Notifications application, which is part of the shelly-flatpak-backend-bin package. It contains no executable code, no network requests, no file manipulation, and no obfuscated content. The file simply defines metadata such as the application name (with multilingual translations), comment, icon, categories, and keywords, plus the Exec path pointing to `/usr/bin/shelly-notifications`. The `NoDisplay=true` entry indicates this is a background/daemon-style service rather than a user-launched application. There are no security concerns present.
</details>
<evidence></evidence>
<summary>Standard .desktop configuration file with no security issues.</summary>
</security_assessment>

[1/6] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed com.shellyorg.shelly-notifications.desktop. Status: SAFE -- Standard .desktop configuration file with no security issues.
[1/6] Reviewing .SRCINFO, PKGBUILD, com.shellyorg.shelly.desktop...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a metadata file for an AUR binary package. It lists source URLs pointing to the project's own GitHub repository (Seafoam-Labs/Shelly-ALPM) for release tarballs, SVG icons, and configuration files. All sources have corresponding SHA-256 checksums (none are SKIP), and there are no embedded commands, obfuscated data, suspicious network destinations, or any executable content. The file simply declares package metadata, dependencies, and checksums as per standard AUR packaging practices. There is no evidence of supply chain injection or malicious behavior.</details>
<evidence></evidence>
<summary>Safe, standard AUR metadata file.</summary>
</security_assessment>

[2/6] Reviewing PKGBUILD, com.shellyorg.shelly.desktop...
+ Reviewed .SRCINFO. Status: SAFE -- Safe, standard AUR metadata file.
[2/6] Reviewing PKGBUILD, com.shellyorg.shelly.desktop, shelly-flatpak-integrate...
LLM auditresponse for com.shellyorg.shelly.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard freedesktop.org `.desktop` entry for the Shelly package manager. It contains no executable code, no network requests, no obfuscation, and no system modifications beyond registering the application as a MIME-type handler and defining desktop actions (Flatpak Install/Update/Remove). All paths (`/usr/bin/shelly-ui`, `/usr/bin/shelly-ui --page ...`) point to the package's own installed binary. There are no signs of malicious or unexpected behavior. The file conforms to normal packaging practices for a GUI application.
</details>
<evidence></evidence>
<summary>Standard .desktop file, no security issues.</summary>
</security_assessment>

[2/6] Reviewing PKGBUILD, com.shellyorg.shelly.desktop, shelly-flatpak-integrate, shellybuild.conf...
[3/6] Reviewing PKGBUILD, shelly-flatpak-integrate, shellybuild.conf...
+ Reviewed com.shellyorg.shelly.desktop. Status: SAFE -- Standard .desktop file, no security issues.
LLM auditresponse for shellybuild.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a commented configuration template for the Shelly AUR builder. It contains no executable code, no network requests, no obfuscation, and no commands that deviate from standard packaging/configuration practices. All lines are either comments or commented-out example settings. There is no evidence of malicious behavior or supply-chain attack.
</details>
<evidence>

</evidence>
<summary>Safe configuration file with no executable code.</summary>
</security_assessment>

[4/6] Reviewing PKGBUILD, shelly-flatpak-integrate...
+ Reviewed shellybuild.conf. Status: SAFE -- Safe configuration file with no executable code.
LLM auditresponse for shelly-flatpak-integrate:
<security_assessment>
<decision>SAFE</decision>
<details>
This script integrates a Shelly action into existing Flatpak desktop entries. It reads desktop files from standard Flatpak export directories and writes updated copies into the user&#39;s local applications directory ($HOME/.local/share/applications). All operations are local and perform only file copies, sed patches, and an `update-desktop-database` call. The appended desktop action points to `/usr/bin/shelly-ui`, a local binary from the same package. No network requests, obfuscation, eval, or system-wide tampering occur. Error handling and temporary file usage follow good practices. The behaviour is consistent with a routine packaging integration helper and presents no supply-chain or exfiltration risk.
</details>
<evidence>
</evidence>
<summary>Legitimate integration script, no security issues found.</summary>
</security_assessment>

[5/6] Reviewing PKGBUILD...
+ Reviewed shelly-flatpak-integrate. Status: SAFE -- Legitimate integration script, no security issues found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard prebuilt-binary (&#x60;-bin&#x60;) package. All remote sources are fetched over HTTPS from the project's own GitHub repository (release tarballs and tag-pinned SVG assets from the upstream repo), and every source — including the local helper files — has a pinned sha256 checksum. There are no SKIP checksums, no unpinned git clones, and no suspicious hosts or protocols.

The build logic is ordinary packaging work: &#x60;readelf&#x60; verification of the binary's dynamic dependencies (a release-variant sanity check), &#x60;install&#x60;/&#x60;cp&#x60; of files into &#x60;$pkgdir&#x60;, installation of desktop entries, icons, completions, man page, translations, and a heredoc-generated polkit policy that authorizes running &#x60;/usr/bin/shelly&#x60; via pkexec with &#x60;auth_admin_keep&#x60; — expected for a package manager that needs privileged operations. The &#x60;SHELLY_LIBALPM&#x60; environment variable is a harmless build-time variant toggle. The only code executed at build time is the package's own pinned upstream binary (&#x60;"$srcdir/shelly" utility --docs&#x60;) to generate the man page; this is a minor trust consideration but is the application's own intended functionality, not an injection or exfiltration.

No obfuscated/encoded commands, no &#x60;eval&#x60;/&#x60;curl|bash&#x60;, no reverse shells or backdoors, no writes outside &#x60;$srcdir&#x60;/&#x60;$pkgdir&#x60;, and no data exfiltration were found. The file is consistent with legitimate Arch packaging practices.
</details>
<evidence>
</evidence>
<summary>
Benign PKGBUILD: pinned upstream sources, standard install steps, no malicious behavior found.</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Benign PKGBUILD: pinned upstream sources, standard install steps, no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 28,249
  Completion Tokens: 5,669
  Total Tokens: 33,918
  Total Cost: $0.003563
  Execution Time: 68.23 seconds

Final Status: SAFE


No issues found.
