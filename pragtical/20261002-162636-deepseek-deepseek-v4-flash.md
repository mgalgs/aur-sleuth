---
package: pragtical
pkgver: 3.13.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 8291
completion_tokens: 4064
total_tokens: 12355
cost: 0.000459732
execution_time: 70.31
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-02T16:26:34Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: AUR metadata, no malice, pinned source with hash.
  - file: PKGBUILD
    status: safe
    summary: Standard pinned upstream build; no malicious or suspicious behavior found.
---

Materializing pragtical from local mirror...
Materialized pragtical
Analyzing pragtical AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources the PKGBUILD, which executes only top-level code. This PKGBUILD contains only variable assignments, arrays, dependency lists, and function definitions. No top-level command substitutions, network fetches, encoded payloads, or dangerous shell constructs are present. The `build()` and `package()` functions are not executed during `--printsrcinfo`, so their contents are out of scope for this gate. No genuinely malicious or dangerous top-level behavior was found.
</details>
<evidence></evidence>
<summary>PKGBUILD top-level contains only data definitions; no code executes at parse time.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- PKGBUILD top-level contains only data definitions; no code executes at parse time.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file provides metadata for the pragtical AUR package. It is a static declaration file, not an executable script. It contains no logic, no network commands (curl, wget, git pull), no obfuscated code, and no instructions to execute arbitrary payloads.

The source parameter points to a pinned release tarball (v3.13.1.tar.gz) from the project's official GitHub repository. Additionally, the sha256sums field contains a specific cryptographic hash rather than SKIP, allowing makepkg to verify the integrity of the downloaded source. The dependency list is standard for a modern text editor. There are no red flags, deviations from AUR standards, or indicators of malicious intent.
</details>
<evidence>
</evidence>
<summary>AUR metadata, no malice, pinned source with hash.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- AUR metadata, no malice, pinned source with hash.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices. It fetches the upstream source tarball from the project&apos;s own GitHub repository at a pinned version tag (`v3.13.1`) with a fixed SHA-256 checksum, then builds it with meson and installs it into `$pkgdir`. There are no suspicious network requests, no encoded/obfuscated commands, and no use of dangerous shells such as `eval`, `curl`, `wget`, or `base64`.

The optional `PGO` path runs the locally built editor binary with a bundled profiling script (`scripts/lua/pgo.lua`) to generate profile-guided optimization data. This is normal upstream build behavior for performance profiling, not an injected supply-chain attack. The package install step only installs built artifacts and creates a symlink inside the package directory for a license file. No files outside the package scope are modified, and no credentials or local data are accessed or exfiltrated.
</details>
<evidence>
</evidence>
<summary>
Standard pinned upstream build; no malicious or suspicious behavior found.
</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard pinned upstream build; no malicious or suspicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 8,291
  Completion Tokens: 4,064
  Total Tokens: 12,355
  Total Cost: $0.000460
  Execution Time: 70.31 seconds

Final Status: SAFE


No issues found.
