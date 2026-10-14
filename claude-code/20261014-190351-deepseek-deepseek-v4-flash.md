---
package: claude-code
pkgver: 2.1.300
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 10316
completion_tokens: 1923
total_tokens: 12239
cost: 0.001288742
execution_time: 34.11
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 1
injection_attempts: 0
date: 2026-10-14T19:03:50Z
file_verdicts:
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config for version checking.
  - file: .SRCINFO
    status: safe
    summary: AUR metadata file, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Clean PKGBUILD; no evidence of malicious behavior.
---

Materializing claude-code from local mirror...
Materialized claude-code
Analyzing claude-code AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources the PKGBUILD and executes only top-level code. In this PKGBUILD, the top-level scope contains only standard variable assignments: metadata (`pkgname`, `pkgver`, `pkgrel`, `pkgdesc`, `arch`, `url`, `license`, `depends`, `options`, `optdepends`) and `source`/checksum arrays. There are no top-level command substitutions, no calls to `eval`, `curl`, `wget`, `base64`, or any other executable statements that would run during sourcing.

The `package()` function contains file installation and creation of a wrapper script, but that function is not executed by `makepkg --printsrcinfo`, so it is out of scope for this narrow gate and will be reviewed in the full audit. Missing/SKIP checksums are also not relevant at this step, since no sources are downloaded or verified here.
</details>
<evidence>
</evidence>
<summary>
Top-level PKGBUILD scope only defines variables; no malicious code executes during printsrcinfo.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD scope only defines variables; no malicious code executes during printsrcinfo.
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
This is a configuration file for `nvchecker`, a tool used to check for new upstream versions of a package. It defines a source of type `regex`, pointing to `https://downloads.claude.ai/claude-code-releases/latest` (the official upstream URL for Claude Code releases) and uses the regex `.+` to match version information from that page. This is a standard, non-malicious pattern for automating version checks in AUR packaging. There is no code execution, no obfuscation, no network requests to unexpected hosts, and no data exfiltration.
</details>
<evidence></evidence>
<summary>Standard nvchecker config for version checking.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config for version checking.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a standard AUR package metadata file that defines the package name, version, dependencies, and source URLs. The sources are fetched from official Claude AI domains (code.claude.com and downloads.claude.ai), which are the legitimate upstream sources for this proprietary application. The binary sources have pinned SHA256 checksums, ensuring integrity. The legal documentation source uses SKIP for sha256, which is a common practice for text documents that may change. There are no executable commands, no obfuscation, no suspicious network destinations, and no system modification instructions in this file. It is purely declarative metadata.
</details>
<evidence></evidence>
<summary>AUR metadata file, no malicious content.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- AUR metadata file, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Arch packaging practices for a prebuilt binary package from a well-known upstream (Anthropic&#x27;s Claude Code). All source URLs point to the official `downloads.claude.ai` CDN or `code.claude.com` for the license, with pinned SHA-256 checksums on the binary artifacts. The `package()` function installs the binary into `/opt/claude-code/bin/claude`, creates a wrapper script at `/usr/bin/claude` that sets two environment variables to suppress upstream update checks and installation warnings, and copies the license file. There is no obfuscated code, no unexpected network requests, no execution of fetched content, no exfiltration of system data, and no modification of files outside the package&#x27;s own installation paths. The only potential concern is a SKIP checksum on the legal document source, but per policy that does not constitute evidence of malice.
</details>
<evidence></evidence>
<summary>Clean PKGBUILD; no evidence of malicious behavior.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Clean PKGBUILD; no evidence of malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,316
  Completion Tokens: 1,923
  Total Tokens: 12,239
  Total Cost: $0.001289
  Execution Time: 34.11 seconds

Final Status: SAFE


No issues found.
