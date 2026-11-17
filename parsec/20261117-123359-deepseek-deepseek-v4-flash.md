---
package: parsec
pkgver: 4.0.2411
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 11916
completion_tokens: 2693
total_tokens: 14609
cost: 0.00155718
execution_time: 18.96
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-17T12:33:57Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard package metadata file, no security concerns.
  - file: use-python-build-installer.patch
    status: safe
    summary: Patch uses standard build/install tools; no security issue.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD; no malicious code found.
---

Materializing parsec from local mirror...
Cloning https://aur.archlinux.org/parsec.git...
Cloned parsec
Analyzing parsec AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global/top-level scope contains only standard variable definitions (pkgname, pkgver, source, sha256sums, dependencies, etc.) and function declarations (prepare, build, check, package). No command substitutions, backticks, eval, curl, wget, or any other code that could execute during sourcing. The source array uses a URL with simple parameter expansion, which is a normal packaging pattern. There is no risk of malicious code execution during `makepkg --printsrcinfo`.
</details>
<evidence></evidence>
<summary>Safe: no top-level execution risk</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe: no top-level execution risk
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, use-python-build-installer.patch...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.SRCINFO` metadata file for an AUR package. It declares package metadata, dependencies, and two source files (a tarball and a patch) with SHA-256 checksums. There are no executable commands, no network requests beyond standard source URLs, no obfuscation, and no signs of malicious activity. The file follows normal AUR packaging conventions.
</details>
<evidence></evidence>
<summary>Standard package metadata file, no security concerns.</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, use-python-build-installer.patch...
+ Reviewed .SRCINFO. Status: SAFE -- Standard package metadata file, no security concerns.
LLM auditresponse for use-python-build-installer.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
The patch modifies the Python module build and install steps for the parsec package (specifically the pbt2ptt profiling module). It replaces `pip install` with `python -m build` and `python -m installer`, using system-installed build tools. The commands only operate within the build directory and its `dist` subdirectory. There is no network activity, no obfuscated code, no data exfiltration, and no unexpected system manipulation. The changes follow standard Python packaging practices and are consistent with the stated goal of avoiding network access during build.
</details>
<evidence></evidence>
<summary>Patch uses standard build/install tools; no security issue.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed use-python-build-installer.patch. Status: SAFE -- Patch uses standard build/install tools; no security issue.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard Arch packaging practices. It fetches the source tarball from the project&#39;s official GitHub releases with a pinned version and a verified sha256sum. The patch and sed commands in `prepare()` are legitimate packaging fixes for upstream code compatibility (graphviz API change, symlink path correction). Build and install steps use standard cmake commands with no suspicious flags or embedded scripts. No network calls, base64 decoding, eval execution, or any other common malicious patterns are present. The file contains no evidence of a supply-chain attack.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD; no malicious code found.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD; no malicious code found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 11,916
  Completion Tokens: 2,693
  Total Tokens: 14,609
  Total Cost: $0.001557
  Execution Time: 18.96 seconds

Final Status: SAFE


No issues found.
