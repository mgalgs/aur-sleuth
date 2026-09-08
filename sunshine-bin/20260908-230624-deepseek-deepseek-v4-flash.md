---
package: sunshine-bin
pkgver: 2026.906.222525
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 15072
completion_tokens: 2223
total_tokens: 17295
cost: 0.00160945428
execution_time: 140.4
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-08T23:06:24Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard package metadata with no security concerns.
  - file: Makefile
    status: safe
    summary: Standard AUR packaging Makefile, no security issues.
  - file: HELP.md
    status: safe
    summary: Documentation file with routine packaging instructions.
  - file: sunshine.install
    status: safe
    summary: Standard post-install setup for game streaming capabilities.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with verified upstream binary download.
---

Materializing sunshine-bin from local mirror...
Materialized sunshine-bin
Analyzing sunshine-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only static variable definitions (pkgname, pkgver, source, depends, etc.) and no top-level command substitutions, function calls, or any code that would execute when sourced. All dangerous operations (if any) are inside commented-out or function bodies (prepare, package) which are not run by `makepkg --printsrcinfo`. Therefore, sourcing this PKGBUILD is safe.
</details>
<evidence></evidence>
<summary>No dangerous top-level code; safe to parse.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code; safe to parse.
Reviewing the 5 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, HELP.md...
[0/5] Reviewing .SRCINFO, HELP.md, Makefile...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file contains only standard package metadata: package name, version, description, dependencies, and a single source tarball from the official GitHub releases page of the project (LizardByte/Sunshine). The source is accompanied by a b2sum checksum, which is good practice for integrity verification. No suspicious network requests, obfuscated code, dangerous commands, or unexpected file operations are present. The file is purely declarative metadata and poses no supply-chain risk.
</details>
<evidence></evidence>
<summary>Standard package metadata with no security concerns.</summary>
</security_assessment>

[0/5] Reviewing .SRCINFO, HELP.md, Makefile, PKGBUILD...
[1/5] Reviewing HELP.md, Makefile, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard package metadata with no security concerns.
LLM auditresponse for Makefile:
<security_assessment>
<decision>SAFE</decision>
<details>
This Makefile contains standard build and packaging automation targets for an AUR package. All commands are normal makepkg operations (building, installing, cleaning, generating .SRCINFO, computing checksums). There are no network requests, encoded/obfuscated commands, file exfiltration, or unexpected system modifications. The file is consistent with routine AUR maintainer helper scripts.
</details>
<evidence></evidence>
<summary>Standard AUR packaging Makefile, no security issues.</summary>
</security_assessment>

[1/5] Reviewing HELP.md, Makefile, PKGBUILD, sunshine.install...
[2/5] Reviewing HELP.md, PKGBUILD, sunshine.install...
+ Reviewed Makefile. Status: SAFE -- Standard AUR packaging Makefile, no security issues.
LLM auditresponse for HELP.md:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is documentation for maintainers, containing markdown notes on how to bump the package version and set up a Docker environment for testing. There are no executable statements or scripts that run automatically during package build or installation. All shell commands are provided for the user to manually type. No suspicious network requests, obfuscated code, or system modifications are present. The content is standard packaging workflow guidance.
</details>
<evidence>
</evidence>
<summary>Documentation file with routine packaging instructions.</summary>
</security_assessment>

[3/5] Reviewing PKGBUILD, sunshine.install...
+ Reviewed HELP.md. Status: SAFE -- Documentation file with routine packaging instructions.
LLM auditresponse for sunshine.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The `sunshine.install` file is a standard Arch Linux package installation scriptlet for the sunshine-bin package. It performs two legitimate post-install/post-upgrade actions: setting POSIX capabilities (`cap_sys_admin, cap_sys_nice+p`) on the sunshine binary using `setcap`, and reloading udev rules/triggering events for uinput, uhid, hidraw, and input subsystems along with loading the `uinput` and `uhid` kernel modules via `modprobe`. These actions are typical for game streaming or remote desktop applications that require elevated capabilities for hardware access and performance tuning (e.g., low-latency input emulation). There is no evidence of malicious behavior such as obfuscated code, network requests, data exfiltration, or tampering with unrelated system files. The script only acts within the expected scope of the application's setup.
</details>
<evidence></evidence>
<summary>Standard post-install setup for game streaming capabilities.</summary>
</security_assessment>

[4/5] Reviewing PKGBUILD...
+ Reviewed sunshine.install. Status: SAFE -- Standard post-install setup for game streaming capabilities.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard AUR packaging script for a pre-built binary. It downloads the package from the official GitHub releases page of the project (LizardByte/Sunshine) with a verified BLAKE2 checksum. The only operations in `package()` are installing the executable and copying library and share directories into the package directory. There are no network requests, no command execution from untrusted sources, no obfuscated code, and no unusual system modifications. The commented-out `prepare()` block uses `patchelf` for library dependency resolution, which is a normal packaging practice and is not executed. No evidence of supply-chain attack or malicious behavior is present in this file.
</details>
<evidence>
</evidence>
<summary>Standard PKGBUILD with verified upstream binary download.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with verified upstream binary download.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 15,072
  Completion Tokens: 2,223
  Total Tokens: 17,295
  Total Cost: $0.001609
  Execution Time: 140.40 seconds

Final Status: SAFE


No issues found.
