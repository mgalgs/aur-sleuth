---
package: claude-code
pkgver: 2.1.287
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 10337
completion_tokens: 3009
total_tokens: 13346
cost: 0.00068462030
execution_time: 31.82
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 1
injection_attempts: 0
date: 2026-10-01T19:01:27Z
file_verdicts:
  - file: .nvchecker.toml
    status: safe
    summary: Standard version-checking config; no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no malicious indicators.
  - file: .SRCINFO
    status: safe
    summary: Clean AUR metadata; official sources, pinned binary checksums; SKIP only on docs.
---

Materializing claude-code from local mirror...
Materialized claude-code
Analyzing claude-code AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains standard variable assignments (pkgver, pkgrel, arch, source URLs, checksums, etc.) and a `package()` function definition. There are no command substitutions, backtick execs, eval calls, or any other executable logic in the global/top-level scope. No code that could download, exfiltrate, or modify the system runs during `makepkg --printsrcinfo`. The `package()` function will only be executed later during packaging and is out of scope for this narrow gate.
</details>
<evidence></evidence>
<summary>No top-level code execution risks found.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level code execution risks found.
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
This is a standard nvchecker configuration file used by AUR maintainers to automatically detect new releases. The `source = "regex"` directive instructs nvchecker to fetch the provided URL and apply the regex to find version strings. The URL points to `downloads.claude.ai/claude-code-releases/latest`, which is the official upstream download location for Claude Code releases. The regex `.+` matches any content, which is a common but imprecise pattern (it simply checks that the resource is non-empty). There is no network request to an unexpected host, no code execution, no obfuscation, and no data exfiltration. The file is entirely benign.
</details>
<evidence></evidence>
<summary>Standard version-checking config; no security issues.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard version-checking config; no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard, well-structured AUR package for Claude Code. The binary is downloaded from the official Anthropic domain (`downloads.claude.ai`) with pinned SHA256 checksums. The `package()` function simply installs the binary, creates a helper wrapper script that disables upstream update checks (standard practice for distro-packaged software), and installs the license file. There are no suspicious operations, no obfuscated code, no unexpected network requests, and no execution of attacker-controlled content. The wrapper script is plain shell that only sets environment variables and execs the real binary.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with no malicious indicators.</summary>
</security_assessment>

[2/3] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no malicious indicators.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO is a standard AUR package metadata file for the claude-code prebuilt binary. All network sources point to official Anthropic/Claude domains (downloads.claude.ai for the binaries, code.claude.com for the legal text), consistent with the upstream project URL (github.com/anthropics/claude-code). The two architecture-specific binary sources have pinned sha256 checksums, which is good supply-chain hygiene. No code execution, obfuscation, suspicious file operations, or unexpected network destinations are present in this file.

Minor note: the legal-compliance.md source uses a SKIP checksum, so it is fetched without integrity verification. It is a non-executable documentation file rather than code, and this is a trust/hygiene consideration only — not evidence of malice. The prebuilt binary blobs themselves are the upstream application and are checksum-pinned to Anthropic's official release host, which is expected packaging practice for this kind of package.
</details>
<evidence>
</evidence>
<summary>
Clean AUR metadata; official sources, pinned binary checksums; SKIP only on docs.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Clean AUR metadata; official sources, pinned binary checksums; SKIP only on docs.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,337
  Completion Tokens: 3,009
  Total Tokens: 13,346
  Total Cost: $0.000685
  Execution Time: 31.82 seconds

Final Status: SAFE


No issues found.
