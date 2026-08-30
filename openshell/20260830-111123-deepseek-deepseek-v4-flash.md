---
package: openshell
pkgver: 0.0.116
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 11215
completion_tokens: 1670
total_tokens: 12885
cost: 0.0011614890
execution_time: 116.26
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: ok
upstream_files: 1517
upstream_named_files: 4
unpinned_sources: 0
date: 2026-08-30T11:11:23Z
file_verdicts:
  - file: openshell.install
    status: safe
    summary: Standard install script with only informational messages.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with no malicious indicators.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no security issues.
---

Cloning https://aur.archlinux.org/openshell.git...
Cloned openshell
Analyzing openshell AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains top-level variable assignments, arrays, and function definitions. During `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo`, the only code that executes is the top-level scope (variable definitions) and `pkgver()` (which is absent here). No dangerous command substitutions, network calls, or code execution occur at top level. The source array references an official GitHub release tarball from NVIDIA/OpenShell with a valid b2sum, so fetching and extracting is safe. `prepare()`, `build()`, and `package()` are defined but not run, so their content is out of scope for this gate.
</details>
<evidence></evidence>
<summary>Safe to fetch sources and source PKGBUILD.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe to fetch sources and source PKGBUILD.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: the PKGBUILD names 4 file(s) in the downloaded sources (src/OpenShell-0.0.116/deploy/deb/openshell-gateway.service, src/OpenShell-0.0.116/deploy/man/openshell-gateway.8.md, src/OpenShell-0.0.116/deploy/man/openshell.1.md and 1 more); they are upstream content and were not reviewed.
Reviewing the 3 file(s) in the AUR repository. The 1517 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, openshell.install...
LLM auditresponse for openshell.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard PKGBUILD install script with three hooks: post_install, post_upgrade, and post_remove. Each hook simply prints informational messages to the user (via `cat` with a quoted heredoc) about how to manage the OpenShell gateway service. There is no execution of commands, no network requests, no obfuscation, and no file manipulation beyond reading from the script itself. The messages suggest running `systemctl --user` commands, but those are only displayed to the user, not executed by the script. Nothing in this file deviates from normal packaging practices or shows any sign of malicious behavior.
</details>
<evidence></evidence>
<summary>Standard install script with only informational messages.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed openshell.install. Status: SAFE -- Standard install script with only informational messages.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices. The source is a pinned GitHub release tarball with a valid b2sum checksum, ensuring integrity. The build process uses `cargo fetch --locked` for reproducibility and `cargo build --frozen` to prevent unintended network access. Telemetry is explicitly disabled via `--no-default-features`. No suspicious commands (eval, curl, wget, base64) are present, and no system modifications beyond the package's own files occur. There is no evidence of data exfiltration, backdoors, or obfuscated code. The file is safe.
</details>
<evidence>
</evidence>
<summary>Standard PKGBUILD with no malicious indicators.</summary>
</security_assessment>

[2/3] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with no malicious indicators.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a standard AUR metadata file. It declares the package name, version, upstream URL (NVIDIA/OpenShell on GitHub), dependencies, and a source tarball with a valid BLAKE2 checksum. There is no executable code, no obfuscation, no unexpected network destinations, and no signs of a supply-chain attack. The content is entirely normal for an AUR package.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file, no security issues.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 11,215
  Completion Tokens: 1,670
  Total Tokens: 12,885
  Total Cost: $0.001161
  Execution Time: 116.26 seconds

Final Status: SAFE


No issues found.
