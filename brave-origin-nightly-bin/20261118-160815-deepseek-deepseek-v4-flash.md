---
package: brave-origin-nightly-bin
pkgver: 1.102.18
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 16405
completion_tokens: 1988
total_tokens: 18393
cost: 0.00183429
execution_time: 21.14
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-18T16:08:15Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; no malicious content found.
  - file: MPL2
    status: safe
    summary: Standard MPL 2.0 license text only; no executable or malicious content found.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD, no malicious code detected.
  - file: brave-origin-nightly-bin.sh
    status: safe
    summary: Standard Brave launcher script, no security issues.
---

Materializing brave-origin-nightly-bin from local mirror...
Materialized brave-origin-nightly-bin
Analyzing brave-origin-nightly-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only top-level variable assignments and function definitions. No command substitutions, backticks, or other executable code exists in the global scope. Therefore sourcing this file for `makepkg --printsrcinfo` does not execute any untrusted payload. All checksums are provided as explicit hashes, and no SKIP entries are present. The functions `prepare()` and `package()` are not executed during this step and are out of scope.
</details>
<evidence></evidence>
<summary>No global-scope code executes; safe to parse.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No global-scope code executes; safe to parse.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, MPL2...
[0/4] Reviewing .SRCINFO, MPL2, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is standard metadata for an AUR package. It declares the package name, version, architecture-specific sources from the official Brave GitHub releases, and SHA512 checksums for each source. No suspicious URLs, obfuscation, or dangerous commands are present. The sources point to the legitimate upstream repository and the checksums are pinned. There is no evidence of malicious behavior such as data exfiltration, backdoors, or execution of untrusted code.
</details>
<evidence></evidence>
<summary>Standard AUR metadata; no malicious content found.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, MPL2, PKGBUILD, brave-origin-nightly-bin.sh...
[1/4] Reviewing MPL2, PKGBUILD, brave-origin-nightly-bin.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; no malicious content found.
LLM auditresponse for MPL2:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is the Mozilla Public License 2.0 text, a standard software license. It contains no executable code, no network requests, no obfuscated commands, and no file system operations. The HTML-style entities (e.g., &quot;, &apos;) are normal XML escaping used when this license text is represented in markup and do not indicate any encoded payload. This is an ordinary packaging/licensing file with no supply-chain or security concerns.
</details>
<evidence>
</evidence>
<summary>
Standard MPL 2.0 license text only; no executable or malicious content found.
</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, brave-origin-nightly-bin.sh...
+ Reviewed MPL2. Status: SAFE -- Standard MPL 2.0 license text only; no executable or malicious content found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD for brave-origin-nightly-bin follows standard Arch Linux AUR packaging practices. It downloads a prebuilt .deb binary from the official Brave GitHub releases (github.com/brave/brave-browser/releases), extracts it, and installs the necessary files. Checksums (sha512sums) are provided for integrity verification on all architectures. The only unusual file operation is setting the chrome-sandbox binary setuid (chmod 4755), which is standard for Chromium-based browsers to enable proper sandbox isolation. No obfuscated code, unexpected network requests, or dangerous commands (curl|bash, eval, base64 decode) are present. The script is transparent and performs only the actions needed to install the package.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD, no malicious code detected.</summary>
</security_assessment>

[3/4] Reviewing brave-origin-nightly-bin.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD, no malicious code detected.
LLM auditresponse for brave-origin-nightly-bin.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard launcher script for the Brave browser (Origin Nightly variant). It reads optional user-specified command-line flags from a configuration file under `~/.config`, sets a default user data directory if not already set, and executes the installed Brave binary with those flags. There are no suspicious network requests, no obfuscated code, no dangerous commands (eval, base64, curl, wget), and no system modifications outside the application's normal scope. The script follows typical AUR packaging practices for browser launchers.
</details>
<evidence>
</evidence>
<summary>Standard Brave launcher script, no security issues.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed brave-origin-nightly-bin.sh. Status: SAFE -- Standard Brave launcher script, no security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 16,405
  Completion Tokens: 1,988
  Total Tokens: 18,393
  Total Cost: $0.001834
  Execution Time: 21.14 seconds

Final Status: SAFE


No issues found.
