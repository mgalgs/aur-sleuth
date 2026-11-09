---
package: horizon-launcher-bin
pkgver: 0.2.57
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 22847
completion_tokens: 2360
total_tokens: 25207
cost: 0.002508597
execution_time: 39.58
files_reviewed: 8
files_skipped: 1
maintainer_files: 9
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-09T08:12:07Z
file_verdicts:
  - file: LICENSE.upstream
    status: safe
    summary: A plain license file with no security concerns.
  - file: LICENSE
    status: safe
    summary: Standard MIT license file, no security concerns.
  - file: OFL-Geist.txt
    status: safe
    summary: License file with no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard metadata file, no malicious content.
  - file: horizon-launcher.desktop
    status: safe
    summary: Standard desktop entry file, no security concerns.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD, no security issues found.
  - file: horizon.svg
    status: skipped
    summary: "Skipping binary file: horizon.svg"
  - file: horizon.desktop
    status: safe
    summary: Standard .desktop file, no security concerns.
  - file: horizon-launcher.sh
    status: safe
    summary: Standard wrapper script; no malicious behavior detected.
---

Materializing horizon-launcher-bin from local mirror...
Materialized horizon-launcher-bin
Analyzing horizon-launcher-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable definitions and arrays at the top level. There are no command substitutions, backticks, `eval`, `curl`, `wget`, or any other code that would execute during sourcing. The `package()` function is not run during `makepkg --printsrcinfo`. No malicious behavior is present in the global scope.
</details>
<evidence></evidence>
<summary>No top-level dangerous code.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level dangerous code.
Reviewing the 9 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/9] Reviewing LICENSE...
[0/9] Reviewing LICENSE, .SRCINFO...
[0/9] Reviewing LICENSE, .SRCINFO, LICENSE.upstream...
LLM auditresponse for LICENSE.upstream:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is the MIT License text, a standard open-source license. It contains no executable code, no network requests, no obfuscation, and no file operations. It is purely informational and poses no security risk. There is no evidence of injected malicious code or supply chain attack.
</details>
<evidence></evidence>
<summary>A plain license file with no security concerns.</summary>
</security_assessment>

[1/9] Reviewing LICENSE, .SRCINFO...
+ Reviewed LICENSE.upstream. Status: SAFE -- A plain license file with no security concerns.
[1/9] Reviewing LICENSE, .SRCINFO, OFL-Geist.txt...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard MIT License text. It contains no code, no executable instructions, no network requests, no file operations, and no system modifications. There is no evidence of any malicious or suspicious behavior. It is purely a license file and poses no security risk.
</details>
<evidence>
</evidence>
<summary>Standard MIT license file, no security concerns.</summary>
</security_assessment>

[2/9] Reviewing .SRCINFO, OFL-Geist.txt...
+ Reviewed LICENSE. Status: SAFE -- Standard MIT license file, no security concerns.
[2/9] Reviewing .SRCINFO, OFL-Geist.txt, PKGBUILD...
LLM auditresponse for OFL-Geist.txt:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is the SIL Open Font License (Version 1.1) for the Geist font project. It is a standard open source license text with no executable code, network requests, obfuscation, or any commands. There is no evidence of malicious or suspicious behavior. It is simply a documentation file accompanying a font package.
</details>
<evidence></evidence>
<summary>License file with no security issues.</summary>
</security_assessment>

[2/9] Reviewing .SRCINFO, OFL-Geist.txt, PKGBUILD, horizon-launcher.desktop...
[3/9] Reviewing .SRCINFO, PKGBUILD, horizon-launcher.desktop...
+ Reviewed OFL-Geist.txt. Status: SAFE -- License file with no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.SRCINFO` metadata file for an AUR package. It contains only package description, dependencies, source URLs, and SHA256 checksums. No executable code, scripts, or instructions are present. The sources are pinned to specific release artifacts from the official GitHub repository (`github.com/horizon-rust/horizon`). All checksums are provided and not set to SKIP. There is no obfuscation, no dangerous commands, and no indication of malicious behavior. The file is consistent with normal AUR packaging practices.
</details>
<evidence>
</evidence>
<summary>Standard metadata file, no malicious content.</summary>
</security_assessment>

[3/9] Reviewing .SRCINFO, PKGBUILD, horizon-launcher.desktop, horizon-launcher.sh...
[4/9] Reviewing PKGBUILD, horizon-launcher.desktop, horizon-launcher.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata file, no malicious content.
LLM auditresponse for horizon-launcher.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Freedesktop.org `.desktop` file that simply defines metadata for an application launcher. It contains no executable code, network requests, obfuscation, or any behavior that could be malicious. The `Exec` and `TryExec` fields point to a binary named `horizon-launcher`, which is the normal expected entry point for the package. The file follows standard formatting and does not deviate from typical packaging practice.
</details>
<evidence></evidence>
<summary>Standard desktop entry file, no security concerns.</summary>
</security_assessment>

[4/9] Reviewing PKGBUILD, horizon-launcher.desktop, horizon-launcher.sh, horizon.desktop...
[5/9] Reviewing PKGBUILD, horizon-launcher.sh, horizon.desktop...
+ Reviewed horizon-launcher.desktop. Status: SAFE -- Standard desktop entry file, no security concerns.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard Arch packaging practices for a pre-built binary package. All sources are pinned to a specific GitHub release tag, and SHA-256 checksums are provided for every source file, ensuring integrity. The package function performs only basic installation of files into standard system directories (`/usr/lib`, `/usr/bin`, `/usr/share`). There are no network requests, no dynamic code execution, no obfuscation, and no manipulation of files outside the package's own scope. The dependencies and optdepends are appropriate for a Minecraft launcher written in Rust. No malicious behavior is present.
</details>
<evidence>
</evidence>
<summary>Standard AUR PKGBUILD, no security issues found.</summary>
</security_assessment>

[5/9] Reviewing PKGBUILD, horizon-launcher.sh, horizon.desktop, horizon.svg...
[6/9] Reviewing horizon-launcher.sh, horizon.desktop, horizon.svg...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD, no security issues found.
[7/9] Reviewing horizon-launcher.sh, horizon.desktop...
! Reviewed horizon.svg. Status: SKIPPED -- Skipping binary file: horizon.svg
LLM auditresponse for horizon.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.desktop` file for a Linux application. It defines an application entry named "Horizon" that executes `horizon-launcher play`. The file contains no executable code, network requests, obfuscation, or any other malicious behavior. It serves only as a shortcut metadata file for the desktop environment.
</details>
<evidence></evidence>
<summary>Standard .desktop file, no security concerns.</summary>
</security_assessment>

[8/9] Reviewing horizon-launcher.sh...
+ Reviewed horizon.desktop. Status: SAFE -- Standard .desktop file, no security concerns.
LLM auditresponse for horizon-launcher.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a straightforward wrapper for the `horizon-launcher` binary. It sets environment variables to prevent self-updates and configure the desktop executable path, then cleans up old desktop entries before executing the main launcher. There are no network requests, obfuscated code, dangerous commands (e.g., `eval`, `curl`, `wget`), or any operations that exfiltrate data, install backdoors, or tamper with system files. All actions are consistent with normal AUR packaging practices for a binary launcher.
</details>
<evidence></evidence>
<summary>Standard wrapper script; no malicious behavior detected.</summary>
</security_assessment>

[9/9] Reviewing ...
+ Reviewed horizon-launcher.sh. Status: SAFE -- Standard wrapper script; no malicious behavior detected.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
(Skipped 1 file: horizon.svg)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 22,847
  Completion Tokens: 2,360
  Total Tokens: 25,207
  Total Cost: $0.002509
  Execution Time: 39.58 seconds

Final Status: SAFE


No issues found.


Audit Skips:

horizon.svg: [SKIPPED] Skipping binary file: horizon.svg
