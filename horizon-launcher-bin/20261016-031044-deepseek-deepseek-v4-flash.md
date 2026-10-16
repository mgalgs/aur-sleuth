---
package: horizon-launcher-bin
pkgver: 0.4.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 23471
completion_tokens: 7843
total_tokens: 31314
cost: 0.003563287
execution_time: 27.74
files_reviewed: 8
files_skipped: 1
maintainer_files: 9
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-16T03:10:44Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: Standard MIT license file, no security issues.
  - file: LICENSE.upstream
    status: safe
    summary: Standard MIT license file, no security concerns.
  - file: OFL-Geist.txt
    status: safe
    summary: Standard font license text; no malicious or suspicious content found.
  - file: .SRCINFO
    status: safe
    summary: Standard metadata, no executable code or threats.
  - file: horizon-launcher.desktop
    status: safe
    summary: Standard desktop entry for game launcher.
  - file: horizon.desktop
    status: safe
    summary: Standard .desktop file with no malicious content.
  - file: horizon.svg
    status: skipped
    summary: "Skipping binary file: horizon.svg"
  - file: PKGBUILD
    status: safe
    summary: No malicious behavior; standard binary package PKGBUILD.
  - file: horizon-launcher.sh
    status: safe
    summary: Benign wrapper script, no malicious behavior.
---

Materializing horizon-launcher-bin from local mirror...
Materialized horizon-launcher-bin
Analyzing horizon-launcher-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD contains only static variable assignments, array definitions, and a single function (`package()`). There are no command substitutions, backtick expressions, or any executable statements in the global/top-level scope that would run when the file is sourced by `makepkg --printsrcinfo`. The `package()` function is defined but not invoked during this step. Therefore, sourcing this PKGBUILD poses no risk of executing malicious code.
</details>
<evidence></evidence>
<summary>No top-level executable code found.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level executable code found.
Reviewing the 9 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/9] Reviewing .SRCINFO...
[0/9] Reviewing .SRCINFO, LICENSE...
[0/9] Reviewing .SRCINFO, LICENSE, LICENSE.upstream...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard MIT License text.  It contains no executable code, no network requests, no obfuscation, no file operations, and no other behavior that could be considered malicious.  It is purely a legal boilerplate document and poses no security risk.
</details>
<evidence></evidence>
<summary>Standard MIT license file, no security issues.</summary>
</security_assessment>

[1/9] Reviewing .SRCINFO, LICENSE.upstream...
+ Reviewed LICENSE. Status: SAFE -- Standard MIT license file, no security issues.
[1/9] Reviewing .SRCINFO, LICENSE.upstream, OFL-Geist.txt...
LLM auditresponse for LICENSE.upstream:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is `LICENSE.upstream`, a standard MIT License text file. It contains no executable code, shell commands, network requests, file operations, or obfuscated content. The file is purely an informational artifact describing the upstream project's licensing terms and poses no supply-chain security risk. There is no deviation from standard packaging practices, and no evidence of malicious behavior.
</details>
<evidence></evidence>
<summary>Standard MIT license file, no security concerns.</summary>
</security_assessment>

[1/9] Reviewing .SRCINFO, LICENSE.upstream, OFL-Geist.txt, PKGBUILD...
[2/9] Reviewing .SRCINFO, OFL-Geist.txt, PKGBUILD...
+ Reviewed LICENSE.upstream. Status: SAFE -- Standard MIT license file, no security concerns.
LLM auditresponse for OFL-Geist.txt:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is the SIL Open Font License, Version 1.1, as bundled with the Geist font project. It contains only standard license text: preamble, definitions, permission and conditions, termination, and disclaimer. There is no executable code, no network requests, no file operations, and no obfuscated content.

The content is consistent with an ordinary license file distributed in a font package. Nothing in the visible text or in the suspicious-pattern scan indicates malicious behavior, data exfiltration, or a supply-chain attack.
</details>
<evidence>
</evidence>
<summary>
Standard font license text; no malicious or suspicious content found.</summary>
</security_assessment>

[2/9] Reviewing .SRCINFO, OFL-Geist.txt, PKGBUILD, horizon-launcher.desktop...
[3/9] Reviewing .SRCINFO, PKGBUILD, horizon-launcher.desktop...
+ Reviewed OFL-Geist.txt. Status: SAFE -- Standard font license text; no malicious or suspicious content found.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `.SRCINFO` is standard AUR package metadata, not an executable script. It contains declarative key–value pairs describing the package dependencies, providers, conflicts, source URLs, and checksums for `horizon-launcher-bin`. The only remote source is a pinned release tarball (`horizon-launcher-linux-x86_64.tar.gz`) hosted on the package&#039;s explicit GitHub repository (`https://github.com/ludovic111/horizon/releases/download/launcher-v0.4.0/`), and every source entry is accompanied by a specific SHA‑256 checksum. No obfuscation, no scripting logic (no `eval`, `curl`, `bash`, or encoded payloads), no data exfiltration, and no deviation from ordinary AUR packaging conventions are present.
</details>
<evidence>
</evidence>
<summary>Standard metadata, no executable code or threats.</summary>
</security_assessment>

[4/9] Reviewing PKGBUILD, horizon-launcher.desktop...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata, no executable code or threats.
[4/9] Reviewing PKGBUILD, horizon-launcher.desktop, horizon-launcher.sh...
LLM auditresponse for horizon-launcher.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Linux `.desktop` entry for an application launcher. It contains no executable code, network requests, obfuscation, or any operations beyond defining the launcher's name, icon, and execution command. The `Exec` and `TryExec` fields simply point to the `horizon-launcher` binary, which would be installed by the package itself. There is no evidence of malicious or suspicious behavior.
</details>
<evidence>
</evidence>
<summary>
Standard desktop entry for game launcher.
</summary>
</security_assessment>

[5/9] Reviewing PKGBUILD, horizon-launcher.sh...
+ Reviewed horizon-launcher.desktop. Status: SAFE -- Standard desktop entry for game launcher.
[5/9] Reviewing PKGBUILD, horizon-launcher.sh, horizon.desktop...
LLM auditresponse for horizon.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Freedesktop.org .desktop file that creates an application launcher entry for the Horizon game. It defines basic metadata (name, icon, category) and specifies that the application should run `horizon-launcher play`. There are no URLs, no obfuscated code, no network requests, no file operations, and no dangerous commands present. The `NoDisplay=true` flag simply hides the entry from the application menu while still allowing it to be used via other means. This file contains no evidence of malicious behavior.
</details>
<evidence></evidence>
<summary>Standard .desktop file with no malicious content.</summary>
</security_assessment>

[6/9] Reviewing PKGBUILD, horizon-launcher.sh...
+ Reviewed horizon.desktop. Status: SAFE -- Standard .desktop file with no malicious content.
[6/9] Reviewing PKGBUILD, horizon-launcher.sh, horizon.svg...
[7/9] Reviewing PKGBUILD, horizon-launcher.sh...
! Reviewed horizon.svg. Status: SKIPPED -- Skipping binary file: horizon.svg
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard binary package. All source files are pinned with SHA256 checksums, including the upstream tarball from GitHub releases. The package() function only installs the binary and support files using `install`. There are no dangerous commands (curl, wget, eval, base64), no obfuscated code, no unexpected network requests, and no modification of system configuration outside the application scope. The file follows standard Arch packaging practices and does not exhibit any signs of a supply-chain attack.
</details>
<evidence>
</evidence>
<summary>No malicious behavior; standard binary package PKGBUILD.</summary>
</security_assessment>

[8/9] Reviewing horizon-launcher.sh...
+ Reviewed PKGBUILD. Status: SAFE -- No malicious behavior; standard binary package PKGBUILD.
LLM auditresponse for horizon-launcher.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a wrapper for the horizon-launcher executable. It sets two environment variables to control self-update and desktop entry behavior, then runs the launcher from a fixed system path. If called without arguments, it first invokes a cleanup command (`desktop-entry --remove`) to remove stale desktop entries, which is a standard packaging operation for this application. There are no network requests, encoded commands, file exfiltration, or any other suspicious patterns. All operations are confined to the package's own files and expected behavior, making this script benign.
</details>
<evidence>

</evidence>
<summary>Benign wrapper script, no malicious behavior.</summary>
</security_assessment>

[9/9] Reviewing ...
+ Reviewed horizon-launcher.sh. Status: SAFE -- Benign wrapper script, no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
(Skipped 1 file: horizon.svg)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 23,471
  Completion Tokens: 7,843
  Total Tokens: 31,314
  Total Cost: $0.003563
  Execution Time: 27.74 seconds

Final Status: SAFE


No issues found.


Audit Skips:

horizon.svg: [SKIPPED] Skipping binary file: horizon.svg
