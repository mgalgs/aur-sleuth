---
package: rocm-gfx110x-bin
pkgver: 10.0.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: f47e5ed5e9b50f484d29402229454e7d1b1d7cdb
prompt_tokens: 16133
completion_tokens: 1702
total_tokens: 17835
cost: 0.00152349526
execution_time: 260.77
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
upstream_files: 26212
upstream_named_files: 1
unpinned_sources: 0
date: 2026-08-27T19:31:01Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: Standard license file, no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Clean metadata file; no malicious code detected.
  - file: PKGBUILD
    status: safe
    summary: Standard ROCm binary package with no malicious behavior.
---

Cloning https://aur.archlinux.org/rocm-gfx110x-bin.git...
Cloned rocm-gfx110x-bin
Analyzing rocm-gfx110x-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo` is safe for this PKGBUILD. The global/top-level scope contains only static variable assignments (`pkgname`, `pkgver`, `source`, `sha256sums`, etc.) with no command substitutions, eval, curl/wget, or other executable logic. There is no `pkgver()` function that could execute code during sourcing. The only source is a tarball downloaded from `https://stable.repo.amd.com/rocm/core/tarball/...`, which is the package's declared upstream host; fetching and extracting this archive is exactly what the audited commands are intended to do, and extraction does not execute the contents. `prepare()` and `package()` contain file operations, but those functions are not executed with `--nobuild --noprepare`, so they are out of scope for this narrow gate and will be reviewed in the full PKGBUILD audit.
</details>
<evidence>
</evidence>
<summary>
Safe: source fetch and PKGBUILD sourcing execute no malicious code.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe: source fetch and PKGBUILD sourcing execute no malicious code.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: the PKGBUILD names 1 file(s) in the downloaded sources (src/etc/OpenCL/vendors/amdocl64.icd); they are upstream content and were not reviewed.
Reviewing the 3 file(s) in the AUR repository. The 26212 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, LICENSE...
[0/3] Reviewing .SRCINFO, LICENSE, PKGBUILD...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a plain-text license file (ISC-style permissive license). It contains no executable code, no instructions, no network operations, file operations, or any other potentially dangerous content. It is a standard software license document and poses no security risk.</details>
<evidence></evidence>
<summary>Standard license file, no security concerns.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed LICENSE. Status: SAFE -- Standard license file, no security concerns.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a metadata description for the `rocm-gfx110x-bin` AUR package. It defines package name, version, dependencies, conflicts, provides, and source information. The source URL points to an official AMD repository (`stable.repo.amd.com`) over HTTPS, and a SHA-256 checksum is provided (not SKIP). There are no executable instructions, no obfuscated content, no network requests beyond the declared source download, and no signs of exfiltration, backdoors, or unexpected system modifications. The file adheres to standard AUR packaging practices and contains no malicious code.
</details>
<evidence></evidence>
<summary>Clean metadata file; no malicious code detected.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Clean metadata file; no malicious code detected.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD packages the official AMD ROCm binary distribution for RDNA3 GPUs. The source is downloaded via HTTPS from `stable.repo.amd.com`, AMD's own repository, and the SHA-256 checksum is pinned. The `prepare()` and `package()` functions only perform standard operations: extracting the tarball, creating symlinks to system library identification files, placing an OpenCL ICD registration, adding a library path to ld.so.conf, and setting environment variables in `/etc/profile.d`. No obfuscated code, network requests beyond the declared source, or dangerous commands (eval, base64, curl, wget) are present. The operations are routine for a binary GPU driver package and do not exhibit any supply-chain attack indicators.
</details>
<evidence></evidence>
<summary>Standard ROCm binary package with no malicious behavior.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard ROCm binary package with no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 16,133
  Completion Tokens: 1,702
  Total Tokens: 17,835
  Total Cost: $0.001523
  Execution Time: 260.77 seconds

Final Status: SAFE


No issues found.
