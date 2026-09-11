---
package: visual-studio-code-insiders-bin
pkgver: 1789103756
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 15568
completion_tokens: 2460
total_tokens: 18028
cost: 0.001815359728
execution_time: 162.91
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-11T11:17:37Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard gitignore pattern, no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, nothing malicious.
  - file: visual-studio-code-insiders-bin.install
    status: safe
    summary: Standard install script with informational notes only.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD for VS Code Insiders binary package.
  - file: visual-studio-code-insiders-bin.sh
    status: safe
    summary: No malicious behavior; standard application launcher.
---

Materializing visual-studio-code-insiders-bin from local mirror...
Materialized visual-studio-code-insiders-bin
Analyzing visual-studio-code-insiders-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's top-level scope contains only static variable definitions (strings and arrays) and a function definition for `package()`. No command substitutions, function calls, or executable code are present at the global scope that would run when the file is sourced. The `makepkg --printsrcinfo` command only sources this top-level code, so no malicious behavior can execute during this step. The `package()` function (which performs standard installation operations like extracting a .deb, creating symlinks, and fixing permissions) is not invoked. All source URLs and checksums are defined but not downloaded or verified during this phase. Therefore, running the command is safe.
</details>
<evidence>
</evidence>
<summary>No dangerous top-level code; safe to source.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code; safe to source.
Reviewing the 5 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, .gitignore...
[0/5] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `.gitignore` contains a single pattern `/*.in` which tells Git to ignore all files ending with `.in` in the root directory. This is a normal and expected file for version control and does not contain any executable code, network operations, or other malicious behavior. There is no evidence of a supply-chain attack or any security concern.
</details>
<evidence></evidence>
<summary>Standard gitignore pattern, no security issues.</summary>
</security_assessment>

[0/5] Reviewing .SRCINFO, .gitignore, PKGBUILD, visual-studio-code-insiders-bin.install...
[1/5] Reviewing .SRCINFO, PKGBUILD, visual-studio-code-insiders-bin.install...
+ Reviewed .gitignore. Status: SAFE -- Standard gitignore pattern, no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is a standard Arch User Repository metadata file for the `visual-studio-code-insiders-bin` package. It declares package variables such as version, dependencies, license, and sources. All source URLs point to Microsoft's official VS Code download server (`vscode.download.prss.microsoft.com`), and each binary source has a corresponding SHA256 checksum provided. There are no suspicious network requests, obfuscated commands, or dangerous operations. The file contains no executable code—it is purely declarative metadata. No evidence of a supply chain attack is present.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata, nothing malicious.</summary>
</security_assessment>

[1/5] Reviewing .SRCINFO, PKGBUILD, visual-studio-code-insiders-bin.install, visual-studio-code-insiders-bin.sh...
[2/5] Reviewing PKGBUILD, visual-studio-code-insiders-bin.install, visual-studio-code-insiders-bin.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, nothing malicious.
LLM auditresponse for visual-studio-code-insiders-bin.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard .install script for an Arch package. It defines colored output helper functions and two hook functions (`post_install` and `post_upgrade`) that print informational notes to the user about custom flags configuration. There are no network operations, no obfuscated code, no dangerous commands like `curl`, `wget`, `eval`, or `base64`, and no file system modifications. The behavior is entirely limited to terminal output. No signs of malicious activity or supply-chain attack are present.</details>
<evidence></evidence>
<summary>Standard install script with informational notes only.</summary>
</security_assessment>

[3/5] Reviewing PKGBUILD, visual-studio-code-insiders-bin.sh...
+ Reviewed visual-studio-code-insiders-bin.install. Status: SAFE -- Standard install script with informational notes only.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a binary redistributable package. It downloads the official Visual Studio Code Insiders .deb package from Microsoft's own download server over HTTPS, with pinned checksums. The `package()` function extracts the archive, installs a launcher script, symlinks the license, adjusts desktop entries, and removes the setuid bit from chrome-sandbox (a common hardening step). There is no obfuscated code, no unexpected network requests, no data exfiltration, and no execution of attacker-controlled content. The file is safe.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD for VS Code Insiders binary package.</summary>
</security_assessment>

[4/5] Reviewing visual-studio-code-insiders-bin.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD for VS Code Insiders binary package.
LLM auditresponse for visual-studio-code-insiders-bin.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard wrapper script for launching VS Code Insiders. It reads optional user-defined flags from configuration files in `~/.config/` and passes them to the binary alongside command-line arguments using `exec`. There is no obfuscated code, no network requests, no file exfiltration, and no execution of untrusted content. The script only interacts with the user's own configuration for the same application and then launches the upstream binary. This is typical AUR packaging practice and poses no supply-chain risk.
</details>
<evidence></evidence>
<summary>No malicious behavior; standard application launcher.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed visual-studio-code-insiders-bin.sh. Status: SAFE -- No malicious behavior; standard application launcher.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 15,568
  Completion Tokens: 2,460
  Total Tokens: 18,028
  Total Cost: $0.001815
  Execution Time: 162.91 seconds

Final Status: SAFE


No issues found.
