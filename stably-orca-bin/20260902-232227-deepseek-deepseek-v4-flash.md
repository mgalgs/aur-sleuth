---
package: stably-orca-bin
pkgver: 1.4.195
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: c6a5a9f6b0e70545bff9fff8802c361e476b0a86
prompt_tokens: 13635
completion_tokens: 2937
total_tokens: 16572
cost: 0.00151858056
execution_time: 93.2
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: ok
upstream_files: 3
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-02T23:22:26Z
file_verdicts:
  - file: stably-orca.desktop
    status: safe
    summary: Standard .desktop file, no security issues.
  - file: .SRCINFO
    status: safe
    summary: Declarative package metadata; no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD, no malicious behavior detected.
  - file: stably-orca.sh
    status: safe
    summary: Safe launch wrapper; no malicious behavior.
---

Cloning https://aur.archlinux.org/stably-orca-bin.git...
Cloned stably-orca-bin
Analyzing stably-orca-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only variable assignments, array definitions, and function definitions (prepare, package). There is no top-level command substitution, no `eval`, no `curl|bash`, and no `pkgver()` function that could execute code during the source or fetch phases. The `source` array downloads from the project's official GitHub releases and includes two local files; all three have explicit SHA-256 checksums. The `noextract` directive prevents the AppImage from being extracted during the fetch phase. Since `makepkg --nobuild --nodeps --noprepare` only fetches sources and sources the PKGBUILD (which executes only top-level code and `pkgver()`), there is no opportunity for malicious code to run. No suspicious or obfuscated content is present.
</details>
<evidence></evidence>
<summary>Safe: no executable code in top-level scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe: no executable code in top-level scope.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Reviewing the 4 file(s) in the AUR repository. The 3 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, PKGBUILD...
[0/4] Reviewing .SRCINFO, PKGBUILD, stably-orca.desktop...
LLM auditresponse for stably-orca.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.desktop` file for the Orca application. It contains only standard desktop entry fields (Name, GenericName, Comment, Exec, Terminal, Type, Icon, Categories, StartupWMClass). The Exec line runs `stably-orca %U`, which is a typical pattern for launching an application with optional URL arguments. There is no malicious code, network requests, file operations, obfuscation, or any deviation from normal packaging practices. The file poses no security threat.
</details>
<evidence></evidence>
<summary>Standard .desktop file, no security issues.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, PKGBUILD, stably-orca.desktop, stably-orca.sh...
[1/4] Reviewing .SRCINFO, PKGBUILD, stably-orca.sh...
+ Reviewed stably-orca.desktop. Status: SAFE -- Standard .desktop file, no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a metadata-only descriptor for the AUR package. It declares sources (an AppImage from the official GitHub release, plus a shell script and a .desktop file), all with pinned SHA256 checksums. No executable code, no suspicious network destinations, and no obfuscated or dangerous constructs are present. The file follows standard AUR packaging conventions for a prebuilt binary package.</details>
<evidence></evidence>
<summary>Declarative package metadata; no malicious content.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, stably-orca.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Declarative package metadata; no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Arch packaging practices for an AppImage-based Electron application. It downloads the upstream AppImage from the official GitHub releases, verifies it with a SHA-256 checksum, extracts it using `--appimage-extract`, and installs the extracted files into the system. No evasive or obfuscated commands are present. The `package()` function only copies files into `$pkgdir` and sets appropriate permissions. There are no unexpected network requests, data exfiltration, backdoors, or tampering with system files beyond the package&#8217;s own installation paths. The script contains only explanatory comments and routine operations. The icon detection loop is a practical workaround for upstream naming changes, not malicious code.  
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD, no malicious behavior detected.</summary>
</security_assessment>

[3/4] Reviewing stably-orca.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD, no malicious behavior detected.
LLM auditresponse for stably-orca.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The wrapper script is a standard launch script for an extracted AppImage. It sets the `APPDIR` environment variable to the installation path (`/opt/stably-orca`) and executes the `AppRun` binary with a Vulkan disable flag and any user-provided arguments (`$@`). There are no network requests, obfuscated code, dangerous commands, or any operations beyond launching the application. The script adheres to normal AUR packaging practices and does not introduce any supply-chain attack vectors.
</details>
<evidence></evidence>
<summary>Safe launch wrapper; no malicious behavior.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed stably-orca.sh. Status: SAFE -- Safe launch wrapper; no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,635
  Completion Tokens: 2,937
  Total Tokens: 16,572
  Total Cost: $0.001519
  Execution Time: 93.20 seconds

Final Status: SAFE


No issues found.
