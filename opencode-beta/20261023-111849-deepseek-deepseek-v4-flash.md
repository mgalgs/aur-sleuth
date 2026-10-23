---
package: opencode-beta
pkgver: 2.1.4
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 12491
completion_tokens: 8939
total_tokens: 21430
cost: 0.002763579
execution_time: 73.55
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-23T11:18:49Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: Plain MIT license text; no security concerns.
  - file: opencode2
    status: safe
    summary: Simple wrapper script, no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO with verified sources.
  - file: PKGBUILD
    status: safe
    summary: Pinned checksums, official sources, clean packaging.
---

Materializing opencode-beta from local mirror...
Materialized opencode-beta
Analyzing opencode-beta AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The global/top-level scope of this PKGBUILD consists entirely of static variable definitions (pkgname, pkgver, arch, source arrays, checksums, etc.). There are no command substitutions (`$()`), backticks, `eval` invocations, `curl`/`wget` calls, or any other executable constructs outside of function definitions. The `package()` function, which contains installation commands, is explicitly not executed by `makepkg --printsrcinfo` and is therefore out of scope for this gate. Sourcing this file to extract metadata poses no risk of executing a payload or exfiltrating data.
</details>
<evidence>
</evidence>
<summary>
Global scope has no dangerous code execution.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Global scope has no dangerous code execution.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, LICENSE...
[0/4] Reviewing .SRCINFO, LICENSE, PKGBUILD...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard MIT License template. It contains no executable code, no commands, no network requests, no obfuscated content, and no packaging or build logic. It is simply a plain-text copyright notice and permission statement. There is no evidence of any supply-chain attack or malicious behavior.
</details>
<evidence></evidence>
<summary>Plain MIT license text; no security concerns.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, LICENSE, PKGBUILD, opencode2...
[1/4] Reviewing .SRCINFO, PKGBUILD, opencode2...
+ Reviewed LICENSE. Status: SAFE -- Plain MIT license text; no security concerns.
LLM auditresponse for opencode2:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard wrapper script that executes the `opencode` binary located in the same directory, forwarding all arguments. No network requests, obfuscation, file operations, or system modifications are present. The script simply uses `exec` to hand off execution to the main application binary, which is a common packaging practice.
</details>
<evidence></evidence>
<summary>Simple wrapper script, no security concerns.</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed opencode2. Status: SAFE -- Simple wrapper script, no security concerns.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard AUR `.SRCINFO` metadata file for the `opencode-beta` package. All binary download sources point exclusively to the official npm registry (`registry.npmjs.org`) under the `@opencode/cli-*` namespace, which is the expected distribution channel for this CLI tool. The version is pinned (2.1.4), and each source tarball has its sha256sum explicitly provided, enabling integrity verification. There is no obfuscated code, no execution of external commands (no `curl|bash`, `eval`, or base64 decoding), no references to unexpected external hosts, and no logic for data exfiltration or system modification. The `.SRCINFO` file purely declares the package structure and source download locations; it contains no executable logic that could serve as a supply-chain attack vector on its own. The sourcing from npm for a Node.js/CLI tool is standard packaging practice.
</details>
<evidence></evidence>
<summary>Standard .SRCINFO with verified sources.</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO with verified sources.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Arch Linux packaging practices with strong integrity guarantees. All remote sources (from `registry.npmjs.org`) are pinned with explicit `sha256sums`, and the local sources provided in the AUR archive are similarly checksummed. The upstream URL clearly references the project's GitHub repository. The `package()` function performs only standard install operations into `$pkgdir`, with no dynamic code execution, obfuscation, unexpected network requests, or tampering with system files outside the package scope. No evidence of a malicious supply-chain injection exists in this file.
</details>
<evidence></evidence>
<summary>Pinned checksums, official sources, clean packaging.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Pinned checksums, official sources, clean packaging.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,491
  Completion Tokens: 8,939
  Total Tokens: 21,430
  Total Cost: $0.002764
  Execution Time: 73.55 seconds

Final Status: SAFE


No issues found.
