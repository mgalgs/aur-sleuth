---
package: python-pyqt5-3d
pkgver: 5.15.7
pkgrel: 6
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 9202
completion_tokens: 1323
total_tokens: 10525
cost: 0.00196950
execution_time: 27.32
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-11T07:26:33Z
file_verdicts:
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config for PyPI version tracking.
  - file: .SRCINFO
    status: safe
    summary: Standard declarative AUR metadata with pinned checksum; no malicious behavior found.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no security concerns.
---

Materializing python-pyqt5-3d from local mirror...
Materialized python-pyqt5-3d
Analyzing python-pyqt5-3d AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources only the global/top-level scope of the PKGBUILD. This file contains only standard variable assignments (`pkgname`, `pkgver`, `pkgrel`, `depends`, `source`, `sha256sums`, etc.) and function definitions for `build()` and `package_python-pyqt5-3d()` which are not executed during metadata generation. There are no top-level command substitutions, network requests, `eval`, `curl`, `wget`, or other executable statements. The source URL points to the project's official PyPI hosting, and the checksum is a normal pinned SHA256. No malicious behavior is present in the executed scope.
</details>
<evidence>
</evidence>
<summary>
Top-level scope is benign; only variable definitions and function declarations.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level scope is benign; only variable definitions and function declarations.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, .nvchecker.toml...
[0/3] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a configuration file for nvchecker, a tool that checks for new upstream versions. It specifies that the `pyqt5-3d` package should be tracked from the Python Package Index (PyPI) under the name `PyQt3D`. This is completely normal and expected for AUR packaging. There is no code execution, no network requests beyond the standard PyPI API, no obfuscation, no system modification, and no indication of malicious behavior.
</details>
<evidence></evidence>
<summary>Standard nvchecker config for PyPI version tracking.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config for PyPI version tracking.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard AUR `.SRCINFO` metadata file describing the `python-pyqt5-3d` package. It declares the package name, version, dependencies, and a single source tarball downloaded over HTTPS from PyPI (`pypi.python.org`), which is the expected upstream host. The source has a pinned SHA-256 checksum, improving integrity verification.

There are no network requests to unexpected hosts, no executable code, no obfuscation, no file operations, and no post-install hooks. The file contains only declarative packaging metadata and follows normal AUR practices. No malicious or dangerous behavior is present.
</details>
<evidence>
</evidence>
<summary>
Standard declarative AUR metadata with pinned checksum; no malicious behavior found.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard declarative AUR metadata with pinned checksum; no malicious behavior found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Arch packaging conventions without any indicators of supply-chain compromise. The source is fetched from the official PyPI repository with a pinned SHA-256 checksum, ensuring integrity of the downloaded tarball. The build process uses the standard `sip-build` and `make` toolchain without any unexpected commands, network requests, file operations, or obfuscated code. The install step is confined to the package&#39;s own build directory with `make INSTALL_ROOT=&quot;$pkgdir&quot; install`. Both maintainers are well-known Arch Linux packagers. No suspicious behavior is present.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with no security concerns.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no security concerns.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 9,202
  Completion Tokens: 1,323
  Total Tokens: 10,525
  Total Cost: $0.001970
  Execution Time: 27.32 seconds

Final Status: SAFE


No issues found.
