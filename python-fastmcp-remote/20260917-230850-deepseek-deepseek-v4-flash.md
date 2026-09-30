---
package: python-fastmcp-remote
pkgbase: python-fastmcp
pkgver: 4.0.5
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 15245
completion_tokens: 8644
total_tokens: 23889
cost: 0.00227731
execution_time: 263.61
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-17T23:08:49Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard metadata only, no malicious code.
  - file: PKGBUILD
    status: safe
    summary: Standard split AUR Python PKGBUILD; no malicious behavior found.
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
The PKGBUILD contains only static variable assignments (strings, arrays of strings) and function definitions at the top level. No command substitutions, backtick executions, `eval` calls, or other runtime-executed constructs exist in the global scope. The `source` array uses a simple git reference with a pinned tag, and the `sha256sums` entry is a fixed hash. All potentially active code is inside function bodies (`build`, `package_*`), which are never invoked during `makepkg --printsrcinfo` (only sourced). There is no mechanism to download, execute, or exfiltrate data at parse time.
</details>
<evidence></evidence>
<summary>No dangerous top-level code; sourcing is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code; sourcing is safe.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a `.SRCINFO` metadata file for an AUR package, containing only declarative key-value pairs (source URL, dependencies, descriptions, etc.). There is no executable code, no network requests, no obfuscated content, and no file operations. The source is pinned to a specific tag (`v4.0.5`) from the legitimate upstream repository on GitHub with a checksum provided. While the dependency names `python-uncalled-for` and `python-pydocket` appear unusual and might be typos or placeholders, they are not malicious—they simply name other packages that would need to exist in the AUR or official repos. Standard AUR practice for a metadata file like this; no evidence of a supply-chain attack.
</details>
<evidence></evidence>
<summary>Standard metadata only, no malicious code.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata only, no malicious code.
LLM auditresponse for PKGBUILD:
 <security_assessment>
<decision>SAFE</decision>
<details>
This is an ordinary split-package AUR PKGBUILD for the FastMCP Python project (packages: `python-fastmcp-remote`, `python-fastmcp-tasks`, `python-fastmcp-slim`, `python-fastmcp`). The only source is fetched via git from the project&apos;s own upstream (PrefectHQ/fastmcp) at a pinned release tag (`#tag=v4.0.5`), which is the expected pattern for this kind of package. The build uses `python -m build --wheel --no-isolation` and installs with `python -m installer --destdir="$pkgdir"` — standard PEP 517/518 workflow with no writes outside the build/package directories. No `eval`, no base64/hex-encoded payloads, no `curl|bash`, no unexpected network endpoints, no post-install hooks, and no tampering with system files were found in the visible content.
</details>
<details>
Hygiene notes (not threats): the `sha256sums` entry for a `git+` source is normally required to be `SKIP`; supplying an actual hash for a VCS source is nonstandard and the value is effectively unused by makepkg, so no extra trust should be placed in it. A few dependency names are unusual (`python-uncalled-for`, `python-pydocket`, `python-httpx2`) and the file is partially elided with ellipses and `[...]` markers, but unusual dependency names and an elided listing are not evidence of malice on their own. Nothing in the visible content deviates from ordinary packaging practice in a way that indicates injected or malicious code.
</details>
<evidence></evidence>
<summary>Standard split AUR Python PKGBUILD; no malicious behavior found.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard split AUR Python PKGBUILD; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 15,245
  Completion Tokens: 8,644
  Total Tokens: 23,889
  Total Cost: $0.002277
  Execution Time: 263.61 seconds

Final Status: SAFE


No issues found.
