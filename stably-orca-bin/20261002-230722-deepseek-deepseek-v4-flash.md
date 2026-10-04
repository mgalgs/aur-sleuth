---
package: stably-orca-bin
pkgver: 1.4.219
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 13536
completion_tokens: 1896
total_tokens: 15432
cost: 0.000485184
execution_time: 43.19
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-02T23:07:21Z
file_verdicts:
  - file: stably-orca.desktop
    status: safe
    summary: Standard desktop entry file, no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard metadata file, no malicious content.
  - file: stably-orca.sh
    status: safe
    summary: "Safe wrapper: sets APPDIR and launches AppRun with arguments; no malicious behavior."
  - file: PKGBUILD
    status: safe
    summary: Standard AppImage PKGBUILD, no malicious code.
---

Materializing stably-orca-bin from local mirror...
Materialized stably-orca-bin
Analyzing stably-orca-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD defines global variables (pkgname, pkgver, source, sha256sums, etc.) and declares three functions (prepare, package). No command substitutions, backtick executions, eval, or external script sourcing occur at the top level. The `source` array uses `${url}` and `${pkgver}` which are simple variable expansions, not commands. No code within the global scope downloads or executes untrusted payloads, exfiltrates data, or performs dangerous operations. Running `makepkg --printsrcinfo` will only source these static assignments and function definitions, which is safe.
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
This is a standard `.desktop` file that defines the desktop entry for the Orca application. It contains no executable code, no network requests, no obfuscation, and no suspicious file operations. The `Exec` line simply launches the package's own binary (`stably-orca`) with `%U` for URL handling, which is normal for an IDE. The file follows standard desktop entry specifications and does not deviate from expected packaging practices. There is no evidence of malicious or dangerous behavior.
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
The .SRCINFO file is a standard Arch Linux package metadata file. It defines the package name, version, dependencies, sources, and checksums. All sources are from the official GitHub repository of the upstream project (stablyai/orca), with pinned SHA-256 checksums. There are no scripts, commands, or executable content present. The file contains no obfuscation, network requests, or system modifications. It follows standard packaging practices and presents no evidence of malicious behavior.
</details>
<evidence></evidence>
<summary>Standard metadata file, no malicious content.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, stably-orca.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata file, no malicious content.
LLM auditresponse for stably-orca.sh:
 <security_assessment>
<decision>SAFE</decision>
<details>
The script is a simple wrapper that sets the `APPDIR` environment variable to `/opt/stably-orca` and then execs the application&#8217;s `AppRun` binary with a Vulkan-related Chromium flag and passes through any user-supplied arguments. There are no network operations, no downloads, no encoded or obfuscated commands, no file modifications outside the expected application launch, and no attempts to exfiltrate data. The use of `exec` is normal for a package wrapper and the script does not fetch or execute any untrusted code at runtime. The script is consistent with standard packaging practices and contains no genuinely malicious behavior.</details>
<evidence></evidence>
<summary>Safe wrapper: sets APPDIR and launches AppRun with arguments; no malicious behavior.</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed stably-orca.sh. Status: SAFE -- Safe wrapper: sets APPDIR and launches AppRun with arguments; no malicious behavior.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a prebuilt AppImage binary. The source is downloaded from the official GitHub releases URL with a pinned SHA256 checksum. The prepare() and package() functions perform only expected operations: extracting the AppImage, copying files into place, installing a launcher script and desktop entry, and setting up icons. There is no obfuscated code, no unexpected network requests, no execution of arbitrary downloaded content beyond the extraction itself, and no attempts to exfiltrate or modify system files outside the package's own installation path. The file is safe.
</details>
<evidence></evidence>
<summary>Standard AppImage PKGBUILD, no malicious code.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AppImage PKGBUILD, no malicious code.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,536
  Completion Tokens: 1,896
  Total Tokens: 15,432
  Total Cost: $0.000485
  Execution Time: 43.19 seconds

Final Status: SAFE


No issues found.
