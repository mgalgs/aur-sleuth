---
package: python-prance
pkgver: 26.07.19.0
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 8784
completion_tokens: 938
total_tokens: 9722
cost: 0.000970060
execution_time: 16.68
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-23T07:16:14Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR package metadata with pinned sources and checksums; no malicious behavior found.
  - file: PKGBUILD
    status: safe
    summary: Standard Python PKGBUILD with pinned sources, safe build steps, and no malicious behavior.
---

Materializing python-prance from local mirror...
Materialized python-prance
Analyzing python-prance AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Sourcing this PKGBUILD for `makepkg --printsrcinfo` only executes top-level variable assignments and array definitions. There are no top-level command substitutions, external downloads, code execution, or data exfiltration. The `prepare()`, `build()`, `check()`, and `package()` functions are not invoked during `makepkg --printsrcinfo`, so their contents are out of scope for this gate.

The source URLs point to the project&apos;s own upstream GitHub repositories and include pinned sha256 checksums. This is consistent with standard AUR packaging practice and presents no immediate execution risk when parsing metadata.
</details>
<evidence>
</evidence>
<summary>
No malicious top-level code; printsrcinfo parsing is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious top-level code; printsrcinfo parsing is safe.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file describes a standard AUR Python package for the `python-prance` project. It declares normal dependencies (`python-requests`, `python-ruamel-yaml`, etc.), optional dependencies, and two source tarballs: the upstream `prance` repository archive from GitHub and the `OpenAPI-Specification` archive from the OAI organization. Both sources are pinned to specific versions/commits and both have concrete SHA-256 checksums rather than `SKIP`.

There are no suspicious network hosts, no encoded or obfuscated commands, no file operations, no build hooks, and no references to scripts that download or execute unchecked content. This is entirely consistent with normal packaging metadata for a library package.
</details>
<evidence>
</evidence>
<summary>
Standard AUR package metadata with pinned sources and checksums; no malicious behavior found.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR package metadata with pinned sources and checksums; no malicious behavior found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard Python packaging recipe. It downloads the upstream source tarball from the project's official GitHub repository and a pinned OpenAPI-Specification archive from the OAI GitHub repository, both with pinned checksums. The `prepare()` function replaces the tests' OpenAPI-Specification submodule directory with a symlink to the separately downloaded specification source; this is a normal test-fixture setup, not a file operation outside the package scope.

The `build()`, `check()`, and `package()` functions use standard Python build/install tooling (`python -m build`, `pytest`, `python -m installer`) and install only the built wheel and license into the package directory. There are no suspicious network requests, no obfuscated commands, no execution of fetched scripts, and no tampering with system files. The package follows expected AUR packaging practices.
</details>
<evidence>
</evidence>
<summary>
Standard Python PKGBUILD with pinned sources, safe build steps, and no malicious behavior.
</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard Python PKGBUILD with pinned sources, safe build steps, and no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 8,784
  Completion Tokens: 938
  Total Tokens: 9,722
  Total Cost: $0.000970
  Execution Time: 16.68 seconds

Final Status: SAFE


No issues found.
