---
package: stably-orca-bin
pkgver: 1.4.249
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 13688
completion_tokens: 4643
total_tokens: 18331
cost: 0.002090634
execution_time: 55.43
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-05T08:10:40Z
file_verdicts:
  - file: stably-orca.desktop
    status: safe
    summary: Standard desktop file, no security issues.
  - file: .SRCINFO
    status: safe
    summary: Static metadata file, no unsafe elements.
  - file: stably-orca.sh
    status: safe
    summary: Clean wrapper script, no malicious behavior.
  - file: PKGBUILD
    status: safe
    summary: Standard prebuilt AppImage package with pinned checksums.
---

Materializing stably-orca-bin from local mirror...
Materialized stably-orca-bin
Analyzing stably-orca-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains variable assignments and function definitions in its global scope. No command substitutions, `eval`, `curl`, `wget`, or any other executable code exists outside of the `prepare()` and `package()` functions. Since `makepkg --printsrcinfo` only sources the PKGBUILD (triggering global-scope code) and does not run function bodies, there is no opportunity for malicious code to execute during this step. All potentially dangerous operations (such as running the AppImage with `--appimage-extract`) are confined to functions that will be audited in the full review.
</details>
<evidence></evidence>
<summary>No top-level execution risk detected.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level execution risk detected.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, PKGBUILD...
[0/4] Reviewing .SRCINFO, PKGBUILD, stably-orca.desktop...
LLM auditresponse for stably-orca.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.desktop` file for a Linux application. It defines the application name, icon, categories, and launch command (`stably-orca %U`). There are no embedded scripts, no suspicious network or file operations, and no obfuscated code. The content is consistent with normal packaging practices for a desktop application entry.
</details>
<evidence></evidence>
<summary>Standard desktop file, no security issues.</summary>
</security_assessment>

[1/4] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed stably-orca.desktop. Status: SAFE -- Standard desktop file, no security issues.
[1/4] Reviewing .SRCINFO, PKGBUILD, stably-orca.sh...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is static package metadata for the stably-orca-bin AUR package. It defines sources, dependencies, checksums, and other packaging fields. No executable code, obfuscated strings, or suspicious network destinations are present. All source URLs point to the official GitHub repository (github.com/stablyai/orca) with pinned version tags and valid SHA-256 checksums. This file does not perform any actions; it only describes the package for the AUR system. No supply-chain attack indicators are present.
</details>
<evidence></evidence>
<summary>Static metadata file, no unsafe elements.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, stably-orca.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Static metadata file, no unsafe elements.
LLM auditresponse for stably-orca.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a straightforward wrapper that sets the `APPDIR` environment variable to the installation path `/opt/stably-orca` and then executes the AppRun binary with `--disable-features=Vulkan`. There are no network requests, no obfuscated code, no dangerous command substitutions, and no file operations outside the application's own scope. The comments explain the technical reasons for the flags. This is standard and safe packaging practice.
</details>
<evidence></evidence>
<summary>Clean wrapper script, no malicious behavior.</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed stably-orca.sh. Status: SAFE -- Clean wrapper script, no malicious behavior.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD packages a prebuilt AppImage from the official GitHub releases of Orca IDE. The source array includes the AppImage, a shell wrapper, and a desktop file, each pinned with a SHA256 checksum, which ensures integrity during download. The prepare() function extracts the AppImage (standard procedure for installing AppImages without FUSE) and the package() function installs the extracted tree and launcher files to expected system locations. No suspicious network destinations, obfuscated commands, exfiltration attempts, or modifications outside the application's scope are present. The operations are consistent with a legitimate prebuilt binary package.
</details>
<evidence>
</evidence>
<summary>Standard prebuilt AppImage package with pinned checksums.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard prebuilt AppImage package with pinned checksums.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,688
  Completion Tokens: 4,643
  Total Tokens: 18,331
  Total Cost: $0.002091
  Execution Time: 55.43 seconds

Final Status: SAFE


No issues found.
