---
package: ely-show-app-bin
pkgver: 0.1.8
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 7886
completion_tokens: 1003
total_tokens: 8889
cost: 0.000900172
execution_time: 18.1
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-20T03:08:34Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; pinned upstream source with checksum; no malicious behavior found.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR deb-repackaging PKGBUILD with pinned source and checksum; no malicious behavior found.
---

Materializing ely-show-app-bin from local mirror...
Materialized ely-show-app-bin
Analyzing ely-show-app-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable definitions, a source array pointing to a GitHub release with a pinned SHA256 checksum, a functions `package()` (which is not executed during `makepkg --printsrcinfo`), and no top-level command substitutions, eval, or other code execution. Sourcing the file for metadata parsing presents no risk.
</details>
<evidence></evidence>
<summary>No top-level dangerous code; safe to parse metadata.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level dangerous code; safe to parse metadata.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR `.SRCINFO` metadata file for a prebuilt binary package. It declares package metadata, dependencies, and a single source downloaded from the project's official GitHub releases page: `https://github.com/ELY-Open-Source/ElyOffice/releases/download/v0.1.8/ely-show_0.1.8-1_amd64.deb`. The source is pinned to a specific release tag and includes a concrete SHA-256 checksum, which is good supply-chain hygiene.

No malicious behavior is present. There are no network requests beyond the package's own declared upstream source, no encoded/obfuscated commands, no post-install scripts, no file operations, and no unexpected system modifications. The dependencies are ordinary runtime libraries consistent with a GUI/application package. This file deviates from no packaging norms and contains no evidence of an injected supply-chain attack.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata; pinned upstream source with checksum; no malicious behavior found.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; pinned upstream source with checksum; no malicious behavior found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for repackaging a prebuilt `.deb` release. The source is downloaded directly from the project&apos;s own GitHub releases URL with a pinned version and a concrete SHA-256 checksum. The `package()` function uses `ar` and `bsdtar` to extract the Debian package contents into `$pkgdir`, which is the normal approach for converting `.deb` binaries for Arch. There are no suspicious network requests, no encoded/obfuscated commands, no execution of downloaded scripts, no unexpected file operations outside `$pkgdir`, and no system modifications beyond installing the packaged files. The `chmod` command simply normalizes permissions within the package directory. No genuinely malicious or dangerous behavior is present.
</details>
<evidence>
</evidence>
<summary>
Standard AUR deb-repackaging PKGBUILD with pinned source and checksum; no malicious behavior found.
</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR deb-repackaging PKGBUILD with pinned source and checksum; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 7,886
  Completion Tokens: 1,003
  Total Tokens: 8,889
  Total Cost: $0.000900
  Execution Time: 18.10 seconds

Final Status: SAFE


No issues found.
