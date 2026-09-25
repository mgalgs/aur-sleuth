---
package: python-fastmcp-remote
pkgbase: python-fastmcp
pkgver: 4.0.10
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 15384
completion_tokens: 3114
total_tokens: 18498
cost: 0.00101662848
execution_time: 85.84
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-25T19:31:50Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard upstream build and packaging; no malicious or suspicious behavior found.
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO metadata with pinned upstream source; no malicious content found.
---

python-fastmcp-remote is built from python-fastmcp
Materializing python-fastmcp-remote from local mirror...
Materialized python-fastmcp-remote
Analyzing python-fastmcp-remote AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global scope contains only variable definitions (strings, arrays) and function definitions. There are no command substitutions, subshell executions, or any code that would execute external commands (e.g., curl, wget) or perform network operations during sourcing. The source array uses a static git URL with variable interpolation, but this is normal for AUR packages. No malicious payloads or dangerous operations are present in the top-level scope.
</details>
<evidence></evidence>
<summary>No dangerous code in global scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous code in global scope.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard split-package build for the upstream FastMCP project. It clones the declared upstream repository (PrefectHQ/fastmcp) at a fixed tag, builds the relevant Python subprojects with `python -m build --wheel --no-isolation`, and installs the resulting wheels into `$pkgdir` with `python -m installer`. No obfuscated code, no eval/base64/curl/wget, no suspicious file modifications, and no unexpected network destinations were found.

The source is fetched from the package's official upstream GitHub repository and a checksum is provided. Dependency and optional dependency lists are consistent with building and packaging the upstream FastMCP subpackages. The commented-out check section and verbose optdepends entries are harmless packaging style choices. No evidence of injected malicious code or supply-chain behavior was identified.
</details>
<evidence>
</evidence>
<summary>
Standard upstream build and packaging; no malicious or suspicious behavior found.
</summary>
</security_assessment>

[1/2] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard upstream build and packaging; no malicious or suspicious behavior found.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard AUR `.SRCINFO` metadata file for `python-fastmcp-remote` (a split package of `python-fastmcp`). It contains only declarative metadata: version, architecture, license, dependency lists, `optdepends`, and the source declaration. There is no executable code, no `prepare()`/`build()`/`package()` functions, no scripts, no hooks, and no file or network operations. Any runtime behavior lives in the corresponding PKGBUILD and upstream source, which are not part of this file.

The single source entry is pinned to the project's own upstream repository (`https://github.com/PrefectHQ/fastmcp.git`) at tag `v4.0.10`, with a `sha256sums` value supplied. Pinning to a tag and providing a checksum is normal, traceable packaging practice. The dependency names are unusual but benign from a metadata standpoint (`python-httpx2`, `python-uncalled-for`, `python-py-key-value-aio` and similar names reflect upstream FastMCP requirements and may map to AUR/hybrid packages); there is no sign of typosquatting that can be confirmed from metadata alone, and no URL points to any unexpected or unrelated host.

No obfuscation, encoding tricks, suspicious URLs, or attempts to exfiltrate data or fetch/execute remote code exist in this file. It is consistent with an ordinary AUR package metadata file.
</details>
<evidence></evidence>
<summary>Standard .SRCINFO metadata with pinned upstream source; no malicious content found.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO metadata with pinned upstream source; no malicious content found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 15,384
  Completion Tokens: 3,114
  Total Tokens: 18,498
  Total Cost: $0.001017
  Execution Time: 85.84 seconds

Final Status: SAFE


No issues found.
