---
package: claude-code
pkgver: 2.1.306
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 10332
completion_tokens: 2102
total_tokens: 12434
cost: 0.001322776
execution_time: 37.85
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 1
injection_attempts: 0
date: 2026-10-21T07:03:19Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Pure metadata file; no malicious content detected.
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config for version checks.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no malicious content.
---

Materializing claude-code from local mirror...
Materialized claude-code
Analyzing claude-code AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources only the PKGBUILD's top-level scope. In this PKGBUILD, the top-level scope contains only standard variable assignments (`pkgname`, `pkgver`, `arch`, `depends`, `options`, `source`, checksums, etc.) and a function definition for `package()`. There are no top-level command substitutions, external downloads, shell expansions that execute code, or data exfiltration attempts.

The SKIP checksum for the legal document is not a concern for this narrow gate, since `makepkg --printsrcinfo` does not download or verify sources. The `package()` function body is out of scope for this step and will be audited in the full PKGBUILD review. Nothing in the top-level scope would execute malicious code when sourcing the file.
</details>
<evidence>
</evidence>
<summary>Top-level PKGBUILD scope is benign; printsrcinfo is safe to run.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD scope is benign; printsrcinfo is safe to run.
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
This is a straightforward `.SRCINFO` metadata file for the `claude-code` AUR package. It contains declarative fields only: package name, version, description, upstream URL, architecture support, dependencies, and source URLs with checksums.

All sources point to official `claude.ai` and `downloads.claude.ai` domains operated by Anthropic, which is the legitimate upstream provider of this package. The binary downloads (`linux-x64/claude` and `linux-arm64/claude`) have pinned SHA256 checksums, ensuring integrity. Only the legal/readme document (`sha256sums` line) uses `SKIP`, which is a common practice for non-build-critical assets and is not a security concern.

There is no executable code, no network requests beyond source declarations, no obfuscation, no encoded commands, and no file manipulation instructions. This file is pure metadata and does not perform any action that could be considered malicious.
</details>
<evidence></evidence>
<summary>Pure metadata file; no malicious content detected.</summary>
</security_assessment>

[1/3] Reviewing .nvchecker.toml, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Pure metadata file; no malicious content detected.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is `.nvchecker.toml`, a configuration file for `nvchecker` – a tool commonly used by AUR maintainers to automatically detect new upstream releases. It defines a single source named `claude-code` that uses the `regex` provider to scrape the URL `https://downloads.claude.ai/claude-code-releases/latest` for a version string matching the pattern `.+`. The URL points to the official Claude AI downloads domain over HTTPS, which is the expected upstream source for the claude-code package. The regex `.+` is extremely permissive but only affects version detection quality, not system security. There are no commands, no network requests to unexpected hosts, no obfuscation, and no data manipulation. This file is entirely benign and conforms to standard AUR packaging practices.
</details>
<evidence></evidence>
<summary>Standard nvchecker config for version checks.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config for version checks.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard Arch packaging recipe for the `claude-code` application. The binary is fetched from the official Anthropic domain (`downloads.claude.ai`) with a pinned version and a fixed SHA-256 checksum, ensuring integrity. The `package()` function installs the binary to `/opt/claude-code/bin/claude` and creates a simple wrapper at `/usr/bin/claude` that sets two environment variables (`DISABLE_UPDATES=1`, `DISABLE_INSTALLATION_CHECKS=1`) to prevent the application from attempting self-updates (which would conflict with the package manager) and to suppress warnings about missing native installation paths. This is a common and expected packaging practice—not a sign of malice. The only source with a `SKIP` checksum is the license/documentation file (`cc-legal`), which is a `SKIP` on a non-executable text file; that is not a security threat and is explicitly excluded from being flagged as unsafe per the analysis guidelines. No obfuscated code, suspicious network requests, data exfiltration, backdoors, or unexpected system modifications are present.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with no malicious content.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,332
  Completion Tokens: 2,102
  Total Tokens: 12,434
  Total Cost: $0.001323
  Execution Time: 37.85 seconds

Final Status: SAFE


No issues found.
