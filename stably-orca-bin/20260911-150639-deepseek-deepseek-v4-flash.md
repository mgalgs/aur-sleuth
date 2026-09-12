---
package: stably-orca-bin
pkgver: 1.4.200
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 13544
completion_tokens: 1764
total_tokens: 15308
cost: 0.00147706944
execution_time: 17.76
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-11T15:06:38Z
file_verdicts:
  - file: stably-orca.desktop
    status: safe
    summary: Standard desktop entry file, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR package, no malicious behavior.
  - file: .SRCINFO
    status: safe
    summary: Plain metadata file, no security issues.
  - file: stably-orca.sh
    status: safe
    summary: Standard wrapper script, no malicious content.
---

Materializing stably-orca-bin from local mirror...
Materialized stably-orca-bin
Analyzing stably-orca-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's top-level scope contains only variable definitions, comments, and function declarations. No command substitutions, external commands, or other executable statements are present at the global level. The `prepare()`, `build()`, and `package()` functions are defined but are not executed during `makepkg --printsrcinfo`. All source URLs point to the project's official GitHub releases, and checksums are provided. No malicious or suspicious code exists in the global scope.
</details>
<evidence></evidence>
<summary>No dangerous code in global scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous code in global scope.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, PKGBUILD...
[0/4] Reviewing .SRCINFO, PKGBUILD, stably-orca.desktop...
LLM auditresponse for stably-orca.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Linux desktop entry file (`.desktop`). It defines an application launcher metadata: name, generic name, comment, executable command (`stably-orca %U`), icon, categories, and startup class. There are no network requests, no obfuscated code, no dangerous commands, and no file operations. The content is entirely declarative and follows normal packaging practices. No security concerns.
</details>
<evidence></evidence>
<summary>Standard desktop entry file, no malicious content.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, PKGBUILD, stably-orca.desktop, stably-orca.sh...
[1/4] Reviewing .SRCINFO, PKGBUILD, stably-orca.sh...
+ Reviewed stably-orca.desktop. Status: SAFE -- Standard desktop entry file, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard AUR package for a prebuilt Electron-based IDE (Stably AI Orca). It downloads a pinned AppImage from the official GitHub releases page with a verified SHA-256 checksum, extracts it, and installs the contents along with wrapper scripts and icons. All operations are legitimate packaging steps: downloading from the project's own upstream, extracting with `--appimage-extract`, installing files with `install` and `cp`, setting permissions, and copying icons. There are no suspicious network requests, no obfuscation, no eval/curl/wget to unexpected hosts, and no exfiltration of data. The prepare and package functions contain only standard commands. The package uses a pinned checksum (not SKIP) and provides proper dependencies. No security issues found.
</details>
<evidence></evidence>
<summary>Standard AUR package, no malicious behavior.</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, stably-orca.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR package, no malicious behavior.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a plain `.SRCINFO` metadata file – it contains no executable logic. It simply declares the package name, version, upstream URL, dependencies, and three source items (an AppImage, a shell wrapper, and a desktop file), each accompanied by a SHA-256 checksum. All sources are fetched over HTTPS from the official GitHub releases page of the project itself (`github.com/stablyai/orca`). No dangerous commands, obfuscation, or unexpected network destinations appear. There is no actionable code to evaluate, and no evidence of supply-chain injection.
</details>
<evidence></evidence>
<summary>Plain metadata file, no security issues.</summary>
</security_assessment>

[3/4] Reviewing stably-orca.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Plain metadata file, no security issues.
LLM auditresponse for stably-orca.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a simple wrapper that sets the `APPDIR` environment variable to `/opt/stably-orca` and launches the upstream `AppRun` binary with `--disable-features=Vulkan` and passes through user arguments. There is no code that fetches remote content, exfiltrates data, modifies system files, uses obfuscation, or performs any other malicious action. The comments describe standard workarounds for AppImage detection and Vulkan compatibility issues with Electron. The commented-out Wayland flag is ordinary user-configuration. This file contains no supply-chain attack indicators.</details>
<evidence>
</evidence>
<summary>Standard wrapper script, no malicious content.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed stably-orca.sh. Status: SAFE -- Standard wrapper script, no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,544
  Completion Tokens: 1,764
  Total Tokens: 15,308
  Total Cost: $0.001477
  Execution Time: 17.76 seconds

Final Status: SAFE


No issues found.
