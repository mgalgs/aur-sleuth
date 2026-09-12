---
package: wivrn-dashboard
pkgbase: wivrn-server
pkgver: 26.9
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 12984
completion_tokens: 1234
total_tokens: 14218
cost: 0.00101457832
execution_time: 50.41
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-12T19:03:50Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Metadata-only AUR file with pinned upstream source and valid checksum.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD, no malicious behavior.
  - file: .gitignore
    status: safe
    summary: Standard AUR .gitignore, no security concerns.
---

wivrn-dashboard is built from wivrn-server
Materializing wivrn-dashboard from local mirror...
Materialized wivrn-dashboard
Analyzing wivrn-dashboard AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard top-level variable assignments (pkgname, pkgver, source, sha256sums, etc.) and function definitions (build, package_*). No command substitutions, eval calls, or other executable code exists at the global scope. Sourcing this file to run `makepkg --printsrcinfo` will not trigger any malicious activity.
</details>
<evidence></evidence>
<summary>No dangerous top-level code in PKGBUILD.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code in PKGBUILD.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, .gitignore...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is an AUR `.SRCINFO` metadata file for the `wivrn-server` package. It contains only package metadata: pkgbase/pkgname declarations, dependencies, optdepends, source URL, and a SHA-256 checksum. There are no build scripts, no `prepare()`/`build()`/`package()` functions, no commands of any kind, and no network operations defined in this file.

The source is a versioned tarball from the project's own official GitHub repository (`https://github.com/WiVRn/WiVRn/archive/refs/tags/v26.9.tar.gz`), with a concrete sha256sum rather than `SKIP`, which is good packaging hygiene. The dependencies are all standard library packages appropriate for an OpenXR runtime and dashboard. Nothing in this file exhibits obfuscation, exfiltration, unexpected downloads, or any other malicious behavior.
</details>
<evidence>
</evidence>
<summary>
Metadata-only AUR file with pinned upstream source and valid checksum.</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, .gitignore...
+ Reviewed .SRCINFO. Status: SAFE -- Metadata-only AUR file with pinned upstream source and valid checksum.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard Arch Linux package build file for the WiVRn project. It downloads source code from the official GitHub repository with a pinned checksum (`sha256sums`). The build process uses cmake and ninja, which is normal for C++ projects. The file creates an environment configuration file (`/usr/lib/environment.d/wivrn.conf`) to set an OpenXR runtime variable, which is expected behavior for an OpenXR runtime package. There are no suspicious network requests, obfuscated code, or dangerous commands (eval, base64, curl, wget) outside of standard packaging operations. No evidence of supply-chain attack or malicious injection.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD, no malicious behavior.</summary>
</security_assessment>

[2/3] Reviewing .gitignore...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD, no malicious behavior.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file for an AUR package repository. It ignores all files by default (`*`), then whitelists specific files that should be tracked: the `.gitignore` itself, `.SRCINFO`, `PKGBUILD`, and all `.patch` files. This pattern is conventional and expected for AUR repositories that only version-control packaging metadata and patches. There is no executable code, no network access, no obfuscation, and no data manipulation. The file poses no security risk.
</details>
<evidence></evidence>
<summary>Standard AUR .gitignore, no security concerns.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .gitignore. Status: SAFE -- Standard AUR .gitignore, no security concerns.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,984
  Completion Tokens: 1,234
  Total Tokens: 14,218
  Total Cost: $0.001015
  Execution Time: 50.41 seconds

Final Status: SAFE


No issues found.
