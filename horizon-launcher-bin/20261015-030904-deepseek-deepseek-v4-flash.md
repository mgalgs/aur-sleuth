---
package: horizon-launcher-bin
pkgver: 0.2.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 23495
completion_tokens: 6997
total_tokens: 30492
cost: 0.003411499
execution_time: 26.93
files_reviewed: 8
files_skipped: 1
maintainer_files: 9
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-15T03:09:02Z
file_verdicts:
  - file: LICENSE.upstream
    status: safe
    summary: Standard open-source license file, no security issues.
  - file: LICENSE
    status: safe
    summary: License file with no security issues.
  - file: OFL-Geist.txt
    status: safe
    summary: Standard font license text; no executable or malicious content found.
  - file: horizon-launcher.desktop
    status: safe
    summary: Standard .desktop file, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard binary PKGBUILD with pinned checksums, no suspicious behavior.
  - file: .SRCINFO
    status: safe
    summary: Clean metadata file, no malicious indicators.
  - file: horizon.svg
    status: skipped
    summary: "Skipping binary file: horizon.svg"
  - file: horizon.desktop
    status: safe
    summary: Standard .desktop file, no security issues.
  - file: horizon-launcher.sh
    status: safe
    summary: Benign wrapper script for the horizon-launcher package.
---

Materializing horizon-launcher-bin from local mirror...
Materialized horizon-launcher-bin
Analyzing horizon-launcher-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources only the top-level of this PKGBUILD. The global scope contains only standard packaging metadata: maintainer comment, variable assignments, source array, checksum array, and function definitions for `package()`. There are no top-level command substitutions, no network requests, no downloads, no encoded/obfuscated payloads, and no file-modifying operations that would execute during sourcing.

The `package()` function is not executed by `makepkg --printsrcinfo`, and its content is ordinary installation logic for this package's own files into `$pkgdir`. Checksums are pinned for all sources. No genuinely malicious behavior is present in the code that runs during this narrow gate.
</details>
<evidence>
</evidence>
<summary>
Top-level PKGBUILD scope is standard metadata; no malicious execution during printsrcinfo.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD scope is standard metadata; no malicious execution during printsrcinfo.
Reviewing the 9 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/9] Reviewing .SRCINFO...
[0/9] Reviewing .SRCINFO, LICENSE...
[0/9] Reviewing .SRCINFO, LICENSE, LICENSE.upstream...
LLM auditresponse for LICENSE.upstream:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard MIT License text.  It contains no executable code, scripts, or any instructions.  There are no network requests, file operations, obfuscated content, or any behavior beyond a passive license statement.  This file presents no security concerns and is consistent with normal packaging practices.
</details>
<evidence></evidence>
<summary>Standard open-source license file, no security issues.</summary>
</security_assessment>

[0/9] Reviewing .SRCINFO, LICENSE, LICENSE.upstream, OFL-Geist.txt...
[1/9] Reviewing .SRCINFO, LICENSE, OFL-Geist.txt...
+ Reviewed LICENSE.upstream. Status: SAFE -- Standard open-source license file, no security issues.
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard MIT License text. It contains no executable code, no network requests, no file operations, and no obfuscation. It is purely a legal notice and does not present any security concerns.
</details>
<evidence>
</evidence>
<summary>License file with no security issues.</summary>
</security_assessment>

[1/9] Reviewing .SRCINFO, LICENSE, OFL-Geist.txt, PKGBUILD...
[2/9] Reviewing .SRCINFO, OFL-Geist.txt, PKGBUILD...
+ Reviewed LICENSE. Status: SAFE -- License file with no security issues.
LLM auditresponse for OFL-Geist.txt:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is the SIL Open Font License, Version 1.1, as typically bundled with font packages. It contains only standard license text (preamble, definitions, permissions, termination, disclaimer) and contains no executable code, network operations, file modifications, obfuscated content, or other behavior relevant to a supply-chain attack. The reference to the GitHub project and openfontlicense.org is merely part of the license attribution and FAQ pointer, not a download or execution action.
</details>
<evidence>
</evidence>
<summary>
Standard font license text; no executable or malicious content found.</summary>
</security_assessment>

[3/9] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed OFL-Geist.txt. Status: SAFE -- Standard font license text; no executable or malicious content found.
[3/9] Reviewing .SRCINFO, PKGBUILD, horizon-launcher.desktop...
LLM auditresponse for horizon-launcher.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard freedesktop.org .desktop file used by desktop environments to present Horizon in the application menu. It defines the application name, icon, and the command to execute (`horizon-launcher`). There is no embedded code, network requests, or obfuscation. It simply configures the launcher entry. No security issues present.
</details>
<evidence>
</evidence>
<summary>Standard .desktop file, no security issues.</summary>
</security_assessment>

[3/9] Reviewing .SRCINFO, PKGBUILD, horizon-launcher.desktop, horizon-launcher.sh...
[4/9] Reviewing .SRCINFO, PKGBUILD, horizon-launcher.sh...
+ Reviewed horizon-launcher.desktop. Status: SAFE -- Standard .desktop file, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a typical binary package that downloads a prebuilt tarball from the project's official GitHub releases page. All source files have hardcoded SHA-256 checksums, ensuring integrity and preventing tampering. The `package()` function only installs the extracted files into the package directory using standard `install` commands, without any network requests, code execution, or unusual system modifications. There are no obfuscated commands, no attempts to exfiltrate data, and no interactions with unexpected remote hosts. The dependencies and optional dependencies are appropriate for a Rust-based Minecraft launcher using Wayland, Vulkan, and xdg-utils. No supply‑chain attack indicators are present.
</details>
<evidence></evidence>
<summary>Standard binary PKGBUILD with pinned checksums, no suspicious behavior.</summary>
</security_assessment>

[4/9] Reviewing .SRCINFO, PKGBUILD, horizon-launcher.sh, horizon.desktop...
[5/9] Reviewing .SRCINFO, horizon-launcher.sh, horizon.desktop...
+ Reviewed PKGBUILD. Status: SAFE -- Standard binary PKGBUILD with pinned checksums, no suspicious behavior.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is `.SRCINFO`, an automatically generated metadata cache used by AUR helpers (e.g., `yay`, `paru`) to display package information and verify integrity. It does not contain any executable code, commands, system operations, or network requests initiated by the package itself.

All checksums are hardcoded SHA-256 values, including the checksum for the pre-built binary tarball downloaded from the upstream GitHub repository (`https://github.com/ludovic111/horizon`). This is a strong security practice, ensuring the downloaded archive matches the expected content. The dependencies listed are standard system libraries expected for a native Vulkan/Wayland/X11 graphics application, and the upstream source URL points directly to the project's official releases.

There are no network connections to unexpected destinations, no obfuscated strings, no dangerous commands (eval, curl|bash, base64), and no file operations defined in this file. The content is entirely declarative and consistent with legitimate package metadata.
</details>
<evidence>
</evidence>
<summary>Clean metadata file, no malicious indicators.</summary>
</security_assessment>

[5/9] Reviewing .SRCINFO, horizon-launcher.sh, horizon.desktop, horizon.svg...
[6/9] Reviewing horizon-launcher.sh, horizon.desktop, horizon.svg...
+ Reviewed .SRCINFO. Status: SAFE -- Clean metadata file, no malicious indicators.
[7/9] Reviewing horizon-launcher.sh, horizon.desktop...
! Reviewed horizon.svg. Status: SKIPPED -- Skipping binary file: horizon.svg
LLM auditresponse for horizon.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard freedesktop.org Desktop Entry file that defines a launcher for an application called "Horizon". It contains no executable code, no network operations, no obfuscation, and no file manipulation. The `Exec=horizon-launcher play` line simply invokes the `horizon-launcher` command with the argument `play`, which is a normal way to launch an application from a desktop menu. There is nothing suspicious or malicious in this file.
</details>
<evidence>
</evidence>
<summary>Standard .desktop file, no security issues.</summary>
</security_assessment>

[8/9] Reviewing horizon-launcher.sh...
+ Reviewed horizon.desktop. Status: SAFE -- Standard .desktop file, no security issues.
LLM auditresponse for horizon-launcher.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This wrapper script performs standard packaging operations: setting environment variables to manage self-update behavior and desktop entry registration, and then executing the package&#39;s own binary (`/usr/lib/horizon-launcher/horizon-launcher`). The `desktop-entry --remove` call when no arguments are provided is a routine cleanup to remove stale menu entries from previous versions. No network requests, obfuscation, or unexpected file system modifications are present.
</details>
<evidence></evidence>
<summary>Benign wrapper script for the horizon-launcher package.</summary>
</security_assessment>

[9/9] Reviewing ...
+ Reviewed horizon-launcher.sh. Status: SAFE -- Benign wrapper script for the horizon-launcher package.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
(Skipped 1 file: horizon.svg)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 23,495
  Completion Tokens: 6,997
  Total Tokens: 30,492
  Total Cost: $0.003411
  Execution Time: 26.93 seconds

Final Status: SAFE


No issues found.


Audit Skips:

horizon.svg: [SKIPPED] Skipping binary file: horizon.svg
