---
package: horizon-launcher-bin
pkgver: 0.2.33
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 22845
completion_tokens: 2999
total_tokens: 25844
cost: 0.002624713
execution_time: 28.21
files_reviewed: 8
files_skipped: 1
maintainer_files: 9
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-01T12:07:05Z
file_verdicts:
  - file: LICENSE.upstream
    status: safe
    summary: Standard MIT license text, no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file; no security concerns.
  - file: LICENSE
    status: safe
    summary: Standard license file, no security issues.
  - file: horizon-launcher.desktop
    status: safe
    summary: Standard desktop entry file, no security concerns.
  - file: OFL-Geist.txt
    status: safe
    summary: Standard open-source font license, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard binary PKGBUILD, no malicious code detected.
  - file: horizon.svg
    status: skipped
    summary: "Skipping binary file: horizon.svg"
  - file: horizon.desktop
    status: safe
    summary: Clean desktop entry; no security issues.
  - file: horizon-launcher.sh
    status: safe
    summary: Safe wrapper script; no suspicious behavior detected.
---

Materializing horizon-launcher-bin from local mirror...
Materialized horizon-launcher-bin
Analyzing horizon-launcher-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only static variable assignments and a function definition for `package()` which is not executed during `makepkg --printsrcinfo`. There are no command substitutions (`$()` or backticks), no `eval`, no top-level function calls, and no other code that would execute at source time. The `source` array uses standard variable interpolation and refers to the package's own GitHub release URL. No malicious or suspicious top-level code is present.</details>
<evidence></evidence>
<summary>No dangerous top-level code. Safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code. Safe.
Reviewing the 9 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/9] Reviewing LICENSE...
[0/9] Reviewing LICENSE, .SRCINFO...
[0/9] Reviewing LICENSE, .SRCINFO, LICENSE.upstream...
LLM auditresponse for LICENSE.upstream:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is the MIT license text for the upstream Horizon project. It contains no executable code, no instructions, no network requests, and no system operations. The file is a plain text license file and presents no security risk. There are no signs of obfuscation, malicious payloads, or any deviations from standard packaging practices. The file is entirely benign.
</details>
<evidence></evidence>
<summary>Standard MIT license text, no security concerns.</summary>
</security_assessment>

[0/9] Reviewing LICENSE, .SRCINFO, LICENSE.upstream, OFL-Geist.txt...
[1/9] Reviewing LICENSE, .SRCINFO, OFL-Geist.txt...
+ Reviewed LICENSE.upstream. Status: SAFE -- Standard MIT license text, no security concerns.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is standard AUR metadata for the horizon-launcher-bin package. It declares the package name, version, dependencies, and source files with SHA-256 checksums. All sources point to the official GitHub releases of the upstream project. There is no executable code, no obfuscation, and no suspicious operations. The file conforms to normal AUR packaging practices.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file; no security concerns.</summary>
</security_assessment>

[2/9] Reviewing LICENSE, OFL-Geist.txt...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file; no security concerns.
[2/9] Reviewing LICENSE, OFL-Geist.txt, PKGBUILD...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard MIT License text. It contains no executable code, no network requests, no obfuscated content, and no system commands. It is purely a legal document and poses no security risk.
</details>
<evidence>
</evidence>
<summary>Standard license file, no security issues.</summary>
</security_assessment>

[2/9] Reviewing LICENSE, OFL-Geist.txt, PKGBUILD, horizon-launcher.desktop...
[3/9] Reviewing OFL-Geist.txt, PKGBUILD, horizon-launcher.desktop...
+ Reviewed LICENSE. Status: SAFE -- Standard license file, no security issues.
LLM auditresponse for horizon-launcher.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.desktop` file used to register an application in the system menu. It contains only metadata (name, comment, icon, categories) and an `Exec` line that points to a binary named `horizon-launcher` installed by the package. There are no encoded commands, network requests, file operations, or any other potentially dangerous operations. The file follows normal packaging practices for application launchers.
</details>
<evidence></evidence>
<summary>Standard desktop entry file, no security concerns.</summary>
</security_assessment>

[4/9] Reviewing OFL-Geist.txt, PKGBUILD...
+ Reviewed horizon-launcher.desktop. Status: SAFE -- Standard desktop entry file, no security concerns.
[4/9] Reviewing OFL-Geist.txt, PKGBUILD, horizon-launcher.sh...
LLM auditresponse for OFL-Geist.txt:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is the SIL Open Font License (OFL) version 1.1, a standard open-source license document. It contains only license text and a copyright attribution. There are no executable commands, network requests, obfuscated content, or any other indicators of malicious behavior. The file is entirely benign.
</details>
<evidence>
</evidence>
<summary>Standard open-source font license, no security issues.</summary>
</security_assessment>

[5/9] Reviewing PKGBUILD, horizon-launcher.sh...
+ Reviewed OFL-Geist.txt. Status: SAFE -- Standard open-source font license, no security issues.
[5/9] Reviewing PKGBUILD, horizon-launcher.sh, horizon.desktop...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard binary package for the Horizon launcher. All sources are fetched from the official GitHub releases with a pinned tag and SHA-256 checksums provided for every file. No SKIP entries appear. The `package()` function only copies prebuilt binaries, scripts, desktop files, icons, and licenses into the intended directories. There are no calls to `curl`, `wget`, `eval`, or any other dangerous operations. No obfuscation or unexpected system modifications are present. The file follows normal AUR packaging conventions and does not contain any evidence of a supply-chain attack.
</details>
<evidence></evidence>
<summary>Standard binary PKGBUILD, no malicious code detected.</summary>
</security_assessment>

[5/9] Reviewing PKGBUILD, horizon-launcher.sh, horizon.desktop, horizon.svg...
[6/9] Reviewing horizon-launcher.sh, horizon.desktop, horizon.svg...
+ Reviewed PKGBUILD. Status: SAFE -- Standard binary PKGBUILD, no malicious code detected.
[7/9] Reviewing horizon-launcher.sh, horizon.desktop...
! Reviewed horizon.svg. Status: SKIPPED -- Skipping binary file: horizon.svg
LLM auditresponse for horizon.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Linux .desktop entry file for the Horizon game launcher. It defines an application with the Exec command `horizon-launcher play`, which is the expected and standard way to launch such an application. The file contains no obfuscation, no network requests, no file operations, and no dangerous commands. It follows normal packaging practices for providing a desktop icon and launcher for the package.
</details>
<evidence></evidence>
<summary>Clean desktop entry; no security issues.</summary>
</security_assessment>

[8/9] Reviewing horizon-launcher.sh...
+ Reviewed horizon.desktop. Status: SAFE -- Clean desktop entry; no security issues.
LLM auditresponse for horizon-launcher.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a simple wrapper shell script provided as part of the AUR package. It sets environment variables to disable self-update and specify the desktop exec path, then either cleans up old desktop entries (via `desktop-entry --remove`) or forwards all arguments to the packaged launcher binary. There are no network requests, no obfuscation, no dangerous commands (eval, base64, curl, wget), and no modification of files outside the package's own scope. All behavior is consistent with standard packaging practices and the application's stated purpose.
</details>
<evidence></evidence>
<summary>Safe wrapper script; no suspicious behavior detected.</summary>
</security_assessment>

[9/9] Reviewing ...
+ Reviewed horizon-launcher.sh. Status: SAFE -- Safe wrapper script; no suspicious behavior detected.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
(Skipped 1 file: horizon.svg)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 22,845
  Completion Tokens: 2,999
  Total Tokens: 25,844
  Total Cost: $0.002625
  Execution Time: 28.21 seconds

Final Status: SAFE


No issues found.


Audit Skips:

horizon.svg: [SKIPPED] Skipping binary file: horizon.svg
