---
package: visual-studio-code-insiders-bin
pkgver: 1793338307
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 16134
completion_tokens: 4140
total_tokens: 20274
cost: 0.002221674
execution_time: 43.44
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-30T11:14:55Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore pattern; no security issues found.
  - file: PKGBUILD
    status: safe
    summary: Standard VS Code Insiders repackaging; pinned official sources and checksums, no malicious behavior.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; official Microsoft sources, pinned checksums. SAFE.
  - file: visual-studio-code-insiders-bin.sh
    status: safe
    summary: Standard launcher wrapper reading user flags and starting VS Code Insiders; no malicious behavior found.
  - file: visual-studio-code-insiders-bin.install
    status: safe
    summary: Standard install script; no malicious behavior.
---

Materializing visual-studio-code-insiders-bin from local mirror...
Materialized visual-studio-code-insiders-bin
Analyzing visual-studio-code-insiders-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global scope contains only static variable assignments (definitions for `pkgname`, `pkgver`, `source`, `sha256sums`, etc.) and comments. There are no command substitutions, backtick expressions, direct calls to external programs, or any other executable code in the top‑level scope. The single function defined (`package()`) is not executed when sourcing the file for `makepkg --printsrcinfo`. Therefore, running this command is safe.
</details>
<evidence>
</evidence>
<summary>No executable code in global scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No executable code in global scope.
Reviewing the 5 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, .gitignore...
[0/5] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` containing a single pattern `/*.in`, which tells Git to ignore top-level files ending with `.in` (commonly template files such as `.in` input files). This is a routine packaging/development convenience and contains no executable code, no network operations, no obfuscation, and no system-modifying behavior. There is no evidence of malicious or dangerous activity.
</details>
<evidence>
</evidence>
<summary>
Standard .gitignore pattern; no security issues found.</summary>
</security_assessment>

[0/5] Reviewing .SRCINFO, .gitignore, PKGBUILD, visual-studio-code-insiders-bin.install...
[1/5] Reviewing .SRCINFO, PKGBUILD, visual-studio-code-insiders-bin.install...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore pattern; no security issues found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard binary repackaging of Microsoft's official Visual Studio Code Insiders .deb packages. All binary sources are pinned to specific URLs under `vscode.download.prss.microsoft.com` (Microsoft's own download domain) and each architecture has a pinned sha256sum. The build logic only extracts the upstream data archive, installs a launcher script, fixes desktop entries, and adjusts the chrome-sandbox permissions. There are no downloads at build time, no eval/base64/curl-bash patterns, no obfuscation, no exfiltration, and no unexpected system modifications.

The `source` array includes the launcher script `visual-studio-code-insiders-bin.sh` with its own pinned checksum. Since the script content is not included here, no hidden behavior can be confirmed from the script itself, but the PKGBUILD's use of it is normal packaging practice. The `!strip` option and the `chmod u-s` operation on chrome-sandbox are documented packaging choices and are not evidence of malice. Overall, this file does not display any supply-chain attack indicators.
</details>
<evidence>
</evidence>
<summary>
Standard VS Code Insiders repackaging; pinned official sources and checksums, no malicious behavior.</summary>
</security_assessment>

[2/5] Reviewing .SRCINFO, visual-studio-code-insiders-bin.install...
+ Reviewed PKGBUILD. Status: SAFE -- Standard VS Code Insiders repackaging; pinned official sources and checksums, no malicious behavior.
[2/5] Reviewing .SRCINFO, visual-studio-code-insiders-bin.install, visual-studio-code-insiders-bin.sh...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` is standard declarative PKGBUILD metadata for the `visual-studio-code-insiders-bin` AUR package. All binary sources point to Microsoft's official Visual Studio Code download host (`vscode.download.prss.microsoft.com`) under the insider channel, which matches the package's stated purpose. Each architecture-specific `.deb` has a pinned sha256 checksum, and the local launcher script `visual-studio-code-insiders-bin.sh` is likewise checksum-pinned. The dependency list (gtk3, libsecret, nss, libxkbfile, etc.) is consistent with VSCode's known runtime requirements.

No obfuscation, no suspicious network destinations, no `eval`/`base64`/curl-pipe-to-shell patterns, and no unexpected file operations appear in this file — it is purely metadata. The referenced install script (`.install`) and launcher script are not part of the provided content, so they cannot be reviewed here, but the metadata itself shows no indication of malicious behavior. Referencing an install script is normal AUR practice.
</details>
<evidence>

</evidence>
<summary>
Standard AUR metadata; official Microsoft sources, pinned checksums. SAFE.</summary>
</security_assessment>

[3/5] Reviewing visual-studio-code-insiders-bin.install, visual-studio-code-insiders-bin.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; official Microsoft sources, pinned checksums. SAFE.
LLM auditresponse for visual-studio-code-insiders-bin.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard shell wrapper for launching Visual Studio Code Insiders. It optionally reads user-defined command-line flags from `code-insiders-flags.conf` or `code-flags.conf` in the user's XDG config directory, strips comments, joins the lines with spaces, and passes them to the real binary along with the user's original arguments.

There is no network access, no downloading or execution of remote content, no obfuscation, no use of `eval`, and no modification of system files or data outside the application's normal launch process. The unquoted `$CODE_USER_FLAGS` expansion allows word splitting, which is intentional for passing multiple flags, but it does not cause shell command interpretation of metacharacters. The flags themselves come from the user's own configuration file, so this is not a privilege boundary or an injection risk introduced by the package. The behavior is consistent with ordinary AUR packaging practices.
</details>
<evidence>
</evidence>
<summary>
Standard launcher wrapper reading user flags and starting VS Code Insiders; no malicious behavior found.
</summary>
</security_assessment>

[4/5] Reviewing visual-studio-code-insiders-bin.install...
+ Reviewed visual-studio-code-insiders-bin.sh. Status: SAFE -- Standard launcher wrapper reading user flags and starting VS Code Insiders; no malicious behavior found.
LLM auditresponse for visual-studio-code-insiders-bin.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.install` script for an AUR package. It defines helper functions for colored terminal output and prints informational notes during `post_install` and `post_upgrade`. No network requests, file operations, or execution of external commands (aside from `tput` for formatting) occur. There is no obfuscation, no encoded content, and no behavior that deviates from routine packaging practices. The script simply reminds users about custom flags configuration files. No supply-chain attack indicators are present.
</details>
<evidence>

</evidence>
<summary>Standard install script; no malicious behavior.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed visual-studio-code-insiders-bin.install. Status: SAFE -- Standard install script; no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 16,134
  Completion Tokens: 4,140
  Total Tokens: 20,274
  Total Cost: $0.002222
  Execution Time: 43.44 seconds

Final Status: SAFE


No issues found.
