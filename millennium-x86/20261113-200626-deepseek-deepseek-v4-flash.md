---
package: millennium-x86
pkgbase: millennium
pkgver: 3.6.3
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 14138
completion_tokens: 4240
total_tokens: 18378
cost: 0.00203562
execution_time: 29.59
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-13T20:06:26Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: No malicious code; pinned source; standard build process.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no malicious content found.
  - file: millennium-x86.install
    status: safe
    summary: Standard package install script, no malicious behavior.
  - file: millennium.install
    status: safe
    summary: Standard AUR install script for a Steam add-on; no malicious behavior.
---

millennium-x86 is built from millennium
Materializing millennium-x86 from local mirror...
Materialized millennium-x86
Analyzing millennium-x86 AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard top-level variable assignments (package metadata, source, checksums). There are no command substitutions, backticks, eval, or any executable code in the global scope that would run when the file is sourced. The `install` variable refers to a separate file, but that is not executed at this stage. No suspicious network requests or dangerous operations are triggered by sourcing this PKGBUILD. The `build()` and `package_*()` functions contain build logic, but those are not executed by `makepkg --printsrcinfo`.</details>
<evidence></evidence>
<summary>Top-level scope has no executable code; safe to source.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level scope has no executable code; safe to source.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, PKGBUILD...
[0/4] Reviewing .SRCINFO, PKGBUILD, millennium-x86.install...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD builds the Millennium modding framework for Steam from source. The source is a git repository pinned to a specific commit (`ac5e1ad646b1d1dd76a04aecf32d9e5e41779201`), which provides a fixed, auditable reference. Checksums are set to `SKIP`, which is standard and required for VCS sources — not a security concern. The build process uses cmake presets and installs only the required shared libraries into the package directory. There are no suspicious network requests, obfuscated commands, or unexpected file operations. The separate install scripts (`millennium.install`, `millennium-x86.install`) are not provided here, but their mere existence is normal for AUR packages. No evidence of malicious supply-chain injection is present.
</details>
<evidence></evidence>
<summary>No malicious code; pinned source; standard build process.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, PKGBUILD, millennium-x86.install, millennium.install...
[1/4] Reviewing .SRCINFO, millennium-x86.install, millennium.install...
+ Reviewed PKGBUILD. Status: SAFE -- No malicious code; pinned source; standard build process.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a metadata file describing the package, its dependencies, sources, and splits. It contains no executable code, no obfuscated commands, no network requests beyond the declared upstream source (pinned to a specific commit on GitHub), and no suspicious file operations. The only potential concern is the use of `sha256sums = SKIP`, which is standard practice for VCS sources (git+https) and is explicitly not considered malicious per the assessment guidelines. The file does not exhibit any red flags such as exfiltration, backdoors, or unexpected system modifications.  
</details>
<evidence></evidence>
<summary>Standard AUR metadata file, no malicious content found.</summary>
</security_assessment>

[2/4] Reviewing millennium-x86.install, millennium.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no malicious content found.
LLM auditresponse for millennium-x86.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Arch Linux `.install` script for the `millennium-x86` package. It performs expected post-installation and removal tasks: for each user with a Steam directory under `~/.local/share/Steam`, it creates or removes a symlink from Steam's `ubuntu12_32/libXtst.so.6` to `/usr/lib/millennium/libmillennium_bootstrap_x86.so`. This is a common pattern for Steam compatibility layers that inject a custom library into Steam's runtime environment.  

There is no obfuscation, no network activity, no execution of fetched code, and no exfiltration of data. The script only modifies files within the Steam directory and links to a file owned by the package itself. The iteration over system users is necessary to cover all existing Steam installations. This behavior is consistent with the package's stated purpose and does not exhibit signs of a supply‑chain attack.
</details>
<evidence></evidence>
<summary>Standard package install script, no malicious behavior.</summary>
</security_assessment>

[3/4] Reviewing millennium.install...
+ Reviewed millennium-x86.install. Status: SAFE -- Standard package install script, no malicious behavior.
LLM auditresponse for millennium.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `millennium.install` is a standard post-installation script for an AUR package that configures the Millennium Steam add-on. It performs expected setup operations: removing deprecated modifications to `/usr/bin/steam`, iterating over local Steam users, and creating symlinks in each user's Steam directory to load the Millennium libraries. These operations are consistent with the stated purpose of the package and do not involve network requests, obfuscation, or execution of untrusted code. The use of `runuser` to manipulate user directories and the modification of `/usr/bin/steam` to clean up legacy patches are part of normal packaging practices for this type of software. No evidence of supply-chain attack (e.g., exfiltration, backdoors, secret downloads) was found.
</details>
<evidence></evidence>
<summary>Standard AUR install script for a Steam add-on; no malicious behavior.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed millennium.install. Status: SAFE -- Standard AUR install script for a Steam add-on; no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 14,138
  Completion Tokens: 4,240
  Total Tokens: 18,378
  Total Cost: $0.002036
  Execution Time: 29.59 seconds

Final Status: SAFE


No issues found.
