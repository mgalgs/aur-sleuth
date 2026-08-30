---
package: mcpp-bin
pkgver: 2026.8.29.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 10826
completion_tokens: 2578
total_tokens: 13404
cost: 0.00133801304
execution_time: 41.59
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: ok
upstream_files: 7
upstream_named_files: 2
unpinned_sources: 0
date: 2026-08-29T11:03:10Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: No malicious code; standard PKGBUILD practices.
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO metadata from official upstream.
  - file: mcpp.sh
    status: safe
    summary: Standard wrapper script, no malicious behavior detected.
---

Cloning https://aur.archlinux.org/mcpp-bin.git...
Cloned mcpp-bin
Analyzing mcpp-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD defines standard variables (pkgname, pkgver, source, checksums) and a `package()` function. Running `makepkg --nobuild --nodeps --noprepare` will source the PKGBUILD (executing global scope) and download the sources from GitHub releases (standard HTTPS URLs). No malicious code is present in the global scope: no command substitutions, eval, or dangerous operations. The `pkgver()` function is absent. The `source` array points to the project's own GitHub releases and a local file; checksums are provided (SKIP for the shared script, sha256 for the binaries). The download and extraction processes are normal and do not execute untrusted payloads. The `prepare()`, `build()`, and `package()` functions are not executed during this gate, so any code there is out of scope. No evidence of injection, exfiltration, or backdoors.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with no malicious code in global scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Standard PKGBUILD with no malicious code in global scope.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: the PKGBUILD names 2 file(s) in the downloaded sources (src/mcpp-2026.8.29.1-linux-x86_64/bin/mcpp, src/mcpp-2026.8.29.1-linux-x86_64/registry/bin/xlings); they are upstream content and were not reviewed.
Reviewing the 3 file(s) in the AUR repository. The 7 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, mcpp.sh...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard Arch packaging practices for a prebuilt binary package. All external sources are downloaded from the project's official GitHub releases over HTTPS. The tarball checksums are provided for both architectures, ensuring integrity. The local script mcpp.sh (with a SKIP checksum) is a provided file within the AUR package itself, which is normal. The package() function only installs files into the standard directory structure. No suspicious commands, network requests, obfuscation, or unexpected system modifications are present. This appears to be a legitimate and trustworthy packaging file.
</details>
<evidence>
</evidence>
<summary>No malicious code; standard PKGBUILD practices.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, mcpp.sh...
+ Reviewed PKGBUILD. Status: SAFE -- No malicious code; standard PKGBUILD practices.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a metadata descriptor for the AUR package `mcpp-bin`. It declares the package name, version, license, dependencies, and source locations. The binary tarballs are fetched from the official GitHub releases of `mcpp-community/mcpp` over HTTPS, with SHA-256 checksums provided for integrity verification. The only SKIP checksum is for `mcpp.sh`, a script bundled in the AUR repository itself—a standard practice. There are no obfuscated commands, no calls to `curl`, `wget`, or `eval`, and no operations that modify the system outside normal packaging. The file is static configuration and does not execute any code. No evidence of a supply-chain attack or malicious intent is present.
</details>
<evidence></evidence>
<summary>Standard .SRCINFO metadata from official upstream.</summary>
</security_assessment>

[2/3] Reviewing mcpp.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO metadata from official upstream.
LLM auditresponse for mcpp.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a standard launcher wrapper for an AUR package installed to `/opt/mcpp`. It sets two environment variables (`MCPP_HOME` and `MCPP_VENDORED_XLINGS`) with sensible defaults that respect user-provided values, then executes the main binary. There are no network requests, obfuscated code, dangerous commands (eval, curl, wget, etc.), file system manipulation outside the package scope, or any other indicators of malicious behavior. The script is well-commented and follows common packaging patterns for AUR/bin packages that need per-user writable directories.
</details>
<evidence></evidence>
<summary>Standard wrapper script, no malicious behavior detected.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed mcpp.sh. Status: SAFE -- Standard wrapper script, no malicious behavior detected.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,826
  Completion Tokens: 2,578
  Total Tokens: 13,404
  Total Cost: $0.001338
  Execution Time: 41.59 seconds

Final Status: SAFE


No issues found.
