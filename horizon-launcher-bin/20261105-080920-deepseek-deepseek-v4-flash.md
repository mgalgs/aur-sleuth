---
package: horizon-launcher-bin
pkgver: 0.2.42
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 23249
completion_tokens: 5665
total_tokens: 28914
cost: 0.003146689
execution_time: 104.87
files_reviewed: 8
files_skipped: 1
maintainer_files: 9
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-05T08:09:20Z
file_verdicts:
  - file: LICENSE.upstream
    status: safe
    summary: Standard license file, no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard metadata with pinned checksums from official upstream.
  - file: LICENSE
    status: safe
    summary: Safe standard MIT license file.
  - file: OFL-Geist.txt
    status: safe
    summary: Standard font license text; no executable or suspicious content.
  - file: horizon-launcher.desktop
    status: safe
    summary: Standard desktop entry file, no security concerns.
  - file: horizon-launcher.sh
    status: safe
    summary: Benign launcher wrapper; no malicious behavior or dangerous operations found.
  - file: horizon.svg
    status: skipped
    summary: "Skipping binary file: horizon.svg"
  - file: horizon.desktop
    status: safe
    summary: Standard desktop entry with no security issues found.
  - file: PKGBUILD
    status: safe
    summary: Legitimate binary PKGBUILD with pinned checksums.
---

Materializing horizon-launcher-bin from local mirror...
Materialized horizon-launcher-bin
Analyzing horizon-launcher-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD only contains standard top-level variable definitions (pkgname, pkgver, source, sha256sums, etc.) and a single function definition (package()). No code is executed in the global scope beyond assigning static values or expanding previously defined variables. There are no command substitutions, backticks, eval statements, network operations, or file system modifications that would execute when the PKGBUILD is sourced by `makepkg --printsrcinfo`. Any potentially dangerous operations are confined to the `package()` function, which is not invoked during the metadata parsing step.
</details>
<evidence></evidence>
<summary>No top-level malicious code execution.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level malicious code execution.
Reviewing the 9 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/9] Reviewing .SRCINFO...
[0/9] Reviewing .SRCINFO, LICENSE...
[0/9] Reviewing .SRCINFO, LICENSE, LICENSE.upstream...
LLM auditresponse for LICENSE.upstream:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard MIT license text, containing no executable code, network requests, obfuscation, or system modifications. It is purely a legal notice and presents no security concerns.
</details>
<evidence>
</evidence>
<summary>Standard license file, no security issues.</summary>
</security_assessment>

[0/9] Reviewing .SRCINFO, LICENSE, LICENSE.upstream, OFL-Geist.txt...
[1/9] Reviewing .SRCINFO, LICENSE, OFL-Geist.txt...
+ Reviewed LICENSE.upstream. Status: SAFE -- Standard license file, no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file is standard packaging metadata for the `horizon-launcher-bin` AUR package. It declares the package name, version, dependencies, and source files with pinned checksums (no SKIP entries). All source URLs point to the official upstream GitHub repository (`https://github.com/horizon-rust/horizon/releases/download/...`), and the remaining sources are local files (shell script, desktop files, icons, licenses). There are no embedded commands, network requests, or any code to execute. The dependency list is appropriate for a Rust-based Minecraft launcher. No indications of obfuscation, data exfiltration, or supply-chain attack behavior.
</details>
<evidence></evidence>
<summary>Standard metadata with pinned checksums from official upstream.
</summary>
</security_assessment>

[1/9] Reviewing .SRCINFO, LICENSE, OFL-Geist.txt, PKGBUILD...
[2/9] Reviewing LICENSE, OFL-Geist.txt, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata with pinned checksums from official upstream.
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard MIT License text. It contains no executable code, no network requests, no system modifications, and no obfuscated or dangerous commands. There is no evidence of malicious behavior.
</details>
<evidence>
</evidence>
<summary>Safe standard MIT license file.</summary>
</security_assessment>

[3/9] Reviewing OFL-Geist.txt, PKGBUILD...
+ Reviewed LICENSE. Status: SAFE -- Safe standard MIT license file.
[3/9] Reviewing OFL-Geist.txt, PKGBUILD, horizon-launcher.desktop...
LLM auditresponse for OFL-Geist.txt:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is the SIL Open Font License Version 1.1 text included with the Geist font package. It contains only standard license language, copyright attribution, and license terms. There is no executable code, no network requests, no file operations, no obfuscation, and no suspicious commands. The file is a normal documentation/license component of an AUR package and presents no supply-chain or security risk.
</details>
<evidence>
</evidence>
<summary>
Standard font license text; no executable or suspicious content.</summary>
</security_assessment>

[3/9] Reviewing OFL-Geist.txt, PKGBUILD, horizon-launcher.desktop, horizon-launcher.sh...
[4/9] Reviewing PKGBUILD, horizon-launcher.desktop, horizon-launcher.sh...
+ Reviewed OFL-Geist.txt. Status: SAFE -- Standard font license text; no executable or suspicious content.
LLM auditresponse for horizon-launcher.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard .desktop file for a game launcher application. It contains no executable code, no network operations, no obfuscation, and no suspicious directives. The `Exec` and `TryExec` fields reference a binary named `horizon-launcher`, which is expected to be provided by the package itself. The file conforms to the Desktop Entry Specification and contains only configuration metadata. There is no evidence of malicious behavior or supply-chain attack.
</details>
<evidence></evidence>
<summary>Standard desktop entry file, no security concerns.</summary>
</security_assessment>

[5/9] Reviewing PKGBUILD, horizon-launcher.sh...
+ Reviewed horizon-launcher.desktop. Status: SAFE -- Standard desktop entry file, no security concerns.
[5/9] Reviewing PKGBUILD, horizon-launcher.sh, horizon.desktop...
LLM auditresponse for horizon-launcher.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a simple launcher wrapper for the Horizon game launcher. It sets two environment variables to prevent the application from self-updating and to ensure desktop menu entries use the package-managed executable path. It then executes the launcher binary installed under `/usr/lib/horizon-launcher/horizon-launcher`.

When invoked with no arguments, the wrapper first removes previously created desktop entries before launching the application. This is consistent with the stated packaging intent of keeping menu registrations aligned with the package's update policy. There are no suspicious network requests, no encoded or obfuscated commands, no writes outside the application's own scope, and no execution of untrusted downloaded content. The behavior is normal for an AUR wrapper script.
</details>
<evidence>
</evidence>
<summary>
Benign launcher wrapper; no malicious behavior or dangerous operations found.</summary>
</security_assessment>

[5/9] Reviewing PKGBUILD, horizon-launcher.sh, horizon.desktop, horizon.svg...
[6/9] Reviewing PKGBUILD, horizon.desktop, horizon.svg...
+ Reviewed horizon-launcher.sh. Status: SAFE -- Benign launcher wrapper; no malicious behavior or dangerous operations found.
[7/9] Reviewing PKGBUILD, horizon.desktop...
! Reviewed horizon.svg. Status: SKIPPED -- Skipping binary file: horizon.svg
LLM auditresponse for horizon.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Freedesktop.org `.desktop` file for the Horizon game launcher. It defines the application name, icon, execution command (`horizon-launcher play`), and category. No network requests, file operations, obfuscation, or dangerous commands (such as `eval`, `curl`, `base64`, or shell execution) are present. The `NoDisplay=true` flag is a benign configuration that hides the entry from application menus (often used for MIME‑type handlers or background launchers). There is no evidence of malicious or suspicious behavior; the file conforms to normal AUR packaging practices.
</details>
<evidence></evidence>
<summary>Standard desktop entry with no security issues found.</summary>
</security_assessment>

[8/9] Reviewing PKGBUILD...
+ Reviewed horizon.desktop. Status: SAFE -- Standard desktop entry with no security issues found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a binary package. The upstream source is clearly defined as a GitHub release tarball, and all source files are pinned with hardcoded SHA256 checksums, providing strong integrity verification. The `package()` function performs only routine installation tasks (installing the binary, launcher script, desktop entries, icon, and license files) into the package directory. There are no dangerous commands, no obfuscated code, no unexpected network requests, and no dynamic execution of downloaded content during the build or package stages. The file exhibits no evidence of malicious supply-chain behavior.
</details>
<evidence></evidence>
<summary>Legitimate binary PKGBUILD with pinned checksums.</summary>
</security_assessment>

[9/9] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Legitimate binary PKGBUILD with pinned checksums.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
(Skipped 1 file: horizon.svg)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 23,249
  Completion Tokens: 5,665
  Total Tokens: 28,914
  Total Cost: $0.003147
  Execution Time: 104.87 seconds

Final Status: SAFE


No issues found.


Audit Skips:

horizon.svg: [SKIPPED] Skipping binary file: horizon.svg
