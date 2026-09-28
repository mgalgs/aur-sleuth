---
package: moarchy-calendar
pkgver: 0.2.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 8014
completion_tokens: 1388
total_tokens: 9402
cost: 0.00151060
execution_time: 38.2
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-28T11:15:29Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with upstream source and checksum; no malicious content found.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with no security issues.
---

Materializing moarchy-calendar from local mirror...
Materialized moarchy-calendar
Analyzing moarchy-calendar AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard top-level variable definitions (pkgname, pkgver, source, sha256sums, etc.) and function definitions (check(), package()). No command substitutions, eval, or dangerous commands (curl, wget, etc.) appear in the global scope. All code that could perform downloads or system modifications is inside functions that are not executed during `makepkg --printsrcinfo`. The source URL uses variable expansion but this is normal and does not trigger execution. Therefore, sourcing this PKGBUILD is safe.
</details>
<evidence></evidence>
<summary>No dangerous top-level code in PKGBUILD.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code in PKGBUILD.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR `.SRCINFO` metadata file. It declares a package named `moarchy-calendar` with a pinned version (`0.2.0`), a source tarball downloaded from the project's own upstream GitHub releases URL, and a SHA-256 checksum for integrity verification. The dependencies (`quickshell`, `ttf-jetbrains-mono-nerd`, `hicolor-icon-theme`) are consistent with a Quickshell calendar widget. There are no suspicious commands, network endpoints, encoded payloads, or file operations. The file contains only declarative packaging metadata and shows no evidence of malicious or injected behavior.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata with upstream source and checksum; no malicious content found.
</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with upstream source and checksum; no malicious content found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard packaging practices. It fetches a tarball from the project&#39;s own GitHub releases with a pinned SHA-256 checksum, so the source is verifiable. The build steps (check, package) only run the upstream test suite and install files into the package directory. There are no network requests, obfuscated code, or unexpected system modifications. No evidence of malicious activity.
</details>
<evidence>
</evidence>
<summary>Standard PKGBUILD with no security issues.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with no security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 8,014
  Completion Tokens: 1,388
  Total Tokens: 9,402
  Total Cost: $0.001511
  Execution Time: 38.20 seconds

Final Status: SAFE


No issues found.
