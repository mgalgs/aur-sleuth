---
package: bedrock-on-linux-bin
pkgver: 2.2.8
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 8917
completion_tokens: 1633
total_tokens: 10550
cost: 0.0022899808
execution_time: 51.34
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-04T19:02:48Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no security concerns.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR binary package with verified source.
---

Materializing bedrock-on-linux-bin from local mirror...
Materialized bedrock-on-linux-bin
Analyzing bedrock-on-linux-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources the PKGBUILD and only executes top-level code. The top-level of this PKGBUILD contains only normal variable assignments, dependency declarations, a `source` array pointing to the project's own GitHub releases URL, a fixed SHA-256 checksum, and a `noextract` array. No command substitutions, external network commands, encoded payloads, or other executable side effects exist at global scope.

The `prepare()` and `package()` functions contain file operations and `chmod`/`install`/`sed` logic, but those functions are not executed by `makepkg --printsrcinfo`. No evidence of malicious code that would run during the parse/source step was found.
</details>
<evidence></evidence>
<summary>No top-level malicious code; only normal PKGBUILD metadata and function definitions.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level malicious code; only normal PKGBUILD metadata and function definitions.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard .SRCINFO metadata file for an AUR binary package. It declares the package name, version, dependencies, and a single source (an AppImage) downloaded from the project's own GitHub releases page. The checksum is pinned to a specific SHA-256 hash, ensuring integrity. There is no executable code, no obfuscated commands, no network requests outside the package's own upstream repository, and no evidence of malicious intent. The file is purely declarative and follows normal packaging practices.
</details>
<evidence></evidence>
<summary>Standard AUR metadata, no security concerns.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no security concerns.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard binary package for the BedrockOnLinux project. It downloads a pinned AppImage from the project's official GitHub releases (sha256sum verified), extracts it via `--appimage-extract`, and installs binaries, desktop files, and icons into the package directory. No suspicious network requests, obfuscated code, dangerous command injections, or unexpected system modifications are present. All operations are limited to the package's own installation paths and standard packaging tasks.
</details>
<evidence></evidence>
<summary>Standard AUR binary package with verified source.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR binary package with verified source.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 8,917
  Completion Tokens: 1,633
  Total Tokens: 10,550
  Total Cost: $0.002290
  Execution Time: 51.34 seconds

Final Status: SAFE


No issues found.
