---
package: claude-code
pkgver: 2.1.305
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 10548
completion_tokens: 3697
total_tokens: 14245
cost: 0.001632722
execution_time: 37.13
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 1
injection_attempts: 0
date: 2026-10-20T23:05:04Z
file_verdicts:
  - file: .nvchecker.toml
    status: safe
    summary: Standard version checker config for upstream releases.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file with no security concerns.
  - file: PKGBUILD
    status: safe
    summary: Clean, standard PKGBUILD with no security concerns.
---

Materializing claude-code from local mirror...
Materialized claude-code
Analyzing claude-code AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains variable definitions (pkgname, pkgver, source, sha256sums, etc.) and a single function definition `package()`. There are no top-level command substitutions, eval calls, external downloads, file writes, or any other executable statements that would run during `makepkg --printsrcinfo`. The `package()` function body is only executed during packaging, which is out of scope for this narrow gate. None of the content in the global scope performs any network operations, data exfiltration, or code execution beyond standard variable assignment and function definition. It is safe to source this PKGBUILD.
</details>
<evidence>
</evidence>
<summary>Only variable assignments and a function definition; no active code.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Only variable assignments and a function definition; no active code.
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
This is an `nvchecker` configuration file, a standard tool used in AUR packaging to automatically check for new upstream releases. The file directs the checker to inspect `https://downloads.claude.ai/claude-code-releases/latest` (the project&#39;s own official releases page) and match content using a regex pattern. The URL is the legitimate upstream source for Claude Code releases. No dangerous commands, obfuscation, data exfiltration, or unexpected network destinations are present.
</details>
<evidence>
</evidence>
<summary>Standard version checker config for upstream releases.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard version checker config for upstream releases.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file is purely metadata—it defines the package name, version, description, dependencies, and source URLs for the AUR helper. It contains no executable code, no commands, no encoded payloads, and no obfuscation. The binary sources (`x86_64` and `aarch64`) are downloaded from the upstream vendor&#39;s official domain (`downloads.claude.ai`) and are pinned with specific SHA-256 checksums, ensuring integrity verification. The one source entry with `sha256sums = SKIP` points to a legal/compliance documentation page, which is not a downloadable artifact; SKIP in this context is unremarkable. The optional dependencies (git, github-cli, ripgrep, tmux, etc.) are sensible for an agentic coding tool and pose no supply-chain risk. No evidence of genuinely malicious or dangerous behavior exists.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file with no security concerns.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file with no security concerns.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Arch packaging practices for distributing a pre-built binary package. The binary sources point to Anthropic&#x27;s official download server (`downloads.claude.ai`), and their integrity is guaranteed by pinned SHA-256 checksums — only the purely informational legal document source uses `SKIP`, which is appropriate for an unpinned text file fetched at build time.  

The `package()` function performs only expected, transparent operations: installing the binary into `/opt/claude-code/bin/`, creating a wrapper script in `/usr/bin/` that sets two environment variables (`DISABLE_UPDATES=1`, `DISABLE_INSTALLATION_CHECKS=1`) before `exec`-ing the real binary, and copying the license file. The wrapper&#x27;s purpose is clearly explained and is a routine adaptation to prevent the upstream native-installer health check from triggering false warnings.  

No obfuscated code, no unexpected network requests, no dangerous commands (`eval`, `curl`/`wget` fetching+executing), and no tampering with data outside the package&#x27;s own scope. The file exhibits no signs of a supply-chain attack.
</details>
<evidence>
</evidence>
<summary>Clean, standard PKGBUILD with no security concerns.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Clean, standard PKGBUILD with no security concerns.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,548
  Completion Tokens: 3,697
  Total Tokens: 14,245
  Total Cost: $0.001633
  Execution Time: 37.13 seconds

Final Status: SAFE


No issues found.
