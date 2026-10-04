---
package: nomacs
pkgver: 3.23.3
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 7972
completion_tokens: 1562
total_tokens: 9534
cost: 0.0021779328
execution_time: 33.03
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-04T23:02:36Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD, no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no security concerns.
---

Materializing nomacs from local mirror...
Materialized nomacs
Analyzing nomacs AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources only the top-level of the PKGBUILD. The global scope here contains only standard variable definitions: package metadata (`pkgname`, `pkgver`, `pkgrel`, etc.), dependency arrays, the `source` array pointing to the project's own upstream Git repository, and a `b2sums` array. There are no top-level command substitutions, no network fetches performed at source time, no encoded/obfuscated payloads, and no attempts to modify or exfiltrate data.

The `build()`, `check()`, and `package()` functions contain ordinary build-system commands, but those are not executed by `makepkg --printsrcinfo`, so they are out of scope for this narrow gate. No issue here warrants marking the command unsafe.
</details>
<evidence>
</evidence>
<summary>
No top-level malicious code; printsrcinfo is safe to run.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level malicious code; printsrcinfo is safe to run.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, .SRCINFO...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard Arch Linux packaging practices. The source is fetched from the official GitHub repository with a pinned tag (`${pkgver}`) and a valid `b2sums` entry ensures integrity. The build process uses `cmake` with standard flags, and the install step uses `cmake --install`. There are no suspicious network requests, obfuscated code, dangerous command invocations, or unexpected file operations. The only environment modifications (`LANG=C.UTF-8`, `LC_ALL=C.UTF-8`) are harmless locale workarounds to avoid build warnings.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD, no security concerns.</summary>
</security_assessment>

[1/2] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD, no security concerns.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.SRCINFO` metadata file for the AUR package `nomacs`. It contains only declarative information: package name, description, version, upstream URL, dependencies, and a source specification pinned to a specific tag (`3.23.3`) with a corresponding BLAKE2B checksum. There are no executable commands, no network calls (other than declaring the upstream source), no obfuscated strings, and no file manipulation logic. The content is purely descriptive and follows standard AUR packaging conventions.
</details>
<evidence></evidence>
<summary>Standard AUR metadata, no security concerns.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no security concerns.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 7,972
  Completion Tokens: 1,562
  Total Tokens: 9,534
  Total Cost: $0.002178
  Execution Time: 33.03 seconds

Final Status: SAFE


No issues found.
