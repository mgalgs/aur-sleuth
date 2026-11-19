---
package: git-credential-yahoo
pkgbase: git-credential-email
pkgver: 5.9.5
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 11188
completion_tokens: 1908
total_tokens: 13096
cost: 0.001365364
execution_time: 47.65
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-28T19:18:48Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard AUR .gitignore; no suspicious or malicious content found.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with pinned upstream source and checksum; no security issues found.
  - file: PKGBUILD
    status: safe
    summary: Legitimate PKGBUILD; pinned upstream source, normal install routines, no malicious behavior found.
---

git-credential-yahoo is built from git-credential-email
Materializing git-credential-yahoo from local mirror...
Materialized git-credential-yahoo
Analyzing git-credential-yahoo AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global/top-level scope contains only standard variable declarations (pkgbase, pkgname, pkgver, etc.), an array `_oauth_optdepends`, and function definitions (`_install_helper` and the `package_` functions). No command substitutions, subprocess executions, network requests, or file operations are present in the top-level scope. The functions are defined but not called during the `makepkg --printsrcinfo` phase. Therefore, sourcing this PKGBUILD poses no risk of executing malicious code.
</details>
<evidence></evidence>
<summary>No dangerous top-level code in PKGBUILD.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code in PKGBUILD.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, .gitignore...
[0/3] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` used in Arch User Repository (AUR) git repositories. It ignores all files except the essential AUR metadata files: `.gitignore`, `.SRCINFO`, and `PKGBUILD`. This is a routine and expected pattern for AUR package maintenance to keep generated or extraneous files out of the repository. There are no network requests, file operations, obfuscated code, or any commands present. No security concerns.
</details>
<evidence>
</evidence>
<summary>
Standard AUR .gitignore; no suspicious or malicious content found.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard AUR .gitignore; no suspicious or malicious content found.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file describes a legitimate AUR package for Git credential helpers and email send-email backends. It declares a pinned version (5.9.5), a tarball source downloaded from the project's own upstream GitHub repository, and a non-SKIP SHA-256 checksum. No suspicious network destinations, encoded payloads, file modifications, or unexpected commands are present.

The package splits into several subpackages (`git-credential-gmail`, `git-credential-outlook`, `git-credential-yahoo`, `git-credential-aol`, `git-msgraph`, `git-protonmail`), each with appropriate dependencies for OAuth 2.0 flows, Git, Perl SMTP support, and ProtonMail cryptography. The optional dependencies for a web-based OAuth browser and QR code display are consistent with the application's stated credential-helper functionality.

There is no evidence of injected malicious code, data exfiltration, backdoors, obfuscation, or unexpected build-time behavior. The metadata follows standard AUR packaging practices.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata with pinned upstream source and checksum; no security issues found.
</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with pinned upstream source and checksum; no security issues found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a straightforward split-package definition for git credential helpers. The source is a pinned upstream tag tarball from the project's own GitHub repository, with a fixed sha256 checksum, which is the expected AUR packaging practice. No network requests, obfuscated code, encoded payloads, or dangerous commands such as eval, curl, wget, or base64 appear anywhere in the file.

The build/install logic only copies the helper binaries and license NOTICE files from the source tree into the package directory. The split package functions are standard and only set package metadata plus optional dependencies. Nothing in this file accesses user data, contacts unexpected hosts, alters unrelated system files, or introduces backdoors. This matches normal packaging behavior and shows no evidence of a supply-chain attack.
</details>
<evidence>
</evidence>
<summary>
Legitimate PKGBUILD; pinned upstream source, normal install routines, no malicious behavior found.
</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Legitimate PKGBUILD; pinned upstream source, normal install routines, no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 11,188
  Completion Tokens: 1,908
  Total Tokens: 13,096
  Total Cost: $0.001365
  Execution Time: 47.65 seconds

Final Status: SAFE


No issues found.
