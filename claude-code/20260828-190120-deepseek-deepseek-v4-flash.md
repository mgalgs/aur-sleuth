---
package: claude-code
pkgver: 2.1.251
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 10402
completion_tokens: 1939
total_tokens: 12341
cost: 0.0012395040
execution_time: 59.4
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: ok
upstream_files: 2
upstream_named_files: 0
unpinned_sources: 1
date: 2026-08-28T19:01:19Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file with no security issues.
  - file: PKGBUILD
    status: safe
    summary: Clean AUR PKGBUILD for claude-code binary package.
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config file, no security concerns.
---

Cloning https://aur.archlinux.org/claude-code.git...
Cloned claude-code
Analyzing claude-code AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only variable assignments and a `package()` function that is not executed during `makepkg --nobuild --nodeps --noprepare` or `makepkg --printsrcinfo`. No top-level command substitutions, no `pkgver()` function, and no code that would execute when sourcing the file. All source URLs point to the official `code.claude.com` and `downloads.claude.ai` domains. There are no obfuscated commands, no unexpected network requests, and no data exfiltration mechanisms. The `SKIP` checksum on the generic `sha256sums` array is non‑critical (a documentation file) and the per‑architecture checksums are pinned. This is normal packaging and presents no malicious behaviour within the narrow scope of the requested commands.
</details>
<evidence></evidence>
<summary>Normal PKGBUILD, no executable code at top-level.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Normal PKGBUILD, no executable code at top-level.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: 1 remote source(s) have no checksum (sha256sums=SKIP), so the fetched bytes are not verifiable and can change without any AUR update: cc-legal::https://code.claude.com/docs/en/legal-and-compliance.md
Reviewing the 3 file(s) in the AUR repository. The 2 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, .nvchecker.toml...
[0/3] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file is a standard Arch Linux package metadata file. It defines the `claude-code` package, describing its upstream URL, dependencies, optional dependencies, and source files. The binary sources (`claude` executable) are fetched from the official Anthropic/Claude downloads domain (`downloads.claude.ai`) with pinned SHA256 checksums, which is a good security practice. One source (`cc-legal`) has `sha256sums = SKIP`, but that source is a documentation page, not an executable or build artifact. No obfuscated code, unexpected network requests, file operations, or system modifications are present. The file contains only declarative metadata and contains no executable logic.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file with no security issues.</summary>
</security_assessment>

[1/3] Reviewing .nvchecker.toml, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file with no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a clean, standard AUR package for the claude-code binary distribution. It downloads the official upstream binary from Anthropic&#x27;s downloads.claude.ai domain with pinned SHA-256 checksums for both architectures. The wrapper script disables upstream update mechanisms and installation checks to integrate cleanly into the system package manager, which is a common and legitimate packaging practice. There is no obfuscated code, no suspicious network requests, no execution of fetched scripts, and no unauthorized file operations. The package only installs the binary to /opt/claude-code/bin/, a wrapper to /usr/bin/claude, and the license file.
</details>
<evidence></evidence>
<summary>Clean AUR PKGBUILD for claude-code binary package.</summary>
</security_assessment>

[2/3] Reviewing .nvchecker.toml...
+ Reviewed PKGBUILD. Status: SAFE -- Clean AUR PKGBUILD for claude-code binary package.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard nvchecker configuration file. It defines a version source that uses a regex to scrape the latest release version from `https://downloads.claude.ai/claude-code-releases/latest`. There is no code execution, no obfuscation, no network requests beyond what nvchecker itself initiates as designed. The file contains only configuration in TOML format and has no capacity to perform any malicious actions on its own.
</details>
<evidence></evidence>
<summary>Standard nvchecker config file, no security concerns.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config file, no security concerns.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,402
  Completion Tokens: 1,939
  Total Tokens: 12,341
  Total Cost: $0.001240
  Execution Time: 59.40 seconds

Final Status: SAFE


No issues found.
