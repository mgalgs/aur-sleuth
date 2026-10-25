---
package: horizon-launcher-bin
pkgver: 0.2.7
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 23474
completion_tokens: 5782
total_tokens: 29256
cost: 0.003188458
execution_time: 31.13
files_reviewed: 8
files_skipped: 1
maintainer_files: 9
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-25T15:09:58Z
file_verdicts:
  - file: LICENSE.upstream
    status: safe
    summary: Standard license file, no security issues.
  - file: LICENSE
    status: safe
    summary: Standard license file, no security issues.
  - file: OFL-Geist.txt
    status: safe
    summary: Standard open font license text file, no security concerns.
  - file: horizon-launcher.desktop
    status: safe
    summary: Standard desktop entry file; no security concerns.
  - file: PKGBUILD
    status: safe
    summary: Standard binary package, no security concerns.
  - file: horizon-launcher.sh
    status: safe
    summary: Simple launch wrapper, no malicious behavior.
  - file: horizon.svg
    status: skipped
    summary: "Skipping binary file: horizon.svg"
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file with pinned upstream checksums.
  - file: horizon.desktop
    status: safe
    summary: Standard .desktop launcher file, no security concerns.
---

Materializing horizon-launcher-bin from local mirror...
Materialized horizon-launcher-bin
Analyzing horizon-launcher-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains global variable declarations (pkgname, pkgver, etc.), array definitions (arch, depends, source, sha256sums), and a package() function that is not executed by `makepkg --printsrcinfo`. There are no command substitutions, backticks, eval statements, or any executable code in the top-level scope. The `source` array references the upstream GitHub releases URL and local file names, which is normal for a -bin package. No malicious code can execute at the sourcing step.
</details>
<evidence></evidence>
<summary>No malicious top-level code present.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious top-level code present.
Reviewing the 9 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/9] Reviewing .SRCINFO...
[0/9] Reviewing .SRCINFO, LICENSE...
[0/9] Reviewing .SRCINFO, LICENSE, LICENSE.upstream...
LLM auditresponse for LICENSE.upstream:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard MIT License text. It contains no executable code, no network requests, no obfuscation, and no system modifications. It is purely a license file, which is a normal component of any software package. No security concerns are present.
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
This file is a standard MIT License text. It contains no executable code, no network requests, no obfuscated content, and no system-modification instructions. It is a routine licensing file and presents no security concerns.
</details>
<evidence></evidence>
<summary>Standard license file, no security issues.</summary>
</security_assessment>

[2/9] Reviewing .SRCINFO, OFL-Geist.txt...
+ Reviewed LICENSE. Status: SAFE -- Standard license file, no security issues.
[2/9] Reviewing .SRCINFO, OFL-Geist.txt, PKGBUILD...
LLM auditresponse for OFL-Geist.txt:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard SIL Open Font License (OFL) text document with a copyright header for the Geist Project. It contains no executable code, no commands, no network requests, no obfuscation, and no system modifications. The content is purely a software license for a font and does not present any supply chain or security risk. The file appears to be an ordinary license file included with the package as part of standard packaging best practices.
</details>
<evidence></evidence>
<summary>Standard open font license text file, no security concerns.</summary>
</security_assessment>

[3/9] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed OFL-Geist.txt. Status: SAFE -- Standard open font license text file, no security concerns.
[3/9] Reviewing .SRCINFO, PKGBUILD, horizon-launcher.desktop...
LLM auditresponse for horizon-launcher.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard freedesktop.org <code>.desktop</code> entry file. It defines metadata for the Horizon game launcher: the application type, name, comment, icon, and the executable to launch (<code>horizon-launcher</code>). The file contains no executable logic, no network requests, no obfuscation, and no unusual or dangerous directives. The <code>Exec</code> and <code>TryExec</code> fields reference a single binary name with no arguments, and there are no environment variables, paths, or shell commands involved. The file is entirely benign and conforms to normal packaging practices for desktop applications.
</details>
<evidence></evidence>
<summary>Standard desktop entry file; no security concerns.</summary>
</security_assessment>

[4/9] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed horizon-launcher.desktop. Status: SAFE -- Standard desktop entry file; no security concerns.
[4/9] Reviewing .SRCINFO, PKGBUILD, horizon-launcher.sh...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a straightforward prebuilt binary package definition. All sources are fetched from the official upstream GitHub releases and are pinned with SHA256 checksums, ensuring integrity. There are no `eval`, `curl|bash`, obfuscated strings, unexpected network requests, or file operations outside the package&apos;s own installation path. The `package()` function only copies the distributed files into their target locations. No code is executed from unchecked mutable refs, and no post-install hooks modify the system configuration beyond what is typical for a packaging routine. No evidence of malicious intent or supply-chain attack injection is present.
</details>
<evidence></evidence>
<summary>Standard binary package, no security concerns.</summary>
</security_assessment>

[4/9] Reviewing .SRCINFO, PKGBUILD, horizon-launcher.sh, horizon.desktop...
[5/9] Reviewing .SRCINFO, horizon-launcher.sh, horizon.desktop...
+ Reviewed PKGBUILD. Status: SAFE -- Standard binary package, no security concerns.
LLM auditresponse for horizon-launcher.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a minimal shell wrapper that sets two environment variables to prevent self-update and point desktop entries to the system binary, then execs the launcher binary from a fixed system path. No network requests, no obfuscation, no dangerous commands, and no operations outside the package's own installation scope. The logic to remove old desktop entries on no-argument invocation is a routine cleanup consistent with standard packaging practices. No security issues found.
</details>
<evidence>
</evidence>
<summary>Simple launch wrapper, no malicious behavior.</summary>
</security_assessment>

[6/9] Reviewing .SRCINFO, horizon.desktop...
+ Reviewed horizon-launcher.sh. Status: SAFE -- Simple launch wrapper, no malicious behavior.
[6/9] Reviewing .SRCINFO, horizon.desktop, horizon.svg...
[7/9] Reviewing .SRCINFO, horizon.desktop...
! Reviewed horizon.svg. Status: SKIPPED -- Skipping binary file: horizon.svg
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a `.SRCINFO` file, a standard metadata file automatically generated and used by AUR helper tools. It contains zero executable code. It purely describes the package's version, dependencies, upstream source locations, and pinned checksums.

The primary source is a precompiled tarball hosted on the project's official GitHub Releases page (`github.com/ludovic111/horizon`). All eight source files have explicit `sha256sums` hashes, which pins the exact content and provides a strong hygiene signal. The dependencies (`glibc`, `libxcb`, `vulkan-icd-loader`, etc.) and optional dependencies (`jdk25-openjdk`, `gnome-keyring`, `kwallet`) are all standard and directly relevant to a native Rust Minecraft launcher.

There is no evidence of obfuscated commands, backdoors, data exfiltration instructions, or any deviation from standard AUR metadata.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata file with pinned upstream checksums.</summary>
</security_assessment>

[8/9] Reviewing horizon.desktop...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file with pinned upstream checksums.
LLM auditresponse for horizon.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Freedesktop.org `.desktop` entry used to register an application launcher. It defines `Type=Application`, `Name=Horizon`, and `Exec=horizon-launcher play`. There are no network requests, obfuscated code, unusual encodings, or dangerous commands (e.g., `eval`, `curl`, `base64`, `wget`). The `NoDisplay=true` is a normal field used to hide the entry from menus while still allowing it to be used for window management (likely for the `StartupWMClass` feature). Nothing in this file deviates from standard packaging practices or introduces any attack vector. It is a benign configuration file that simply references the package's own binary.
</details>
<evidence></evidence>
<summary>Standard .desktop launcher file, no security concerns.</summary>
</security_assessment>

[9/9] Reviewing ...
+ Reviewed horizon.desktop. Status: SAFE -- Standard .desktop launcher file, no security concerns.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
(Skipped 1 file: horizon.svg)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 23,474
  Completion Tokens: 5,782
  Total Tokens: 29,256
  Total Cost: $0.003188
  Execution Time: 31.13 seconds

Final Status: SAFE


No issues found.


Audit Skips:

horizon.svg: [SKIPPED] Skipping binary file: horizon.svg
