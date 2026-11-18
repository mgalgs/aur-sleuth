---
package: stably-orca-bin
pkgver: 1.4.262
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 13619
completion_tokens: 2395
total_tokens: 16014
cost: 0.00165681
execution_time: 18.51
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-18T08:09:26Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO metadata, no security concerns.
  - file: stably-orca.desktop
    status: safe
    summary: Benign desktop entry file with no security concerns.
  - file: PKGBUILD
    status: safe
    summary: Standard binary AppImage repackaging with pinned checksums.
  - file: stably-orca.sh
    status: safe
    summary: Legitimate application launcher wrapper; no security issues.
---

Materializing stably-orca-bin from local mirror...
Materialized stably-orca-bin
Analyzing stably-orca-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable definitions (pkgname, pkgver, arch, source, checksums, etc.) and function definitions for `prepare()` and `package()`. No top-level command substitutions, eval, network calls, or other executable code exist outside of functions. Since `makepkg --printsrcinfo` only sources the global scope and does not execute functions, running it on this PKGBUILD is safe.
</details>
<evidence></evidence>
<summary>No malicious top-level code; safe to parse.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious top-level code; safe to parse.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, stably-orca.desktop...
[0/4] Reviewing .SRCINFO, stably-orca.desktop, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a metadata file describing the package. It contains standard fields: package name, description, version, upstream URL, dependencies, and source references. The sources are fetched from the project's own GitHub releases (`github.com/stablyai/orca`), which is expected and not suspicious. SHA256 checksums are provided for all sources (no `SKIP` values), indicating integrity verification. There is no executable code, no network exfiltration, no obfuscation, and no deviation from standard AUR packaging practices. The file is purely declarative and poses no security risk.
</details>
<evidence></evidence>
<summary>Standard .SRCINFO metadata, no security concerns.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, stably-orca.desktop, PKGBUILD, stably-orca.sh...
[1/4] Reviewing stably-orca.desktop, PKGBUILD, stably-orca.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO metadata, no security concerns.
LLM auditresponse for stably-orca.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Linux desktop entry file. It defines metadata for the Orca application (name, icon, categories) and specifies that the application should be launched via `stably-orca %U`. There are no suspicious commands, network operations, file modifications, obfuscated code, or other signs of malicious activity. The file conforms entirely to expected packaging practices for a desktop entry.
</details>
<evidence></evidence>
<summary>Benign desktop entry file with no security concerns.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, stably-orca.sh...
+ Reviewed stably-orca.desktop. Status: SAFE -- Benign desktop entry file with no security concerns.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a prebuilt binary (AppImage) Electron application. The source is downloaded from the official GitHub releases page of the project, and all checksums are pinned to specific values. The prepare() phase extracts the AppImage using its built-in `--appimage-extract` flag, which is the normal way to repackage an AppImage for Arch Linux. The package() phase installs the extracted files into `/opt` and creates wrapper scripts and desktop entries. There are no suspicious network requests, obfuscated code, or dangerous commands like `eval`, `curl|bash`, or `wget`. The icon discovery loop is a bit unusual but is a legitimate workaround for upstream naming changes and does not introduce any security risk. The file is consistent with the stated purpose of providing a convenient Arch package for the upstream Stably Orca IDE.
</details>
<evidence></evidence>
<summary>Standard binary AppImage repackaging with pinned checksums.</summary>
</security_assessment>

[3/4] Reviewing stably-orca.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard binary AppImage repackaging with pinned checksums.
LLM auditresponse for stably-orca.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This wrapper script is a standard and transparent launcher for the packaged application. It exports the `APPDIR` environment variable to resolve a known compatibility issue with the AppRun binary, and passes a `--disable-features=Vulkan` flag to work around a GPU rendering bug (explained in the comments). The script contains no network requests, no obfuscation, no file system manipulation outside of the expected `exec` call, and no data exfiltration. The comments clearly document the technical reasons for each setting, confirming this is a benign compatibility wrapper written by the package maintainer.
</details>
<evidence>
</evidence>
<summary>Legitimate application launcher wrapper; no security issues.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed stably-orca.sh. Status: SAFE -- Legitimate application launcher wrapper; no security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,619
  Completion Tokens: 2,395
  Total Tokens: 16,014
  Total Cost: $0.001657
  Execution Time: 18.51 seconds

Final Status: SAFE


No issues found.
