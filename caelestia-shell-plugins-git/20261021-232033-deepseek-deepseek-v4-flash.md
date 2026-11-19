---
package: caelestia-shell-plugins-git
pkgver: 2.5.0.r101.gd69c37a
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 8653
completion_tokens: 1280
total_tokens: 9933
cost: 0.001020383
execution_time: 28.81
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-21T23:20:31Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR git package, no malicious code found.
---

Materializing caelestia-shell-plugins-git from local mirror...
Cloning https://aur.archlinux.org/caelestia-shell-plugins-git.git...
Cloned caelestia-shell-plugins-git
Analyzing caelestia-shell-plugins-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard top-level variable assignments (pkgname, pkgver, depends, source, etc.) and function definitions. The `source` array references the package's own upstream Git repository via a variable substitution, which is normal. There are no command substitutions, eval calls, or any other executable code in the global scope that would run when the file is sourced by `makepkg --printsrcinfo`. The functions `pkgver()`, `build()`, and `package()` are defined but not executed during this metadata-printing step. No malicious or obfuscated content is present at the top level.
</details>
<evidence></evidence>
<summary>Global scope has no executable code; safe to source.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Global scope has no executable code; safe to source.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a standard Arch Linux package metadata file. It declares a VCS package that fetches source from `git+https://github.com/deeadly137/caelestia-plugins.git`. The checksum is SKIP, which is required for VCS sources and not suspicious. All listed dependencies and metadata are normal for a shell/plugin package. There is no embedded code, no obfuscation, and no unexpected network destinations. This file contains no genuinely malicious behavior.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata, no malicious content.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR -git packaging practices. It clones the project's own upstream repository from GitHub, uses SKIP checksums as expected for VCS sources, and runs typical CMake build/install steps. There is no obfuscated code, no unexpected network requests (beyond the declared git source), and no dangerous commands like curl, wget, eval, or base64. The dependencies are appropriate for the application's stated functionality (brightness control, audio, fonts, etc.). No evidence of supply-chain attack or malicious injection is present.
</details>
<evidence></evidence>
<summary>Standard AUR git package, no malicious code found.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR git package, no malicious code found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 8,653
  Completion Tokens: 1,280
  Total Tokens: 9,933
  Total Cost: $0.001020
  Execution Time: 28.81 seconds

Final Status: SAFE


No issues found.
