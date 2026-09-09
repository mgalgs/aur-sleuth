---
package: openclaw
pkgver: 2026.9.3
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 10340
completion_tokens: 2169
total_tokens: 12509
cost: 0.001300558868
execution_time: 277.44
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-09T11:16:57Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no security issues.
  - file: openclaw.install
    status: safe
    summary: Standard AUR install script, no malicious code.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD for npm package, no red flags.
---

Materializing openclaw from local mirror...
Materialized openclaw
Analyzing openclaw AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's top-level scope contains only variable definitions (pkgname, pkgver, etc.) and function declarations (package()). There are no command substitutions, eval calls, or any other executable statements that would run when the file is sourced by `makepkg --printsrcinfo`. No dangerous operations are present in the global scope.
</details>
<evidence></evidence>
<summary>No dangerous top-level code.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, openclaw.install...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.SRCINFO` metadata file for an AUR package. It contains package description, dependencies, and sources. The source points to the official npm registry (`registry.npmjs.org`) with a pinned SHA256 checksum. No executable code, no obfuscation, no suspicious network destinations, and no commands are present. There is no evidence of malicious behavior.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata file, no security issues.</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, openclaw.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no security issues.
LLM auditresponse for openclaw.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Arch Linux .install script for the openclaw package. It contains two functions: `post_install()` prints messages instructing the user to install the gateway service and perform onboarding. `post_upgrade()` checks if the `openclaw.service` systemd unit is active and restarts it if so, then prints further instructions for the user. There are no network requests, no encoded or obfuscated commands, no file operations outside of standard systemctl usage, and no exfiltration or backdoor mechanisms. The script only performs normal packaging workflow actions—displaying messages and conditionally restarting a service—and does not deviate from expected behavior.
</details>
<evidence>
</evidence>
<summary>Standard AUR install script, no malicious code.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed openclaw.install. Status: SAFE -- Standard AUR install script, no malicious code.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging conventions for a Node.js application distributed via the official npm registry.  
- The source tarball is fetched from `registry.npmjs.org` with a pinned SHA‑256 checksum — no supply‑chain risk there.  
- The `package()` function runs `npm install`, then manually invokes the package&#x27;s own bundled postinstall script (`postinstall-bundled-plugins.mjs`) as a documented workaround for a lifecycle‑marker bug. This is a legitimate packaging fix, not an injection of external code.  
- The wrapper script that sets the environment variable and execs the main module is simple and transparent.  
- No obfuscation, no unexpected network requests, no tampering with system files outside the package&#x27;s scope.  

All operations are consistent with the package&#x27;s stated purpose as an AI gateway. No evidence of malicious content was found.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD for npm package, no red flags.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD for npm package, no red flags.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,340
  Completion Tokens: 2,169
  Total Tokens: 12,509
  Total Cost: $0.001301
  Execution Time: 277.44 seconds

Final Status: SAFE


No issues found.
