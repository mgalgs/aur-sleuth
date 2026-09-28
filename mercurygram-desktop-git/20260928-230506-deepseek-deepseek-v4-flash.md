---
package: mercurygram-desktop-git
pkgver: v7.2.10.1.beta.r0.gb2f6c20
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 16447
completion_tokens: 1647
total_tokens: 18094
cost: 0.00096454526
execution_time: 34.4
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-28T23:05:04Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: License file only; no executable or suspicious content found.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; no malicious content.
  - file: LICENSE
    status: safe
    summary: License-only text file with no executable or suspicious content.
  - file: REUSE.toml
    status: safe
    summary: Benign REUSE compliance configuration file.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no malicious content.
---

Materializing mercurygram-desktop-git from local mirror...
Materialized mercurygram-desktop-git
Analyzing mercurygram-desktop-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable definitions and function declarations at the top-level scope. There are no command substitutions, `eval`, `curl`, `wget`, or any other dangerous operations that would execute during `makepkg --printsrcinfo`. The `source` array defines two git repositories with SKIP checksums, which is normal for VCS packages and does not execute any code at parse time.
</details>
<evidence></evidence>
<summary>No dangerous top-level code; safe to parse.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code; safe to parse.
Reviewing the 5 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, LICENSE...
[0/5] Reviewing .SRCINFO, LICENSE, LICENSE...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard MIT/ISC-style license text, specifically the license commonly used by Arch Linux packaging scripts and PKGBUILD templates. It contains no executable code, no network operations, no file system modifications, and no obfuscated content. It is purely a legal notice granting permission to use, copy, modify, and distribute the software. There is no evidence of malicious or dangerous behavior.
</details>
<evidence></evidence>
<summary>License file only; no executable or suspicious content found.</summary>
</security_assessment>

[1/5] Reviewing .SRCINFO, LICENSE...
+ Reviewed LICENSE. Status: SAFE -- License file only; no executable or suspicious content found.
[1/5] Reviewing .SRCINFO, LICENSE, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file is a standard AUR metadata file describing a VCS (git) package. It declares the package name, version, dependencies, and two git source URLs pointing to the official Mercurygram Desktop repository and TDLib. The `sha512sums` are `SKIP`, which is normal and expected for VCS sources in Arch Linux packaging. There is no download from unexpected hosts, no obfuscated code, no system modifications, and no execution of arbitrary commands. The file contains only declarative metadata and poses no supply-chain risk.
</details>
<evidence></evidence>
<summary>Standard AUR metadata; no malicious content.</summary>
</security_assessment>

[1/5] Reviewing .SRCINFO, LICENSE, PKGBUILD, REUSE.toml...
[2/5] Reviewing LICENSE, PKGBUILD, REUSE.toml...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; no malicious content.
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is the ISC license text, attributed to "Arch Linux Contributors." It contains only standard license legalese granting permission to use, copy, modify, and distribute the software, along with a disclaimer of warranties. There is no code, no network requests, no file operations, no obfuscation, and no system modification of any kind. The content is entirely benign and typical of a license file included in a package. There is nothing here that constitutes malicious or dangerous behavior.
</details>
<evidence>
</evidence>
<summary>
License-only text file with no executable or suspicious content.</summary>
</security_assessment>

[3/5] Reviewing PKGBUILD, REUSE.toml...
+ Reviewed LICENSE. Status: SAFE -- License-only text file with no executable or suspicious content.
LLM auditresponse for REUSE.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `REUSE.toml` is a standard configuration file for the REUSE software compliance specification. It defines default copyright and license annotations for certain file patterns within the package. There is no executable code, no network requests, no obfuscation, and no instructions that could lead to a supply-chain attack. It simply declares metadata. This file poses no security risk.
</details>
<evidence>
</evidence>
<summary>Benign REUSE compliance configuration file.</summary>
</security_assessment>

[4/5] Reviewing PKGBUILD...
+ Reviewed REUSE.toml. Status: SAFE -- Benign REUSE compliance configuration file.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD for mercurygram-desktop-git follows standard Arch packaging practices for a VCS package. It clones two legitimate upstream repositories (Mercurygram/mdesktop and tdlib/td) from github.com, uses standard cmake build steps, and installs via `DESTDIR`/cmake. Checksums are SKIP, which is required for VCS sources and is not a security concern. There are no obfuscated commands, suspicious network requests, or operations outside the normal build-and-install workflow. The `git submodule update --init --recursive --depth=1` is standard for projects with submodules. No evidence of supply chain compromise or malicious intent was found.
</details>
<evidence>
</evidence>
<summary>Standard AUR PKGBUILD with no malicious content.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 16,447
  Completion Tokens: 1,647
  Total Tokens: 18,094
  Total Cost: $0.000965
  Execution Time: 34.40 seconds

Final Status: SAFE


No issues found.
