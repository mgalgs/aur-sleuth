---
package: horizon-launcher-bin
pkgver: 0.2.70
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 24342
completion_tokens: 3269
total_tokens: 27611
cost: 0.00277920
execution_time: 16.81
files_reviewed: 8
files_skipped: 1
maintainer_files: 9
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-17T16:11:19Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: Standard MIT license text, no security issues.
  - file: LICENSE.upstream
    status: safe
    summary: Standard LGPL-3.0 license text, no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO metadata, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard binary PKGBUILD with no suspicious elements.
  - file: horizon-launcher.desktop
    status: safe
    summary: Standard desktop entry file, no security concerns.
  - file: horizon.desktop
    status: safe
    summary: Standard desktop entry, no security concerns.
  - file: horizon.svg
    status: skipped
    summary: "Skipping binary file: horizon.svg"
  - file: OFL-Geist.txt
    status: safe
    summary: Standard open font license text, no security risks.
  - file: horizon-launcher.sh
    status: safe
    summary: Clean wrapper script; no malicious content found.
---

Materializing horizon-launcher-bin from local mirror...
Materialized horizon-launcher-bin
Analyzing horizon-launcher-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains variable assignments (pkgname, pkgver, etc.), arrays (depends, source, sha256sums), and a function definition (package()). No top-level commands, command substitutions, or function calls are present that would execute during sourcing. Running `makepkg --printsrcinfo` will safely parse metadata without executing any code beyond standard variable evaluation.
</details>
<evidence></evidence>
<summary>No top-level executable code detected.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level executable code detected.
Reviewing the 9 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/9] Reviewing .SRCINFO...
[0/9] Reviewing .SRCINFO, LICENSE...
[0/9] Reviewing .SRCINFO, LICENSE, LICENSE.upstream...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard MIT License text with no executable code, no network requests, no obfuscation, and no system commands. It poses no security risk.
</details>
<evidence></evidence>
<summary>Standard MIT license text, no security issues.</summary>
</security_assessment>

[0/9] Reviewing .SRCINFO, LICENSE, LICENSE.upstream, OFL-Geist.txt...
[1/9] Reviewing .SRCINFO, LICENSE.upstream, OFL-Geist.txt...
+ Reviewed LICENSE. Status: SAFE -- Standard MIT license text, no security issues.
LLM auditresponse for LICENSE.upstream:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a verbatim copy of the GNU Lesser General Public License, version 3. It contains no executable code, no network requests, no system commands, and no obfuscated or encoded content. It is a standard software license text provided for legal attribution purposes. There are no signs of malicious activity or supply chain compromise.
</details>
<evidence></evidence>
<summary>Standard LGPL-3.0 license text, no security concerns.</summary>
</security_assessment>

[1/9] Reviewing .SRCINFO, LICENSE.upstream, OFL-Geist.txt, PKGBUILD...
[2/9] Reviewing .SRCINFO, OFL-Geist.txt, PKGBUILD...
+ Reviewed LICENSE.upstream. Status: SAFE -- Standard LGPL-3.0 license text, no security concerns.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a metadata file describing the package `horizon-launcher-bin`. It contains standard fields such as package version, dependencies, source URLs, and checksums. All source files are downloaded from the official GitHub releases page of the project (`https://github.com/horizon-rust/horizon/releases/download/launcher@0.2.70/horizon-launcher-linux-x86_64.tar.gz`), and all other sources (scripts, icons, licenses) are local files. No commands are executed, no network requests beyond fetching the declared upstream source, and no obfuscated or encoded content is present. The file adheres to normal AUR packaging practices. There are no security concerns.
</details>
<evidence>
</evidence>
<summary>Standard .SRCINFO metadata, no malicious content.</summary>
</security_assessment>

[2/9] Reviewing .SRCINFO, OFL-Geist.txt, PKGBUILD, horizon-launcher.desktop...
[3/9] Reviewing OFL-Geist.txt, PKGBUILD, horizon-launcher.desktop...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO metadata, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a binary package. It downloads a precompiled tarball from the project's official GitHub releases URL using a pinned version tag. All source files have explicit SHA-256 checksums (none are set to SKIP). The `package()` function only installs files into `$pkgdir` without any unusual commands. There are no network requests, obfuscated code, dangerous commands (eval, curl|bash, etc.), or operations outside the package's scope. The dependencies and optdepends are reasonable for a Rust-based Minecraft launcher. No evidence of supply-chain attack or malicious behavior was found.
</details>
<evidence>
</evidence>
<summary>Standard binary PKGBUILD with no suspicious elements.</summary>
</security_assessment>

[3/9] Reviewing OFL-Geist.txt, PKGBUILD, horizon-launcher.desktop, horizon-launcher.sh...
[4/9] Reviewing OFL-Geist.txt, horizon-launcher.desktop, horizon-launcher.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard binary PKGBUILD with no suspicious elements.
LLM auditresponse for horizon-launcher.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Linux desktop entry file (.desktop) that defines an application launcher for Horizon. It specifies the executable name, icon, and category. There are no network requests, obfuscated code, dangerous commands, or any deviations from normal packaging practices. The file is benign and serves only to integrate the application into the desktop environment.</details>
<evidence></evidence>
<summary>Standard desktop entry file, no security concerns.</summary>
</security_assessment>

[4/9] Reviewing OFL-Geist.txt, horizon-launcher.desktop, horizon-launcher.sh, horizon.desktop...
[5/9] Reviewing OFL-Geist.txt, horizon-launcher.sh, horizon.desktop...
+ Reviewed horizon-launcher.desktop. Status: SAFE -- Standard desktop entry file, no security concerns.
LLM auditresponse for horizon.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Linux `.desktop` entry file. It defines metadata for the Horizon application, specifying the executable command `horizon-launcher play`, an icon, and category. There are no network requests, obfuscated code, system modifications, or any other suspicious operations. The file is purely declarative and follows the freedesktop.org specification. No security issues are present.
</details>
<evidence></evidence>
<summary>Standard desktop entry, no security concerns.</summary>
</security_assessment>

[5/9] Reviewing OFL-Geist.txt, horizon-launcher.sh, horizon.desktop, horizon.svg...
[6/9] Reviewing OFL-Geist.txt, horizon-launcher.sh, horizon.svg...
+ Reviewed horizon.desktop. Status: SAFE -- Standard desktop entry, no security concerns.
[7/9] Reviewing OFL-Geist.txt, horizon-launcher.sh...
! Reviewed horizon.svg. Status: SKIPPED -- Skipping binary file: horizon.svg
LLM auditresponse for OFL-Geist.txt:
<security_assessment>
<decision>SAFE</decision>
<details>
The file provided is `OFL-Geist.txt`, which contains the SIL Open Font License v1.1 for the Geist font family by Vercel. This file is purely a software license text and contains no executable code, shell commands, network requests, obfuscation, or any system operations. Its presence in an AUR package is a standard requirement for distributing bundled font assets. There are no security issues present in this file.
</details>
<evidence></evidence>
<summary>Standard open font license text, no security risks.</summary>
</security_assessment>

[8/9] Reviewing horizon-launcher.sh...
+ Reviewed OFL-Geist.txt. Status: SAFE -- Standard open font license text, no security risks.
LLM auditresponse for horizon-launcher.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a standard wrapper for the Horizon Launcher binary. It sets environment variables to prevent self-updating (expected for a system package) and to point desktop entries to the correct system binary path. The only command executed besides the launcher itself is `&quot;$launcher&quot; desktop-entry --remove` when no arguments are given; this is a legitimate cleanup operation for old desktop entries that may have been created by previous versions. No malicious or suspicious behavior is present; the script simply exports variables and execs the launcher with any passed arguments.
</details>
<evidence></evidence>
<summary>Clean wrapper script; no malicious content found.</summary>
</security_assessment>

[9/9] Reviewing ...
+ Reviewed horizon-launcher.sh. Status: SAFE -- Clean wrapper script; no malicious content found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
(Skipped 1 file: horizon.svg)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 24,342
  Completion Tokens: 3,269
  Total Tokens: 27,611
  Total Cost: $0.002779
  Execution Time: 16.81 seconds

Final Status: SAFE


No issues found.


Audit Skips:

horizon.svg: [SKIPPED] Skipping binary file: horizon.svg
