---
package: playwright-mcp
pkgver: 0.0.80
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: b9e20f728bbe0de1871ebaca31738c802edc31f8
prompt_tokens: 7782
completion_tokens: 1356
total_tokens: 9138
cost: 0.00084917448
execution_time: 20.05
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: ok
upstream_files: 1
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-01T11:15:43Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD; no malicious behavior detected.
  - file: .SRCINFO
    status: safe
    summary: Standard metadata only; no malicious content.
---

Cloning https://aur.archlinux.org/playwright-mcp.git...
Cloned playwright-mcp
Analyzing playwright-mcp AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD sources a single tarball from the official npm registry with a pinned version and a SHA256 checksum. The `noextract` array prevents extraction during fetch. No top-level command substitution, no `pkgver()` function, and no dangerous operations execute when sourcing the PKGBUILD or fetching sources. The `latestver()` and `package()` functions are defined but not invoked by the two commands run. There is no risk of malicious code execution during this step.
</details>
<evidence>
</evidence>
<summary>Source fetching and PKGBUILD sourcing are safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Source fetching and PKGBUILD sourcing are safe.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Reviewing the 2 file(s) in the AUR repository. The 1 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for an npm-based package. The source is downloaded from the official npm registry (`registry.npmjs.org`) with a pinned version and a specific SHA256 checksum. The `package()` function installs the package using `npm install -g --prefix` with `--ignore-scripts` and `--omit=dev`, which are reasonable security precautions. It then removes non-Linux platform scripts and fixes internal paths. The `latestver()` helper function simply queries the npm registry for the latest version and is not invoked during the build or packaging process. There is no obfuscated code, no unexpected network requests, no execution of unverified external code, and no tampering with system files outside the package scope. All operations serve the stated purpose of packaging the Playwright MCP server.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD; no malicious behavior detected.</summary>
</security_assessment>

[1/2] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD; no malicious behavior detected.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file provides standard package metadata for the playwright-mcp AUR package. The source is fetched from the official npm registry (registry.npmjs.org) with a pinned SHA256 checksum, ensuring integrity. There are no scripts, commands, or executable content in this file; it simply declares build and runtime dependencies, license, and upstream URL. No evidence of obfuscation, unexpected network requests, or system modifications is present.
</details>
<evidence>
</evidence>
<summary>Standard metadata only; no malicious content.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata only; no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 7,782
  Completion Tokens: 1,356
  Total Tokens: 9,138
  Total Cost: $0.000849
  Execution Time: 20.05 seconds

Final Status: SAFE


No issues found.
