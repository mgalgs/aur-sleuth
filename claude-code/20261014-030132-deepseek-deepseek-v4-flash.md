---
package: claude-code
pkgver: 2.1.299
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 10329
completion_tokens: 1619
total_tokens: 11948
cost: 0.001234597
execution_time: 30.35
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 1
injection_attempts: 0
date: 2026-10-14T03:01:31Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no malicious content.
  - file: .nvchecker.toml
    status: safe
    summary: Standard AUR version-checker config, no malicious behavior.
  - file: PKGBUILD
    status: safe
    summary: Clean AUR package, no signs of malicious behavior.
---

Materializing claude-code from local mirror...
Materialized claude-code
Analyzing claude-code AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` only sources the PKGBUILD's top-level scope. This PKGBUILD's global scope consists entirely of static variable assignments (`pkgname`, `pkgver`, `source`, `sha256sums`, etc.) and does not contain command substitution, function calls, downloads, or execution of external code. The actual packaging logic resides inside the `package()` function, which is not executed during `makepkg --printsrcinfo`.

The `sha256sums` entries include `SKIP` for the legal-text source, but missing or skipped checksums are not a concern for this narrow gate because no sources are downloaded or verified during `--printsrcinfo`. The downloadable binary sources have pinned checksums. No malicious top-level behavior is present.
</details>
<evidence>
</evidence>
<summary>
Top-level PKGBUILD scope is static; no dangerous code executes during printsrcinfo.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD scope is static; no dangerous code executes during printsrcinfo.
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
This `.SRCINFO` file contains standard metadata for the `claude-code` AUR package. It defines the package name, version, architecture support, dependencies, and source URLs. All binary sources point to the official `downloads.claude.ai` domain with pinned SHA256 checksums, ensuring integrity of the downloaded binaries. The legal doc source (`code.claude.com`) has a `SKIP` checksum, which is a common and acceptable practice for non-essential documentation files. There is no obfuscated code, no embedded commands, no references to suspicious or unexpected hosts, and no behavior that deviates from normal AUR packaging practices.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata file, no malicious content.</summary>
</security_assessment>

[1/3] Reviewing .nvchecker.toml, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no malicious content.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a configuration file for `nvchecker`, a standard AUR tool used to automatically check for new upstream releases. It uses a regex source to scrape the version from the official Claude Code download page (`downloads.claude.ai`), which is the legitimate upstream domain for this package. The regex `.+` is broad but not malicious; it simply matches the page content to extract version information. There is no obfuscation, no dangerous commands, and no exfiltration of data. The file is purely informational for automated version checking and poses no security threat.
</details>
<evidence/>
<summary>Standard AUR version-checker config, no malicious behavior.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard AUR version-checker config, no malicious behavior.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard Arch Linux package recipe for distributing the Claude Code binary. It downloads the binary from Anthropic's official domain (`downloads.claude.ai`) with pinned SHA256 checksums, and the license from `code.claude.com`. The wrapper script at `/usr/bin/claude` sets environment variables (`DISABLE_UPDATES`, `DISABLE_INSTALLATION_CHECKS`) to prevent the upstream application from attempting self-updates or enforcing its native installer layout — this is a common adaptation for AUR-managed packages and is not malicious. No obfuscation, unexpected network destinations, backdoors, or data exfiltration mechanisms are present. The `SKIP` checksum on the license source file is a routine choice for a non-executable text file and does not indicate malice.
</details>
<evidence></evidence>
<summary>Clean AUR package, no signs of malicious behavior.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Clean AUR package, no signs of malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,329
  Completion Tokens: 1,619
  Total Tokens: 11,948
  Total Cost: $0.001235
  Execution Time: 30.35 seconds

Final Status: SAFE


No issues found.
