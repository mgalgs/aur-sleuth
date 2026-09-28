---
package: bioma-shell
pkgver: 1.0.0beta2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 11865
completion_tokens: 1601
total_tokens: 13466
cost: 0.0011707059
execution_time: 52.82
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-28T15:13:53Z
file_verdicts:
  - file: bioma-shell.install
    status: safe
    summary: Safe post-install message script, no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file; no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with no malicious behavior.
---

Materializing bioma-shell from local mirror...
Materialized bioma-shell
Analyzing bioma-shell AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's top-level scope consists only of static variable assignments (pkgname, _tag, pkgver, etc.) and a function definition for `_srcdir()`. No command substitutions, backtick expansions, `eval`, `curl`, `wget`, or any other code that would execute during `makepkg --printsrcinfo` are present. All values are plain strings or arrays; the function is only defined, not called. Therefore, sourcing this file to parse metadata is safe.
</details>
<evidence></evidence>
<summary>No dangerous code in top-level scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous code in top-level scope.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, bioma-shell.install...
LLM auditresponse for bioma-shell.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Arch Linux `.install` script that runs after the package is installed or upgraded. It contains only two shell functions (`post_install` and `post_upgrade`), each of which prints a message to the terminal using `cat` with a heredoc. There are no dangerous commands, no network requests, no file modifications, no obfuscation, and no execution of untrusted code. The messages are purely informational, guiding the user on how to set up Bioma. This file presents no security concerns.
</details>
<evidence>
</evidence>
<summary>Safe post-install message script, no security issues.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed bioma-shell.install. Status: SAFE -- Safe post-install message script, no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is purely declarative metadata for the Arch User Repository package `bioma-shell`. It contains no executable code, no network requests, no obfuscated strings, and no suspicious operations. The source is fetched from the project's own GitHub repository at a tagged release (`v1.0.0-beta.2`) with a pinned SHA256 checksum, which is a secure and standard practice. All dependencies and options are listed openly and serve the stated purpose of the package (a desktop shell for niri). There are no indications of supply-chain compromise, data exfiltration, or backdooring.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file; no security issues.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file; no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Arch packaging practices for a tagged upstream release. The source is fetched from the official GitHub repository with a pinned SHA256 checksum, ensuring integrity. The build and package steps are conventional: `cargo fetch --locked` and `cargo build --frozen` for reproducible Rust builds, and file installation into the package directory with no unexpected system modifications. There is no obfuscated code, no suspicious network requests, and no execution of untrusted content from external sources. All dependencies and optional dependencies are clearly declared and legitimate for the application's purpose. No evidence of supply-chain attacks or malicious behavior was found.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with no malicious behavior.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 11,865
  Completion Tokens: 1,601
  Total Tokens: 13,466
  Total Cost: $0.001171
  Execution Time: 52.82 seconds

Final Status: SAFE


No issues found.
