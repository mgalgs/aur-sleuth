---
package: horizon-launcher-bin
pkgver: 0.2.31
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 23491
completion_tokens: 6860
total_tokens: 30351
cost: 0.003386201
execution_time: 31.87
files_reviewed: 8
files_skipped: 1
maintainer_files: 9
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-31T23:08:09Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: Standard license file, no security concerns.
  - file: LICENSE.upstream
    status: safe
    summary: Standard license file, no executable content.
  - file: OFL-Geist.txt
    status: safe
    summary: License file, no executable or suspicious content.
  - file: horizon-launcher.desktop
    status: safe
    summary: Standard .desktop file; no malicious content.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file for a binary package. No malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR binary PKGBUILD with pinned checksums; no malicious content.
  - file: horizon.svg
    status: skipped
    summary: "Skipping binary file: horizon.svg"
  - file: horizon.desktop
    status: safe
    summary: Standard desktop entry, no security issues.
  - file: horizon-launcher.sh
    status: safe
    summary: Wrapper script; no suspicious behavior
---

Materializing horizon-launcher-bin from local mirror...
Materialized horizon-launcher-bin
Analyzing horizon-launcher-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Sourcing this PKGBUILD for `--printsrcinfo` is safe. The global scope contains only static variable assignments and array definitions; there are no command substitutions, backtick expansions, or function calls that execute during sourcing. The `package()` function is present but is not invoked during metadata extraction. No malicious code can run at this stage.
</details>
<evidence></evidence>
<summary>Global scope is static and safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Global scope is static and safe.
Reviewing the 9 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/9] Reviewing .SRCINFO...
[0/9] Reviewing .SRCINFO, LICENSE...
[0/9] Reviewing .SRCINFO, LICENSE, LICENSE.upstream...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard MIT License text. It contains no executable code, no network requests, no file operations, no obfuscation, and no system modifications. It is a static license file and presents no security risk.
</details>
<evidence>
</evidence>
<summary>Standard license file, no security concerns.</summary>
</security_assessment>

[0/9] Reviewing .SRCINFO, LICENSE, LICENSE.upstream, OFL-Geist.txt...
[1/9] Reviewing .SRCINFO, LICENSE.upstream, OFL-Geist.txt...
+ Reviewed LICENSE. Status: SAFE -- Standard license file, no security concerns.
LLM auditresponse for LICENSE.upstream:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard MIT License text. It contains no executable code, network requests, obfuscated content, or any instructions that could perform system modifications. It is a static license file with no security implications.
</details>
<evidence></evidence>
<summary>Standard license file, no executable content.</summary>
</security_assessment>

[1/9] Reviewing .SRCINFO, LICENSE.upstream, OFL-Geist.txt, PKGBUILD...
[2/9] Reviewing .SRCINFO, OFL-Geist.txt, PKGBUILD...
+ Reviewed LICENSE.upstream. Status: SAFE -- Standard license file, no executable content.
LLM auditresponse for OFL-Geist.txt:
<security_assessment>
<decision>SAFE</decision>
<details>
The file contains only the SIL Open Font License (OFL) version 1.1 for the Geist font project. It is a plain text document with no executable code, network requests, obfuscation, or system modifications. There are no security concerns.
</details>
<evidence>
</evidence>
<summary>License file, no executable or suspicious content.</summary>
</security_assessment>

[2/9] Reviewing .SRCINFO, OFL-Geist.txt, PKGBUILD, horizon-launcher.desktop...
[3/9] Reviewing .SRCINFO, PKGBUILD, horizon-launcher.desktop...
+ Reviewed OFL-Geist.txt. Status: SAFE -- License file, no executable or suspicious content.
LLM auditresponse for horizon-launcher.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard freedesktop.org .desktop entry for launching the Horizon game launcher application. It contains only metadata keys (Type, Name, GenericName, Comment, Exec, TryExec, Icon, Terminal, Categories, StartupWMClass) and static string values. No code execution, network requests, obfuscation, or any other operations are present. The Exec and TryExec values reference the package's own binary, which is normal and expected. No security issues are found.
</details>
<evidence></evidence>
<summary>Standard .desktop file; no malicious content.</summary>
</security_assessment>

[4/9] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed horizon-launcher.desktop. Status: SAFE -- Standard .desktop file; no malicious content.
[4/9] Reviewing .SRCINFO, PKGBUILD, horizon-launcher.sh...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a metadata manifest automatically generated by `makepkg --printsrcinfo`. It contains no executable code, no scripting logic, and no instructions for the system to obey. Its sole purpose is to declare the package's dependencies, optional dependencies, sources, and checksums to AUR helpers.  

All sources point to the official upstream GitHub repository (`horizon-rust/horizon`) with a pinned version tag (`launcher@0.2.31`). The checksums (`sha256sums`) are explicit cryptographic hashes rather than `SKIP`, confirming the maintainer intended to pin the binary artifact. The listed dependencies and optdependencies are entirely consistent with a Rust-based Minecraft launcher requiring system libraries, Vulkan, Wayland, and optional JDK/Python keyring integrations.  

There is no obfuscation, no network requests initiated by this file, no data exfiltration, no remote code execution, and no deviation from standard AUR packaging practices. The file is purely descriptive and poses no supply-chain risk in isolation.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file for a binary package. No malicious content.</summary>
</security_assessment>

[5/9] Reviewing PKGBUILD, horizon-launcher.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file for a binary package. No malicious content.
[5/9] Reviewing PKGBUILD, horizon-launcher.sh, horizon.desktop...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a binary distribution. All source files are pinned with SHA256 checksums, including the prebuilt tarball from the upstream GitHub release. The `package()` function only installs files into standard system directories with appropriate permissions. There are no network requests in `prepare()` or `build()`, no execution of downloaded content (e.g., `curl|bash`), no obfuscated code, and no manipulation of files outside the package's scope. The only fetched remote artifact is the project's own tagged release tarball, which is verified by a checksum. No red flags indicative of a supply-chain attack are present.
</details>
<evidence></evidence>
<summary>Standard AUR binary PKGBUILD with pinned checksums; no malicious content.</summary>
</security_assessment>

[5/9] Reviewing PKGBUILD, horizon-launcher.sh, horizon.desktop, horizon.svg...
[6/9] Reviewing horizon-launcher.sh, horizon.desktop, horizon.svg...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR binary PKGBUILD with pinned checksums; no malicious content.
[7/9] Reviewing horizon-launcher.sh, horizon.desktop...
! Reviewed horizon.svg. Status: SKIPPED -- Skipping binary file: horizon.svg
LLM auditresponse for horizon.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>The file is a standard .desktop entry for the Horizon game launcher. It defines an application launcher that executes `horizon-launcher play`. There is no embedded code, no network requests, no obfuscation, and no system modifications. It is a straightforward desktop configuration file with no security concerns.</details>
<evidence></evidence>
<summary>Standard desktop entry, no security issues.</summary>
</security_assessment>

[8/9] Reviewing horizon-launcher.sh...
+ Reviewed horizon.desktop. Status: SAFE -- Standard desktop entry, no security issues.
LLM auditresponse for horizon-launcher.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a wrapper for the Horizon Launcher binary. It sets two environment variables to control the behaviour of the launcher itself (`HORIZON_LAUNCHER_NO_SELF_UPDATE` disables its built‑in updater, `HORIZON_LAUNCHER_DESKTOP_EXEC` tells it which binary to use for desktop files). If run without arguments it calls `desktop-entry --remove` to clear menu entries created by older versions of the launcher that bypassed this wrapper. Finally it `exec`s the launcher with any provided arguments.

All operations are local and contained within the package’s own scope. There are no network requests, no downloads, no obfuscated or encoded commands, no use of dangerous commands (`eval`, `curl`, `wget`, etc.), and no manipulation of files outside the application’s purview. The script is a standard, benign packaging technique.
</details>
<evidence>
</evidence>
<summary>Wrapper script; no suspicious behavior</summary>
</security_assessment>

[9/9] Reviewing ...
+ Reviewed horizon-launcher.sh. Status: SAFE -- Wrapper script; no suspicious behavior
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
(Skipped 1 file: horizon.svg)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 23,491
  Completion Tokens: 6,860
  Total Tokens: 30,351
  Total Cost: $0.003386
  Execution Time: 31.87 seconds

Final Status: SAFE


No issues found.


Audit Skips:

horizon.svg: [SKIPPED] Skipping binary file: horizon.svg
