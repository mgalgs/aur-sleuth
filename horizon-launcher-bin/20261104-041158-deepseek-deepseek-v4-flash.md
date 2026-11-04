---
package: horizon-launcher-bin
pkgver: 0.2.38
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 23552
completion_tokens: 8875
total_tokens: 32427
cost: 0.003758482
execution_time: 38.01
files_reviewed: 8
files_skipped: 1
maintainer_files: 9
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-04T04:11:58Z
file_verdicts:
  - file: LICENSE.upstream
    status: safe
    summary: Standard license file, no code or threats.
  - file: LICENSE
    status: safe
    summary: Plain license file, no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR package metadata with pinned checksums.
  - file: OFL-Geist.txt
    status: safe
    summary: Benign SIL Open Font License text; no malicious code or behavior found.
  - file: horizon-launcher.desktop
    status: safe
    summary: Standard desktop entry file, no concerns.
  - file: horizon.desktop
    status: safe
    summary: Standard .desktop entry, no security issues.
  - file: horizon.svg
    status: skipped
    summary: "Skipping binary file: horizon.svg"
  - file: horizon-launcher.sh
    status: safe
    summary: Standard wrapper, no malicious indicators.
  - file: PKGBUILD
    status: safe
    summary: Standard binary PKGBUILD with strong integrity verification.
---

Materializing horizon-launcher-bin from local mirror...
Materialized horizon-launcher-bin
Analyzing horizon-launcher-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD contains only standard package metadata definitions (`pkgname`, `pkgver`, `source`, `depends`, `sha256sums`, etc.) in its global scope. No command substitutions (`$(...)` or backticks), no invocations of `eval`, `curl`, `wget`, or any other commands are executed at the top level. The only function defined, `package()`, is never invoked during `makepkg --printsrcinfo` (which only sources the global variables). There is no obfuscation, encoded payload, data exfiltration, or any code that runs at parse time beyond simple variable assignment. Therefore, executing `makepkg --printsrcinfo` on this file is safe.
</details>
<evidence></evidence>
<summary>No dangerous top-level code found.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code found.
Reviewing the 9 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/9] Reviewing .SRCINFO...
[0/9] Reviewing .SRCINFO, LICENSE...
[0/9] Reviewing .SRCINFO, LICENSE, LICENSE.upstream...
LLM auditresponse for LICENSE.upstream:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard MIT License text included as a documentation file (LICENSE.upstream). It contains no executable code, no network requests, no obfuscation, and no system-modifying instructions whatsoever. It is purely a copy of the upstream project's license terms for informational purposes, which is a common and harmless packaging practice.
</details>
<evidence></evidence>
<summary>Standard license file, no code or threats.</summary>
</security_assessment>

[1/9] Reviewing .SRCINFO, LICENSE...
+ Reviewed LICENSE.upstream. Status: SAFE -- Standard license file, no code or threats.
[1/9] Reviewing .SRCINFO, LICENSE, OFL-Geist.txt...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a plain MIT License text file. It contains no executable code, no network requests, no obfuscation, and no system operations. It is a standard software license document with no security implications. The file is safe.
</details>
<evidence>
</evidence>
<summary>Plain license file, no security concerns.</summary>
</security_assessment>

[1/9] Reviewing .SRCINFO, LICENSE, OFL-Geist.txt, PKGBUILD...
[2/9] Reviewing .SRCINFO, OFL-Geist.txt, PKGBUILD...
+ Reviewed LICENSE. Status: SAFE -- Plain license file, no security concerns.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a .SRCINFO metadata file for the AUR package horizon-launcher-bin. It declares the package name, version, dependencies, and source files with pinned sha256sums. All eight source files have explicit checksums, and all URLs point to the project&#39;s official GitHub releases repository (https://github.com/horizon-rust/horizon). There is no executable code, obfuscated content, or suspicious network destinations. The dependencies (glibc, libxcb, wayland, vulkan-icd-loader, etc.) are standard libraries appropriate for a Minecraft launcher. The optional dependencies (jdk25-openjdk, python, vulkan-driver, keyring backends) are legitimate preparation tools for game resources and credential storage. No evidence of malicious or injection-related behavior is present.
</details>
<evidence></evidence>
<summary>Standard AUR package metadata with pinned checksums.</summary>
</security_assessment>

[2/9] Reviewing .SRCINFO, OFL-Geist.txt, PKGBUILD, horizon-launcher.desktop...
[3/9] Reviewing OFL-Geist.txt, PKGBUILD, horizon-launcher.desktop...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR package metadata with pinned checksums.
LLM auditresponse for OFL-Geist.txt:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is the SIL Open Font License 1.1 text accompanying the Geist font project. It is a standard software/font license document and contains no executable code, network requests, obfuscated content, or system-modifying operations. There is nothing in this file that deviates from normal packaging practices or indicates a supply-chain attack.
</details>
<evidence></evidence>
<summary>
Benign SIL Open Font License text; no malicious code or behavior found.</summary>
</security_assessment>

[3/9] Reviewing OFL-Geist.txt, PKGBUILD, horizon-launcher.desktop, horizon-launcher.sh...
[4/9] Reviewing PKGBUILD, horizon-launcher.desktop, horizon-launcher.sh...
+ Reviewed OFL-Geist.txt. Status: SAFE -- Benign SIL Open Font License text; no malicious code or behavior found.
LLM auditresponse for horizon-launcher.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard .desktop file used to register the application in the system menu. The file contains only metadata (Name, Comment, Icon, Categories) and an Exec line pointing to a local binary (`horizon-launcher`). There are no network requests, obfuscated commands, file operations, or any other suspicious behavior. The file is perfectly normal and poses no security risk.
</details>
<evidence></evidence>
<summary>Standard desktop entry file, no concerns.</summary>
</security_assessment>

[4/9] Reviewing PKGBUILD, horizon-launcher.desktop, horizon-launcher.sh, horizon.desktop...
[5/9] Reviewing PKGBUILD, horizon-launcher.sh, horizon.desktop...
+ Reviewed horizon-launcher.desktop. Status: SAFE -- Standard desktop entry file, no concerns.
LLM auditresponse for horizon.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Freedesktop.org `.desktop` entry for the Horizon game launcher. It declares the application name, icon, and the command to run (`horizon-launcher play`). There is no embedded code, network access, obfuscation, or file operations. The only unusual property is `NoDisplay=true`, which hides the entry from application menus — this is a packaging choice (e.g., for a background process or a launcher managed via another UI) and not a security concern. No supply-chain risk exists in this file.
</details>
<evidence>
</evidence>
<summary>
Standard .desktop entry, no security issues.
</summary>
</security_assessment>

[5/9] Reviewing PKGBUILD, horizon-launcher.sh, horizon.desktop, horizon.svg...
[6/9] Reviewing PKGBUILD, horizon-launcher.sh, horizon.svg...
+ Reviewed horizon.desktop. Status: SAFE -- Standard .desktop entry, no security issues.
[7/9] Reviewing PKGBUILD, horizon-launcher.sh...
! Reviewed horizon.svg. Status: SKIPPED -- Skipping binary file: horizon.svg
LLM auditresponse for horizon-launcher.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard shell wrapper script for the Horizon Launcher application. It correctly sets environment variables to integrate the application with the system package manager, specifically disabling the application's self-update mechanism (which is properly handled by Pacman) and directing desktop registration to the system-managed binary path. The only action taken before launching the main binary is invoking the upstream application's own `desktop-entry --remove` function to clean up stale entries left by previous launcher versions, a routine packaging hygiene practice. The script does not perform any network requests, download or execute code from external sources, use obfuscation, or engage in any other behavior indicative of a supply chain attack.
</details>
<evidence></evidence>
<summary>Standard wrapper, no malicious indicators.</summary>
</security_assessment>

[8/9] Reviewing PKGBUILD...
+ Reviewed horizon-launcher.sh. Status: SAFE -- Standard wrapper, no malicious indicators.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD for `horizon-launcher-bin` follows standard packaging practices for a pre-built binary package. The source tarball is downloaded from the project's official GitHub releases via HTTPS with a pinned tag (`launcher@0.2.38`). Integrity is strongly verified by explicit SHA256 checksums for every source file. The only operation in the `package()` function is the installation of files into `$pkgdir` using standard `install -D` commands. There is no `build()`, `prepare()`, or other function that executes untrusted code, makes unexpected network requests, or performs obfuscated operations. No `git pull`, `curl`-to-bash, `eval`, or backdoor mechanisms are present. This file shows no evidence of a malicious supply-chain attack.
</details>
<evidence></evidence>
<summary>Standard binary PKGBUILD with strong integrity verification.</summary>
</security_assessment>

[9/9] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard binary PKGBUILD with strong integrity verification.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
(Skipped 1 file: horizon.svg)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 23,552
  Completion Tokens: 8,875
  Total Tokens: 32,427
  Total Cost: $0.003758
  Execution Time: 38.01 seconds

Final Status: SAFE


No issues found.


Audit Skips:

horizon.svg: [SKIPPED] Skipping binary file: horizon.svg
