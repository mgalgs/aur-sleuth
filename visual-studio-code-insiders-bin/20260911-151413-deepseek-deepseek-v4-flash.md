---
package: visual-studio-code-insiders-bin
pkgver: 1789113165
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 15658
completion_tokens: 2595
total_tokens: 18253
cost: 0.00180376896
execution_time: 139.27
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-11T15:14:12Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Benign .gitignore file, no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; no security issues.
  - file: visual-studio-code-insiders-bin.sh
    status: safe
    summary: Standard launcher, no malicious behavior found.
  - file: PKGBUILD
    status: safe
    summary: Standard binary PKGBUILD with pinned checksums and official Microsoft source; no malicious behavior found.
  - file: visual-studio-code-insiders-bin.install
    status: safe
    summary: Standard install script with informational messages.
---

Materializing visual-studio-code-insiders-bin from local mirror...
Materialized visual-studio-code-insiders-bin
Analyzing visual-studio-code-insiders-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global scope consists solely of static variable assignments (pkgname, pkgver, source, checksums, etc.) with no command substitutions, function calls, or any executable code that would run when the file is sourced. There are no dangerous invocations of `eval`, `curl`, `wget`, or any other command outside of the `package()` function, which is not executed during `makepkg --printsrcinfo`. The file follows standard AUR packaging practices and contains no malicious top-level code.
</details>
<evidence></evidence>
<summary>No malicious top-level code; safe to source.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious top-level code; safe to source.
Reviewing the 5 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, .gitignore...
[0/5] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` file containing a single ignore pattern `/*.in` and a trailing newline. This pattern instructs Git to ignore any files ending with `.in` located in the root of the repository. There is no executable code, no network operations, no obfuscation, and no indication of malicious intent. The file is consistent with normal packaging practices and does not pose any security risk.
</details>
<evidence></evidence>
<summary>Benign .gitignore file, no security issues.</summary>
</security_assessment>

[0/5] Reviewing .SRCINFO, .gitignore, PKGBUILD, visual-studio-code-insiders-bin.install...
[1/5] Reviewing .SRCINFO, PKGBUILD, visual-studio-code-insiders-bin.install...
+ Reviewed .gitignore. Status: SAFE -- Benign .gitignore file, no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard .SRCINFO metadata file for the visual-studio-code-insiders-bin AUR package. It defines package metadata, dependencies, and source tarballs with SHA256 checksums. All source URLs point to Microsoft's official download domain (`vscode.download.prss.microsoft.com`), which is the expected upstream for Visual Studio Code Insiders. No suspicious commands, obfuscation, exfiltration, or unexpected network requests are present. The file contains only declarative metadata and is consistent with routine AUR packaging practices.
</details>
<evidence></evidence>
<summary>Standard AUR metadata; no security issues.</summary>
</security_assessment>

[1/5] Reviewing .SRCINFO, PKGBUILD, visual-studio-code-insiders-bin.install, visual-studio-code-insiders-bin.sh...
[2/5] Reviewing PKGBUILD, visual-studio-code-insiders-bin.install, visual-studio-code-insiders-bin.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; no security issues.
LLM auditresponse for visual-studio-code-insiders-bin.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a standard launcher for Visual Studio Code Insiders. It reads optional user-defined flags from `~/.config/code-insiders-flags.conf` (or the fallback `code-flags.conf`), then executes the official binary with those flags. No network requests, downloads, obfuscated code, or system modifications beyond reading a user-controlled config file. The behavior is identical to that of many other AUR launcher scripts (e.g., `code-marketplace`, `chromium-flags.conf`) and poses no supply-chain risk.
</details>
<evidence>

</evidence>
<summary>Standard launcher, no malicious behavior found.</summary>
</security_assessment>

[3/5] Reviewing PKGBUILD, visual-studio-code-insiders-bin.install...
+ Reviewed visual-studio-code-insiders-bin.sh. Status: SAFE -- Standard launcher, no malicious behavior found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Arch packaging practice for a binary package. All downloads come from Microsoft's official Visual Studio Code download host (`vscode.download.prss.microsoft.com`), and every source file has a pinned SHA-256 checksum. No `eval`, `base64`, obfuscated commands, unexpected network requests, or download-and-execute behavior is present.

The `package()` function extracts the upstream `.deb` archive's `data.tar.xz` with `bsdtar`, installs a launcher wrapper, fixes desktop `Exec=` lines with `sed`, and removes the setuid bit from `chrome-sandbox`. These operations are consistent with packaging an official upstream binary build and do not manipulate files outside the package's own installation scope. The launcher script itself is not shown in this file, but nothing in this PKGBUILD indicates malicious intent.
</details>
<evidence>
</evidence>
<summary>
Standard binary PKGBUILD with pinned checksums and official Microsoft source; no malicious behavior found.
</summary>
</security_assessment>

[4/5] Reviewing visual-studio-code-insiders-bin.install...
+ Reviewed PKGBUILD. Status: SAFE -- Standard binary PKGBUILD with pinned checksums and official Microsoft source; no malicious behavior found.
LLM auditresponse for visual-studio-code-insiders-bin.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.install` script for an AUR package. It defines terminal color helper functions and provides `post_install` and `post_upgrade` hooks that simply print informational messages about custom configuration files for Visual Studio Code Insiders. There are no network requests, file modifications, execution of external commands other than `tput`, or any other actions that could be considered malicious. The script only outputs notes to the user during installation/upgrade.
</details>
<evidence>
</evidence>
<summary>Standard install script with informational messages.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed visual-studio-code-insiders-bin.install. Status: SAFE -- Standard install script with informational messages.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 15,658
  Completion Tokens: 2,595
  Total Tokens: 18,253
  Total Cost: $0.001804
  Execution Time: 139.27 seconds

Final Status: SAFE


No issues found.
