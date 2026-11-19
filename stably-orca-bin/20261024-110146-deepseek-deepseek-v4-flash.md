---
package: stably-orca-bin
pkgver: 1.4.239
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 13461
completion_tokens: 1898
total_tokens: 15359
cost: 0.001570387
execution_time: 26.55
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-24T11:01:45Z
file_verdicts:
  - file: stably-orca.desktop
    status: safe
    summary: Standard desktop entry file, no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD, no malicious code found.
  - file: stably-orca.sh
    status: safe
    summary: Clean wrapper script; no malicious behavior.
---

Materializing stably-orca-bin from local mirror...
Materialized stably-orca-bin
Analyzing stably-orca-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global/top-level scope contains only standard variable assignments (pkgname, pkgver, source array, etc.) and function definitions. There are no command substitutions, backtick executions, or any other active code that could run when the file is sourced by `makepkg --printsrcinfo`. The potentially dangerous operations (AppImage extraction, file manipulation) are confined to `prepare()` and `package()` functions, which are **not executed** during this metadata‑parsing step. No data exfiltration, code downloading, or other malicious behavior exists in the global scope.
</details>
<evidence></evidence>
<summary>No dangerous top-level code; safe to source.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code; safe to source.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, PKGBUILD...
[0/4] Reviewing .SRCINFO, PKGBUILD, stably-orca.desktop...
LLM auditresponse for stably-orca.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.desktop` file used to register an application in the desktop menu. It contains only metadata fields (Name, GenericName, Comment, Exec, Terminal, Type, Icon, Categories, StartupWMClass). The `Exec` line runs `stably-orca %U`, which is the expected executable for this package. No obfuscation, network requests, dangerous commands, or unusual operations are present. This file poses no security risk.
</details>
<evidence></evidence>
<summary>Standard desktop entry file, no security concerns.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, PKGBUILD, stably-orca.desktop, stably-orca.sh...
[1/4] Reviewing .SRCINFO, PKGBUILD, stably-orca.sh...
+ Reviewed stably-orca.desktop. Status: SAFE -- Standard desktop entry file, no security concerns.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file is a metadata descriptor for the AUR package `stably-orca-bin`. It declares the package name, version, dependencies, and three source files: an AppImage from the official GitHub releases of `stablyai/orca`, a shell script, and a desktop file. All three sources have valid SHA256 checksums, ensuring integrity of the downloaded files. There is no executable code, no network requests beyond the declared upstream source, no obfuscation, and no indication of supply-chain attack or malicious behavior. The file follows standard AUR packaging practices.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file, no malicious content.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, stably-orca.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a prebuilt binary AppImage application. It downloads the official AppImage from the project&#39;s GitHub releases, verifies it with a SHA-256 checksum, extracts it, and installs the extracted files to `/opt/stably-orca` along with a wrapper script and desktop file. There is no obfuscated code, no unexpected network requests, no execution of untrusted fetched content, and no exfiltration or backdoor behavior. All operations are confined to the package&#39;s own install directory and standard system directories. The file is well-commented and transparent about its actions.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD, no malicious code found.</summary>
</security_assessment>

[3/4] Reviewing stably-orca.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD, no malicious code found.
LLM auditresponse for stably-orca.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a standard wrapper for the Stably Orca AppImage installed in /opt/stably-orca. It sets the `APPDIR` environment variable to the correct path and launches the AppRun binary with a `--disable-features=Vulkan` flag. There are no network requests, no obfuscated code, no file operations outside the package directory, and no attempts to execute untrusted content. The script performs only the expected actions for launching an application from a fixed system path.
</details>
<evidence>
</evidence>
<summary>Clean wrapper script; no malicious behavior.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed stably-orca.sh. Status: SAFE -- Clean wrapper script; no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,461
  Completion Tokens: 1,898
  Total Tokens: 15,359
  Total Cost: $0.001570
  Execution Time: 26.55 seconds

Final Status: SAFE


No issues found.
