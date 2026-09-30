---
package: claude-code
pkgver: 2.1.278
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 10220
completion_tokens: 1848
total_tokens: 12068
cost: 0.00065850512
execution_time: 38.71
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 1
injection_attempts: 0
date: 2026-09-19T07:01:33Z
file_verdicts:
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config; no security concerns.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with pinned checksums and official sources.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with pinned checksums from official sources.
---

Materializing claude-code from local mirror...
Materialized claude-code
Analyzing claude-code AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's top-level scope contains only standard variable definitions (package metadata, dependencies, source URLs, checksums) and function definitions (`package()`). There are no command substitutions, no backtick expansions, no `$(...)` constructions, no `eval`, no `curl`, no `wget`, and no other code that would execute arbitrary commands when the file is sourced. All source URL strings are safely quoted and simply stored as array elements. Running `makepkg --printsrcinfo` will only source this file, which is no more dangerous than sourcing any shell script that defines variables and functions without executing commands.
</details>
<evidence></evidence>
<summary>No dangerous top-level execution in PKGBUILD.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level execution in PKGBUILD.
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
This file is a configuration for `nvchecker`, a standard tool used to monitor upstream releases. It defines a source named `claude-code` that checks the URL `https://downloads.claude.ai/claude-code-releases/latest` using a regex pattern to extract the latest version string. The URL points to the official Claude AI downloads domain, which is the expected upstream for the package. The regex `.+` is broad but typical for capturing any version string from such endpoints. There is no obfuscated code, no network requests to unexpected hosts, no file operations, and no execution of untrusted content. The file is entirely declarative and serves a legitimate packaging purpose.
</details>
<evidence></evidence>
<summary>Standard nvchecker config; no security concerns.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config; no security concerns.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Arch packaging practices for distributing pre-compiled binaries from an official upstream source. The binary downloads come from `downloads.claude.ai` (Anthropic&#x27;s own distribution domain) with pinned SHA256 checksums verifying integrity. The legal/license source uses SKIP checksums, which is acceptable for a plain markdown document from the project&#x27;s own site.

The wrapper script in `package()` sets `DISABLE_UPDATES` and `DISABLE_INSTALLATION_CHECKS` environment variables — a routine and expected packaging technique to prevent the bundled application from attempting its own self-update mechanism or complaining about the system-managed install path (`/opt/claude-code` vs `~/.local/bin`). No code is obfuscated, no unexpected network requests are made at build or install time, and no data exfiltration or backdoor behavior is present.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with pinned checksums and official sources.</summary>
</security_assessment>

[2/3] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with pinned checksums and official sources.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a standard AUR metadata file that declares package sources, dependencies, and checksums. All binary sources are fetched from Anthropic's official domain (`downloads.claude.ai`) with pinned SHA-256 checksums, ensuring integrity of the downloaded binaries. The legal document source (`code.claude.com`) has its checksum set to `SKIP`, which is a common practice for non-essential metadata files and not indicative of malicious intent. No executable code, obfuscation, suspicious network destinations, or unexpected system operations are present.
</details>
<evidence></evidence>
<summary>Standard AUR metadata with pinned checksums from official sources.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with pinned checksums from official sources.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,220
  Completion Tokens: 1,848
  Total Tokens: 12,068
  Total Cost: $0.000659
  Execution Time: 38.71 seconds

Final Status: SAFE


No issues found.
