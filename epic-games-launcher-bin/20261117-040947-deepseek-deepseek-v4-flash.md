---
package: epic-games-launcher-bin
pkgver: 0.116.2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 9376
completion_tokens: 2081
total_tokens: 11457
cost: 0.00121842
execution_time: 22.55
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-17T04:09:47Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; no executable or malicious content.
  - file: PKGBUILD
    status: safe
    summary: Legitimate binary repackage with pinned checksum; safe.
---

Materializing epic-games-launcher-bin from local mirror...
Cloning https://aur.archlinux.org/epic-games-launcher-bin.git...
Cloned epic-games-launcher-bin
Analyzing epic-games-launcher-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global/top-level scope contains only variable definitions (pkgname, pkgver, source, etc.) and two function definitions (prepare, package). No command substitutions (`$(...)`), arithmetic expansions, `eval`, or other executable expressions are present in the top-level code. The source URL points to the official Epic Games CDN and is properly defined with a SHA-256 checksum. There is no mechanism for arbitrary code execution during the sourcing step that `makepkg --printsrcinfo` performs. The `prepare()` and `package()` functions are not invoked at this stage, so their contents are out of scope for this narrow gate.
</details>
<evidence></evidence>
<summary>No top-level malicious code execution during parsing.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level malicious code execution during parsing.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, .SRCINFO...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.SRCINFO` metadata file for an AUR package. It contains no executable code, only package metadata such as dependencies, source URLs, and checksums. The source is fetched from the official Epic Games CDN (`content-download-egs.distro.on.epicgames.com`) over HTTPS, and a SHA-256 checksum is provided (not `SKIP`). There are no suspicious commands, obfuscation, or system modifications. The file conforms to normal AUR packaging practices and presents no evidence of a supply-chain attack.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata; no executable or malicious content.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; no executable or malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD downloads the official Epic Games Launcher .deb from Epic's own domain with a pinned SHA-256 checksum. It extracts the binary, installs it along with a wrapper script that disables self-updates (a standard precaution for repackaged binaries), and adds desktop integration files. There are no obfuscated commands, no unexpected network requests, and no file operations beyond what is normal for packaging a prebuilt application. The pinned checksum ensures integrity. No supply-chain attack indicators are present.
</details>
<evidence></evidence>
<summary>Legitimate binary repackage with pinned checksum; safe.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Legitimate binary repackage with pinned checksum; safe.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 9,376
  Completion Tokens: 2,081
  Total Tokens: 11,457
  Total Cost: $0.001218
  Execution Time: 22.55 seconds

Final Status: SAFE


No issues found.
