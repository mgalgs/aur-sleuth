---
package: python-onnxruntime-core-bin
pkgbase: onnxruntime-split-bin
pkgver: 1.29.0
pkgrel: 6
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 18118
completion_tokens: 2103
total_tokens: 20221
cost: 0.00200916
execution_time: 51.8
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-16T04:16:54Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no security issues found.
  - file: PKGBUILD
    status: safe
    summary: Standard binary split PKGBUILD, no malicious behavior.
---

python-onnxruntime-core-bin is built from onnxruntime-split-bin
Materializing python-onnxruntime-core-bin from local mirror...
Materialized python-onnxruntime-core-bin
Analyzing python-onnxruntime-core-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only static variable assignments (strings and arrays) and function definitions. All top-level code is limited to setting packaging metadata such as `pkgver`, `source`, `sha256sums`, `noextract`, and defining `package_*` functions. There are no command substitutions, backtick expansions, or direct command executions at the global scope. Therefore, sourcing this file for `makepkg --printsrcinfo` does not trigger any dangerous operations.
</details>
<evidence>
</evidence>
<summary>No execution triggers at global scope; sourcing is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No execution triggers at global scope; sourcing is safe.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.SRCINFO` metadata file for an AUR package. It declares sources as prebuilt binary archives from the maintainer's GitHub releases, with SHA-256 checksums (not SKIP). No executable code, obfuscated commands, network requests, or system modifications are present. The file only defines package metadata and dependencies. There is no evidence of malicious or suspicious behavior.
</details>
<evidence></evidence>
<summary>Standard AUR metadata, no security issues found.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no security issues found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD defines split binary packages for onnxruntime. All source tarballs are downloaded from the project's own GitHub releases with pinned SHA-256 checksums. Each package_*() function simply extracts the corresponding prebuilt tarball into the package directory, then optionally renames a license folder. No build steps, git pulls, code evaluation, obfuscation, or unexpected network calls are present. The pinning checksums and the direct use of declared upstream sources follow standard AUR packaging practices for redistributing prebuilt artifacts. No evidence of malicious injection, data exfiltration, or backdoors.
</details>
<evidence>
</evidence>
<summary>Standard binary split PKGBUILD, no malicious behavior.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard binary split PKGBUILD, no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 18,118
  Completion Tokens: 2,103
  Total Tokens: 20,221
  Total Cost: $0.002009
  Execution Time: 51.80 seconds

Final Status: SAFE


No issues found.
