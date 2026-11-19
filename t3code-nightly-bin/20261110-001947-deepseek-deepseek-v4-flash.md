---
package: t3code-nightly-bin
pkgver: 0.1.9_nightly.20261109.4443
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 9701
completion_tokens: 1293
total_tokens: 10994
cost: 0.001118117
execution_time: 30.34
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-10T00:19:47Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard pinned AppImage PKGBUILD with no malicious elements.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; no security issues.
---

Materializing t3code-nightly-bin from local mirror...
Cloning https://aur.archlinux.org/t3code-nightly-bin.git...
Cloned t3code-nightly-bin
Analyzing t3code-nightly-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Sourcing this PKGBUILD for `makepkg --printsrcinfo` involves only static variable assignments, array definitions, and function declarations. There are no top-level command substitutions, backtick executions, `eval`, or any other code that runs during sourcing. The `prepare()` and `package()` functions are defined but not executed at this stage. All content in global scope is standard PKGBUILD metadata and source URLs pointing to the project's official GitHub repository. No malicious or executable constructs are present at the top level.
</details>
<evidence></evidence>
<summary>No executing code in global scope; safe to parse.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No executing code in global scope; safe to parse.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD for `t3code-nightly-bin` follows standard AUR packaging practices for a pre-built AppImage. The source is pinned to a specific upstream release with hardcoded SHA-256 checksums. The `prepare()` function extracts the AppImage and validates the existence of essential files (AppRun and chrome-sandbox). The `package()` function installs the extracted contents into `/opt/t3code-nightly-bin` and sets the `chrome-sandbox` binary with SUID permissions (4755), which is normal for Chromium/Electron-based applications that rely on namespace sandboxing. No obfuscated commands, unexpected network requests, data exfiltration, or code injection are present. The wrapper script is a simple exec to the AppRun. The only potential security consideration is the SUID sandbox binary, but this is expected upstream behavior, not a supply-chain attack.
</details>
<evidence>
</evidence>
<summary>Standard pinned AppImage PKGBUILD with no malicious elements.</summary>
</security_assessment>

[1/2] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard pinned AppImage PKGBUILD with no malicious elements.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a metadata descriptor for the AUR package `t3code-nightly-bin`. It declares a source AppImage and a LICENSE file, both fetched from the official GitHub repository of the project (pingdotgg/t3code). Checksums (sha256sums) are provided and pinned, ensuring download integrity. There are no obfuscated commands, no suspicious network destinations, no dangerous system operations, and no code execution defined in this file. The content follows standard AUR packaging practices and shows no signs of malicious injection or supply-chain tampering.
</details>
<evidence></evidence>
<summary>Standard AUR metadata; no security issues.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; no security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 9,701
  Completion Tokens: 1,293
  Total Tokens: 10,994
  Total Cost: $0.001118
  Execution Time: 30.34 seconds

Final Status: SAFE


No issues found.
