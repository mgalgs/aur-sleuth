---
package: pdfcraft
pkgver: 0.21.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 10055
completion_tokens: 1474
total_tokens: 11529
cost: 0.00117027
execution_time: 22.19
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-12T12:14:42Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR .SRCINFO file; no security issues.
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config for version tracking, no issues.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no malicious indicators.
---

Materializing pdfcraft from local mirror...
Cloning https://aur.archlinux.org/pdfcraft.git...
Cloned pdfcraft
Analyzing pdfcraft AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global scope contains only variable assignments (pkgname, pkgver, url, etc.) and function definitions (_srcenv, prepare, build, package). No command substitutions, external calls, or network operations are executed at top-level. All potentially dangerous code resides inside functions that are not run during `makepkg --printsrcinfo`. Therefore, sourcing this PKGBUILD poses no immediate security risk.
</details>
<evidence></evidence>
<summary>Safe: no malicious global code executed.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe: no malicious global code executed.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, .nvchecker.toml...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a standard metadata file for Arch Linux AUR packages. It declares package information (name, description, version, URL, license, dependencies) and the source tarball from the upstream GitHub repository, along with a SHA-256 checksum. There is no embedded code, no network requests beyond declaring the source URL, no obfuscation, and no unexpected or dangerous operations. The file follows normal AUR packaging conventions.
</details>
<evidence></evidence>
<summary>Standard AUR .SRCINFO file; no security issues.</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, .nvchecker.toml...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR .SRCINFO file; no security issues.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard nvchecker configuration file used to monitor upstream releases of the pdfcraft package. It specifies a Git source from the official GitHub repository (`storytold/pdfcraft`) and a version prefix `v`. There is no executable code, no network requests beyond the defined source URL, and no obfuscation or malicious intent. This is a routine packaging automation file.
</details>
<evidence></evidence>
<summary>Standard nvchecker config for version tracking, no issues.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config for version tracking, no issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD for pdfcraft follows standard Arch packaging practices. It downloads a tagged release tarball from the project's GitHub repository with a pinned checksum, builds using `cargo` (the project's declared build system), and installs binaries and assets into the package directory. There are no suspicious network requests, obfuscated code, unexpected file operations, or any commands that deviate from the expected workflow. The comment about unfrozen builds due to pinned Git deps is merely an explanatory note about upstream limitations, not malicious behavior. No evidence of a supply-chain attack or injected malicious code was found.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with no malicious indicators.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no malicious indicators.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,055
  Completion Tokens: 1,474
  Total Tokens: 11,529
  Total Cost: $0.001170
  Execution Time: 22.19 seconds

Final Status: SAFE


No issues found.
