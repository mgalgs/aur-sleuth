---
package: claude-code
pkgver: 2.1.271
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 10422
completion_tokens: 2080
total_tokens: 12502
cost: 0.00109015032
execution_time: 64.38
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 1
injection_attempts: 0
date: 2026-09-14T23:01:57Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; no malicious content.
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config; no security issues.
  - file: PKGBUILD
    status: safe
    summary: "Standard AUR package: official upstream binary, pinned checksums, benign wrapper script. No malicious behavior found."
---

Materializing claude-code from local mirror...
Materialized claude-code
Analyzing claude-code AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
 <security_assessment>
<decision>SAFE</decision>
<details>
The top-level/global scope of this PKGBUILD consists only of standard metadata variable assignments: `pkgver`, `pkgrel`, `arch`, `depends`, `options`, `optdepends`, `source`, `source_x86_64`, `source_aarch64`, and checksum arrays. No command substitutions, network fetches, code execution, or file-modifying operations occur when the PKGBUILD is sourced. Running `makepkg --printsrcinfo` would therefore execute only benign variable assignments.

The `package()` function contains file installation and wrapper-script creation, but that function is not executed by `makepkg --printsrcinfo` and is out of scope for this narrow gate. The `SKIP` checksum for the legal-doc source is also not a concern for this step, since no sources are downloaded or verified during `--printsrcinfo`.
</details>
<evidence>
</evidence>
<summary>
Top-level scope contains only metadata assignments; no code executes during --printsrcinfo.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level scope contains only metadata assignments; no code executes during --printsrcinfo.
Note: 1 remote source(s) have no checksum (sha256sums=SKIP), so the bytes are not verifiable: cc-legal::https://code.claude.com/docs/en/legal-and-compliance.md
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, .nvchecker.toml...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR `.SRCINFO` metadata file for the `claude-code` package. It declares:
- The upstream project at `github.com/anthropics/claude-code`
- Precompiled binary sources from the official Anthropic download server (`downloads.claude.ai`)
- Valid SHA256 checksums for both `x86_64` and `aarch64` binaries
- A documentation source (`code.claude.com`) with a SKIP checksum, which is normal and non-executable

There is no code execution, no obfuscation, no unexpected network destinations, and no content that deviates from normal AUR packaging practices. All sources originate from the legitimate Anthropic domain.
</details>
<evidence></evidence>
<summary>Standard AUR metadata; no malicious content.</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, .nvchecker.toml...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; no malicious content.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a configuration file for `nvchecker`, a tool used to monitor upstream releases for new versions. It defines a regex-based source to check the latest release of `claude-code` from the official `downloads.claude.ai` domain. The content is entirely declarative: a source type, a URL, and a regex pattern. No executable code, obfuscated content, or suspicious operations are present. This follows standard AUR package maintainer practices for automated version monitoring.
</details>
<evidence></evidence>
<summary>Standard nvchecker config; no security issues.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config; no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard AUR package for installing the official Claude Code binary release. It downloads the prebuilt binary from the project&apos;s own upstream host (`downloads.claude.ai`) with pinned SHA-256 checksums for both supported architectures. The only `SKIP` checksum is on the legal/license documentation file, which is not executed and is not a security concern.

The `package()` function installs the binary into `/opt/claude-code/bin/claude` and creates a small `/usr/bin/claude` wrapper. The wrapper only sets two environment variables (`DISABLE_UPDATES=1` and `DISABLE_INSTALLATION_CHECKS=1`) and then `exec`s the installed binary. This is a normal packaging approach to prevent the upstream application from attempting its own self-update/installer checks when run from `/opt` and `/usr/bin`. There is no obfuscation, no network fetching at build time beyond the declared downloads, no dangerous shell evaluation, and no file modification outside the package&apos;s own install paths.
</details>
<evidence>
</evidence>
<summary>
Standard AUR package: official upstream binary, pinned checksums, benign wrapper script. No malicious behavior found.
</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR package: official upstream binary, pinned checksums, benign wrapper script. No malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,422
  Completion Tokens: 2,080
  Total Tokens: 12,502
  Total Cost: $0.001090
  Execution Time: 64.38 seconds

Final Status: SAFE


No issues found.
