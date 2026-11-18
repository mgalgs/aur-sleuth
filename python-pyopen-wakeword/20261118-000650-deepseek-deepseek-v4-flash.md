---
package: python-pyopen-wakeword
pkgver: 1.1.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 9454
completion_tokens: 1415
total_tokens: 10869
cost: 0.00110556
execution_time: 11.38
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-18T00:06:49Z
file_verdicts:
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker configuration for upstream version tracking.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR .SRCINFO file, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with pinned source; no malicious content.
---

Materializing python-pyopen-wakeword from local mirror...
Materialized python-pyopen-wakeword
Analyzing python-pyopen-wakeword AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global/top-level scope contains only variable assignments (pkgname, pkgdesc, arch, url, license, dependencies, source array, sha256sums, platform definitions). There are no top-level command substitutions, eval/calls, network requests, or any code that executes during sourcing. The source array points to the official upstream GitHub tarball with a pinned version tag and a valid sha256sum. The prepare(), build(), check(), and package() functions are defined but will not execute during `makepkg --printsrcinfo`. No malicious content is present in the global scope.
</details>
<evidence></evidence>
<summary>No malicious top-level code found; standard PKGBUILD.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious top-level code found; standard PKGBUILD.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, .nvchecker.toml...
[0/3] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard nvchecker configuration that defines how to check for new versions of the package. It specifies a Git source pointing to the official upstream repository (github.com/rhasspy/pyopen-wakeword.git) and a version prefix. No malicious content, obfuscation, or dangerous operations are present.</details>
<evidence></evidence>
<summary>Standard nvchecker configuration for upstream version tracking.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker configuration for upstream version tracking.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file provides package metadata and source information for the `python-pyopen-wakeword` package. The source is downloaded from the official upstream GitHub repository (`https://github.com/rhasspy/pyopen-wakeword/archive/refs/tags/v1.1.0.tar.gz`) with a valid SHA-256 checksum (`2b933166d2b0fa9434136a31c5a63d26e3627b47380e8316daa289bcddaa6264`). There are no unusual network requests, obfuscated code, dangerous commands, or any deviation from standard packaging practices. The file is benign and represents a typical, well-formed AUR package definition.
</details>
<evidence></evidence>
<summary>Standard AUR .SRCINFO file, no security issues.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR .SRCINFO file, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices. It downloads the upstream source from the official GitHub repository with a pinned SHA256 checksum. The prepare step removes the bundled library directory and then installs a prebuilt `libtensorflowlite_c.so` from the upstream tarball for the appropriate architecture. This is expected behavior for packages that ship precompiled binaries. There are no suspicious network requests, obfuscated code, dangerous commands (eval, curl, base64, etc.), or any operations that deviate from normal packaging workflows. No evidence of a supply-chain attack is present.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with pinned source; no malicious content.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with pinned source; no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 9,454
  Completion Tokens: 1,415
  Total Tokens: 10,869
  Total Cost: $0.001106
  Execution Time: 11.38 seconds

Final Status: SAFE


No issues found.
