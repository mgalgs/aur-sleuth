---
package: noaidarling-system-git
pkgbase: noaidarling-git
pkgver: r4405.ff77380e7
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 49854
completion_tokens: 3430
total_tokens: 53284
cost: 0.00510426
execution_time: 147.89
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-17T00:09:15Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO metadata, no malicious content.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file; no security concerns.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD for a large VCS-based package.
---

noaidarling-system-git is built from noaidarling-git
Materializing noaidarling-system-git from local mirror...
Materialized noaidarling-system-git
Analyzing noaidarling-system-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The global/top-level scope of this PKGBUILD contains only static variable assignments (pkgname, pkgver, source, etc.) and a conditional block that sets two shell variables (`_GTool` and `_buildCli`) based on an environment variable. There are no command substitutions, no invocations of `eval`, `curl`, `wget`, `base64`, or any other mechanism that would execute external code or perform network operations at parse time. All function definitions (`pkgver()`, `prepare()`, `build()`, `package_*()`) are only executed during later build stages, not during `makepkg --printsrcinfo`. Consequently, sourcing this PKGBUILD is safe.
</details>
<evidence></evidence>
<summary>No dangerous top-level code; safe to source.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code; safe to source.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, .gitignore...
[0/3] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a `.SRCINFO` metadata file for an AUR package. It contains only declarative data: package name, version, upstream URLs, dependencies, and source references. All sources point to the `github.com/NoAiDarling` organization, which is the package's own upstream. No executable code, obfuscated commands, or suspicious network requests are present. Checksums are `SKIP`, which is standard for VCS (git) packages and not a security concern. There is no evidence of any malicious or dangerous behavior.
</details>
<evidence></evidence>
<summary>Standard .SRCINFO metadata, no malicious content.</summary>
</security_assessment>

[1/3] Reviewing .gitignore, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO metadata, no malicious content.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` file used in a Git repository. It instructs Git to ignore all files except for the explicitly listed ones: `.gitignore`, `.SRCINFO`, `PKGBUILD`, `noaidarling-git.install`, and `dkms.conf`. This is a normal practice for AUR packages to prevent non-essential files from being tracked in the repository. There is no malicious content, no code execution, no network requests, or any other dangerous operations.
</details>
<evidence></evidence>
<summary>Standard .gitignore file; no security concerns.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore file; no security concerns.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is for the `noaidarling-system-git` package, a macOS compatibility layer (derived from the Darling project).  All source repositories are fetched from the project's own GitHub organization (`github.com/NoAiDarling/`).  The `prepare()` function configures git submodule URLs to point to local copies already fetched via the `source` array, then runs `git submodule update` using those local paths—this is a standard pattern for large multi-submodule VCS packages and does not fetch new content from the network.  The only network operation in `prepare()` is `git lfs pull` for the `darling-swift` submodule, which is the package's own upstream component and expected behavior for LFS-hosted data.  The `build()` and `package_*()` functions run standard `cmake`, `make`/`ninja`, and `cmake --install` commands.  There is no obfuscated code, no `eval`/`base64`/`curl`/`wget` misuse, no tampering with system files outside the package scope, and no exfiltration of local data.  While the PKGBUILD tracks mutable branches (unpinned VCS sources) and uses SKIP checksums (required for VCS), these are normal for `-git` packages and do not indicate malice.  The file exhibits no evidence of a supply-chain attack.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD for a large VCS-based package.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD for a large VCS-based package.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 49,854
  Completion Tokens: 3,430
  Total Tokens: 53,284
  Total Cost: $0.005104
  Execution Time: 147.89 seconds

Final Status: SAFE


No issues found.
