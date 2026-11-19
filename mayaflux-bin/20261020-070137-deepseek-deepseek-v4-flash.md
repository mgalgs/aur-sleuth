---
package: mayaflux-bin
pkgver: 0.5.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 12855
completion_tokens: 1942
total_tokens: 14797
cost: 0.001523249
execution_time: 35.77
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-20T07:01:36Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file with pinned upstream source and checksum; no malicious behavior found.
  - file: mayaflux-bin.install
    status: safe
    summary: Standard package install script; creates and removes a system group, prints messages. No malicious behavior.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR prebuilt package; pinned checksum, official source, no malicious behavior.
---

Materializing mayaflux-bin from local mirror...
Materialized mayaflux-bin
Analyzing mayaflux-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable definitions and a `package()` function definition in its global scope. No command substitutions, backtick executions, `eval` calls, or other code that would execute during `makepkg --printsrcinfo` sourcing. All assignments are simple strings or arrays. The `package()` function definition is not invoked during this step. There is no exfiltration, downloading, or execution of untrusted content at the top level. Running `makepkg --printsrcinfo` on this PKGBUILD poses no danger.
</details>
<evidence></evidence>
<summary>No dangerous top-level code; sourcing is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code; sourcing is safe.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, mayaflux-bin.install...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO describes a prebuilt binary AUR package for MayaFlux version 0.5.0. It declares a single source tarball from the project's own GitHub releases URL, with a pinned version (v0.5.0) and a specific SHA-256 checksum rather than SKIP. The dependencies and optdepends are appropriate for a graphics/audio framework using Vulkan, LLVM, Wayland, FFmpeg, and related libraries. The `noextract` entry is a normal packaging choice for prebuilt tarballs that are handled during install. No network requests to unexpected hosts, no code execution, no obfuscation, no data exfiltration, and no suspicious file operations are present. The file is consistent with standard AUR packaging practice.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata file with pinned upstream source and checksum; no malicious behavior found.</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, mayaflux-bin.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file with pinned upstream source and checksum; no malicious behavior found.
LLM auditresponse for mayaflux-bin.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Arch Linux package install script. It creates a system group (`mayaflux`), prints informational messages about enabling real-time scheduling, and removes the group on package removal. These operations are consistent with the package's stated purpose and do not involve downloading or executing external code, exfiltrating data, modifying unrelated system files, or any obfuscated behavior. The `groupadd` and `groupdel` commands are normal for packages that need a dedicated system group. No malicious or suspicious activity is present.
</details>
<evidence>
</evidence>
<summary>
Standard package install script; creates and removes a system group, prints messages. No malicious behavior.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed mayaflux-bin.install. Status: SAFE -- Standard package install script; creates and removes a system group, prints messages. No malicious behavior.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a prebuilt binary package. It downloads a release tarball from the project's official GitHub releases URL with a pinned version and a specific SHA-256 checksum. The package() function extracts the tarball and copies libraries, headers, binaries, and data files into $pkgdir, installs license/readme files, and creates shell environment and PAM limits configuration files to support the application. All file operations are confined to the package staging directory or the package's own configuration paths.

The custom DLAGENTS entries using aria2c are an unusual but non-malicious packaging choice for faster downloads; they do not fetch or execute any unrelated code. The environment and limits configuration files are normal application-support settings (MAYAFLUX_ROOT and real-time audio/graphics resource limits), not system tampering. No network requests outside the declared upstream source, no obfuscated code, no eval, no encoding tricks, and no execution of downloaded scripts are present.
</details>
<evidence>
</evidence>
<summary>
Standard AUR prebuilt package; pinned checksum, official source, no malicious behavior.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR prebuilt package; pinned checksum, official source, no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,855
  Completion Tokens: 1,942
  Total Tokens: 14,797
  Total Cost: $0.001523
  Execution Time: 35.77 seconds

Final Status: SAFE


No issues found.
