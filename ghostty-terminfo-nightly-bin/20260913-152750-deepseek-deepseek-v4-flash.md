---
package: ghostty-terminfo-nightly-bin
pkgbase: ghostty-nightly-bin
pkgver: 20260913.r17764.g5252b19
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 11193
completion_tokens: 4930
total_tokens: 16123
cost: 0.00101980732
execution_time: 129.61
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-13T15:27:50Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: Standard license file, no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Static metadata file; no executable content found.
  - file: PKGBUILD
    status: safe
    summary: "Safe: standard nightly-bin PKGBUILD; extracts verified tarballs only into pkgdir."
---

ghostty-terminfo-nightly-bin is built from ghostty-nightly-bin
Materializing ghostty-terminfo-nightly-bin from local mirror...
Materialized ghostty-terminfo-nightly-bin
Analyzing ghostty-terminfo-nightly-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD file contains only straightforward variable definitions, array assignments, and package-helper function definitions in its global/top-level scope. No command substitutions, backtick executions, `eval`, `curl`, `wget`, or any other code that would execute during `makepkg --printsrcinfo` are present. The `source` array defines URLs as plain strings, but no network requests or file operations occur at sourcing time. All dangerous operations are confined to the `package_*()` functions which are **not** executed during the `--printsrcinfo` step. Therefore, running this command is safe.</details>
<evidence></evidence>
<summary>No executable code in global scope; safe to source.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No executable code in global scope; safe to source.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, LICENSE...
[0/3] Reviewing .SRCINFO, LICENSE, PKGBUILD...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a plaintext software license (ISC-style). It contains no executable code, no packaging instructions, and no network, file, or system operations. There is no evidence of malicious content.
</details>
<evidence></evidence>
<summary>Standard license file, no security concerns.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed LICENSE. Status: SAFE -- Standard license file, no security concerns.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is purely static metadata describing the package and its dependencies. It contains no executable code, no obfuscated strings, no network requests, and no file operations. The sources are downloaded from a third-party GitHub repository (`jpenilla/ghostty-nightly-bin`) rather than the official `ghostty-org/ghostty`, but that alone is not evidence of a supply-chain attack in this metadata file. Checksums are provided (not `SKIP`), offering some verification. The dependencies, provides, and conflicts lines are standard AUR practice. There is no malicious content in this file.
</details>
<evidence></evidence>
<summary>Static metadata file; no executable content found.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Static metadata file; no executable content found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows the standard AUR `-nightly-bin` pattern. It declares three subpackages (binary, shell integration, terminfo), each of which downloads a prebuilt `.tar.zst` archive from the maintainer&apos;s GitHub releases (`github.com/jpenilla/ghostty-nightly-bin`) and extracts it into `$pkgdir` with `bsdtar -xf ... -C "$pkgdir"`. There is no `prepare()`/`build()` step, no code execution, no network access during the build, no post-install hooks, and no file operations outside the package directory.

The only caveat is a hygiene/reproducibility one: the remote `nightly` release tag is a mutable ref rather than a pinned revision. This is ordinary for nightly `-bin` packages, and the PKGBUILD mitigates the risk by pinning sha256 checksums for every downloaded archive, so `makepkg` fails if the content changes without a maintainer update. Downloading from the package&apos;s own upstream GitHub releases is expected, not suspicious. The `&quot;`/`&apos;` entities in the provided text are artifacts of the XML envelope, not obfuscation in the actual file.

No evidence of malicious behavior: no exfiltration, no obfuscated or encoded commands, no `eval`/`curl|bash`, no tampering with files outside `$pkgdir`, no backdoors, and no credential access.
</details>
<evidence>
</evidence>
<summary>
Safe: standard nightly-bin PKGBUILD; extracts verified tarballs only into pkgdir.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Safe: standard nightly-bin PKGBUILD; extracts verified tarballs only into pkgdir.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 11,193
  Completion Tokens: 4,930
  Total Tokens: 16,123
  Total Cost: $0.001020
  Execution Time: 129.61 seconds

Final Status: SAFE


No issues found.
