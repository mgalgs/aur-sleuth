---
package: claude-code
pkgver: 2.1.288
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 10332
completion_tokens: 1966
total_tokens: 12298
cost: 0.000399392
execution_time: 32.39
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 1
injection_attempts: 0
date: 2026-10-02T23:02:48Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with pinned binary checksums; no malicious behavior detected.
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config, no security concerns.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD from official source, no malicious indicators.
---

Materializing claude-code from local mirror...
Materialized claude-code
Analyzing claude-code AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD’s top-level scope consists solely of variable definitions (pkgname, pkgver, source arrays, etc.). No command substitutions, eval, curl, wget, or other executable expressions appear outside of function bodies. The only code beyond variable assignments is the `package()` function, which is not executed by `makepkg --printsrcinfo`. Therefore sourcing this PKGBUILD presents no risk of executing malicious instructions at parse time.
</details>
<evidence></evidence>
<summary>No top-level code execution risk.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level code execution risk.
Note: 1 remote source(s) have no checksum (sha256sums=SKIP), so the bytes are not verifiable: cc-legal::https://code.claude.com/docs/en/legal-and-compliance.md
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, .nvchecker.toml...
[0/3] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file is a standard Arch User Repository metadata file for the `claude-code` package. It declares the package version, architecture, dependencies, optdepends, and upstream sources. The binary sources point to `downloads.claude.ai`, which matches the package's stated upstream distribution host, and both architecture-specific binaries have pinned SHA-256 checksums rather than `SKIP`.

The only `SKIP` checksum is for a documentation file fetched from `code.claude.com`, an upstream domain related to the package. This is a trust/hygiene choice and not evidence of malice. There are no embedded commands, no obfuscated payloads, no suspicious downloads, and no file operations beyond normal package source declarations. The file is consistent with ordinary AUR packaging practice.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata with pinned binary checksums; no malicious behavior detected.</summary>
</security_assessment>

[1/3] Reviewing .nvchecker.toml, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with pinned binary checksums; no malicious behavior detected.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This configuration file for nvchecker is benign. It defines a regex source checking the upstream Claude Code releases page for the latest version number. No commands are executed, no data is exfiltrated, and the URL points to the project's legitimate download host. This is a standard AUR workflow component.
</details>
<evidence></evidence>
<summary>Standard nvchecker config, no security concerns.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config, no security concerns.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Arch packaging practices for a binary application. All sources are fetched from the official Anthropic/Claude domain (downloads.claude.ai and code.claude.com), and SHA256 checksums are provided for both architecture-specific binaries to verify integrity. The package() function simply installs the binary to /opt, creates a wrapper script in /usr/bin that sets environment variables to disable the application's own update and installation checks (a routine packaging practice to prevent upstream self-updating), and installs the license file. There is no obfuscated code, no suspicious network requests, no exfiltration, and no execution of untrusted content. The file contains no evidence of a supply-chain attack or malicious intent.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD from official source, no malicious indicators.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD from official source, no malicious indicators.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,332
  Completion Tokens: 1,966
  Total Tokens: 12,298
  Total Cost: $0.000399
  Execution Time: 32.39 seconds

Final Status: SAFE


No issues found.
