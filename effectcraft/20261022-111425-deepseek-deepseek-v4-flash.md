---
package: effectcraft
pkgver: 0.14.0
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 9968
completion_tokens: 1393
total_tokens: 11361
cost: 0.001160614
execution_time: 39.22
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-22T11:14:25Z
file_verdicts:
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config; no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no malicious content.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with pinned source and checksum.
---

Materializing effectcraft from local mirror...
Materialized effectcraft
Analyzing effectcraft AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains standard variable assignments and function definitions. No command substitutions, arithmetic expansions, or other code execution occurs at the global/top-level scope during sourcing. All top-level operations are limited to setting package metadata and defining functions that are only invoked later during the build process. Therefore, running `makepkg --printsrcinfo` on this PKGBUILD is safe.
</details>
<evidence>
</evidence>
<summary>No dangerous top-level code executed.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code executed.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, .nvchecker.toml...
[0/3] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `.nvchecker.toml` is a straightforward configuration for the `nvchecker` tool, which automates version checks for upstream releases. It specifies a Git source pointing to the official GitHub repository of `effectcraft` and sets a version prefix `&quot;v&quot;`. There is no obfuscation, no embedded commands, no network requests to unexpected hosts, and no file operations. This is a standard packaging helper file with no security concerns.
</details>
<evidence>
</evidence>
<summary>Standard nvchecker config; no security issues.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config; no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a Rust-based application. It fetches a specific tagged release tarball from the project's official GitHub repository with a pinned checksum. The build process uses `cargo fetch --locked` and `cargo build --frozen`, which ensures dependencies are pinned and verified by the lockfile. The package installs only binaries, desktop entries, MIME data, icons, and licenses into standard system directories. There is no suspicious network activity, obfuscated code, system tampering, or data exfiltration. The file appears to be a legitimate packaging script for the EffectCraft reimplementation of Adobe After Effects.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with no malicious content.</summary>
</security_assessment>

[2/3] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no malicious content.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file defines a standard AUR package with a pinned source tarball from the project&#39;s own GitHub repository and a matching SHA256 checksum. No suspicious commands, obfuscation, or unexpected operations are present. The file adheres to normal packaging conventions.
</details>
<evidence></evidence>
<summary>Standard AUR metadata with pinned source and checksum.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with pinned source and checksum.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 9,968
  Completion Tokens: 1,393
  Total Tokens: 11,361
  Total Cost: $0.001161
  Execution Time: 39.22 seconds

Final Status: SAFE


No issues found.
