---
package: moarchy-atlas
pkgver: 0.1.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 8096
completion_tokens: 1431
total_tokens: 9527
cost: 0.00053540788
execution_time: 22.79
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-28T23:01:17Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Routine packaging with pinned checksum; no malicious code or behavior found.
---

Materializing moarchy-atlas from local mirror...
Materialized moarchy-atlas
Analyzing moarchy-atlas AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources only the top-level scope of this PKGBUILD. The top-level content consists solely of static variable definitions: `pkgname`, `pkgver`, `pkgrel`, `pkgdesc`, `arch`, `url`, `license`, `depends`, `source`, and `sha256sums`. There are no command substitutions, no `eval`, no `curl`/`wget` calls, no encoded payloads, and no top-level file operations or network activity.

The `check()` and `package()` functions contain the package build/install logic, but `makepkg --printsrcinfo` does not execute those functions. Nothing in the global scope poses a risk during this command.
</details>
<evidence>
</evidence>
<summary>
Top-level PKGBUILD is static metadata only; printsrcinfo execution is safe.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD is static metadata only; printsrcinfo execution is safe.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.SRCINFO` metadata file for an AUR package. It contains only declarative fields: package name, description, version, dependencies, source URL, and a SHA‑256 checksum. There is no executable code, obfuscated content, or unexpected instructions. The source points to the project's own GitHub release, and the checksum is provided (not `SKIP`). No security concerns.
</details>
<evidence></evidence>
<summary>Standard AUR metadata, no malicious content.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices. The source is a single release tarball fetched over HTTPS from the package's own upstream GitHub repository, with a pinned sha256 checksum. The check() function runs the Qt QML test runner in offscreen mode against local test fixtures, requiring neither network access nor a display.

The package() function only installs QML assets, a launcher script, desktop entry, icon, and license into the package directory. The curl dependency is explained by the upstream application making requests to REST Countries, which is application functionality rather than a supply-chain concern. There is no obfuscation, no unexpected network activity, no build-time code execution from unverified sources, and no writes outside of $pkgdir.
</details>
<evidence>
</evidence>
<summary>
Routine packaging with pinned checksum; no malicious code or behavior found.
</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Routine packaging with pinned checksum; no malicious code or behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 8,096
  Completion Tokens: 1,431
  Total Tokens: 9,527
  Total Cost: $0.000535
  Execution Time: 22.79 seconds

Final Status: SAFE


No issues found.
