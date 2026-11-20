---
package: stably-orca-bin
pkgver: 1.4.264
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 13619
completion_tokens: 2128
total_tokens: 15747
cost: 0.00160875
execution_time: 17.7
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-19T20:12:00Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Declarative metadata, no code; safe.
  - file: stably-orca.desktop
    status: safe
    summary: Standard .desktop file with no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD for prebuilt AppImage, no malicious code.
  - file: stably-orca.sh
    status: safe
    summary: Standard wrapper script, no security issues.
---

Materializing stably-orca-bin from local mirror...
Materialized stably-orca-bin
Analyzing stably-orca-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains variable definitions at top-level scope: metadata strings, dependency lists, source URLs, checksums, and the `noextract` array. There are no command substitutions (`$()`, backticks), arithmetic evaluations, `eval`, `source`, or any other shell constructs that would execute code when the file is sourced by `makepkg --printsrcinfo`. The `prepare()` and `package()` functions contain all the operational logic (extracting the AppImage, installing files, locating icons), but those functions are **not** invoked during `makepkg --printsrcinfo` — they are only called during the build/package phases, which are out of scope for this narrow safety gate. Therefore, sourcing this PKGBUILD for metadata generation is safe.
</details>
<evidence></evidence>
<summary>No top-level execution threat.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level execution threat.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, stably-orca.desktop...
[0/4] Reviewing .SRCINFO, stably-orca.desktop, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard AUR `.SRCINFO` metadata file. It contains only declarative information: package name, version, description, dependencies, source URLs, and checksums. No code, scripts, or executable commands are present. The sources point to the project's own GitHub releases and use HTTPS with pinned SHA-256 checksums, which verifies integrity. There is no obfuscation, no network requests initiated by this file, and no system modifications. The content is consistent with legitimate packaging practices and exhibits no signs of a supply-chain attack.
</details>
<evidence></evidence>
<summary>Declarative metadata, no code; safe.</summary>
</security_assessment>

[1/4] Reviewing stably-orca.desktop, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Declarative metadata, no code; safe.
[1/4] Reviewing stably-orca.desktop, PKGBUILD, stably-orca.sh...
LLM auditresponse for stably-orca.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard desktop entry file (`.desktop`) for the Orca IDE application by Stably AI. It defines metadata such as name, comment, executable path (`stably-orca`), icon, and categories. There are no network requests, encoded commands, file operations, or any code execution beyond the defined executable. The content is entirely declarative and follows standard Freedesktop.org specifications. No security concerns are present.
</details>
<evidence></evidence>
<summary>Standard .desktop file with no security issues.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, stably-orca.sh...
+ Reviewed stably-orca.desktop. Status: SAFE -- Standard .desktop file with no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a prebuilt binary AppImage. It downloads the AppImage from the project's own GitHub releases page with a pinned checksum, extracts it, and installs files into the package directory. There is no obfuscated code, no unexpected network requests, no execution of unverified content, and no tampering with system files outside the application's scope. The icon-finding loop iterates over the application's own extracted tree, which is normal. No malicious behavior is present.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD for prebuilt AppImage, no malicious code.</summary>
</security_assessment>

[3/4] Reviewing stably-orca.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD for prebuilt AppImage, no malicious code.
LLM auditresponse for stably-orca.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a straightforward wrapper script that sets the `APPDIR` environment variable to `/opt/stably-orca` and launches the packaged `AppRun` binary with a `--disable-features=Vulkan` flag. The script contains no network requests, no obfuscated or encoded commands, no dangerous shell operations, and no unexpected file modifications. The comments clearly explain why the APPDIR override is needed (to work around an upstream bug) and why Vulkan is disabled (compatibility with Wayland and NVIDIA). The script serves only as a launch helper for the pre-installed application in `/opt/stably-orca`.
</details>
<evidence></evidence>
<summary>Standard wrapper script, no security issues.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed stably-orca.sh. Status: SAFE -- Standard wrapper script, no security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,619
  Completion Tokens: 2,128
  Total Tokens: 15,747
  Total Cost: $0.001609
  Execution Time: 17.70 seconds

Final Status: SAFE


No issues found.
