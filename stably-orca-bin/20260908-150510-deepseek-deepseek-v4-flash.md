---
package: stably-orca-bin
pkgver: 1.4.198
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 13543
completion_tokens: 1945
total_tokens: 15488
cost: 0.001544668398
execution_time: 157.39
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-08T15:05:09Z
file_verdicts:
  - file: stably-orca.desktop
    status: safe
    summary: Standard desktop entry file, no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard package metadata, no malicious code.
  - file: stably-orca.sh
    status: safe
    summary: Benign wrapper script; sets APPDIR and executes upstream AppRun safely.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD, no malicious code found.
---

Materializing stably-orca-bin from local mirror...
Materialized stably-orca-bin
Analyzing stably-orca-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global/top-level scope only contains standard variable definitions (pkgname, pkgver, source, sha256sums, etc.) and no command substitutions, function calls, or executable code. The source array references the project's own GitHub releases URL, which is expected. The `prepare()` and `package()` functions are defined but will not be executed during `makepkg --printsrcinfo`. Therefore, sourcing this PKGBUILD poses no risk of executing malicious code.
</details>
<evidence></evidence>
<summary>No malicious code in global scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code in global scope.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, PKGBUILD...
[0/4] Reviewing .SRCINFO, PKGBUILD, stably-orca.desktop...
LLM auditresponse for stably-orca.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.desktop` file used to register the application in the system's desktop menu. It contains no executable code, no network requests, no file modifications, and no obfuscation. The `Exec` line simply launches the `stably-orca` binary with optional URI arguments. There is no evidence of any malicious behavior.
</details>
<evidence></evidence>
<summary>Standard desktop entry file, no security issues.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, PKGBUILD, stably-orca.desktop, stably-orca.sh...
[1/4] Reviewing .SRCINFO, PKGBUILD, stably-orca.sh...
+ Reviewed stably-orca.desktop. Status: SAFE -- Standard desktop entry file, no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.SRCINFO` metadata file for an AUR package. It declares package information, dependencies, and sources from the project's official GitHub releases. All three source entries include SHA256 checksums, allowing integrity verification. No executable code, obfuscation, or suspicious network destinations are present. The contents adhere to normal packaging practices.
</details>
<evidence></evidence>
<summary>Standard package metadata, no malicious code.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, stably-orca.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard package metadata, no malicious code.
LLM auditresponse for stably-orca.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a simple wrapper that sets the `APPDIR` environment variable to the package installation path and then executes the upstream `AppRun` binary with a Vulkan-disabling flag and any user-supplied arguments. There are no network requests, no downloads, no obfuscated or encoded content, no file system modifications, and no execution of attacker-controlled remote code. The behavior is consistent with standard packaging for an AppImage-style application extracted into `/opt`. The commented-out Wayland variant is benign and clearly documented. No security issues found.
</details>
<evidence>

</evidence>
<summary>
Benign wrapper script; sets APPDIR and executes upstream AppRun safely.
</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed stably-orca.sh. Status: SAFE -- Benign wrapper script; sets APPDIR and executes upstream AppRun safely.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard Arch Linux packaging recipe for a prebuilt Electron application (Stably Orca). It downloads an AppImage from the project's official GitHub releases, extracts it, and installs the extracted directory along with wrapper scripts and desktop integration files. All sources are pinned with SHA-256 checksums, and there are no unexpected network requests, obfuscated commands, or suspicious file operations. The `--appimage-extract` and subsequent `cp -a` of the extracted tree are normal for converting an AppImage into a regular directory-based installation. The icon-finding loop is verbose but benign—it iterates expected paths and falls back to the root of the squashfs. No evidence of exfiltration, backdoors, or code injection. The file follows standard AUR packaging practices and contains no malicious content.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD, no malicious code found.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD, no malicious code found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,543
  Completion Tokens: 1,945
  Total Tokens: 15,488
  Total Cost: $0.001545
  Execution Time: 157.39 seconds

Final Status: SAFE


No issues found.
