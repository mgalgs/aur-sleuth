---
package: claude-code
pkgver: 2.1.310
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 10331
completion_tokens: 2257
total_tokens: 12588
cost: 0.001350895
execution_time: 41.35
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 1
injection_attempts: 0
date: 2026-10-24T03:02:31Z
file_verdicts:
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config; no malicious content.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no evidence of malicious code.
---

Materializing claude-code from local mirror...
Materialized claude-code
Analyzing claude-code AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only variable assignments and function definitions in its global scope. No command substitutions, backticks, or other executable code exist at the top level that would run during `makepkg --printsrcinfo`. The variable expansions (e.g., `${pkgver}`, `${CARCH}`) are simple string interpolations of locally defined variables and pose no risk. The `package()` function is defined but not invoked during this step, so its contents are out of scope. Sourcing this PKGBUILD is safe.
</details>
<evidence></evidence>
<summary>No executable code in global scope; safe to source.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No executable code in global scope; safe to source.
Note: 1 remote source(s) have no checksum (sha256sums=SKIP), so the bytes are not verifiable: cc-legal::https://code.claude.com/docs/en/legal-and-compliance.md
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, .nvchecker.toml...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `.nvchecker.toml` is a standard configuration file for the `nvchecker` tool, which automatically checks for new upstream releases. It defines a version-check rule for `claude-code` using a regex source against the official downloads page at `https://downloads.claude.ai/claude-code-releases/latest`. The regex `.+` simply matches any non-empty content, typically used to capture a version string from the page. No suspicious operations, obfuscation, or supply-chain attack indicators are present. This file is entirely benign and typical for AUR packaging.
</details>
<evidence></evidence>
<summary>Standard nvchecker config; no malicious content.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config; no malicious content.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file is a purely declarative metadata file for the AUR package `claude-code`. It contains no executable code, no shell commands, no network requests, and no obfuscated or encoded data. All fields are standard AUR metadata: package name, description, dependencies, and upstream source URLs.

The binary sources (`claude` executable) are downloaded from the official Anthropic domain (`downloads.claude.ai`) with pinned SHA256 checksums, ensuring integrity. The legal notice source uses `SKIP` for its checksum, which is standard practice for non-executable content that may change upstream and is explicitly permitted by the analysis guidelines. No indicators of supply-chain attack or malicious behavior are present.
</details>
<evidence>

</evidence>
<summary>Standard AUR metadata, no malicious content.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a straightforward packaging script for the **claude-code** CLI tool. All binaries and resources are fetched from official Anthropic domains (`downloads.claude.ai`, `code.claude.com`). The binary sources include pinned SHA256 checksums, providing integrity verification. The license source uses `SKIP`, which is a normal AUR practice and not a security concern.

The `package()` function installs the declared upstream binary and creates a wrapper script that sets environment variables (`DISABLE_UPDATES=1`, `DISABLE_INSTALLATION_CHECKS=1`) to prevent the application from performing its own update checks or native-install health checks — a standard practice for distro-packaged software where the system package manager handles updates. There is no obfuscated code, no unexpected network requests, no exfiltration, no execution of fetched content outside the declared build steps, and no tampering with unrelated system files.

No genuinely malicious behavior is present.
</details>
<evidence>

</evidence>
<summary>Standard AUR PKGBUILD with no evidence of malicious code.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no evidence of malicious code.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,331
  Completion Tokens: 2,257
  Total Tokens: 12,588
  Total Cost: $0.001351
  Execution Time: 41.35 seconds

Final Status: SAFE


No issues found.
