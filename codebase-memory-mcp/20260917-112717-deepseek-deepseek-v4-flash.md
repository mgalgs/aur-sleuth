---
package: codebase-memory-mcp
pkgver: 0.11.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 9799
completion_tokens: 1588
total_tokens: 11387
cost: 0.001149662850
execution_time: 36.82
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-17T11:27:17Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore for AUR package; no security concerns.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with pinned source, safe build and install.
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO with pinned source tarball and checksum; no malicious indicators.
---

Materializing codebase-memory-mcp from local mirror...
Materialized codebase-memory-mcp
Analyzing codebase-memory-mcp AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only defines metadata variables (`pkgname`, `pkgver`, `pkgdesc`, `arch`, `url`, `license`, `depends`, `optdepends`, `conflicts`, `options`, `source`, `sha256sums`) and two build-time functions (`build()` and `package()`). Sourcing this file for `makepkg --printsrcinfo` executes only the global/top-level variable assignments, which are static strings and array definitions with ordinary variable expansions. There are no top-level command substitutions, no network downloads, no `eval`, `base64`, `curl`, `wget`, or any other code execution at source time.

The `build()` and `package()` functions contain normal build/install steps (`make`, `install` into `$pkgdir`), but these functions are not executed by `makepkg --printsrcinfo`. Any later audit of the full PKGBUILD can examine them separately, but they pose no risk for this narrow metadata-parsing gate.
</details>
<evidence>
</evidence>
<summary>
Top-level PKGBUILD scope is safe; build/package functions are not executed during printsrcinfo.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD scope is safe; build/package functions are not executed during printsrcinfo.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, .gitignore...
[0/3] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` used for an Arch Linux package repository. It lists common build artifacts and output directories (`src/`, `pkg/`) and archive patterns (`*.tar.gz`, `*.pkg.tar.*`). There is no executable code, no network requests, no obfuscation, and no system modification. The content is entirely benign and follows normal packaging workflow conventions.
</details>
<evidence></evidence>
<summary>Standard .gitignore for AUR package; no security concerns.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore for AUR package; no security concerns.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices. It downloads the upstream source tarball from the project's official GitHub repository with a pinned SHA-256 checksum. The build process compiles the application using the provided Makefile with no suspicious flags or commands. Installation copies the built binary and license to the expected locations. There are no network requests beyond the declared source, no obfuscated code, no execution of untrusted content, and no file operations outside the package's scope. No evidence of supply-chain compromise or malicious intent.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with pinned source, safe build and install.</summary>
</security_assessment>

[2/3] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with pinned source, safe build and install.
LLM auditresponse for .SRCINFO:
 <security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` is a standard package metadata file for the Arch User Repository. It contains only declarative metadata: package name, version, description, URL, dependencies, and source definitions. There is no executable code, no install scripts, and no build logic embedded in this file.

The source tarball is fetched over HTTPS from the project's own upstream GitHub repository (`https://github.com/DeusData/codebase-memory-mcp/archive/refs/tags/v0.11.0.tar.gz`), which matches the declared `url`. The download is pinned with a specific, non-SKIP sha256 checksum (`7a292eb925640c1d254863733dd260911c94a5f3d1846b228ada685c2770b7ae`), which is good supply-chain hygiene. There are no suspicious network requests, no obfuscated or encoded content, no eval/base64 tricks, and no file operations outside of standard packaging metadata.

The `conflicts` entries and dependency declarations are normal packaging practice for a package that has multiple variants. Nothing in this file deviates from standard, safe AUR practices or exhibits any sign of injected malicious behavior.
</details>
<evidence></evidence>
<summary>Standard .SRCINFO with pinned source tarball and checksum; no malicious indicators.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO with pinned source tarball and checksum; no malicious indicators.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 9,799
  Completion Tokens: 1,588
  Total Tokens: 11,387
  Total Cost: $0.001150
  Execution Time: 36.82 seconds

Final Status: SAFE


No issues found.
