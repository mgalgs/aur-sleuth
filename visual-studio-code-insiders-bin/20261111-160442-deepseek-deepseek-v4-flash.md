---
package: visual-studio-code-insiders-bin
pkgver: 1794385035
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 15838
completion_tokens: 3841
total_tokens: 19679
cost: 0.00211680
execution_time: 40.63
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-11T16:04:42Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore pattern, no security issues.
  - file: visual-studio-code-insiders-bin.install
    status: safe
    summary: Benign post-install script with only informational notes.
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO with official sources and checksums.
  - file: PKGBUILD
    status: safe
    summary: Conventional pinned binary repackaging of VS Code Insiders; no malicious behavior found.
  - file: visual-studio-code-insiders-bin.sh
    status: safe
    summary: Standard wrapper script, no security issues.
---

Materializing visual-studio-code-insiders-bin from local mirror...
Materialized visual-studio-code-insiders-bin
Analyzing visual-studio-code-insiders-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global/top-level scope contains only standard variable and array assignments (e.g., `pkgname`, `source`, `sha256sums`, `depends`) and comments. There are no command substitutions, function calls, or other executable statements that would run when the file is sourced by `makepkg --printsrcinfo`. The `package()` function is defined but not invoked during this step. No malicious code is present at the top level.
</details>
<evidence></evidence>
<summary>No dangerous top-level code; safe to parse.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code; safe to parse.
Reviewing the 5 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, .gitignore...
[0/5] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.gitignore` file contains a single pattern `/*.in` which tells Git to ignore all files ending with `.in` in the repository root directory. This is a standard practice in projects that use autotools or other build systems where `.in` files are template inputs. There is no code, network operations, or any mechanism for executing instructions. The file is benign and presents no security risk.
</details>
<evidence></evidence>
<summary>Standard .gitignore pattern, no security issues.</summary>
</security_assessment>

[0/5] Reviewing .SRCINFO, .gitignore, PKGBUILD, visual-studio-code-insiders-bin.install...
[1/5] Reviewing .SRCINFO, PKGBUILD, visual-studio-code-insiders-bin.install...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore pattern, no security issues.
LLM auditresponse for visual-studio-code-insiders-bin.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.install` script for an AUR package (`visual-studio-code-insiders-bin`). It defines helper functions for colored output using `tput` (normal terminal control) and provides `post_install` and `post_upgrade` hooks that simply print informational notes about custom flag configuration files. There are no network requests (no `curl`, `wget`), no obfuscated code, no file operations outside of `printf`, no execution of untrusted content, and no deviations from standard packaging practices. The script is entirely benign and serves only to inform the user about configuration file locations.
</details>
<evidence></evidence>
<summary>Benign post-install script with only informational notes.</summary>
</security_assessment>

[2/5] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed visual-studio-code-insiders-bin.install. Status: SAFE -- Benign post-install script with only informational notes.
[2/5] Reviewing .SRCINFO, PKGBUILD, visual-studio-code-insiders-bin.sh...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file contains standard metadata for an AUR package. All source URLs point to the official Microsoft Visual Studio Code download server (`vscode.download.prss.microsoft.com`) with valid SHA-256 checksums provided. There are no obfuscated strings, suspicious network destinations, or dangerous commands. The file only declares package metadata, dependencies, and source locations, which is expected for a binary AUR package. The referenced install script (`visual-studio-code-insiders-bin.install`) is not included in this analysis, but its existence alone does not indicate a supply-chain attack.
</details>
<evidence></evidence>
<summary>Standard .SRCINFO with official sources and checksums.</summary>
</security_assessment>

[3/5] Reviewing PKGBUILD, visual-studio-code-insiders-bin.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO with official sources and checksums.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a conventional binary repackaging of VS Code Insiders. It downloads an architecture-specific `.deb` from the official Microsoft VS Code download domain (`vscode.download.prss.microsoft.com`) and one local launcher script, all with SHA-256 pinning. The `package()` function extracts the Debian payload with `bsdtar`, installs the launcher, fixes desktop `Exec=` entries, and adjusts the chrome-sandbox permissions. No `eval`, `base64`, `curl|bash`, unexpected network endpoints, data exfiltration, or modification of files outside the package's own install layout is present.

The referenced `.install` script and the launcher `visual-studio-code-insiders-bin.sh` are not shown in this file, but they are normal AUR companion files and do not by themselves indicate malice. Everything visible in the PKGBUILD is consistent with standard Arch packaging practice.
</details>
<evidence>
</evidence>
<summary>
Conventional pinned binary repackaging of VS Code Insiders; no malicious behavior found.</summary>
</security_assessment>

[4/5] Reviewing visual-studio-code-insiders-bin.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Conventional pinned binary repackaging of VS Code Insiders; no malicious behavior found.
LLM auditresponse for visual-studio-code-insiders-bin.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a standard launch wrapper for Visual Studio Code Insiders. It reads optional command-line flags from user configuration files under `$XDG_CONFIG_HOME` and passes them to the binary. There are no network requests, no downloads, no obfuscation, no file modifications outside the application&#x27;s own scope, and no execution of untrusted code. The use of HTML entity escaping (`&amp;quot;`, `&amp;apos;`) in the provided content is an artifact of XML serialization; even if they were literal in the file, they would only result in a non-functional script, not a security threat. No evidence of malicious or dangerous behavior.
</details>
<evidence></evidence>
<summary>Standard wrapper script, no security issues.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed visual-studio-code-insiders-bin.sh. Status: SAFE -- Standard wrapper script, no security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 15,838
  Completion Tokens: 3,841
  Total Tokens: 19,679
  Total Cost: $0.002117
  Execution Time: 40.63 seconds

Final Status: SAFE


No issues found.
