---
package: artcraft-launcher
pkgver: 0.19.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 9997
completion_tokens: 4131
total_tokens: 14128
cost: 0.00164331
execution_time: 43.55
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-11T16:03:16Z
file_verdicts:
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config, nothing suspicious.
  - file: .SRCINFO
    status: safe
    summary: Standard package metadata, no security concerns.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD for Rust project, no malicious content.
---

Materializing artcraft-launcher from local mirror...
Materialized artcraft-launcher
Analyzing artcraft-launcher AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The global scope of this PKGBUILD contains only static variable assignments and function definitions. No command substitutions (`$(…)` or backticks) or other executable constructs exist outside of function bodies. The `${pkgname#art}` expansion is a benign shell parameter expansion that strips a prefix from the previously defined `pkgname` variable. Because `makepkg —printsrcinfo` only sources the global scope and does **not** invoke `prepare()`, `build()`, or `package()`, no code from those functions is evaluated during this step. There is no `eval`, no network call, no obfuscated payload, and no other mechanism that would execute untrusted commands simply by sourcing this file.
</details>
<evidence></evidence>
<summary>Global scope is static, no execution risk.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Global scope is static, no execution risk.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, .nvchecker.toml...
[0/3] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a configuration file for nvchecker, a tool used to check for new versions of software from upstream sources. It simply specifies the git remote URL for a GitHub repository. There is no malicious content. It is a standard and expected file in AUR packages that use nvchecker to monitor upstream releases.
</details>
<evidence>
</evidence>
<summary>Standard nvchecker config, nothing suspicious.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config, nothing suspicious.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.SRCINFO` metadata file for the `artcraft-launcher` AUR package. It contains only package metadata: name, version, description, URL, license, dependencies, and a single source tarball with a pinned SHA256 checksum. No executable code, network requests, obfuscated strings, or unusual operations are present. The source points to the project's own GitHub release tag, which is normal and expected.
</details>
<evidence>
</evidence>
<summary>Standard package metadata, no security concerns.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard package metadata, no security concerns.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard, well-structured packaging file for a Rust project. It fetches a release tarball from the project&#39;s own GitHub repository with a pinned SHA-256 checksum, ensuring source integrity. The build process uses `cargo fetch --locked` and `cargo build --frozen`, which respect the lock file and do not fetch any unverified code. All file installations target the designated package directory (`$pkgdir`). No obfuscated code, dangerous commands (eval, base64, curl|bash), unexpected network destinations, or data exfiltration attempts are present. There are no hygiene issues beyond what is standard for a Rust AUR package.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD for Rust project, no malicious content.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD for Rust project, no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 9,997
  Completion Tokens: 4,131
  Total Tokens: 14,128
  Total Cost: $0.001643
  Execution Time: 43.55 seconds

Final Status: SAFE


No issues found.
