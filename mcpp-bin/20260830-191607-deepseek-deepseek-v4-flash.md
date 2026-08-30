---
package: mcpp-bin
pkgver: 2026.8.30.2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 10814
completion_tokens: 2026
total_tokens: 12840
cost: 0.00116965688
execution_time: 177.07
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: ok
upstream_files: 7
upstream_named_files: 2
unpinned_sources: 0
date: 2026-08-30T19:16:06Z
file_verdicts:
  - file: mcpp.sh
    status: safe
    summary: Standard wrapper, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no malicious code detected.
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO, no malicious indicators.
---

Cloning https://aur.archlinux.org/mcpp-bin.git...
Cloned mcpp-bin
Analyzing mcpp-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only static variable assignments and source array definitions in its global scope. There is no `pkgver()` function and no command substitutions, function calls, or other code execution in the top-level scope. The source URLs point to the official GitHub releases of `mcpp-community/mcpp` and a local file `mcpp.sh` (part of the AUR package). Both arch-specific tarballs have valid SHA256 checksums (not SKIP). No obfuscated code, unexpected network requests, or dangerous shell constructs are present. All code that could modify the system (in `package()`) is guarded by the `--nobuild` flag and will not execute during the requested commands. Therefore, running `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo` is safe.
</details>
<evidence></evidence>
<summary>No dangerous top-level code; sources are official.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code; sources are official.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: the PKGBUILD names 2 file(s) in the downloaded sources (src/mcpp-2026.8.30.2-linux-x86_64/bin/mcpp, src/mcpp-2026.8.30.2-linux-x86_64/registry/bin/xlings); they are upstream content and were not reviewed.
Reviewing the 3 file(s) in the AUR repository. The 7 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, mcpp.sh...
LLM auditresponse for mcpp.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard launcher wrapper script for the mcpp application. It sets environment variables (`MCPP_HOME` and `MCPP_VENDORED_XLINGS`) to ensure the binary uses a per-user writable location for runtime data, while the application itself is installed under `/opt/mcpp`. The script respects pre-existing environment variables and then executes the real binary via `exec`. There are no network requests, obfuscated code, dangerous commands, or any operations that deviate from normal packaging practices. The script is clean and serves only to fix a path resolution issue for the application.
</details>
<evidence></evidence>
<summary>Standard wrapper, no security issues.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed mcpp.sh. Status: SAFE -- Standard wrapper, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a prebuilt binary release. It downloads the upstream release tarballs from the official GitHub repository, with pinned SHA-256 checksums per architecture. The `source` array includes a local script `mcpp.sh` (not provided in the excerpt, but its purpose is described as a per-user launcher). There are no suspicious network requests, obfuscated commands, or unexpected file operations. The only external dependency is `git`, which is documented as required for the tool&#x27;s package-index sync functionality. The `SKIP` checksum for the shared source is typical when a local file is used; the important tarball checksums are verified. No supply-chain attack indicators are present.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with no malicious code detected.</summary>
</security_assessment>

[2/3] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no malicious code detected.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.SRCINFO` metadata file for the AUR package `mcpp-bin`. It defines the package name, version, dependencies, and source URLs. All binary tarballs are downloaded from the project's official GitHub releases (`https://github.com/mcpp-community/mcpp/releases/...`) with valid SHA-256 checksums provided. The `sha256sums = SKIP` for `mcpp.sh` is a common practice for helper scripts and is not inherently malicious. There are no obfuscated commands, suspicious network requests, or any execution logic present—the file only contains declarative metadata. No evidence of a supply-chain attack or malicious behavior was found.
</details>
<evidence>
</evidence>
<summary>Standard .SRCINFO, no malicious indicators.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO, no malicious indicators.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,814
  Completion Tokens: 2,026
  Total Tokens: 12,840
  Total Cost: $0.001170
  Execution Time: 177.07 seconds

Final Status: SAFE


No issues found.
