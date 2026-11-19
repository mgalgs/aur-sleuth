---
package: omnidotdev-fractal-cli-bin
pkgver: 0.1.0.13
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 8424
completion_tokens: 4800
total_tokens: 13224
cost: 0.00162216
execution_time: 46.44
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-14T20:07:53Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Safe standard AUR metadata with pinned checksums.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD for official pre-built binary
---

Materializing omnidotdev-fractal-cli-bin from local mirror...
Materialized omnidotdev-fractal-cli-bin
Analyzing omnidotdev-fractal-cli-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The top-level scope of this PKGBUILD consists only of standard variable assignments (`pkgname`, `pkgver`, `depends`, `source`, `sha256sums`, etc.) and the definition of the `package()` function. There are no command substitutions (`$()`, `` ` ``), no `eval` calls, and no executable commands (like `curl`, `wget`, `chmod`) in the global scope. The `_build=${pkgver##*.}` line uses bash pattern parameter expansion, which is entirely safe and does not execute any external commands. Therefore, running `makepkg --printsrcinfo` (which only sources definitions) is safe.
</details>
<evidence>
</evidence>
<summary>Global scope is purely declarative. No code executed.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Global scope is purely declarative. No code executed.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard AUR `.SRCINFO` metadata file. It contains only declarative data: package name, version, description, dependencies, and source URLs with SHA256 checksums pinned to specific release artifacts on GitHub. There are no embedded commands, no obfuscated code, no network requests beyond referencing the project&#x27;s own upstream release URLs. The checksums are not set to `SKIP`; they are provided as fixed hex strings, allowing integrity verification. This file poses no supply-chain risk on its own.
</details>
<evidence>
</evidence>
<summary>Safe standard AUR metadata with pinned checksums.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Safe standard AUR metadata with pinned checksums.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR conventions for distributing a pre-built binary (`-bin` package). It fetches the `fractal` CLI binary and its license directly from the project's official GitHub releases (`github.com/omnidotdev/fractal-cli/releases/download/cli-v${_build}/`). The source URLs are appropriately constructed using the version string, and SHA256 checksums are provided and pinned for both architectures and the license file, ensuring the integrity of the downloaded artifacts. The `package()` function performs standard installation of the binary and license into the package directory. There is no evidence of obfuscated code, suspicious network destinations, exfiltration of local data, execution of untrusted fetched code, or any other behavior indicative of a supply-chain attack. All operations fall within the expected scope of secure and well-configured packaging practices.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD for official pre-built binary</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD for official pre-built binary
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 8,424
  Completion Tokens: 4,800
  Total Tokens: 13,224
  Total Cost: $0.001622
  Execution Time: 46.44 seconds

Final Status: SAFE


No issues found.
