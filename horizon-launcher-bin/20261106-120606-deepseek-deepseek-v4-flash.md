---
package: horizon-launcher-bin
pkgver: 0.2.47
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 23246
completion_tokens: 4424
total_tokens: 27670
cost: 0.002920554
execution_time: 35.29
files_reviewed: 8
files_skipped: 1
maintainer_files: 9
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-06T12:06:05Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: License file with no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Declarative metadata, no executable code or suspicious content.
  - file: LICENSE.upstream
    status: safe
    summary: Standard license file, no security concerns.
  - file: OFL-Geist.txt
    status: safe
    summary: Standard font license file with no security issues.
  - file: horizon-launcher.desktop
    status: safe
    summary: Standard desktop entry, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR binary package, no malicious behavior detected.
  - file: horizon.svg
    status: skipped
    summary: "Skipping binary file: horizon.svg"
  - file: horizon.desktop
    status: safe
    summary: Standard desktop entry file, no security issues.
  - file: horizon-launcher.sh
    status: safe
    summary: Standard wrapper script, no malicious behavior.
---

Materializing horizon-launcher-bin from local mirror...
Materialized horizon-launcher-bin
Analyzing horizon-launcher-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` only sources the PKGBUILD's global/top-level scope. This PKGBUILD contains only standard variable definitions: `pkgname`, `pkgver`, `epoch`, `_tag`, `pkgdesc`, `arch`, `url`, `license`, dependency arrays, `source`, and `sha256sums`. There are no top-level command substitutions, no `eval`, no `curl`/`wget`/`base64`, and no assignments that execute downloaded or obfuscated payloads during sourcing.

The `package()` function is present, but it only runs during the packaging phase and is out of scope for this narrow gate. Even so, its contents are ordinary `install` commands writing into `$pkgdir`. The source array points to the project's own GitHub releases URL, and the checksums are explicitly pinned rather than skipped. Nothing in the global scope performs network access, data exfiltration, or arbitrary code execution.
</details>
<evidence>
</evidence>
<summary>
Top-level PKGBUILD is standard variables only; no malicious execution during printsrcinfo.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD is standard variables only; no malicious execution during printsrcinfo.
Reviewing the 9 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/9] Reviewing .SRCINFO...
[0/9] Reviewing .SRCINFO, LICENSE...
[0/9] Reviewing .SRCINFO, LICENSE, LICENSE.upstream...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard MIT License text. It contains no executable code, no network requests, no obfuscation, and no suspicious operations. There is no evidence of malicious behavior or supply-chain attack vectors. It is purely a legal document and poses no security risk.
</details>
<evidence></evidence>
<summary>License file with no security concerns.</summary>
</security_assessment>

[1/9] Reviewing .SRCINFO, LICENSE.upstream...
+ Reviewed LICENSE. Status: SAFE -- License file with no security concerns.
[1/9] Reviewing .SRCINFO, LICENSE.upstream, OFL-Geist.txt...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.SRCINFO` metadata file used for AUR package information. It contains only declarative key-value pairs describing the package name, version, dependencies, sources, and checksums. All source files point to the official upstream GitHub releases repository and are pinned with SHA-256 hashes. No embedded scripts, obfuscated data, or unexpected instructions are present. The content follows normal AUR packaging practices and presents no evidence of malicious behavior.
</details>
<evidence></evidence>
<summary>Declarative metadata, no executable code or suspicious content.</summary>
</security_assessment>

[2/9] Reviewing LICENSE.upstream, OFL-Geist.txt...
+ Reviewed .SRCINFO. Status: SAFE -- Declarative metadata, no executable code or suspicious content.
[2/9] Reviewing LICENSE.upstream, OFL-Geist.txt, PKGBUILD...
LLM auditresponse for LICENSE.upstream:
<security_assessment>
<decision>SAFE</decision>
<details>
This file contains only the text of the MIT License, a standard open-source license. There is no executable code, no network requests, no obfuscated content, and no system modification instructions. It is a benign text file with no security implications.
</details>
<evidence></evidence>
<summary>Standard license file, no security concerns.</summary>
</security_assessment>

[3/9] Reviewing OFL-Geist.txt, PKGBUILD...
+ Reviewed LICENSE.upstream. Status: SAFE -- Standard license file, no security concerns.
[3/9] Reviewing OFL-Geist.txt, PKGBUILD, horizon-launcher.desktop...
LLM auditresponse for OFL-Geist.txt:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is the SIL Open Font License (OFL) text for the Geist font, authored by the Geist Project. It contains standard license terms and disclaimers. There are no executable commands, network requests, obfuscated code, or any operations that deviate from a typical license file included in a package. No security concerns are present.
</details>
<evidence></evidence>
<summary>Standard font license file with no security issues.</summary>
</security_assessment>

[4/9] Reviewing PKGBUILD, horizon-launcher.desktop...
+ Reviewed OFL-Geist.txt. Status: SAFE -- Standard font license file with no security issues.
[4/9] Reviewing PKGBUILD, horizon-launcher.desktop, horizon-launcher.sh...
LLM auditresponse for horizon-launcher.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Linux desktop entry file (`.desktop`). It defines an application launcher with the `Exec` and `TryExec` fields set to the simple command `horizon-launcher` with no arguments, no piping, and no obfuscation. There are no suspicious network requests, encoded commands, file operations, or any deviation from expected packaging practice. The content is consistent with a legitimate launcher shortcut for the Horizon game launcher application.
</details>
<evidence></evidence>
<summary>Standard desktop entry, no malicious content.</summary>
</security_assessment>

[4/9] Reviewing PKGBUILD, horizon-launcher.desktop, horizon-launcher.sh, horizon.desktop...
[5/9] Reviewing PKGBUILD, horizon-launcher.sh, horizon.desktop...
+ Reviewed horizon-launcher.desktop. Status: SAFE -- Standard desktop entry, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR binary package practices. It downloads a precompiled tarball from the project's official GitHub releases, with pinned version and a valid SHA-256 checksum. All source files (script, desktop entries, icons, licenses) are included with checksums. The `package()` function only installs files into the package directory using standard `install` commands. There are no dangerous commands such as `eval`, `curl|bash`, `git pull`, encoded payloads, or any operations that exfiltrate data or execute untrusted code at build time. The dependencies and optdepends are reasonable for a Rust-based Minecraft launcher. No signs of supply-chain attack or malicious injection.
</details>
<evidence></evidence>
<summary>Standard AUR binary package, no malicious behavior detected.</summary>
</security_assessment>

[5/9] Reviewing PKGBUILD, horizon-launcher.sh, horizon.desktop, horizon.svg...
[6/9] Reviewing horizon-launcher.sh, horizon.desktop, horizon.svg...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR binary package, no malicious behavior detected.
[7/9] Reviewing horizon-launcher.sh, horizon.desktop...
! Reviewed horizon.svg. Status: SKIPPED -- Skipping binary file: horizon.svg
LLM auditresponse for horizon.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Freedesktop.org .desktop entry file for the Horizon game launcher. It defines an application that executes `horizon-launcher play` as its primary command. There are no network requests, obfuscated code, dangerous commands, or any other indicators of supply-chain compromise or malicious behavior. The file is entirely declarative and follows common packaging practices for AUR packages distributing desktop entries.
</details>
<evidence></evidence>
<summary>Standard desktop entry file, no security issues.</summary>
</security_assessment>

[8/9] Reviewing horizon-launcher.sh...
+ Reviewed horizon.desktop. Status: SAFE -- Standard desktop entry file, no security issues.
LLM auditresponse for horizon-launcher.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard wrapper script for a binary launcher. It sets two environment variables (`HORIZON_LAUNCHER_NO_SELF_UPDATE` and `HORIZON_LAUNCHER_DESKTOP_EXEC`) that control the application's update and desktop integration behavior, then executes the actual launcher binary from `/usr/lib/horizon-launcher/horizon-launcher`. When called with no arguments, it first removes old desktop entries created by previous versions (a routine cleanup task). No network requests, downloads, obfuscation, or manipulation of unrelated system files occur. The script performs only expected packaging operations and is consistent with a `-bin` package where the binary is precompiled and installed to a library path.
</details>
<evidence></evidence>
<summary>Standard wrapper script, no malicious behavior.</summary>
</security_assessment>

[9/9] Reviewing ...
+ Reviewed horizon-launcher.sh. Status: SAFE -- Standard wrapper script, no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
(Skipped 1 file: horizon.svg)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 23,246
  Completion Tokens: 4,424
  Total Tokens: 27,670
  Total Cost: $0.002921
  Execution Time: 35.29 seconds

Final Status: SAFE


No issues found.


Audit Skips:

horizon.svg: [SKIPPED] Skipping binary file: horizon.svg
