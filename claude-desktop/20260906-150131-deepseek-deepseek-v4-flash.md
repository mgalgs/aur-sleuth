---
package: claude-desktop
pkgver: 1.46388.2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 13555
completion_tokens: 1983
total_tokens: 15538
cost: 0.00140062874
execution_time: 41.78
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-06T15:01:31Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore for AUR repo, no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with pinned official sources and checksums; no malicious behavior found.
  - file: PKGBUILD
    status: safe
    summary: Clean, transparent repackaging of official upstream .deb.
---

Materializing claude-desktop from local mirror...
Materialized claude-desktop
Analyzing claude-desktop AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global/top-level scope consists solely of variable declarations (pkgname, pkgver, depends, source arrays, checksums, etc.) and a `package()` function definition. There are no command substitutions (`$(...)` or `` ` ``) in the global scope, no calls to external programs like `curl` or `wget`, and no other code that would execute during the `source` step of `makepkg --printsrcinfo`. All potentially dangerous operations (tar extraction, chmod, rm, ln, install) are confined within the `package()` function, which is **not** executed by `makepkg --printsrcinfo`. The source URLs point to the official Anthropic download domain, and the checksums are literal strings. Sourcing this PKGBUILD to read its metadata is safe.
</details>
<evidence></evidence>
<summary>No malicious code in global scope; safe to source.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code in global scope; safe to source.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, .gitignore...
[0/3] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file for an Arch User Repository (AUR) package repository. It lists three categories of files that should not be tracked by Git: downloaded `.deb` packages, built `.pkg.tar*` packages, and makepkg working directories (`src/` and `pkg/`). There is no executable code, no network requests, no obfuscation, and no instructions that alter system behavior. The file is purely a configuration file for version control and poses no security risk.
</details>
<evidence></evidence>
<summary>Standard .gitignore for AUR repo, no security concerns.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore for AUR repo, no security concerns.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR `.SRCINFO` metadata file for the `claude-desktop` package. It declares package metadata, dependencies, and two architecture-specific sources pulled directly from Anthropic's official download host (`downloads.claude.ai`). Both source artifacts have pinned versions and explicit SHA-256 checksums, which is a good supply-chain hygiene practice.

No suspicious behavior is present: there are no network requests beyond the declared package sources, no obfuscation, no encoded commands, no post-install scripts, and no file operations outside normal packaging metadata. The listed dependencies (e.g., `socat`, `virtiofsd`, `qemu-system-*`, `edk2-ovmf`) are consistent with Claude Desktop's stated app functionality, and the `SourceRef`-style metadata contains only static fields. This file is safe.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata with pinned official sources and checksums; no malicious behavior found.
</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with pinned official sources and checksums; no malicious behavior found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a straightforward repackage of Anthropic&#x27;s official Debian package for the Claude Desktop app. It downloads the .deb from the legitimate upstream domain (downloads.claude.ai) over HTTPS with pinned SHA-256 checksums. The package() function extracts the file payload, sets the standard setuid bit on chrome-sandbox (expected for Chromium-based apps), removes Debian-specific lintian files, creates symlinks to adapt Debian paths to Arch filesystem layout for the Cowork VM feature, and installs the license file. No code is fetched from unexpected hosts, no obfuscated commands appear, and no data-exfiltration or backdoor mechanisms are present. The maintainer has thoroughly documented each step, making the package transparent and trustworthy.
</details>
<evidence></evidence>
<summary>Clean, transparent repackaging of official upstream .deb.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Clean, transparent repackaging of official upstream .deb.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,555
  Completion Tokens: 1,983
  Total Tokens: 15,538
  Total Cost: $0.001401
  Execution Time: 41.78 seconds

Final Status: SAFE


No issues found.
