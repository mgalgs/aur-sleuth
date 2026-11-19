---
package: neoarch
pkgver: 3.6.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 10876
completion_tokens: 9060
total_tokens: 19936
cost: 0.002638636
execution_time: 41.59
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 1
injection_attempts: 0
date: 2026-11-02T12:08:06Z
file_verdicts:
  - file: neoarch.install
    status: safe
    summary: Routine post-install flatpak remote addition.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with no malicious indicators found.
  - file: .SRCINFO
    status: safe
    summary: Inert metadata file, no executable code, standard AUR practice.
---

Materializing neoarch from local mirror...
Materialized neoarch
Analyzing neoarch AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is safe to source for `makepkg --printsrcinfo`.

All top-level statements are standard variable and array assignments (pkgname, pkgver, depends, source, etc.) or a function definition (`package()`). There are no command substitutions, backtick executions, `eval` calls, `curl`/`wget` invocations, or network reads in the global scope.

The `source` array points to the project's own upstream tag, and its expansion via `$url` and `$pkgver` involves only local variable lookups, no dynamic code execution. The `sha256sums` being `SKIP` is irrelevant to the safety of sourcing, as no download or verification occurs during this step.

Although the `package()` function contains file operations, it is not executed by `--printsrcinfo`. No genuinely malicious behavior (exfiltration, backdoors, obfuscated commands) is present at the top level.
</details>
<evidence></evidence>
<summary>Standard top-level assignments; safe for parsing.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Standard top-level assignments; safe for parsing.
Note: 1 remote source(s) have no checksum (sha256sums=SKIP), so the bytes are not verifiable: https://github.com/sanjayadanushka712/Neoarch/archive/refs/tags/3.6.0.tar.gz
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, neoarch.install...
LLM auditresponse for neoarch.install:
<security_assessment>
<decision>SAFE</decision>
<details>The script optionally adds the Flathub remote for flatpak if flatpak is installed. This is a routine configuration task and does not constitute malicious behavior. It uses standard, non-obfuscated commands and does not exfiltrate data or download/execute code from untrusted sources.</details>
<evidence></evidence>
<summary>Routine post-install flatpak remote addition.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed neoarch.install. Status: SAFE -- Routine post-install flatpak remote addition.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD defines a standard Arch package for the NeoArch package manager. The source is fetched from a pinned GitHub tag URL, which is expected. No network requests or code downloads occur during the build or packaging phases beyond the declared source tarball. The `sha256sums` is set to `SKIP`, which (though a hygiene concern) is explicitly allowed and not indicative of malice per the audit guidelines. All file operations in `package()` are limited to copying the source tree into `/opt/neoarch`, adjusting a path reference with `sed`, creating symlinks, and installing desktop files and icons. No `eval`, `curl`, `wget`, `base64`, or obfuscated commands appear. The file contains no backdoors, data exfiltration, or unexpected remote interactions. The behavior is consistent with ordinary AUR packaging for a Python-based application.
</details>
<evidence>

</evidence>
<summary>Standard PKGBUILD with no malicious indicators found.</summary>
</security_assessment>

[2/3] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with no malicious indicators found.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file for the `neoarch` package is a standard AUR metadata file. It contains no executable code or logic. All declared dependencies (Python packages, git, npm) are routine for a package manager that features a discover/UI component. The source URL points to the project's own GitHub releases page, and the version is pinned to a specific tag (`3.6.0.tar.gz`). The `sha256sums = SKIP` is explicitly recognized by the audit guidelines as standard practice and is not evidence of malice. No suspicious network destinations, obfuscated values, or dangerous commands are present. The file purely describes the package and its upstream origin without performing any operations that could constitute a supply-chain attack.
</details>
<evidence></evidence>
<summary>Inert metadata file, no executable code, standard AUR practice.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Inert metadata file, no executable code, standard AUR practice.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,876
  Completion Tokens: 9,060
  Total Tokens: 19,936
  Total Cost: $0.002639
  Execution Time: 41.59 seconds

Final Status: SAFE


No issues found.
