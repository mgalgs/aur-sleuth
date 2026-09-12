---
package: vintagestory
pkgver: 1.22.7
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 12307
completion_tokens: 1802
total_tokens: 14109
cost: 0.00135657186
execution_time: 281.65
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-05T11:21:47Z
file_verdicts:
  - file: vintagestory.desktop
    status: safe
    summary: Standard desktop entry file, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no malicious content.
  - file: vsmodinstall-handler.desktop
    status: safe
    summary: Standard URI scheme handler; no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO, no malicious content.
---

Materializing vintagestory from local mirror...
Materialized vintagestory
Analyzing vintagestory AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only static variable assignments and function definitions in the global scope. No command substitutions, backtick executions, or external commands are present at the top level. The `source` array and `md5sums` are plain strings. `prepare()` and `package()` are defined but not executed during `makepkg --printsrcinfo`. Therefore, sourcing this PKGBUILD poses no risk of code execution.
</details>
<evidence></evidence>
<summary>No malicious code executes at global scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code executes at global scope.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, PKGBUILD...
[0/4] Reviewing .SRCINFO, PKGBUILD, vintagestory.desktop...
LLM auditresponse for vintagestory.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Linux desktop entry file. It specifies the application name, icon, executable path, and category. There are no scripts, network requests, encoded commands, or any other potentially malicious content. The file conforms to the expected format for a .desktop file and poses no security risk.
</details>
<evidence></evidence>
<summary>Standard desktop entry file, no security issues.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, PKGBUILD, vintagestory.desktop, vsmodinstall-handler.desktop...
[1/4] Reviewing .SRCINFO, PKGBUILD, vsmodinstall-handler.desktop...
+ Reviewed vintagestory.desktop. Status: SAFE -- Standard desktop entry file, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard packaging script for the Vintage Story game. It downloads the official Linux client tarball from the game's CDN (cdn.vintagestory.at) with a provided MD5 checksum, removes an upstream install script, creates symlinks for case-insensitive asset access, and installs the application to `/opt/` with .desktop files and a symlink in `/usr/bin/`. All operations are conventional AUR packaging practices: file extraction, removal of upstream-provided installer, symlink creation, and standard `install`/`cp` commands. No obfuscated code, suspicious network requests, or commands that could exfiltrate data or execute untrusted code are present. The source is pinned by checksum (not SKIP), and the URLs point to the project's own infrastructure. The package is safe.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with no malicious content.</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, vsmodinstall-handler.desktop...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no malicious content.
LLM auditresponse for vsmodinstall-handler.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard desktop entry file defining a URI scheme handler for `vintagestorymodinstall://`. It invokes `/usr/bin/vintagestory -i %u`, which is the expected behavior for a 1-click mod install handler. No suspicious commands, obfuscation, or network requests are present. The file follows the Freedesktop.org Desktop Entry Specification and contains no security issues.
</details>
<evidence></evidence>
<summary>Standard URI scheme handler; no security issues.</summary>
</security_assessment>

[3/4] Reviewing .SRCINFO...
+ Reviewed vsmodinstall-handler.desktop. Status: SAFE -- Standard URI scheme handler; no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard AUR .SRCINFO metadata file for the vintagestory package. It defines package metadata such as version, dependencies, and source URLs. The sources are from the official game distribution site (cdn.vintagestory.at) and local files (vintagestory.desktop, vsmodinstall-handler.desktop), all with MD5 checksums. Dependencies (dotnet-runtime-10.0, opengl-driver, openal, glibc) are typical for a game. There are no suspicious commands, network requests, encoded data, or other indicators of malicious behavior. The file is purely declarative and follows standard AUR packaging practices.
</details>
<evidence></evidence>
<summary>Standard .SRCINFO, no malicious content.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO, no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,307
  Completion Tokens: 1,802
  Total Tokens: 14,109
  Total Cost: $0.001357
  Execution Time: 281.65 seconds

Final Status: SAFE


No issues found.
