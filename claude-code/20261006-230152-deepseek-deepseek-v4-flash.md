---
package: claude-code
pkgver: 2.1.292
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 10405
completion_tokens: 1634
total_tokens: 12039
cost: 0.0023776575
execution_time: 43.86
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 1
injection_attempts: 0
date: 2026-10-06T23:01:52Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Official binary package with pinned checksums; no malicious or suspicious behavior detected.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no malicious content.
  - file: .nvchecker.toml
    status: safe
    summary: No malicious behavior found. Standard nvchecker config pointing to official upstream URL.
---

Materializing claude-code from local mirror...
Materialized claude-code
Analyzing claude-code AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains standard variable assignments at global scope: metadata fields (`pkgname`, `pkgver`, `pkgrel`, etc.), dependency lists, source URLs, and checksums. There are no command substitutions, backtick executions, `eval`, `curl`, `wget`, or any other function calls that would execute at source time. The `package()` function contains file installation logic, but it is not invoked during `makepkg --printsrcinfo`. No obfuscated or encoded content is present. Running this command poses no risk.
</details>
<evidence></evidence>
<summary>Global scope is benign, no execution risk.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Global scope is benign, no execution risk.
Note: 1 remote source(s) have no checksum (sha256sums=SKIP), so the bytes are not verifiable: cc-legal::https://code.claude.com/docs/en/legal-and-compliance.md
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, .nvchecker.toml...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD packages the official `claude-code` binary from Anthropic&apos;s own distribution hosts (`downloads.claude.ai` and `code.claude.com`). The binary sources are pinned to a specific version with proper SHA-256 checksums for the x86_64 and aarch64 artifacts. The legal/license source uses `SKIP` checksum, which is a hygiene choice and not a security issue. The `package()` function simply installs the provided binary into `/opt/claude-code/bin/claude`, creates a standard wrapper script in `/usr/bin` that sets environment variables to disable upstream auto-update checks, and installs the license file. There is no obfuscation, no unexpected network access, no downloading/executing of external code, and no manipulation of files outside the package&apos;s own install scope. The wrapper script is benign and serves the package&apos;s stated purpose.
</details>
<evidence>
</evidence>
<summary>
Official binary package with pinned checksums; no malicious or suspicious behavior detected.
</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, .nvchecker.toml...
+ Reviewed PKGBUILD. Status: SAFE -- Official binary package with pinned checksums; no malicious or suspicious behavior detected.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file is standard package metadata for the AUR `claude-code` package. It defines the package name, version, upstream URL, dependencies, and two binary source downloads from the project's official distribution domain (`downloads.claude.ai`). The binary tarballs have pinned SHA-256 checksums, ensuring integrity. The license source uses `SKIP` for checksums, which is a normal AUR practice. There are no suspicious commands, obfuscation, network requests to unexpected hosts, or any other indicators of malicious activity. The file is purely declarative metadata and contains no executable code.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file, no malicious content.</summary>
</security_assessment>

[2/3] Reviewing .nvchecker.toml...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no malicious content.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a configuration file for nvchecker, a standard tool used by AUR maintainers to check for new upstream versions. It defines a single check for the `claude-code` package: it fetches `https://downloads.claude.ai/claude-code-releases/latest` and uses the regex `.+` to extract a version string from that page.

The URL points to the package's own official upstream domain (downloads.claude.ai), which is the expected source for checking versions. There is no execution of fetched content, no download-and-run behavior, no exfiltration of local data, no obfuscation, and no network destination unrelated to the package. The regex `.+` is extremely permissive and could theoretically match unintended content, but that is a version-detection hygiene concern, not evidence of a supply-chain attack. Nothing in this file performs a dangerous or malicious action.
</details>
<evidence></evidence>
<summary>No malicious behavior found. Standard nvchecker config pointing to official upstream URL.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .nvchecker.toml. Status: SAFE -- No malicious behavior found. Standard nvchecker config pointing to official upstream URL.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,405
  Completion Tokens: 1,634
  Total Tokens: 12,039
  Total Cost: $0.002378
  Execution Time: 43.86 seconds

Final Status: SAFE


No issues found.
