---
package: claude-code
pkgver: 2.1.329
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 10414
completion_tokens: 2914
total_tokens: 13328
cost: 0.00146178
execution_time: 22.01
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 1
injection_attempts: 0
date: 2026-11-20T00:31:54Z
file_verdicts:
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config for version monitoring.
  - file: .SRCINFO
    status: safe
    summary: Clean metadata; no malicious code or behavior.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD for claude-code; no security issues.
---

Materializing claude-code from local mirror...
Cloning https://aur.archlinux.org/claude-code.git...
Cloned claude-code
Analyzing claude-code AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global/top-level scope contains only variable definitions (strings, arrays, comments) and a function definition for `package()`. There are no command substitutions, backticks, `eval`, `curl`, `wget`, or any other code that would execute when the file is sourced. The `package()` function body is defined but will not be executed by `makepkg --printsrcinfo` — only the top-level scope is evaluated during that command. No suspicious or dangerous operations are present in the global scope.
</details>
<evidence>
</evidence>
<summary>No executable code in top-level scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No executable code in top-level scope.
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
This is a configuration file for nvchecker, a tool used by AUR maintainers to automatically detect new upstream releases. The file instructs nvchecker to check the URL `https://downloads.claude.ai/claude-code-releases/latest` (the official releases page) and treat any change in the fetched content (via the catch-all regex `.+`) as a new version. There is no executable code, no obfuscation, no file manipulation, and no network destination unrelated to the package&#x27;s own upstream. The file is purely declarative and performs no actions itself; it simply describes how to check for updates. This is a standard, non‑malicious packaging support file.</details>
<evidence></evidence>
<summary>Standard nvchecker config for version monitoring.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config for version monitoring.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard AUR `.SRCINFO` metadata file for the `claude-code` package from Anthropic. It defines the package name, version, dependencies, and three source URLs:

- A legal/compliance document from `code.claude.com` (VCS source with `sha256sums = SKIP`, which is normal for VCS sources).
- Two binary downloads (`claude` executables) from `downloads.claude.ai` for x86_64 and aarch64 architectures. Both binaries have pinned `sha256sums` verifying integrity.

All network destinations (`downloads.claude.ai`, `code.claude.com`, and the GitHub URL) are directly related to the stated upstream project (Anthropic's Claude Code). There is no obfuscated code, no dangerous command execution, no data exfiltration, and no reference to unexpected hosts. The file contains only static metadata — no logic, no scripts, no build steps. It conforms to standard AUR packaging practices.
</details>
<evidence></evidence>
<summary>Clean metadata; no malicious code or behavior.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Clean metadata; no malicious code or behavior.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a straightforward, well-structured packaging of the official claude-code binary from Anthropic. The binary is downloaded from the official Anthropic domain (`downloads.claude.ai`) with pinned SHA-256 checksums for both x86_64 and aarch64 architectures. The license file is fetched from `code.claude.com` with a SKIP checksum, which is acceptable for a plain text document. The `package()` function installs the binary to `/opt/claude-code/bin/claude` and creates a simple wrapper script in `/usr/bin/claude` that sets environment variables to suppress upstream update checks and installation warnings — standard practice for AUR-packaged self-contained binaries. There are no obfuscated commands, no data exfiltration, no unexpected network requests, no eval or curl|bash patterns, and no tampering with files outside the package&#x27;s own scope. This is a clean PKGBUILD with no evidence of malicious intent.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD for claude-code; no security issues.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD for claude-code; no security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,414
  Completion Tokens: 2,914
  Total Tokens: 13,328
  Total Cost: $0.001462
  Execution Time: 22.01 seconds

Final Status: SAFE


No issues found.
