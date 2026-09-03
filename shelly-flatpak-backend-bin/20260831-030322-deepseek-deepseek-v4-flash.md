---
package: shelly-flatpak-backend-bin
pkgbase: shelly-bin
pkgver: 3.1.2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 22139
completion_tokens: 3072
total_tokens: 25211
cost: 0.002506043498
execution_time: 181.29
files_reviewed: 6
files_skipped: 0
maintainer_files: 6
source_fetch: ok
upstream_files: 46
upstream_named_files: 0
unpinned_sources: 0
date: 2026-08-31T03:03:21Z
file_verdicts:
  - file: com.shellyorg.shelly-notifications.desktop
    status: safe
    summary: Standard desktop entry metadata; no malicious behavior or suspicious content found.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file with no malicious content.
  - file: com.shellyorg.shelly.desktop
    status: safe
    summary: Standard desktop entry file, no security issues.
  - file: shellybuild.conf
    status: safe
    summary: Inert config file, no executable or malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD, no security issues found.
  - file: shelly-flatpak-integrate
    status: safe
    summary: Standard integration script, no security issues.
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
The PKGBUILD contains no dangerous operations in its global scope or in any function that would be executed during `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo`. The source array points to the project's own GitHub releases with valid checksums. No pkgver() function is defined, so no code beyond variable assignments and function definitions runs. All potentially riskier operations (installing binaries, running upstream tooling, file operations) are confined to the `package_*()` functions, which are not executed during source fetching or srcinfo generation. No evidence of obfuscation, unexpected network requests, or backdoors in the global scope.
</details>
<evidence></evidence>
<summary>Safe to fetch sources and print srcinfo.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe to fetch sources and print srcinfo.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Reviewing the 6 file(s) in the AUR repository. The 46 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/6] Reviewing .SRCINFO...
[0/6] Reviewing .SRCINFO, PKGBUILD...
[0/6] Reviewing .SRCINFO, PKGBUILD, com.shellyorg.shelly-notifications.desktop...
LLM auditresponse for com.shellyorg.shelly-notifications.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard freedesktop.org `.desktop` metadata file for a notification service. It contains only localized display names, comments, an executable path, an icon name, categories, keywords, and a `NoDisplay=true` flag. There is no executable code, no network access, no obfuscation, and no file operations. The referenced binary `/usr/bin/shelly-notifications` is the package's own installed component, which is expected packaging practice. Nothing in this file deviates from ordinary desktop entry content or indicates malicious behavior.
</details>
<evidence>
</evidence>
<summary>
Standard desktop entry metadata; no malicious behavior or suspicious content found.
</summary>
</security_assessment>

[1/6] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed com.shellyorg.shelly-notifications.desktop. Status: SAFE -- Standard desktop entry metadata; no malicious behavior or suspicious content found.
[1/6] Reviewing .SRCINFO, PKGBUILD, com.shellyorg.shelly.desktop...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a metadata manifest for the AUR package `shelly-flatpak-backend-bin`. It declares package sources, checksums, dependencies, and other packaging information. All sources point to the project's official GitHub releases (`https://github.com/Seafoam-Labs/Shelly-ALPM/releases/`). The checksums (`sha256sums`) are provided and are not `SKIP`, meaning the sources are pinned to specific hashes. There is no executable code, no suspicious network requests, no obfuscation, and no instructions to fetch or run untrusted content. The file adheres to standard AUR packaging practices and contains no evidence of a supply-chain attack.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file with no malicious content.</summary>
</security_assessment>

[1/6] Reviewing .SRCINFO, PKGBUILD, com.shellyorg.shelly.desktop, shelly-flatpak-integrate...
[2/6] Reviewing PKGBUILD, com.shellyorg.shelly.desktop, shelly-flatpak-integrate...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file with no malicious content.
LLM auditresponse for com.shellyorg.shelly.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Freedesktop.org `.desktop` entry file for the Shelly application, described as an Arch package manager with Flatpak backend. It contains typical fields (Name, Comment, Exec, Icon, Categories, Keywords, MimeType, Actions) and defines three desktop actions for Flatpak operations (Install, Update, Remove). All `Exec` lines reference the application's own binary `/usr/bin/shelly-ui` with appropriate arguments. There are no network requests, obfuscated code, or any instructions outside of defining application metadata and launcher behavior. No supply chain attack indicators are present.
</details>
<evidence></evidence>
<summary>Standard desktop entry file, no security issues.</summary>
</security_assessment>

[2/6] Reviewing PKGBUILD, com.shellyorg.shelly.desktop, shelly-flatpak-integrate, shellybuild.conf...
[3/6] Reviewing PKGBUILD, shelly-flatpak-integrate, shellybuild.conf...
+ Reviewed com.shellyorg.shelly.desktop. Status: SAFE -- Standard desktop entry file, no security issues.
LLM auditresponse for shellybuild.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a simple configuration file for the Shelly AUR builder tool. It contains only commented-out settings under the `[build]`, `[package]`, and `[destinations]` sections. There is no executable code, no network requests, no file system operations, no obfuscation, and no system modification commands. All lines are either blank, comments, or commented-out configuration options. The file provides template default values that users can uncomment to override. No malicious content is present.
</details>
<evidence>

</evidence>
<summary>Inert config file, no executable or malicious content.</summary>
</security_assessment>

[4/6] Reviewing PKGBUILD, shelly-flatpak-integrate...
+ Reviewed shellybuild.conf. Status: SAFE -- Inert config file, no executable or malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard Arch packaging practices with pinned SHA256 checksums for all sources, which are fetched from the project's own GitHub releases. No suspicious network requests, obfuscated code, or unexpected file operations are present. The only build-time execution of the packaged binary (`shelly utility --docs | go-md2man`) is a routine documentation generation step that uses the project's own code to produce a man page, consistent with upstream functionality. There is no evidence of data exfiltration, backdoors, credential theft, or any injection of malicious code. The polkit policy and installed files are all appropriate for the package's stated purpose as a modern package manager.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD, no security issues found.</summary>
</security_assessment>

[5/6] Reviewing shelly-flatpak-integrate...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD, no security issues found.
LLM auditresponse for shelly-flatpak-integrate:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a helper to integrate Shelly's "Manage in Shelly" action into Flatpak desktop entries. It copies desktop files from standard Flatpak export directories to the user's local applications folder (if not already present), then adds a `[Desktop Action ShellyManage]` section with an `Exec` line pointing to `/usr/bin/shelly-ui`. All file operations are confined to desktop files in the user's local scope, and the only system command run is `update-desktop-database`, a standard expected post-install step. No external network requests, obfuscation, dangerous command execution, or exfiltration of data occur. The script performs exactly what its name and comments describe and does not contain any genuinely malicious behavior.
</details>
<evidence></evidence>
<summary>Standard integration script, no security issues.</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed shelly-flatpak-integrate. Status: SAFE -- Standard integration script, no security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 22,139
  Completion Tokens: 3,072
  Total Tokens: 25,211
  Total Cost: $0.002506
  Execution Time: 181.29 seconds

Final Status: SAFE


No issues found.
