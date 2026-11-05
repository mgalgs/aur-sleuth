---
package: devilutionx-voices
pkgbase: devilutionx
pkgver: 1.5.5
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 11260
completion_tokens: 3055
total_tokens: 14315
cost: 0.001580670
execution_time: 54.36
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-05T04:16:02Z
file_verdicts:
  - file: devilutionx.install
    status: safe
    summary: Benign informational post-install script.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD, no malicious behavior observed.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with pinned upstream sources and checksums; no malicious behavior found.
---

devilutionx-voices is built from devilutionx
Materializing devilutionx-voices from local mirror...
Materialized devilutionx-voices
Analyzing devilutionx-voices AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only top-level variable assignments, function definitions, and a `sha256sums` array. No commands execute at global scope during `makepkg --printsrcinfo`; functions such as `build()`, `package_devilutionx()`, `package_devilutionx-voices()`, and `package_devilutionx-fonts()` are not run by this command and are therefore out of scope for this gate.

There is no obfuscation, no command substitution at top level, no network fetching during sourcing, and no data exfiltration. The only command substitution, `$(getconf _NPROCESSORS_ONLN)`, appears inside `build()` and will not execute during `--printsrcinfo`. The source URLs point to the project's own GitHub releases, and all sources have explicit sha256 checksums.
</details>
<evidence>
</evidence>
<summary>
No top-level dangerous code; sourcing this PKGBUILD is safe for printsrcinfo.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level dangerous code; sourcing this PKGBUILD is safe for printsrcinfo.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, devilutionx.install...
LLM auditresponse for devilutionx.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `devilutionx.install` is a standard Arch Linux package script containing only a `post_install()` function that prints an informational message to the user and a `post_upgrade()` function that calls it. The message simply instructs the user to copy required game data files (e.g., `diablodat.mpq`) into the application's expected data directory. There are no network requests, file operations, dangerous commands (such as `eval`, `curl`, `wget`, or `base64`), obfuscated code, or any other behavior that deviates from standard, benign packaging practices. The script performs no actions beyond displaying text.
</details>
<evidence>
</evidence>
<summary>Benign informational post-install script.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed devilutionx.install. Status: SAFE -- Benign informational post-install script.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard, well-structured Arch package definition for the DevilutionX game engine. All sources are downloaded from the official upstream GitHub releases (diasurgical/devilutionX and diasurgical/devilutionx-assets) over HTTPS and pinned to specific version strings with full SHA‑256 checksums. The build step uses only cmake and a standard parallel job count. The subpackages install additional data files (fonts, voice packs) via `install` into the standard system prefix. No eval, base64, curl|bash, or any on‑the‑fly network fetching occurs. The code shows no sign of obfuscation or hidden commands. Everything here is consistent with normal packaging practice and the application&#x27;s stated purpose.
</details>
<evidence>
</evidence>
<summary>Standard PKGBUILD, no malicious behavior observed.</summary>
</security_assessment>

[2/3] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD, no malicious behavior observed.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file is a standard Arch package metadata declaration for the upstream DevilutionX project. All sources point to the official `diasurgical` GitHub release URLs, and every download has a pinned SHA-256 checksum. No network requests, downloaded code execution, obfuscation, file modification, or system tampering is present in this file.

The `devilutionx-voices` package is simply a split package depending on the main `devilutionx` package. The `makedepends` entry for `devilutionx-graphics-tools-git` is unusual but not malicious; it is a declared build-time dependency for generating graphics assets. Overall, the file deviates from no packaging norms in a dangerous way and contains no evidence of injected or malicious behavior.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata with pinned upstream sources and checksums; no malicious behavior found.
</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with pinned upstream sources and checksums; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 11,260
  Completion Tokens: 3,055
  Total Tokens: 14,315
  Total Cost: $0.001581
  Execution Time: 54.36 seconds

Final Status: SAFE


No issues found.
