---
package: eusoft-frhelper
pkgver: 13.5.2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 15673
completion_tokens: 2445
total_tokens: 18118
cost: 0.0032847627
execution_time: 42.57
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-09T07:23:35Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: Plain license file, no security concerns.
  - file: PKGBUILD
    status: safe
    summary: No malicious behavior detected; standard repackaging PKGBUILD.
  - file: eusoft-frhelper.desktop
    status: safe
    summary: Standard desktop entry file, no malicious content.
  - file: .SRCINFO
    status: safe
    summary: Standard metadata file, no unsafe content.
  - file: frhelper.sh
    status: safe
    summary: Standard launcher; no malicious activity.
---

Materializing eusoft-frhelper from local mirror...
Materialized eusoft-frhelper
Analyzing eusoft-frhelper AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable definitions (package metadata, sources, checksums, dependencies) and two function definitions (`prepare()` and `package()`). There are no command substitutions, backtick executions, `eval`, or any other top-level operations that would execute during `makepkg --printsrcinfo`. All potentially destructive or file-modifying code is confined within the `prepare()` and `package()` functions, which are not invoked by the `--printsrcinfo` operation. Therefore, sourcing this PKGBUILD for metadata extraction is safe.
</details>
<evidence></evidence>
<summary>Sourcing this PKGBUILD is safe for metadata extraction.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Sourcing this PKGBUILD is safe for metadata extraction.
Reviewing the 5 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, LICENSE...
[0/5] Reviewing .SRCINFO, LICENSE, PKGBUILD...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a plain-text license document containing only references to the upstream application's terms of service and privacy policy URLs. It contains no executable code, no suspicious operations, and no departure from standard packaging practices. No security issues are present.
</details>
<evidence>
</evidence>
<summary>Plain license file, no security concerns.</summary>
</security_assessment>

[0/5] Reviewing .SRCINFO, LICENSE, PKGBUILD, eusoft-frhelper.desktop...
[1/5] Reviewing .SRCINFO, PKGBUILD, eusoft-frhelper.desktop...
+ Reviewed LICENSE. Status: SAFE -- Plain license file, no security concerns.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for repackaging a proprietary .deb package. It downloads the official upstream package from the vendor&#39;s own domain (static.eudic.net), extracts it, removes unnecessary bundled libraries, installs a clean launcher script, desktop entry, and icons, and normalizes permissions. All checksums are pinned, and no suspicious commands (eval, curl, wget, base64, git pull) are present. There is no obfuscation, data exfiltration, or unexpected behavior. The package clearly serves its stated purpose as a repackaged French dictionary application.
</details>
<evidence></evidence>
<summary>No malicious behavior detected; standard repackaging PKGBUILD.</summary>
</security_assessment>

[1/5] Reviewing .SRCINFO, PKGBUILD, eusoft-frhelper.desktop, frhelper.sh...
[2/5] Reviewing .SRCINFO, eusoft-frhelper.desktop, frhelper.sh...
+ Reviewed PKGBUILD. Status: SAFE -- No malicious behavior detected; standard repackaging PKGBUILD.
LLM auditresponse for eusoft-frhelper.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard .desktop file that defines application metadata for the Frhelper French-Chinese dictionary. It contains no executable code, no network requests, no obfuscation, and no system modifications beyond normal desktop integration. The file follows the Freedesktop.org specification and is typical for AUR packages.
</details>
<evidence>
</evidence>
<summary>Standard desktop entry file, no malicious content.</summary>
</security_assessment>

[3/5] Reviewing .SRCINFO, frhelper.sh...
+ Reviewed eusoft-frhelper.desktop. Status: SAFE -- Standard desktop entry file, no malicious content.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a metadata file describing the package source and dependencies. It declares a single source (a .deb file) fetched from the application&#39;s official domain (static.eudic.net) with a SHA256 checksum provided, ensuring integrity. All other sources (a shell launcher, desktop file, and license) also have checksums. There is no obfuscated code, no dangerous commands (eval, curl|bash, etc.), and no behavior that deviates from standard AUR packaging for prebuilt binary repackages. The file contains only declarative data; it is not executed directly.
</details>
<evidence></evidence>
<summary>Standard metadata file, no unsafe content.</summary>
</security_assessment>

[4/5] Reviewing frhelper.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata file, no unsafe content.
LLM auditresponse for frhelper.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This launcher script performs standard environment setup for the Frhelper application: forcing the Qt platform to xcb (to avoid Wayland issues), optionally setting GStreamer plugin paths from a bundled directory, and reading user-configured flags from `~/.config/frhelper-flags.conf`. All operations are confined to the application&#x27;s own scope—no unexpected network requests, obfuscated code, system file modifications, or execution of untrusted content. The config file is read line-by-line, stripped of comments/whitespace, and passed as arguments to the binary, which is a normal pattern for user customization and does not introduce code injection or data exfiltration risks. No evidence of a supply-chain attack or malicious behavior is present.
</details>
<evidence></evidence>
<summary>Standard launcher; no malicious activity.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed frhelper.sh. Status: SAFE -- Standard launcher; no malicious activity.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 15,673
  Completion Tokens: 2,445
  Total Tokens: 18,118
  Total Cost: $0.003285
  Execution Time: 42.57 seconds

Final Status: SAFE


No issues found.
