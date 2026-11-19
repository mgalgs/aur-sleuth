---
package: epic-games-launcher-bin
pkgver: 0.118.0
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 9396
completion_tokens: 1914
total_tokens: 11310
cost: 0.00119016
execution_time: 26.68
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-19T04:04:19Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard AUR package, no malicious behavior detected.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata for a binary package.
---

Materializing epic-games-launcher-bin from local mirror...
Materialized epic-games-launcher-bin
Analyzing epic-games-launcher-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard top-level variable definitions (pkgname, pkgver, source, sha256sums, etc.) and function definitions (prepare, package). No command substitutions, eval, curl, wget, or other dangerous constructs are present in the global scope. Sourcing this file for `makepkg --printsrcinfo` will not execute any malicious code. The package function contains a shell wrapper script, but that is only executed during packaging, not during sourcing.
</details>
<evidence></evidence>
<summary>No dangerous top-level code present; safe to source.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code present; safe to source.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD downloads the Epic Games Launcher `.deb` from an official Epic Games CDN over HTTPS, verifies it with a hardcoded SHA-256 checksum, extracts it with standard tools (`bsdtar`), and installs the binary and support files. The wrapper script sets an environment variable (`EGL_DISABLE_SELF_UPDATE=1`) and executes the launcher; this is ordinary functionality. There is no obfuscated code, no unexpected network requests, no execution of fetched content that bypasses source verification, no exfiltration of local data, and no backdoors. The source reference (`git repo` URL in the header) is only metadata for maintenance. The package follows standard Arch packaging practices for a prebuilt binary.
</details>
<evidence></evidence>
<summary>Standard AUR package, no malicious behavior detected.</summary>
</security_assessment>

[1/2] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR package, no malicious behavior detected.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a standard AUR metadata declaration for a binary repackaging of the official Epic Games Launcher. It contains dependencies, source URL (pointing to Epic Games&#x27; official content distribution server over HTTPS with a pinned SHA-256 checksum), and packaging options. No code execution, network requests other than the declared source, obfuscation, or unexpected operations are present. The file is purely declarative and follows normal `-bin` packaging practices. There is no evidence of injected malicious code or supply-chain attack indicators.
</details>
<evidence></evidence>
<summary>Standard AUR metadata for a binary package.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata for a binary package.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 9,396
  Completion Tokens: 1,914
  Total Tokens: 11,310
  Total Cost: $0.001190
  Execution Time: 26.68 seconds

Final Status: SAFE


No issues found.
