---
package: horizon-launcher-bin
pkgver: 0.2.49
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 22994
completion_tokens: 3942
total_tokens: 26936
cost: 0.002809898
execution_time: 41.11
files_reviewed: 8
files_skipped: 1
maintainer_files: 9
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-07T08:11:50Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: Standard license file, no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no malicious content.
  - file: LICENSE.upstream
    status: safe
    summary: Standard license file, no security issues.
  - file: OFL-Geist.txt
    status: safe
    summary: Standard open font license, no security issues.
  - file: horizon-launcher.desktop
    status: safe
    summary: Standard desktop file, no security issues.
  - file: horizon.desktop
    status: safe
    summary: Standard desktop entry, no malicious content.
  - file: horizon.svg
    status: skipped
    summary: "Skipping binary file: horizon.svg"
  - file: PKGBUILD
    status: safe
    summary: Standard binary package with pinned upstream source and valid checksums.
  - file: horizon-launcher.sh
    status: safe
    summary: Safe, standard wrapper script.
---

Materializing horizon-launcher-bin from local mirror...
Materialized horizon-launcher-bin
Analyzing horizon-launcher-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only static variable assignments and a `package()` function definition at the top level. There are no command substitutions, backtick executions, or any code that would execute during sourcing. The `source` array uses parameter expansion with `${pkgver}` and `${_tag}`, which is normal and does not trigger execution. No dangerous operations (eval, curl, wget, base64 decode, etc.) appear in the global scope. Running `makepkg --printsrcinfo` will safely parse this file.
</details>
<evidence></evidence>
<summary>No top-level code executes; safe to source.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level code executes; safe to source.
Reviewing the 9 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/9] Reviewing .SRCINFO...
[0/9] Reviewing .SRCINFO, LICENSE...
[0/9] Reviewing .SRCINFO, LICENSE, LICENSE.upstream...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard MIT License text. It contains no executable code, no instructions, no network requests, no system commands, and no obfuscation. It is a plain text legal document commonly found in open-source packages. There is no evidence of malicious or suspicious behavior.
</details>
<evidence></evidence>
<summary>Standard license file, no security issues.</summary>
</security_assessment>

[0/9] Reviewing .SRCINFO, LICENSE, LICENSE.upstream, OFL-Geist.txt...
[1/9] Reviewing .SRCINFO, LICENSE.upstream, OFL-Geist.txt...
+ Reviewed LICENSE. Status: SAFE -- Standard license file, no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a standard metadata file for an AUR package. It declares the package name, version, dependencies, and sources. All sources point to the official GitHub releases of the upstream project (horizon-rust/horizon), and each source has a corresponding SHA-256 checksum. There are no scripts, no encoded commands, no unusual network requests, and no references to external or unexpected hosts. The file simply describes the package structure and does not contain any executable or obfuscated content. No evidence of malicious behavior or supply-chain attack was found.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata file, no malicious content.</summary>
</security_assessment>

[1/9] Reviewing .SRCINFO, LICENSE.upstream, OFL-Geist.txt, PKGBUILD...
[2/9] Reviewing LICENSE.upstream, OFL-Geist.txt, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no malicious content.
LLM auditresponse for LICENSE.upstream:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard MIT License text. It contains no executable code, no network requests, no obfuscated content, and no instructions that could be interpreted as malicious. It is a plain text license file, which is a normal and expected component of a software package. There are no security concerns.
</details>
<evidence></evidence>
<summary>Standard license file, no security issues.</summary>
</security_assessment>

[3/9] Reviewing OFL-Geist.txt, PKGBUILD...
+ Reviewed LICENSE.upstream. Status: SAFE -- Standard license file, no security issues.
[3/9] Reviewing OFL-Geist.txt, PKGBUILD, horizon-launcher.desktop...
LLM auditresponse for OFL-Geist.txt:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is the SIL Open Font License version 1.1 for the Geist font project. It is a plain text license file containing no executable code, no suspicious commands, no network requests, no obfuscation, and no system modifications. It is a standard open source license document and does not pose any security risk.
</details>
<evidence></evidence>
<summary>Standard open font license, no security issues.</summary>
</security_assessment>

[4/9] Reviewing PKGBUILD, horizon-launcher.desktop...
+ Reviewed OFL-Geist.txt. Status: SAFE -- Standard open font license, no security issues.
[4/9] Reviewing PKGBUILD, horizon-launcher.desktop, horizon-launcher.sh...
LLM auditresponse for horizon-launcher.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard .desktop file that defines an application launcher for the Horizon game launcher. It executes the binary `horizon-launcher` at runtime. There is no embedded code, network access, or suspicious behavior. The file is safe.
</details>
<evidence>
</evidence>
<summary>Standard desktop file, no security issues.</summary>
</security_assessment>

[4/9] Reviewing PKGBUILD, horizon-launcher.desktop, horizon-launcher.sh, horizon.desktop...
[5/9] Reviewing PKGBUILD, horizon-launcher.sh, horizon.desktop...
+ Reviewed horizon-launcher.desktop. Status: SAFE -- Standard desktop file, no security issues.
LLM auditresponse for horizon.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard desktop entry file for the Horizon game launcher. It defines an application that runs `horizon-launcher play` when launched. There are no suspicious commands, obfuscated code, network requests, or unusual file operations. The file follows conventional .desktop file formatting and only references the package's own binary. No security issues detected.
</details>
<evidence></evidence>
<summary>Standard desktop entry, no malicious content.</summary>
</security_assessment>

[5/9] Reviewing PKGBUILD, horizon-launcher.sh, horizon.desktop, horizon.svg...
[6/9] Reviewing PKGBUILD, horizon-launcher.sh, horizon.svg...
+ Reviewed horizon.desktop. Status: SAFE -- Standard desktop entry, no malicious content.
[7/9] Reviewing PKGBUILD, horizon-launcher.sh...
! Reviewed horizon.svg. Status: SKIPPED -- Skipping binary file: horizon.svg
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a binary package. The source tarball is fetched from the official upstream GitHub releases using a pinned tag with verified SHA256 checksums. No obfuscated code, dangerous commands, unexpected network requests, or suspicious file operations are present. The package function only installs pre-built binaries and configuration files into standard system directories. All dependencies and optdepends are reasonable for the stated purpose of a Minecraft launcher. No evidence of supply-chain attack or malicious injection.
</details>
<evidence>
</evidence>
<summary>Standard binary package with pinned upstream source and valid checksums.</summary>
</security_assessment>

[8/9] Reviewing horizon-launcher.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard binary package with pinned upstream source and valid checksums.
LLM auditresponse for horizon-launcher.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard wrapper script for the horizon-launcher application. It sets two environment variables to disable self-updating and specify the desktop executable path for menu entries. If no arguments are passed, it removes stale desktop entries left by older launcher versions, then executes the real launcher binary. There are no network requests, downloads, obfuscated commands, file operations outside the application’s scope, or other suspicious behavior. The script is a conventional AUR packaging convenience; nothing in it deviates from safe packaging practices.
</details>
<evidence></evidence>
<summary>Safe, standard wrapper script.</summary>
</security_assessment>

[9/9] Reviewing ...
+ Reviewed horizon-launcher.sh. Status: SAFE -- Safe, standard wrapper script.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
(Skipped 1 file: horizon.svg)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 22,994
  Completion Tokens: 3,942
  Total Tokens: 26,936
  Total Cost: $0.002810
  Execution Time: 41.11 seconds

Final Status: SAFE


No issues found.


Audit Skips:

horizon.svg: [SKIPPED] Skipping binary file: horizon.svg
