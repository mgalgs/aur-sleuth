---
package: openclaw
pkgver: 2026.9.6
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 10330
completion_tokens: 1657
total_tokens: 11987
cost: 0.001146096
execution_time: 30.92
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-24T15:21:02Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no security issues.
  - file: openclaw.install
    status: safe
    summary: Standard install script with only informational messages.
  - file: PKGBUILD
    status: safe
    summary: Standard npm PKGBUILD with pinned checksum and no malicious elements.
---

Materializing openclaw from local mirror...
Materialized openclaw
Analyzing openclaw AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains static variable and array assignments at global scope. No command substitutions, function calls, or other executable statements exist in the top-level that would run during `makepkg --printsrcinfo`. The only function, `package()`, is defined but not executed during this step. There is no risk of code execution or data exfiltration from sourcing this file.
</details>
<evidence></evidence>
<summary>No malicious code at global scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code at global scope.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, openclaw.install...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is a standard AUR metadata file for the `openclaw` package. It declares a source tarball fetched from the official npm registry (`registry.npmjs.org`), which is the expected upstream for this Node.js package. The checksum is pinned (not SKIP), providing integrity verification. All dependencies and optional dependencies are listed explicitly and are relevant to the application's stated purpose (an AI gateway with integrations). No code is executed from this file; it is purely declarative. There are no signs of obfuscation, suspicious URLs, or malicious commands.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file, no security issues.</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, openclaw.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no security issues.
LLM auditresponse for openclaw.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Arch Linux package install script that only prints informational messages to the user during installation and upgrade. It does not execute any commands, make network requests, modify files, or perform any other potentially dangerous operations. The content is limited to `printf` statements with advice on how to manage the `openclaw` gateway service. No evidence of obfuscation, encoded data, or supply-chain attack vectors.
</details>
<evidence></evidence>
<summary>Standard install script with only informational messages.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed openclaw.install. Status: SAFE -- Standard install script with only informational messages.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR practices for an npm-based Node.js package. The source is fetched from the official npm registry with a pinned SHA256 checksum. The `package()` function runs `npm install --global` to install the package, then explicitly executes the upstream package's own `postinstall-bundled-plugins.mjs` script as a workaround (this is the package's own code, not injected malicious content). It then creates a simple wrapper shell script that sets `SHARP_IGNORE_GLOBAL_LIBVIPS` and executes the Node.js entry point. There are no suspicious network operations, obfuscation, or exfiltration of data. All operations are limited to the package installation directory and standard packaging tasks.
</details>
<evidence>
</evidence>
<summary>Standard npm PKGBUILD with pinned checksum and no malicious elements.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard npm PKGBUILD with pinned checksum and no malicious elements.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,330
  Completion Tokens: 1,657
  Total Tokens: 11,987
  Total Cost: $0.001146
  Execution Time: 30.92 seconds

Final Status: SAFE


No issues found.
