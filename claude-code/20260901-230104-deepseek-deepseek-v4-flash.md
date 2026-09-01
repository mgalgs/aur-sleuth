---
package: claude-code
pkgver: 2.1.258
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: b9e20f728bbe0de1871ebaca31738c802edc31f8
prompt_tokens: 10500
completion_tokens: 1732
total_tokens: 12232
cost: 0.00100093952
execution_time: 40.46
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: ok
upstream_files: 2
upstream_named_files: 0
unpinned_sources: 1
injection_attempts: 0
date: 2026-09-01T23:01:04Z
file_verdicts:
  - file: .nvchecker.toml
    status: safe
    summary: Standard upstream version-check configuration; no malicious behavior detected.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no malicious behavior detected.
  - file: .SRCINFO
    status: safe
    summary: Standard package metadata; no security issues found.
---

Cloning https://aur.archlinux.org/claude-code.git...
Cloned claude-code
Analyzing claude-code AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is safe to source and fetch sources for. All source URLs point to official Claude AI domains (downloads.claude.ai and code.claude.com) over HTTPS. No code executes in the global/top-level scope beyond variable assignments and simple string expansions. There is no `pkgver()` function defined. The `sha256sums` entries include both pinned checksums for the binary downloads and a `SKIP` for the legal document – this is standard practice for fetched files that will be audited separately. No suspicious commands, obfuscated content, or unexpected network destinations are present. The `prepare()`, `build()`, and `package()` functions are not executed during this narrow gate.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with official upstream sources.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Standard PKGBUILD with official upstream sources.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: 1 remote source(s) have no checksum (sha256sums=SKIP), so the fetched bytes are not verifiable and can change without any AUR update: cc-legal::https://code.claude.com/docs/en/legal-and-compliance.md
Reviewing the 3 file(s) in the AUR repository. The 2 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, .nvchecker.toml...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard nvchecker configuration used by AUR maintainers to detect the latest upstream release version. It queries an official Anthropic/Claude distribution URL (`https://downloads.claude.ai/claude-code-releases/latest`) and applies a broad regex to extract the version string from the response. The URL matches the package's own upstream release source, and the configuration does not download or execute code, exfiltrate data, or perform any file system modifications. The broad regex `.+` is simple and not obfuscated or dangerous. This is an ordinary version-checking configuration, not a supply-chain risk.
</details>
<evidence>
</evidence>
<summary>
Standard upstream version-check configuration; no malicious behavior detected.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard upstream version-check configuration; no malicious behavior detected.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a clean, standard upstream binary package. It downloads the pre-compiled `claude` binary from the official Anthropic downloads domain (`downloads.claude.ai`) with pinned versioned URLs and hard-coded SHA-256 checksums for each architecture (x86_64/aarch64). The license is fetched from the official documentation site (`code.claude.com`), with a SKIP checksum – this is normal and acceptable packaging practice.

The wrapper script in `package()` sets two environment variables (`DISABLE_UPDATES=1`, `DISABLE_INSTALLATION_CHECKS=1`) to prevent the upstream application from attempting to self-update or showing broken-installation warnings when the binary is placed under `/opt` instead of the default `~/.local/bin`. This is a standard AUR integration technique, not a supply-chain attack. All file operations (`install`, `cat`, `chmod`) are confined to expected system directories (`/opt/claude-code/bin`, `/usr/bin`, `/usr/share/licenses`). There is no obfuscated code, no unexpected network requests, no exfiltration, and no execution of attacker-controlled content.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with no malicious behavior detected.</summary>
</security_assessment>

[2/3] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no malicious behavior detected.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is standard metadata for the claude-code AUR package. It declares sources from the official Anthropic download domain (`downloads.claude.ai`) with pinned SHA256 checksums for the two supported architectures. The `cc-legal` source is a documentation file from the project's own website, and its `SKIP` checksum is normal for such content. No suspicious URLs, obfuscation, or unexpected commands appear. The package dependencies and options are consistent with a legitimate binary distribution.
</details>
<evidence></evidence>
<summary>Standard package metadata; no security issues found.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard package metadata; no security issues found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,500
  Completion Tokens: 1,732
  Total Tokens: 12,232
  Total Cost: $0.001001
  Execution Time: 40.46 seconds

Final Status: SAFE


No issues found.
