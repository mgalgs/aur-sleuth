---
package: claude-code
pkgver: 2.1.294
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 10559
completion_tokens: 3052
total_tokens: 13611
cost: 0.0039635786
execution_time: 89.33
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 1
injection_attempts: 0
date: 2026-10-08T07:04:43Z
file_verdicts:
  - file: .nvchecker.toml
    status: safe
    summary: Benign nvchecker configuration for checking upstream claude-code releases; no security issues found.
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO with no malicious indicators.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with pinned binary checksums, no malicious behavior.
---

Materializing claude-code from local mirror...
Materialized claude-code
Analyzing claude-code AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The global/top-level scope of this PKGBUILD consists only of static variable assignments and an empty `sha256sums` entry. There are no command substitutions, backtick executions, `eval`, or any other code constructs that would execute arbitrary commands when the PKGBUILD is sourced by `makepkg --printsrcinfo`. The `package()` function definition is included but its body is not executed during this step per the documented scoping rules. No dangerous operations are possible during sourcing.
</details>
<evidence></evidence>
<summary>No top-level execution risks in PKGBUILD.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level execution risks in PKGBUILD.
Note: 1 remote source(s) have no checksum (sha256sums=SKIP), so the bytes are not verifiable: cc-legal::https://code.claude.com/docs/en/legal-and-compliance.md
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, .nvchecker.toml...
[0/3] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a configuration file for `nvchecker`, a standard tool used by AUR maintainers to automatically check for new upstream releases. It defines a single checker named `claude-code` that fetches the latest release information from the official Anthropic/Claude download endpoint (`https://downloads.claude.ai/claude-code-releases/latest`) and uses a simple regex (`.+`) to extract the version string.

There is no code execution, no obfuscation, no suspicious downloads, and no exfiltration of local data. The URL points to the application's own official upstream domain, and the behavior is consistent with normal version-checking automation. This is benign packaging tooling.
</details>
<evidence>
</evidence>
<summary>
Benign nvchecker configuration for checking upstream claude-code releases; no security issues found.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Benign nvchecker configuration for checking upstream claude-code releases; no security issues found.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file describes a standard AUR package for `claude-code` that fetches its prebuilt binaries from the project's own official download domain (`downloads.claude.ai`) with pinned SHA-256 checksums for each architecture. The only unpinned source is a URL to the project's legal/compliance documentation with `SKIP` checksum – a routine practice for documentation sources that do not affect build integrity. All dependencies and optdependencies are consistent with the tool's stated purpose (an agentic terminal coding assistant). No evidence of obfuscation, unexpected network destinations, exfiltration, backdoors, or any code execution outside normal package declaration. The file is a static metadata descriptor and contains no executable instructions.
</details>
<evidence></evidence>
<summary>Standard .SRCINFO with no malicious indicators.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO with no malicious indicators.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD downloads a pre-built binary from the official Anthropic/Claude Code domain (`downloads.claude.ai`) with pinned SHA256 checksums for both x86_64 and aarch64. A legal/license file is also fetched from `code.claude.com` with a `SKIP` checksum, which is acceptable per AUR conventions. The `package()` function installs the binary to `/opt/claude-code/bin/claude` and creates a wrapper at `/usr/bin/claude` that sets `DISABLE_UPDATES=1` and `DISABLE_INSTALLATION_CHECKS=1` to suppress the upstream auto-update mechanism and native-install health warnings. There is no obfuscated code, unexpected network destinations, or any file operations outside the package's own scope.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with pinned binary checksums, no malicious behavior.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with pinned binary checksums, no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,559
  Completion Tokens: 3,052
  Total Tokens: 13,611
  Total Cost: $0.003964
  Execution Time: 89.33 seconds

Final Status: SAFE


No issues found.
