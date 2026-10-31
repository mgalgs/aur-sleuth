---
package: visual-studio-code-insiders-bin
pkgver: 1793395618
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 15851
completion_tokens: 4381
total_tokens: 20232
cost: 0.002239783
execution_time: 38.4
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-31T07:10:53Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard gitignore file, no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR package metadata, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD, no malicious content detected.
  - file: visual-studio-code-insiders-bin.install
    status: safe
    summary: Informational install script; no malicious behavior.
  - file: visual-studio-code-insiders-bin.sh
    status: safe
    summary: Standard launch script, no security issues.
---

Materializing visual-studio-code-insiders-bin from local mirror...
Materialized visual-studio-code-insiders-bin
Analyzing visual-studio-code-insiders-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global/top-level scope contains only standard makepkg variable definitions (e.g., `pkgname`, `pkgver`, `source`, `sha256sums`, `depends`, `options`, `install`). There are no command substitutions `$(...)`, arithmetic evaluations, backtick executions, function invocations, or external program calls (such as `curl`, `wget`, or `eval`) that would execute during the sourcing step of `makepkg --printsrcinfo`. The `package()` function definition is standard and is explicitly not executed during this step. Therefore, sourcing the file for metadata extraction poses no immediate security risk.
</details>
<evidence>
</evidence>
<summary>Safe; no executable top-level code found.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe; no executable top-level code found.
Reviewing the 5 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/5] Reviewing .gitignore...
[0/5] Reviewing .gitignore, .SRCINFO...
[0/5] Reviewing .gitignore, .SRCINFO, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` containing a single pattern `/*.in` which tells Git to ignore any file with the `.in` extension in the repository root. This is a normal and harmless configuration file. There is no code execution, network activity, or any other malicious behavior present.
</details>
<evidence></evidence>
<summary>Standard gitignore file, no security issues.</summary>
</security_assessment>

[1/5] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard gitignore file, no security issues.
[1/5] Reviewing .SRCINFO, PKGBUILD, visual-studio-code-insiders-bin.install...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file describes a standard AUR package for Visual Studio Code Insiders (binary distribution). All source URLs point to the official Microsoft download server (`vscode.download.prss.microsoft.com`) using HTTPS. Each architecture-specific source has a corresponding SHA-256 checksum. The `install` file and helper script are referenced with their own checksums. There are no suspicious URLs, obfuscated commands, or unusual file operations. This is a normal, well-formed package definition with no evidence of malicious or injected code.
</details>
<evidence></evidence>
<summary>Standard AUR package metadata, no security issues.</summary>
</security_assessment>

[1/5] Reviewing .SRCINFO, PKGBUILD, visual-studio-code-insiders-bin.install, visual-studio-code-insiders-bin.sh...
[2/5] Reviewing PKGBUILD, visual-studio-code-insiders-bin.install, visual-studio-code-insiders-bin.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR package metadata, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Arch Linux packaging practices for a binary package. It downloads the official Visual Studio Code Insiders `.deb` package from Microsoft's Azure CDN with pinned SHA-256 checksums for all architectures. The `package()` function extracts the archive, creates symlinks, installs a launcher script, fixes desktop entries, and removes the setuid bit on `chrome-sandbox` (a security hardening measure). There are no obfuscated commands, unexpected network requests, or operations outside the package's scope. All dependencies and optdepends are documented and appropriate. No supply-chain attack indicators are present.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD, no malicious content detected.</summary>
</security_assessment>

[3/5] Reviewing visual-studio-code-insiders-bin.install, visual-studio-code-insiders-bin.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD, no malicious content detected.
LLM auditresponse for visual-studio-code-insiders-bin.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file contains only helper functions for colored output and two hooks (`post_install`, `post_upgrade`) that print informational notes about custom flag configuration files. There are no network requests, no file modifications, no obfuscated code, no dangerous commands (curl, wget, eval, base64, exec), and no behavior that deviates from standard packaging practices. The content is purely informational and presents no supply-chain attack risk.
</details>
<evidence>
</evidence>
<summary>Informational install script; no malicious behavior.</summary>
</security_assessment>

[4/5] Reviewing visual-studio-code-insiders-bin.sh...
+ Reviewed visual-studio-code-insiders-bin.install. Status: SAFE -- Informational install script; no malicious behavior.
LLM auditresponse for visual-studio-code-insiders-bin.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a standard launch wrapper for Visual Studio Code Insiders. It reads optional user-specified command-line flags from configuration files in `~/.config/` and then executes the main binary at `/usr/share/code-insiders/bin/code-insiders`. There are no network requests, obfuscated code, file operations outside expected scope, or any other signs of malicious behavior. The use of `sed` and `tr` to parse the config files is routine. The HTML entity `&amp;quot;` in the provided text appears to be an artifact of the copy-paste format; even if present literally, it would break syntax rather than indicate malice. This is a safe, typical AUR maintainer helper script.
</details>
<evidence></evidence>
<summary>Standard launch script, no security issues.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed visual-studio-code-insiders-bin.sh. Status: SAFE -- Standard launch script, no security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 15,851
  Completion Tokens: 4,381
  Total Tokens: 20,232
  Total Cost: $0.002240
  Execution Time: 38.40 seconds

Final Status: SAFE


No issues found.
