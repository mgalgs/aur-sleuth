---
package: horizon-launcher-bin
pkgver: 0.2.6
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 23466
completion_tokens: 12429
total_tokens: 35895
cost: 0.004397484
execution_time: 43.89
files_reviewed: 8
files_skipped: 1
maintainer_files: 9
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-25T07:20:38Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: Standard license file, no security issues.
  - file: OFL-Geist.txt
    status: safe
    summary: License file, no security issues.
  - file: LICENSE.upstream
    status: safe
    summary: Standard license file, no security concerns
  - file: horizon-launcher.desktop
    status: safe
    summary: Standard .desktop file, no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no malicious content.
  - file: horizon.desktop
    status: safe
    summary: Standard desktop entry file.
  - file: horizon.svg
    status: skipped
    summary: "Skipping binary file: horizon.svg"
  - file: PKGBUILD
    status: safe
    summary: Clean binary PKGBUILD with pinned checksums.
  - file: horizon-launcher.sh
    status: safe
    summary: Standard wrapper script, no malicious behavior detected.
---

Materializing horizon-launcher-bin from local mirror...
Materialized horizon-launcher-bin
Analyzing horizon-launcher-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains no executable code in its global scope beyond standard variable and array assignments (e.g., `pkgver`, `source`, `sha256sums`). There are no command substitutions (`$(…)` or backticks), no `eval` statements, and no invocations of network tools like `curl` or `wget` at the top level. The `package()` function is defined but never executed during `makepkg --printsrcinfo`. Sourcing this file for metadata extraction is therefore safe.
</details>
<evidence></evidence>
<summary>No dangerous top-level code execution.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code execution.
Reviewing the 9 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/9] Reviewing .SRCINFO...
[0/9] Reviewing .SRCINFO, LICENSE.upstream...
[0/9] Reviewing .SRCINFO, LICENSE.upstream, LICENSE...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard MIT License text. It contains no executable code, no network requests, no file operations, no obfuscation, or any other security concerns. It is a purely informational legal document.
</details>
<evidence>
</evidence>
<summary>Standard license file, no security issues.</summary>
</security_assessment>

[0/9] Reviewing .SRCINFO, LICENSE.upstream, LICENSE, OFL-Geist.txt...
[1/9] Reviewing .SRCINFO, LICENSE.upstream, OFL-Geist.txt...
+ Reviewed LICENSE. Status: SAFE -- Standard license file, no security issues.
LLM auditresponse for OFL-Geist.txt:
<security_assessment>
<decision>SAFE</decision>
<details>
The file "OFL-Geist.txt" contains the SIL Open Font License (OFL) version 1.1, a standard open-source font license. It includes a copyright notice for the Geist Font Project by Vercel. There is no executable code, network requests, obfuscation, or any suspicious operations. It is a plain text license file with no security implications.
</details>
<evidence></evidence>
<summary>License file, no security issues.</summary>
</security_assessment>

[1/9] Reviewing .SRCINFO, LICENSE.upstream, OFL-Geist.txt, PKGBUILD...
[2/9] Reviewing .SRCINFO, LICENSE.upstream, PKGBUILD...
+ Reviewed OFL-Geist.txt. Status: SAFE -- License file, no security issues.
LLM auditresponse for LICENSE.upstream:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard MIT License text. It contains no code, no commands, no network requests, no system modifications, and no obfuscated elements. It is purely a legal document distributed with the source code. A MIT license file poses no security risk and does not deviate from standard packaging practices.
</details>
<evidence>
</evidence>
<summary>Standard license file, no security concerns</summary>
</security_assessment>

[2/9] Reviewing .SRCINFO, LICENSE.upstream, PKGBUILD, horizon-launcher.desktop...
[3/9] Reviewing .SRCINFO, PKGBUILD, horizon-launcher.desktop...
+ Reviewed LICENSE.upstream. Status: SAFE -- Standard license file, no security concerns
LLM auditresponse for horizon-launcher.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard .desktop file used by Linux desktop environments to define an application launcher. It contains no executable code, network requests, or system modifications. The `Exec` and `TryExec` fields specify the command `horizon-launcher`, which is a binary name expected to be on the user's PATH (installed by the package). There is no obfuscation, dangerous commands, or any content that could be malicious. The file simply provides metadata for the application launcher.
</details>
<evidence></evidence>
<summary>Standard .desktop file, no security issues.</summary>
</security_assessment>

[3/9] Reviewing .SRCINFO, PKGBUILD, horizon-launcher.desktop, horizon-launcher.sh...
[4/9] Reviewing .SRCINFO, PKGBUILD, horizon-launcher.sh...
+ Reviewed horizon-launcher.desktop. Status: SAFE -- Standard .desktop file, no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.SRCINFO` metadata file for the `horizon-launcher-bin` AUR package. It is purely declarative, containing package metadata (description, version, dependencies, licenses) and a list of source files with their SHA256 checksums. The primary binary source is a pre-compiled tarball fetched from the project's own upstream GitHub releases (`https://github.com/ludovic111/horizon`). All eight source entries are pinned with explicit checksums, which is a strong security practice for binary packages. The file contains no executable code, no obfuscation, no suspicious network requests, and no instructions that deviate from standard AUR packaging conventions. The dependencies listed (glibc, wayland, vulkan-icd-loader, xdg-utils, etc.) are standard system libraries expected by a graphical Rust application.
</details>
<evidence>

</evidence>
<summary>Standard AUR metadata file, no malicious content.</summary>
</security_assessment>

[5/9] Reviewing PKGBUILD, horizon-launcher.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no malicious content.
[5/9] Reviewing PKGBUILD, horizon-launcher.sh, horizon.desktop...
LLM auditresponse for horizon.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>Standard .desktop file for the Horizon game launcher. It declares the application type, name, comment, icon, and a single Exec line that runs `horizon-launcher play`. No network requests, encoded commands, file operations, or any other suspicious behavior are present. The content matches standard packaging practices for launching a GUI application.</details>
<evidence></evidence>
<summary>Standard desktop entry file.</summary>
</security_assessment>

[5/9] Reviewing PKGBUILD, horizon-launcher.sh, horizon.desktop, horizon.svg...
[6/9] Reviewing PKGBUILD, horizon-launcher.sh, horizon.svg...
+ Reviewed horizon.desktop. Status: SAFE -- Standard desktop entry file.
[7/9] Reviewing PKGBUILD, horizon-launcher.sh...
! Reviewed horizon.svg. Status: SKIPPED -- Skipping binary file: horizon.svg
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard packaging practices for a binary release distributed through a project's official GitHub Releases page. All source artifacts are cryptographically pinned using explicit SHA-256 checksums, which provides strong integrity verification for the downloaded files. The `package()` function contains only predictable `install` commands that copy files into the `$pkgdir` hierarchy. There is no `build()` or `prepare()` function, no calls to `curl`, `wget`, `eval`, or `base64`, no encoded or obfuscated commands, and no behavior that would exfiltrate data, modify system files outside of the package scope, or fetch executable code from unexpected network destinations. The code is entirely declarative and transparent, showing no evidence of supply-chain compromise.
</details>
<evidence></evidence>
<summary>Clean binary PKGBUILD with pinned checksums.</summary>
</security_assessment>

[8/9] Reviewing horizon-launcher.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Clean binary PKGBUILD with pinned checksums.
LLM auditresponse for horizon-launcher.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a standard launcher wrapper commonly used in packaged applications. It sets environment variables (`HORIZON_LAUNCHER_NO_SELF_UPDATE`, `HORIZON_LAUNCHER_DESKTOP_EXEC`) to integrate the application cleanly into the system-managed environment and prevent the upstream app from overwriting package-managed files. It then executes the real binary from a fixed system path.

There is no obfuscated code, no network requests (no curl, wget, git, or similar), no unpinned downloads, and no suspicious file operations. The only binary executed is the package's own installed launcher at `/usr/lib/horizon-launcher/horizon-launcher`. The call to `horizon-launcher desktop-entry --remove` is standard application functionality to clean up user-level desktop entries.

The script is transparent and performs exactly as expected for a packaging wrapper. No evidence of a supply-chain attack, malicious behavior, or deviation from standard packaging practices was found.
</details>
<evidence></evidence>
<summary>Standard wrapper script, no malicious behavior detected.</summary>
</security_assessment>

[9/9] Reviewing ...
+ Reviewed horizon-launcher.sh. Status: SAFE -- Standard wrapper script, no malicious behavior detected.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
(Skipped 1 file: horizon.svg)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 23,466
  Completion Tokens: 12,429
  Total Tokens: 35,895
  Total Cost: $0.004397
  Execution Time: 43.89 seconds

Final Status: SAFE


No issues found.


Audit Skips:

horizon.svg: [SKIPPED] Skipping binary file: horizon.svg
