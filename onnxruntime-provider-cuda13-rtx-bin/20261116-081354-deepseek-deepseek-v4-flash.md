---
package: onnxruntime-provider-cuda13-rtx-bin
pkgbase: onnxruntime-split-bin
pkgver: 1.29.0
pkgrel: 6
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 17978
completion_tokens: 1070
total_tokens: 19048
cost: 0.00181062
execution_time: 57.58
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-16T08:13:54Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Declarative metadata, no executable code or malicious indicators.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR binary package with pinned sources and checksums.
---

onnxruntime-provider-cuda13-rtx-bin is built from onnxruntime-split-bin
Materializing onnxruntime-provider-cuda13-rtx-bin from local mirror...
Materialized onnxruntime-provider-cuda13-rtx-bin
Analyzing onnxruntime-provider-cuda13-rtx-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only variable assignments and function definitions at the top level. No command substitutions, subshell executions, or dangerous commands (curl, wget, eval, etc.) are present in the global scope. The source URLs point to the package's own upstream GitHub releases. The `makepkg --printsrcinfo` command merely sources this file, which poses no execution risk. Any potentially dangerous operations are confined to the `package_*()` functions, which are not executed during this step.</details>
<evidence></evidence>
<summary>Top-level only: safe variable definitions and function declarations.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level only: safe variable definitions and function declarations.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file is pure declarative package metadata for an AUR split-package. It defines sources sourced from the project's own GitHub releases, provides SHA-256 checksums for each artifact, and specifies dependencies, conflicts, and provides. No executable code, obfuscation, network requests, or system modifications are present. All sources point to the package's own upstream repository, and checksums are pinned, which is standard and expected. There is no evidence of malicious behavior.
</details>
<evidence></evidence>
<summary>Declarative metadata, no executable code or malicious indicators.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Declarative metadata, no executable code or malicious indicators.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard split-package for distributing prebuilt binary packages of ONNX Runtime and its execution providers. All source URLs point to the maintainer's own GitHub releases (`rsd/omarchy-onnxruntime`) at a specific tag (`v1.29.0-6`), and each source has a valid SHA256 checksum. The `package_*()` functions only extract the prebuilt archives using `bsdtar` and move license directories; there are no network operations, no execution of fetched code, no obfuscated commands, and no system modifications beyond installing the package files. The use of `noextract` and manual `bsdtar` extraction is a legitimate technique for split binary packages that share a common source archive, and the `sha256sums` are all set to real hashes (not `SKIP`). No supply-chain attack indicators are present.
</details>
<evidence></evidence>
<summary>Standard AUR binary package with pinned sources and checksums.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR binary package with pinned sources and checksums.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 17,978
  Completion Tokens: 1,070
  Total Tokens: 19,048
  Total Cost: $0.001811
  Execution Time: 57.58 seconds

Final Status: SAFE


No issues found.
