---
package: stably-orca-bin
pkgver: 1.4.207
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 13458
completion_tokens: 1735
total_tokens: 15193
cost: 0.000829472
execution_time: 56.36
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-22T15:17:01Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard metadata; no malicious content.
  - file: stably-orca.sh
    status: safe
    summary: Standard wrapper script with no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard AppImage packaging; no malicious code detected.
  - file: stably-orca.desktop
    status: safe
    summary: Standard .desktop file with no security issues.
---

Materializing stably-orca-bin from local mirror...
Materialized stably-orca-bin
Analyzing stably-orca-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's top-level scope contains only standard variable assignments (pkgname, pkgver, source, sha256sums, etc.) and function definitions (prepare, package). There is no top-level command substitution, no calls to external tools, no network operations, and no file modifications. `makepkg --printsrcinfo` will only source the file, and none of the code that could execute during this step performs any potentially dangerous actions. The prepare() and package() functions are not executed during `--printsrcinfo`, so they are out of scope for this narrow gate.
</details>
<evidence>
</evidence>
<summary>
Top-level PKGBUILD code is benign; only variable definitions and function declarations present.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD code is benign; only variable definitions and function declarations present.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, PKGBUILD...
[0/4] Reviewing .SRCINFO, PKGBUILD, stably-orca.desktop...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is the standard `.SRCINFO` metadata for the `stably-orca-bin` AUR package. It defines package name, version, dependencies, and three source files: an AppImage from the project's own GitHub releases page, a shell script (`stably-orca.sh`), and a `.desktop` file. All three sources have SHA-256 checksums listed, providing integrity verification. There is no embedded code, no network requests, no obfuscated content, and no deviation from normal AUR packaging practices. The file is safe and contains no evidence of a supply-chain attack.
</details>
<evidence></evidence>
<summary>Standard metadata; no malicious content.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, PKGBUILD, stably-orca.desktop, stably-orca.sh...
[1/4] Reviewing PKGBUILD, stably-orca.desktop, stably-orca.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata; no malicious content.
LLM auditresponse for stably-orca.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard wrapper for launching the Stably AI Orca application from its extracted location in /opt/stably-orca. It exports the APPDIR environment variable and executes the AppRun binary with a disabled Vulkan feature flag. There are no network requests, downloads, file modifications, obfuscated code, or any other malicious behaviors. The comment about Wayland is a normal configuration option. The script is entirely benign and follows typical packaging practices for prebuilt binary applications.</details>
<evidence></evidence>
<summary>Standard wrapper script with no malicious content.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, stably-orca.desktop...
+ Reviewed stably-orca.sh. Status: SAFE -- Standard wrapper script with no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD downloads the AppImage from the official GitHub releases page of the project (stablyai/orca) and verifies it with a pinned SHA256 checksum. The prepare step extracts the AppImage into a squashfs-root directory, and the package function installs the extracted tree into `/opt/stably-orca` with appropriate permissions. All operations are standard for packaging an AppImage as a normal directory to avoid AppImageLauncher interference. There are no suspicious network requests, obfuscated code, or unexpected system modifications. The icon installation loop and fallback logic are reasonable. No evidence of injected malicious code exists; the file follows typical AUR packaging practices.
</details>
<evidence></evidence>
<summary>Standard AppImage packaging; no malicious code detected.</summary>
</security_assessment>

[3/4] Reviewing stably-orca.desktop...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AppImage packaging; no malicious code detected.
LLM auditresponse for stably-orca.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.desktop` file that defines a launcher entry for the Orca IDE application. It specifies the application name, comment, icon, categories, and the command to execute (`stably-orca %U`). The `%U` argument indicates that the application supports opening URLs or files passed as arguments, which is normal for a graphical application. No malicious behavior, obfuscation, or suspicious content is present. The file conforms to the Freedesktop Desktop Entry Specification and contains no executable code or network operations.</details>
<evidence></evidence>
<summary>Standard .desktop file with no security issues.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed stably-orca.desktop. Status: SAFE -- Standard .desktop file with no security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,458
  Completion Tokens: 1,735
  Total Tokens: 15,193
  Total Cost: $0.000829
  Execution Time: 56.36 seconds

Final Status: SAFE


No issues found.
