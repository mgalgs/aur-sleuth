---
package: opencode-dynamic-context-pruning
pkgver: 3.2.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 9773
completion_tokens: 2018
total_tokens: 11791
cost: 0.0006476421
execution_time: 45.64
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-27T11:29:19Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; pinned upstream source with checksum; no malicious behavior.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD, no malicious content found.
  - file: opencode-dynamic-context-pruning.install
    status: safe
    summary: Benign informational install script that only echoes usage instructions; no security issues.
---

Materializing opencode-dynamic-context-pruning from local mirror...
Materialized opencode-dynamic-context-pruning
Analyzing opencode-dynamic-context-pruning AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable definitions and function declarations at the global scope. No command substitutions, backticks, eval, or other executable code exists outside of the `build()` and `package()` functions. Since `makepkg --printsrcinfo` only sources the PKGBUILD's top-level code, there is no risk of executing malicious actions during this step. The source and checksum definitions are normal packaging metadata.
</details>
<evidence></evidence>
<summary>No dangerous top-level code; safe to parse.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code; safe to parse.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, opencode-dynamic-context-pruning.install...
[0/3] Reviewing .SRCINFO, opencode-dynamic-context-pruning.install, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is an Arch Linux `.SRCINFO` metadata file for the `opencode-dynamic-context-pruning` package. It declares standard package fields: name, version, description, upstream URL, license, dependencies, source tarball, and a SHA-256 checksum.

The source URL points to the project's own GitHub releases page for a pinned tag (`v3.2.0`), and the checksum is provided rather than skipped. There are no suspicious commands, network endpoints, encoded payloads, file operations, or build-time behaviors visible in this file. It contains only packaging metadata and follows normal AUR practices.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata; pinned upstream source with checksum; no malicious behavior.
</summary>
</security_assessment>

[1/3] Reviewing opencode-dynamic-context-pruning.install, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; pinned upstream source with checksum; no malicious behavior.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices. The source is a pinned tarball from the project's official GitHub repository with a valid SHA256 checksum. The build and package steps are routine: installing dependencies with `bun install`, running the build script, then cleaning and re-installing production dependencies before copying the relevant files. There are no suspicious network requests (only the declared source tarball), no obfuscated code, no dangerous commands like `eval`, `curl`, or `wget`, and no operations that exfiltrate data or modify system files outside the package's own installation directories. The `rm -rf node_modules` is a normal cleanup step to reduce package size. No evidence of malicious or supply-chain attack behavior is present.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD, no malicious content found.</summary>
</security_assessment>

[2/3] Reviewing opencode-dynamic-context-pruning.install...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD, no malicious content found.
LLM auditresponse for opencode-dynamic-context-pruning.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is an Arch Linux package install scriptlet (`.install`) for the `opencode-dynamic-context-pruning` package. It contains only `post_install()` and `post_upgrade()` functions, both of which merely print a short informational message to the user explaining how to enable the plugin by adding it to their opencode configuration file.

No malicious or suspicious behavior is present. The script uses only `echo` commands, makes no network requests, performs no downloads, executes no external code, and does not modify files, permissions, or system configuration. It contains no obfuscated or encoded content. The information displayed is standard post-install guidance and matches normal AUR packaging practices.
</details>
<evidence>

</evidence>
<summary>Benign informational install script that only echoes usage instructions; no security issues.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed opencode-dynamic-context-pruning.install. Status: SAFE -- Benign informational install script that only echoes usage instructions; no security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 9,773
  Completion Tokens: 2,018
  Total Tokens: 11,791
  Total Cost: $0.000648
  Execution Time: 45.64 seconds

Final Status: SAFE


No issues found.
