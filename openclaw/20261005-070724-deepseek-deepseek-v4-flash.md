---
package: openclaw
pkgver: 2026.9.8
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 10409
completion_tokens: 1883
total_tokens: 12292
cost: 0.00272251
execution_time: 50.11
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-05T07:07:23Z
file_verdicts:
  - file: openclaw.install
    status: safe
    summary: Safe install script with only informational messages.
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO with pinned npm tarball; no malicious behavior found.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with verified npm source.
---

Materializing openclaw from local mirror...
Materialized openclaw
Analyzing openclaw AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's top-level scope contains only standard variable definitions (pkgname, pkgver, source, sha256sums, etc.) and the definition of the `package()` function, which is not executed during `makepkg --printsrcinfo`. There are no command substitutions, external commands, eval statements, network operations, or any other executable logic that would run at source time. Therefore, sourcing this PKGBUILD for the purpose of running `--printsrcinfo` is safe.
</details>
<evidence></evidence>
<summary>No executable top-level code; sourcing is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No executable top-level code; sourcing is safe.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, openclaw.install...
LLM auditresponse for openclaw.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Arch Linux package install script (.install). It defines three functions (`pre_upgrade`, `post_install`, `post_upgrade`) that solely print informational messages to the user using `printf`. There are no system modifications, no command substitutions, no network requests, no encoded or obfuscated content, and no execution of any external commands. The content is entirely benign and conforms to normal packaging practices.
</details>
<evidence></evidence>
<summary>Safe install script with only informational messages.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed openclaw.install. Status: SAFE -- Safe install script with only informational messages.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is a standard Arch package metadata file. It declares a single package `openclaw` sourced from the official npm registry with a pinned SHA-256 checksum. The source URL points to the package's own upstream tarball on registry.npmjs.org, which is an expected and legitimate distribution host. The listed dependencies and optdependencies are all normal runtime/skill-related packages, and no unusual network behavior, obfuscation, or file manipulation is present. The `noextract` option is also acceptable because the tarball is handled by the package's install logic rather than being blindly unpacked by makepkg.

There is no evidence of malicious or dangerous behavior. The checksum is provided, the source is pinned to a version, and nothing in this file attempts to download or execute code from an unexpected host, exfiltrate data, or modify system files. The presence of an `openclaw.install` file cannot be evaluated from this snippet alone, but nothing in the .SRCINFO indicates a supply-chain attack.
</details>
<evidence>
</evidence>
<summary>Standard .SRCINFO with pinned npm tarball; no malicious behavior found.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO with pinned npm tarball; no malicious behavior found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard Arch package build script for the `openclaw` npm package. It downloads the package tarball from the official npm registry (`registry.npmjs.org`) with a verified SHA-256 checksum, runs `npm install` to install it to the package directory, then executes the upstream package's own `postinstall-bundled-plugins.mjs` script as a workaround for the npm lifecycle issue. It then creates a wrapper shell script and installs documentation/license files. There are no suspicious network requests to non-standard hosts, no obfuscated code, no dangerous commands like `eval` or `curl|bash`, and no exfiltration of local data. All operations are consistent with normal packaging practices for an npm-based package. The postinstall script is part of the upstream source and thus considered ordinary application functionality, not a supply-chain injection.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with verified npm source.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with verified npm source.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,409
  Completion Tokens: 1,883
  Total Tokens: 12,292
  Total Cost: $0.002723
  Execution Time: 50.11 seconds

Final Status: SAFE


No issues found.
