---
package: visual-studio-code-insiders-bin
pkgver: 1795066414
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 15826
completion_tokens: 5027
total_tokens: 20853
cost: 0.00232920
execution_time: 39.13
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-19T16:13:18Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with official Microsoft sources and checksums.
  - file: .gitignore
    status: safe
    summary: Standard gitignore pattern, no security issues.
  - file: visual-studio-code-insiders-bin.install
    status: safe
    summary: No malicious code found; only informational notes.
  - file: visual-studio-code-insiders-bin.sh
    status: safe
    summary: Standard launcher script with no malicious behavior.
  - file: PKGBUILD
    status: safe
    summary: Standard pinned binary repackage.
---

Materializing visual-studio-code-insiders-bin from local mirror...
Materialized visual-studio-code-insiders-bin
Analyzing visual-studio-code-insiders-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable assignments in its top-level scope (package metadata, source URLs, checksums, dependency lists) and a single `package()` function that is not executed during `makepkg --printsrcinfo`. There are no command substitutions, eval calls, or any other code that would execute arbitrary commands at parse time. The file follows typical AUR packaging practices for a prebuilt binary package, and no malicious behavior is evident in the global scope.
</details>
<evidence>
</evidence>
<summary>No dangerous top-level code; safe to source.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code; safe to source.
Reviewing the 5 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/5] Reviewing .gitignore...
[0/5] Reviewing .gitignore, PKGBUILD...
[0/5] Reviewing .gitignore, PKGBUILD, .SRCINFO...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is standard package metadata for the `visual-studio-code-insiders-bin` AUR package. All binary sources are fetched from the official Microsoft download domain (`vscode.download.prss.microsoft.com`) using HTTPS, and SHA256 checksums are provided (not SKIP). The only additional source is a shell script (`visual-studio-code-insiders-bin.sh`) with a pinned checksum. No obfuscated code, suspicious network requests, or dangerous commands are present. The file contains only declarative metadata (dependencies, architecture, sources) and no executable logic. This is consistent with legitimate AUR packaging.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata with official Microsoft sources and checksums.</summary>
</security_assessment>

[0/5] Reviewing .gitignore, PKGBUILD, .SRCINFO, visual-studio-code-insiders-bin.install...
[1/5] Reviewing .gitignore, PKGBUILD, visual-studio-code-insiders-bin.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with official Microsoft sources and checksums.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` file that ignores all files matching the pattern `/*.in` (files ending with `.in` in the repository root). This is a common practice in projects using autotools or similar build systems where `.in` files are templates for configuration. There is no executable code, no network requests, no obfuscation, and no system modifications. It is a benign configuration file with no security implications.
</details>
<evidence></evidence>
<summary>Standard gitignore pattern, no security issues.</summary>
</security_assessment>

[1/5] Reviewing .gitignore, PKGBUILD, visual-studio-code-insiders-bin.install, visual-studio-code-insiders-bin.sh...
[2/5] Reviewing PKGBUILD, visual-studio-code-insiders-bin.install, visual-studio-code-insiders-bin.sh...
+ Reviewed .gitignore. Status: SAFE -- Standard gitignore pattern, no security issues.
LLM auditresponse for visual-studio-code-insiders-bin.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Arch Linux .install script that only defines helper functions for colored output and prints informational notes in `post_install` and `post_upgrade` hooks. The notes direct users to put custom flags in `~/.config/code-insiders-flags.conf` (or the shared `~/.config/code-flags.conf`). There is no network activity, no execution of untrusted code, no file modifications beyond standard output, and no indication of malicious behavior. The content is entirely consistent with legitimate packaging practices.
</details>
<evidence></evidence>
<summary>No malicious code found; only informational notes.</summary>
</security_assessment>

[3/5] Reviewing PKGBUILD, visual-studio-code-insiders-bin.sh...
+ Reviewed visual-studio-code-insiders-bin.install. Status: SAFE -- No malicious code found; only informational notes.
LLM auditresponse for visual-studio-code-insiders-bin.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard wrapper for launching Visual Studio Code Insiders. It reads optional user-defined flags from configuration files in `$XDG_CONFIG_HOME` (default `~/.config`), then executes the package's own binary (`/usr/share/code-insiders/bin/code-insiders`) with those flags. There is no network activity, no obfuscation, no unexpected file operations, and no execution of untrusted content from remote sources. The pattern of reading user flags from a config file is common and benign. No evidence of malicious or supply-chain attack behavior was found.
</details>
<evidence></evidence>
<summary>Standard launcher script with no malicious behavior.</summary>
</security_assessment>

[4/5] Reviewing PKGBUILD...
+ Reviewed visual-studio-code-insiders-bin.sh. Status: SAFE -- Standard launcher script with no malicious behavior.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD downloads official binary `.deb` packages from Microsoft's VS Code download CDN (`vscode.download.prss.microsoft.com`). All downloads are pinned by SHA-256 hashes, ensuring integrity. The `package()` function extracts the archive and sets up standard filesystem locations, including a launcher script (standard for `-bin` packages) and disables setuid on chrome-sandbox (standard kernel hardening). There is no obfuscated code, no execution of untrusted content (curl|bash), no unexpected network requests, and no data exfiltration. The package is a textbook example of a secure, hash-verified binary repackage for the AUR. Upstream telemetry in the software itself is a product privacy consideration, not an injected supply chain attack.
</details>
<evidence/>
<summary>Standard pinned binary repackage.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard pinned binary repackage.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 15,826
  Completion Tokens: 5,027
  Total Tokens: 20,853
  Total Cost: $0.002329
  Execution Time: 39.13 seconds

Final Status: SAFE


No issues found.
