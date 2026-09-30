---
package: zl-equalizer-vst3
pkgbase: zl-equalizer
pkgver: 1.3.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 9700
completion_tokens: 4913
total_tokens: 14613
cost: 0.000956774
execution_time: 160.11
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-18T19:30:29Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Legitimate plugin PKGBUILD using pinned upstream sources and standard cmake build.
---

zl-equalizer-vst3 is built from zl-equalizer
Materializing zl-equalizer-vst3 from local mirror...
Materialized zl-equalizer-vst3
Analyzing zl-equalizer-vst3 AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global scope contains only standard variable assignments and function definitions. No command substitutions, backticks, or immediate code execution occur at the top level. All potentially dangerous operations (git submodule manipulation, sed replacements, build commands) are confined to `prepare()`, `build()`, and `package_*()` functions, which are **not** executed during `makepkg --printsrcinfo`. Therefore, running this command is safe.
</details>
<evidence></evidence>
<summary>No dangerous top-level code execution.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code execution.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is standard AUR package metadata. It declares three git sources from the official ZL-Audio GitHub organization, each pinned to a specific tag or commit hash. Checksums (SHA-256) are provided and are not set to SKIP. No obfuscation, suspicious network requests, dangerous commands, or any deviation from normal packaging practices are present. The file contains only declarative metadata describing the package, its dependencies, and its sources.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata, no security issues.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no security issues.
LLM auditresponse for PKGBUILD:
 <security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows normal AUR packaging practices for a git-based audio plugin build. The sources are fetched from the project's official upstream GitHub repositories, with ZLEqualizer pinned to the release tag and JUCE/zldsp_fft pinned to specific commit tags. The `prepare()` function redirects the submodule URLs to the local copies in `${srcdir}` and then runs `git submodule update` on those local paths; the `protocol.file.allow=always` setting only permits Git's file protocol for these local submodule paths and does not download or execute anything from an unrelated host.

The `build()` function uses standard `cmake`/`make` commands and replaces bundled libraries with system libraries through `find_package`. The package functions install the resulting plugin files and license into the package directory, which is standard. There is no use of curl, wget, base64, eval, obfuscated commands, exfiltration of local data, backdoors, or unexpected file-system modifications. The PKGBUILD appears consistent with a legitimate source-based package.
</details>
<evidence></evidence>
<summary>
Legitimate plugin PKGBUILD using pinned upstream sources and standard cmake build.
</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Legitimate plugin PKGBUILD using pinned upstream sources and standard cmake build.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 9,700
  Completion Tokens: 4,913
  Total Tokens: 14,613
  Total Cost: $0.000957
  Execution Time: 160.11 seconds

Final Status: SAFE


No issues found.
