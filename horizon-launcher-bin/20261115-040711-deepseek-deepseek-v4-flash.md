---
package: horizon-launcher-bin
pkgver: 0.2.66
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 23158
completion_tokens: 4849
total_tokens: 28007
cost: 0.00295704
execution_time: 19.49
files_reviewed: 8
files_skipped: 1
maintainer_files: 9
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-15T04:07:10Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: Standard license file, no security issues.
  - file: LICENSE.upstream
    status: safe
    summary: Standard license file, no security issues.
  - file: OFL-Geist.txt
    status: safe
    summary: Standard open font license text; no security issues.
  - file: horizon-launcher.desktop
    status: safe
    summary: Standard desktop entry file; no malicious content.
  - file: .SRCINFO
    status: safe
    summary: Standard package metadata, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard binary PKGBUILD with pinned checksums.
  - file: horizon.svg
    status: skipped
    summary: "Skipping binary file: horizon.svg"
  - file: horizon-launcher.sh
    status: safe
    summary: Standard wrapper script, no malicious behavior.
  - file: horizon.desktop
    status: safe
    summary: Standard .desktop file, no security concerns.
---

Materializing horizon-launcher-bin from local mirror...
Materialized horizon-launcher-bin
Analyzing horizon-launcher-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD global scope contains only standard variable assignments and arrays (source, sha256sums, depends, etc.). There are no backtick or `$()` command substitutions, no `eval`, no `curl`/`wget` calls, and no other code that would be executed when the file is sourced by `makepkg --printsrcinfo`. The only dynamic expansion is `$pkgver` in the `provides` line, which is a simple variable interpolation, not a command execution. All potentially dangerous operations are confined to the `package()` function, which is explicitly **not** executed during `makepkg --printsrcinfo`. Therefore, parsing this PKGBUILD is safe.</details>
<evidence></evidence>
<summary>No malicious code in global scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code in global scope.
Reviewing the 9 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/9] Reviewing .SRCINFO...
[0/9] Reviewing .SRCINFO, LICENSE...
[0/9] Reviewing .SRCINFO, LICENSE, LICENSE.upstream...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard MIT License text. It contains no code, no executable instructions, and no configuration directives. There are no signs of malicious intent or suspicious behavior. It is a simple legal notice.
</details>
<evidence>

</evidence>
<summary>Standard license file, no security issues.</summary>
</security_assessment>

[1/9] Reviewing .SRCINFO, LICENSE.upstream...
+ Reviewed LICENSE. Status: SAFE -- Standard license file, no security issues.
[1/9] Reviewing .SRCINFO, LICENSE.upstream, OFL-Geist.txt...
LLM auditresponse for LICENSE.upstream:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard MIT License text. It contains no executable code, no network requests, no obfuscation, and no system modifications. It is a straightforward license file with no security concerns.
</details>
<evidence>
</evidence>
<summary>Standard license file, no security issues.</summary>
</security_assessment>

[1/9] Reviewing .SRCINFO, LICENSE.upstream, OFL-Geist.txt, PKGBUILD...
[2/9] Reviewing .SRCINFO, OFL-Geist.txt, PKGBUILD...
+ Reviewed LICENSE.upstream. Status: SAFE -- Standard license file, no security issues.
LLM auditresponse for OFL-Geist.txt:
<security_assessment>
<decision>SAFE</decision>
<details>
This file ("OFL-Geist.txt") is the standard SIL Open Font License (OFL) Version 1.1. It is a plain-text license file for the Geist font project hosted on GitHub under "vercel/geist-font". There is no executable code, no network requests, no obfuscation, no system modifications, and no injected malicious content. The file consists entirely of legal boilerplate text. No security issues are present.
</details>
<evidence></evidence>
<summary>Standard open font license text; no security issues.</summary>
</security_assessment>

[3/9] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed OFL-Geist.txt. Status: SAFE -- Standard open font license text; no security issues.
[3/9] Reviewing .SRCINFO, PKGBUILD, horizon-launcher.desktop...
LLM auditresponse for horizon-launcher.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard desktop entry file for the Horizon game launcher. It contains only typical fields: Type, Name, GenericName, Comment, Exec, TryExec, Icon, Terminal, Categories, and StartupWMClass. There are no embedded commands, network requests, or obfuscated content. The Exec and TryExec fields reference the packaged binary `horizon-launcher`, which is expected behavior for a launcher application. No security concerns present.
</details>
<evidence></evidence>
<summary>Standard desktop entry file; no malicious content.</summary>
</security_assessment>

[3/9] Reviewing .SRCINFO, PKGBUILD, horizon-launcher.desktop, horizon-launcher.sh...
[4/9] Reviewing .SRCINFO, PKGBUILD, horizon-launcher.sh...
+ Reviewed horizon-launcher.desktop. Status: SAFE -- Standard desktop entry file; no malicious content.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file contains standard package metadata for the horizon-launcher-bin AUR package. It lists the upstream source tarball from the project&#39;s official GitHub releases page, provides SHA256 checksums for all included files (none set to SKIP), and declares dependencies that are appropriate for a Minecraft launcher built in Rust. No executable code, obfuscated content, suspicious network requests, or unusual operations are present. The file is purely descriptive and used by makepkg to build the package; it contains no commands or instructions that could introduce a supply-chain attack on their own.
</details>
<evidence></evidence>
<summary>Standard package metadata, no security issues.</summary>
</security_assessment>

[4/9] Reviewing .SRCINFO, PKGBUILD, horizon-launcher.sh, horizon.desktop...
[5/9] Reviewing PKGBUILD, horizon-launcher.sh, horizon.desktop...
+ Reviewed .SRCINFO. Status: SAFE -- Standard package metadata, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a pre-built binary release. The source tarball is fetched from the project's official GitHub releases over HTTPS, and its integrity is verified via pinned SHA-256 checksums. The `package()` function only installs the binary, shell script, desktop files, icons, and licenses into the appropriate directories. No `prepare()` or `build()` function is present, so no arbitrary code is executed from the fetched tarball. There is no obfuscated code, no unexpected network requests, and no use of dangerous commands such as `eval`, `base64`, `curl`, or `wget` for execution. The tag reference (`launcher@0.2.66`) combined with pinned checksums ensures supply-chain integrity. This file shows no evidence of malicious behavior.
</details>
<evidence></evidence>
<summary>Standard binary PKGBUILD with pinned checksums.</summary>
</security_assessment>

[6/9] Reviewing horizon-launcher.sh, horizon.desktop...
+ Reviewed PKGBUILD. Status: SAFE -- Standard binary PKGBUILD with pinned checksums.
[6/9] Reviewing horizon-launcher.sh, horizon.desktop, horizon.svg...
[7/9] Reviewing horizon-launcher.sh, horizon.desktop...
! Reviewed horizon.svg. Status: SKIPPED -- Skipping binary file: horizon.svg
LLM auditresponse for horizon-launcher.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard wrapper shell script for the horizon-launcher package. It sets two environment variables to control the launcher&#39;s self-update and desktop-entry behavior, then either cleans up old desktop entries (when invoked with no arguments) or directly launches the binary at `/usr/lib/horizon-launcher/horizon-launcher` with all passed arguments. There are no network requests, obfuscated code, unexpected file operations, or execution of untrusted content. The script is a simple, transparent launcher entry point and follows normal packaging practices.
</details>
<evidence></evidence>
<summary>Standard wrapper script, no malicious behavior.</summary>
</security_assessment>

[8/9] Reviewing horizon.desktop...
+ Reviewed horizon-launcher.sh. Status: SAFE -- Standard wrapper script, no malicious behavior.
LLM auditresponse for horizon.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.desktop` file used by Linux desktop environments to register an application launcher. It contains only metadata (name, comment, icon, categories) and a single `Exec` line that invokes the package's own binary (`horizon-launcher play`). There are no network requests, obfuscation, suspicious commands, or any deviation from normal packaging practices. The file is harmless.
</details>
<evidence>
</evidence>
<summary>Standard .desktop file, no security concerns.</summary>
</security_assessment>

[9/9] Reviewing ...
+ Reviewed horizon.desktop. Status: SAFE -- Standard .desktop file, no security concerns.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
(Skipped 1 file: horizon.svg)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 23,158
  Completion Tokens: 4,849
  Total Tokens: 28,007
  Total Cost: $0.002957
  Execution Time: 19.49 seconds

Final Status: SAFE


No issues found.


Audit Skips:

horizon.svg: [SKIPPED] Skipping binary file: horizon.svg
