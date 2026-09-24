---
package: opencode-beta
pkgver: 2.0.16
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 12123
completion_tokens: 1674
total_tokens: 13797
cost: 0.001370823426
execution_time: 27.5
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-24T07:08:07Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: Standard license file with no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file; no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard binary PKGBUILD with pinned npm tarball checksums, no malicious behavior observed.
  - file: opencode2
    status: safe
    summary: Benign wrapper script – no security issues.
---

Materializing opencode-beta from local mirror...
Materialized opencode-beta
Analyzing opencode-beta AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable definitions, source arrays, and checksum declarations at the top level. No command substitutions, `eval`, `curl`, `wget`, or other executable statements appear outside of function definitions. The `package()` function is defined but not invoked during `makepkg --printsrcinfo`. Therefore, sourcing this PKGBUILD poses no risk of executing malicious code.
</details>
<evidence></evidence>
<summary>No top-level malicious code; safe to source.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level malicious code; safe to source.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, LICENSE...
[0/4] Reviewing .SRCINFO, LICENSE, PKGBUILD...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard MIT License text. It contains no executable code, no commands, no network requests, no obfuscated content, and no system modifications. It is a routine legal document included in software packages.
</details>
<evidence>
</evidence>
<summary>Standard license file with no security concerns.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, LICENSE, PKGBUILD, opencode2...
[1/4] Reviewing .SRCINFO, PKGBUILD, opencode2...
+ Reviewed LICENSE. Status: SAFE -- Standard license file with no security concerns.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file is a standard metadata file for an AUR package. It declares package metadata, dependencies, and source URLs pointing to the official npm registry (`registry.npmjs.org`). All source files include SHA-256 checksums (no `SKIP` entries). No obfuscation, encoded commands, or suspicious behavior is present. The file is purely declarative and does not execute any code. It follows normal packaging practices for a prebuilt binary package from a legitimate upstream.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file; no security issues.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, opencode2...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file; no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a straightforward binary package for the Arch User Repository. It downloads prebuilt CLI packages from the official npm registry (registry.npmjs.org), with pinned SHA256 checksums for both x86_64 and aarch64 architecture tarballs. The package() function only installs the downloaded binary, a local opencode2 file, and the LICENSE file into the package directory. There is no use of eval, obfuscated commands, unexpected network requests, or modification of system files outside the package directory. The dependencies (glibc, gcc-libs, ripgrep) are standard for an AI coding tool.

The source array includes local files (LICENSE and opencode2) that are not shown here, but nothing in the PKGBUILD indicates malicious behavior. All actions are consistent with normal AUR packaging practice.
</details>
<evidence>
</evidence>
<summary>
Standard binary PKGBUILD with pinned npm tarball checksums, no malicious behavior observed.
</summary>
</security_assessment>

[3/4] Reviewing opencode2...
+ Reviewed PKGBUILD. Status: SAFE -- Standard binary PKGBUILD with pinned npm tarball checksums, no malicious behavior observed.
LLM auditresponse for opencode2:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a simple shell wrapper script that executes another script named &quot;opencode&quot; located in the same directory, passing along all command-line arguments. It contains no network requests, obfuscated code, suspicious file operations, or any deviation from standard packaging practices. The script's sole purpose is to delegate to the real executable, which is a common and benign pattern in AUR packages.
</details>
<evidence></evidence>
<summary>Benign wrapper script – no security issues.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed opencode2. Status: SAFE -- Benign wrapper script – no security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,123
  Completion Tokens: 1,674
  Total Tokens: 13,797
  Total Cost: $0.001371
  Execution Time: 27.50 seconds

Final Status: SAFE


No issues found.
