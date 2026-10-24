---
package: horizon-launcher-bin
pkgver: 0.2.3
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 23481
completion_tokens: 8442
total_tokens: 31923
cost: 0.003673215
execution_time: 35.73
files_reviewed: 8
files_skipped: 1
maintainer_files: 9
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-24T03:23:55Z
file_verdicts:
  - file: LICENSE.upstream
    status: safe
    summary: Standard license file, no security issues.
  - file: LICENSE
    status: safe
    summary: License file with no security concerns.
  - file: OFL-Geist.txt
    status: safe
    summary: Standard font license file; no security concerns.
  - file: horizon-launcher.desktop
    status: safe
    summary: Standard desktop entry, no issues.
  - file: PKGBUILD
    status: safe
    summary: Clean PKGBUILD with pinned checksums and no malicious patterns.
  - file: horizon.desktop
    status: safe
    summary: Standard desktop entry file, no security issues.
  - file: horizon.svg
    status: skipped
    summary: "Skipping binary file: horizon.svg"
  - file: horizon-launcher.sh
    status: safe
    summary: Benign wrapper script for Horizon Launcher.
  - file: .SRCINFO
    status: safe
    summary: Clean package metadata, no malicious code.
---

Materializing horizon-launcher-bin from local mirror...
Materialized horizon-launcher-bin
Analyzing horizon-launcher-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
No dangerous code is present in the global/top-level scope of this PKGBUILD. All assignments are static strings or arrays. There are no command substitutions, backticks, eval, or any other executable constructs that would run during sourcing. The `pkgver()`, `prepare()`, `build()`, and `package()` functions are not executed by `makepkg --printsrcinfo`, so their contents are irrelevant for this gate. Therefore, sourcing this PKGBUILD for metadata extraction is safe.
</details>
<evidence></evidence>
<summary>No dangerous top-level code; safe to source.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code; safe to source.
Reviewing the 9 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/9] Reviewing .SRCINFO...
[0/9] Reviewing .SRCINFO, LICENSE...
[0/9] Reviewing .SRCINFO, LICENSE, LICENSE.upstream...
LLM auditresponse for LICENSE.upstream:
<security_assessment>
<decision>SAFE</decision>
<details>
This file contains only the text of the MIT License, a standard open source software license. There is no executable code, no network requests, no file operations, and no system modifications. The file poses no security risk and is consistent with normal packaging practices.
</details>
<evidence></evidence>
<summary>Standard license file, no security issues.</summary>
</security_assessment>

[0/9] Reviewing .SRCINFO, LICENSE, LICENSE.upstream, OFL-Geist.txt...
[1/9] Reviewing .SRCINFO, LICENSE, OFL-Geist.txt...
+ Reviewed LICENSE.upstream. Status: SAFE -- Standard license file, no security issues.
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard MIT License text. It contains no executable code, no commands, and no operations of any kind. There is no network activity, no file manipulation, no obfuscation, and no attempt to modify the system. The content is purely a legal notice and permission grant. The presence of HTML-escaped quotes (`&quot;`) is likely an artifact of copying from a web source and has no security implications. No evidence of malicious or suspicious behavior.
</details>
<evidence></evidence>
<summary>License file with no security concerns.</summary>
</security_assessment>

[1/9] Reviewing .SRCINFO, LICENSE, OFL-Geist.txt, PKGBUILD...
[2/9] Reviewing .SRCINFO, OFL-Geist.txt, PKGBUILD...
+ Reviewed LICENSE. Status: SAFE -- License file with no security concerns.
LLM auditresponse for OFL-Geist.txt:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is the SIL Open Font License (Version 1.1) as provided by the Geist Font Project. It contains only standard license text with no executable code, network requests, obfuscation, or any other malicious elements. No evidence of a supply-chain attack or security issue exists in this file.
</details>
<evidence>
</evidence>
<summary>Standard font license file; no security concerns.</summary>
</security_assessment>

[2/9] Reviewing .SRCINFO, OFL-Geist.txt, PKGBUILD, horizon-launcher.desktop...
[3/9] Reviewing .SRCINFO, PKGBUILD, horizon-launcher.desktop...
+ Reviewed OFL-Geist.txt. Status: SAFE -- Standard font license file; no security concerns.
LLM auditresponse for horizon-launcher.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard .desktop file for a game launcher. It defines an application entry that executes "horizon-launcher". No evidence of malicious code, network requests, obfuscation, or suspicious operations. It follows the standard desktop entry format and does not contain any executable code beyond specifying a binary name.
</details>
<evidence>
</evidence>
<summary>Standard desktop entry, no issues.</summary>
</security_assessment>

[3/9] Reviewing .SRCINFO, PKGBUILD, horizon-launcher.desktop, horizon-launcher.sh...
[4/9] Reviewing .SRCINFO, PKGBUILD, horizon-launcher.sh...
+ Reviewed horizon-launcher.desktop. Status: SAFE -- Standard desktop entry, no issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Arch packaging practices for a pre-compiled binary package. The source is obtained from the project's own GitHub releases page using a specific tag, with all eight SHA256 checksums pinned to explicit hashes (none are set to SKIP). The `package()` function performs routine file installation into the package directory with no dangerous commands, obfuscation, or unexpected system modifications. There are no network requests in `prepare()`, `build()`, or `package()` beyond the declared `source` array, no use of `eval`, `base64`, `curl`, `wget` in any context, and no code that could exfiltrate data or execute attacker-controlled content. The dependencies and optdepends are appropriate for a graphical Wayland/Vulkan application that supports Minecraft Java resource preparation and Microsoft sign-in via Secret Service.
</details>
<evidence></evidence>
<summary>Clean PKGBUILD with pinned checksums and no malicious patterns.</summary>
</security_assessment>

[4/9] Reviewing .SRCINFO, PKGBUILD, horizon-launcher.sh, horizon.desktop...
[5/9] Reviewing .SRCINFO, horizon-launcher.sh, horizon.desktop...
+ Reviewed PKGBUILD. Status: SAFE -- Clean PKGBUILD with pinned checksums and no malicious patterns.
LLM auditresponse for horizon.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Freedesktop.org `.desktop` entry for the Horizon game launcher. It contains no executable code, no network requests, no file operations, and no obfuscation. The only action is to launch the application via `horizon-launcher play` when the user opens this desktop entry. This is normal and expected behavior for a game package.</details>
<evidence></evidence>
<summary>Standard desktop entry file, no security issues.</summary>
</security_assessment>

[6/9] Reviewing .SRCINFO, horizon-launcher.sh...
+ Reviewed horizon.desktop. Status: SAFE -- Standard desktop entry file, no security issues.
[6/9] Reviewing .SRCINFO, horizon-launcher.sh, horizon.svg...
[7/9] Reviewing .SRCINFO, horizon-launcher.sh...
! Reviewed horizon.svg. Status: SKIPPED -- Skipping binary file: horizon.svg
LLM auditresponse for horizon-launcher.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard wrapper for the Horizon Launcher executable. It sets two environment variables to control the launcher's self-update and desktop-entry behavior, then runs the actual launcher binary from a hardcoded system path (`/usr/lib/horizon-launcher/horizon-launcher`). When called with no arguments, it removes old desktop entries before launching. The script contains no suspicious network requests, no obfuscated or encoded commands, no unexpected file operations, and no behavior outside of normal packaging expectations. It simply delegates to the installed binary, which is part of the same package. There is no evidence of malicious or supply-chain attack patterns.
</details>
<evidence></evidence>
<summary>Benign wrapper script for Horizon Launcher.</summary>
</security_assessment>

[8/9] Reviewing .SRCINFO...
+ Reviewed horizon-launcher.sh. Status: SAFE -- Benign wrapper script for Horizon Launcher.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>The file is an `.SRCINFO` metadata descriptor, not an executable script or build file. It purely defines the package composition: version, dependencies, source URLs, and integrity checksums. No commands, shell code, obfuscated strings, or external network requests are embedded beyond the declared upstream source URL. The primary artifact is a pre-compiled binary tarball from the project’s official GitHub releases, with a pinned SHA-256 checksum to verify integrity. All dependencies are standard for a gaming/launcher utility. There is no evidence of data exfiltration, backdoors, or unexpected system modifications. The metadata is clean and follows typical AUR packaging conventions.</details>
<evidence></evidence>
<summary>Clean package metadata, no malicious code.</summary>
</security_assessment>

[9/9] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Clean package metadata, no malicious code.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
(Skipped 1 file: horizon.svg)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 23,481
  Completion Tokens: 8,442
  Total Tokens: 31,923
  Total Cost: $0.003673
  Execution Time: 35.73 seconds

Final Status: SAFE


No issues found.


Audit Skips:

horizon.svg: [SKIPPED] Skipping binary file: horizon.svg
