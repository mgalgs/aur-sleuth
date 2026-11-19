---
package: horizon-launcher-bin
pkgver: 0.2.54
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 22933
completion_tokens: 2825
total_tokens: 25758
cost: 0.002601053
execution_time: 37.99
files_reviewed: 8
files_skipped: 1
maintainer_files: 9
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-08T08:07:23Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file; no malicious or suspicious behavior found.
  - file: LICENSE.upstream
    status: safe
    summary: Standard license file, no security concerns.
  - file: OFL-Geist.txt
    status: safe
    summary: Standard open font license text, no security concerns.
  - file: LICENSE
    status: safe
    summary: Standard MIT license text, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR package, no malicious code detected.
  - file: horizon-launcher.desktop
    status: safe
    summary: Standard desktop entry file, no malicious content.
  - file: horizon.svg
    status: skipped
    summary: "Skipping binary file: horizon.svg"
  - file: horizon-launcher.sh
    status: safe
    summary: Standard wrapper script, no security concerns.
  - file: horizon.desktop
    status: safe
    summary: "Standard `.desktop` file with no security issues."
---

Materializing horizon-launcher-bin from local mirror...
Materialized horizon-launcher-bin
Analyzing horizon-launcher-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable definitions and function declarations at the top level. No command substitutions, backtick expansions, or invocations of external tools (e.g., `curl`, `wget`, `eval`) occur in the global scope. All assignments are static strings or safe variable expansions of previously defined static values. The `package()` function is defined but not executed during `makepkg --printsrcinfo`. Therefore, sourcing this PKGBUILD for metadata extraction poses no security risk.
</details>
<evidence></evidence>
<summary>No dangerous top-level code execution.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code execution.
Reviewing the 9 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/9] Reviewing .SRCINFO...
[0/9] Reviewing .SRCINFO, LICENSE...
[0/9] Reviewing .SRCINFO, LICENSE, LICENSE.upstream...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard AUR `.SRCINFO` metadata file used by `makepkg` and AUR helpers to describe the `horizon-launcher-bin` package. It declares package metadata, dependencies, sources, and SHA-256 checksums. There is no executable code, no build logic, and no install script in this file. All source URLs point to the project's own official GitHub releases page for the package's stated upstream project (`horizon-rust/horizon`). Checksums are pinned for all sources rather than skipped, which is good supply-chain hygiene.

The file does not contain any suspicious network requests, obfuscated content, dangerous commands, or file operations. The dependencies and optdependencies are consistent with a Minecraft-like game launcher written in Rust that requires Vulkan, Wayland/X11 libraries, and Java for game resource preparation. There is no evidence of injected malicious code or behavior deviating from normal AUR packaging practices.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata file; no malicious or suspicious behavior found.</summary>
</security_assessment>

[1/9] Reviewing LICENSE, LICENSE.upstream...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file; no malicious or suspicious behavior found.
[1/9] Reviewing LICENSE, LICENSE.upstream, OFL-Geist.txt...
LLM auditresponse for LICENSE.upstream:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard MIT License text for the upstream Horizon project. It contains no executable code, no network requests, no obfuscation, and no system modifications. It is a typical license file distributed with open-source software and poses no security risk.
</details>
<evidence>
</evidence>
<summary>
Standard license file, no security concerns.
</summary>
</security_assessment>

[1/9] Reviewing LICENSE, LICENSE.upstream, OFL-Geist.txt, PKGBUILD...
[2/9] Reviewing LICENSE, OFL-Geist.txt, PKGBUILD...
+ Reviewed LICENSE.upstream. Status: SAFE -- Standard license file, no security concerns.
LLM auditresponse for OFL-Geist.txt:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is the SIL Open Font License (OFL) version 1.1 text for the Geist font. It contains only a standard open-source license text with no executable code, network requests, obfuscated content, or any other security-relevant operations. There is nothing to audit for supply-chain attacks.
</details>
<evidence></evidence>
<summary>Standard open font license text, no security concerns.</summary>
</security_assessment>

[2/9] Reviewing LICENSE, OFL-Geist.txt, PKGBUILD, horizon-launcher.desktop...
[3/9] Reviewing LICENSE, PKGBUILD, horizon-launcher.desktop...
+ Reviewed OFL-Geist.txt. Status: SAFE -- Standard open font license text, no security concerns.
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard MIT License text. It contains no executable code, no network requests, no obfuscation, and no commands. It is a purely informational legal document with no security implications.
</details>
<evidence></evidence>
<summary>Standard MIT license text, no security issues.</summary>
</security_assessment>

[4/9] Reviewing PKGBUILD, horizon-launcher.desktop...
+ Reviewed LICENSE. Status: SAFE -- Standard MIT license text, no security issues.
[4/9] Reviewing PKGBUILD, horizon-launcher.desktop, horizon-launcher.sh...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard AUR binary package for the Horizon launcher. It downloads a prebuilt tarball from the project&#39;s official GitHub releases, with pinned SHA256 checksums for all sources. The `package()` function only installs files to the appropriate system directories. There are no dangerous commands like `eval`, `curl|bash`, obfuscated code, unexpected network requests, or any behavior that deviates from normal packaging practices. No evidence of supply-chain attack or malice.
</details>
<evidence></evidence>
<summary>Standard AUR package, no malicious code detected.</summary>
</security_assessment>

[4/9] Reviewing PKGBUILD, horizon-launcher.desktop, horizon-launcher.sh, horizon.desktop...
[5/9] Reviewing horizon-launcher.desktop, horizon-launcher.sh, horizon.desktop...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR package, no malicious code detected.
LLM auditresponse for horizon-launcher.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.desktop` file used for application menu entries in Linux desktop environments. It defines an application called "Horizon" that launches the `horizon-launcher` executable. There are no embedded scripts, network requests, file operations, or obfuscated content. The file is purely declarative metadata and follows the normal Freedesktop.org specification for desktop entries. No security concerns are present.
</details>
<evidence>
</evidence>
<summary>Standard desktop entry file, no malicious content.</summary>
</security_assessment>

[5/9] Reviewing horizon-launcher.desktop, horizon-launcher.sh, horizon.desktop, horizon.svg...
[6/9] Reviewing horizon-launcher.sh, horizon.desktop, horizon.svg...
+ Reviewed horizon-launcher.desktop. Status: SAFE -- Standard desktop entry file, no malicious content.
[7/9] Reviewing horizon-launcher.sh, horizon.desktop...
! Reviewed horizon.svg. Status: SKIPPED -- Skipping binary file: horizon.svg
LLM auditresponse for horizon-launcher.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a standard wrapper for a binary launcher. It exports two environment variables to control the application's behavior (disable self-updates and set the desktop exec path) and then runs the main binary, optionally cleaning up old desktop entries first. There are no network requests, obfuscated commands, or unexpected file operations. The code does exactly what is expected for a system-installed launcher wrapper.
</details>
<evidence></evidence>
<summary>Standard wrapper script, no security concerns.</summary>
</security_assessment>

[8/9] Reviewing horizon.desktop...
+ Reviewed horizon-launcher.sh. Status: SAFE -- Standard wrapper script, no security concerns.
LLM auditresponse for horizon.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.desktop` entry following the freedesktop.org specification. It defines an application launcher for a game called "Horizon" that executes the command `horizon-launcher play`. There are no unexpected network requests, obfuscated code, dangerous system modifications, or any signs of malicious behavior. The file is minimal and contains only standard desktop entry keys (Type, Name, Comment, Exec, Icon, Terminal, Categories, StartupWMClass, NoDisplay). No security concerns are present.
</details>
<evidence></evidence>
<summary>Standard `.desktop` file with no security issues.</summary>
</security_assessment>

[9/9] Reviewing ...
+ Reviewed horizon.desktop. Status: SAFE -- Standard `.desktop` file with no security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
(Skipped 1 file: horizon.svg)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 22,933
  Completion Tokens: 2,825
  Total Tokens: 25,758
  Total Cost: $0.002601
  Execution Time: 37.99 seconds

Final Status: SAFE


No issues found.


Audit Skips:

horizon.svg: [SKIPPED] Skipping binary file: horizon.svg
