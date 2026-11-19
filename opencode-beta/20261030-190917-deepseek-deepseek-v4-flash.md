---
package: opencode-beta
pkgver: 2.2.4
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 12510
completion_tokens: 8626
total_tokens: 21136
cost: 0.002708342
execution_time: 65.93
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-30T19:09:17Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, benign.
  - file: LICENSE
    status: safe
    summary: Standard MIT License file, no security issues.
  - file: opencode2
    status: safe
    summary: Simple wrapper script, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Clean PKGBUILD with pinned hashes, no malicious code.
---

Materializing opencode-beta from local mirror...
Materialized opencode-beta
Analyzing opencode-beta AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD consists entirely of top-level variable definitions (such as `pkgver`, `source`, `sha256sums`, etc.) and a single `package()` function definition. No top-level command substitutions, backtick expressions, `eval` statements, or external commands (such as `curl`, `wget`, `git`) are executed during the sourcing phase. All URLs and string values are inert data assigned to variables and do not trigger any downloads or system modifications when the file is sourced. There is no obfuscated code or encoded payloads in the global scope. Therefore, running `makepkg --printsrcinfo` against this PKGBUILD is safe.
</details>
<evidence></evidence>
<summary>No malicious top-level code execution.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious top-level code execution.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, LICENSE...
[0/4] Reviewing .SRCINFO, LICENSE, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.SRCINFO` metadata descriptor for the AUR package `opencode-beta`. It contains package version, description, license, dependencies, and source URLs with verified SHA-256 checksums. All source URLs point to the official npm registry (registry.npmjs.org) under the `@opencode` namespace, which is the expected upstream distribution channel for this application. There is no executable code, no obfuscated content, no unexpected network destinations, and no instructions that deviate from normal packaging metadata. The file poses no security risk.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file, benign.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, LICENSE, PKGBUILD, opencode2...
[1/4] Reviewing LICENSE, PKGBUILD, opencode2...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, benign.
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is the MIT License (LICENSE). It contains no executable code, no network operations, no obfuscation, and no file manipulation commands. It is a standard license text file that poses no security risk.
</details>
<evidence>
</evidence>
<summary>Standard MIT License file, no security issues.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, opencode2...
+ Reviewed LICENSE. Status: SAFE -- Standard MIT License file, no security issues.
LLM auditresponse for opencode2:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a simple wrapper script that delegates execution to a sibling file named "opencode" in the same directory, passing all arguments through. No network requests, obfuscation, system modifications, or unexpected operations are present. The script performs a standard shell exec pattern and contains no evidence of malicious behavior or supply-chain tampering.
</details>
<evidence></evidence>
<summary>Simple wrapper script, no security issues.</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed opencode2. Status: SAFE -- Simple wrapper script, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a clean and standard Arch package definition. The downloaded binaries come from the official npm registry (`registry.npmjs.org`), which is the expected distribution channel for the `@opencode/cli` project. The critical supply-chain protection is provided by the **pinned sha256 checksums** for both architecture binary tarballs — this prevents a compromised or unexpected binary from being used to build the package. The `package()` function strictly installs files into the package directory (`$pkgdir`) and contains no dangerous commands (`curl`, `wget`, `eval`, `base64`), no obfuscated code, no exfiltration, and no tampering with system files. The `provides`/`conflicts` entries covering both `opencode` and `opencode2` are a minor packaging quirk to handle replacement of the stable package; this is unconventional but harmless AUR practice.
</details>
<evidence>
</evidence>
<summary>Clean PKGBUILD with pinned hashes, no malicious code.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Clean PKGBUILD with pinned hashes, no malicious code.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,510
  Completion Tokens: 8,626
  Total Tokens: 21,136
  Total Cost: $0.002708
  Execution Time: 65.93 seconds

Final Status: SAFE


No issues found.
