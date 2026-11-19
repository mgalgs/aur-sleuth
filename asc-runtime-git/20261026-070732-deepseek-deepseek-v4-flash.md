---
package: asc-runtime-git
pkgver: 9.2.0.r3025.0d259c501b
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 17100
completion_tokens: 2468
total_tokens: 19568
cost: 0.002005276
execution_time: 126.56
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-26T07:07:31Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard AUR package, no malicious content.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no malicious content found.
---

Materializing asc-runtime-git from local mirror...
Materialized asc-runtime-git
Analyzing asc-runtime-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` only sources the PKGBUILD's top-level scope and does not execute `pkgver()`, `prepare()`, `build()`, or `package()`. The top-level content of this PKGBUILD consists solely of variable and array assignments: `pkgname`, `pkgver`, `arch`, `depends`, `source`, `sha256sums`, and helper variables such as `_repo`, `_3rd`, and `_3rd_srcs`. There are no top-level command substitutions, no `eval`, `base64`, `curl | bash`, or other code that would download or execute anything while the file is sourced.

The functions that contain more active behavior (invoking upstream `build.sh`, extracting `.run` payloads, installing profile scripts, creating symlinks) are out of scope for this gate and will be reviewed in the full audit. The `source` array references upstream and third-party URLs, but `makepkg --printsrcinfo` does not download or verify those sources. SKIP checksums are likewise irrelevant at this step and are not grounds for concern here.
</details>
<evidence>
</evidence>
<summary>
Top-level scope only defines variables and arrays; no code executes during printsrcinfo.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level scope only defines variables and arrays; no code executes during printsrcinfo.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a VCS (git) package. Sources are fetched from the project&#x27;s own upstream repositories (atomgit.com, gitcode.com) and from the designated third-party archive server (cann-3rd.obs.cn-north-4.myhuaweicloud.com) with SHA256 checksums provided for the tarballs. The build runs the upstream build script with flags appropriate for the package, and the install step extracts the built .run file and deploys files into the correct location under /opt/ascend. The shell integration scripts are generated inline and solely set environment variables for the CANN toolchain. No obfuscated code, suspicious network destinations, data exfiltration, or backdoor-like behavior is present. The use of SKIP for git source checksums and the mutable branch ref are normal for a -git package and are not evidence of malice.
</details>
<evidence></evidence>
<summary>Standard AUR package, no malicious content.</summary>
</security_assessment>

[1/2] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR package, no malicious content.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a standard metadata declaration for an AUR package. It defines the package name, version, dependencies, sources, and checksums. All sources point to the project&#39;s own upstream repository (atomgit.com) or to official third-party dependency mirrors hosted by Huawei (cann-3rd.obs.cn-north-4.myhuaweicloud.com) and associated patch sites (gitcode.com). Checksums are provided for all tarball sources; the VCS source uses `SKIP` as is normal for `-git` packages. There are no dangerous commands, obfuscated code, unexpected network destinations, or instructions that would execute untrusted content. The file is entirely declarative and follows standard AUR packaging practices.
</details>
<evidence></evidence>
<summary>Standard AUR metadata, no malicious content found.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no malicious content found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 17,100
  Completion Tokens: 2,468
  Total Tokens: 19,568
  Total Cost: $0.002005
  Execution Time: 126.56 seconds

Final Status: SAFE


No issues found.
