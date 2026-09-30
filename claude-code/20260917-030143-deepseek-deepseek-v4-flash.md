---
package: claude-code
pkgver: 2.1.274
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 10305
completion_tokens: 2482
total_tokens: 12787
cost: 0.001352925014
execution_time: 56.83
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 1
injection_attempts: 0
date: 2026-09-17T03:01:43Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; no malicious content found.
  - file: .nvchecker.toml
    status: safe
    summary: Benign nvchecker config; checks official Claude AI releases page for versions. No malicious behavior.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD, no malicious behavior found.
---

Materializing claude-code from local mirror...
Materialized claude-code
Analyzing claude-code AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
No malicious code is executed at the global/top-level scope when the PKGBUILD is sourced. All variable and array definitions (pkgname, pkgver, source, sha256sums, etc.) are static assignments or use simple `${pkgver}` variable expansion. There are no command substitutions (`$()`, backticks), `eval` calls, or other executable constructs that would run during `makepkg --printsrcinfo`. The `package()` function is not invoked at this step, so its contents are out of scope.
</details>
<evidence></evidence>
<summary>Sourcing this PKGBUILD is safe, no top-level execution risk.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Sourcing this PKGBUILD is safe, no top-level execution risk.
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
This file is a standard `.SRCINFO` metadata file for an Arch User Repository (AUR) package. It declares the package name, version, dependencies, and download sources for the `claude-code` binary. All sources point to the official Anthropic domains (`code.claude.com`, `downloads.claude.ai`), which is the expected upstream for this package. The binary hashes for both `x86_64` and `aarch64` architectures are pinned, ensuring integrity of the downloaded artifacts. The `SKIP` checksum on the legal document source is a common practice for non-essential or mutable text resources and is not a security concern. There is no executable code, obfuscation, network request to unexpected hosts, or any other indication of malicious activity. The file is purely declarative and follows standard AUR packaging conventions.
</details>
<evidence></evidence>
<summary>Standard AUR metadata; no malicious content found.</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, .nvchecker.toml...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; no malicious content found.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a configuration file for `nvchecker`, a standard tool used by AUR maintainers to automatically check for new upstream versions of a package. It configures version checking for `claude-code` using the `regex` source type, pointing at Anthropic's official release metadata endpoint (`https://downloads.claude.ai/claude-code-releases/latest`).

The `regex = ".+"` pattern is loose — it matches any non-empty content rather than extracting a specific version string — but this is a common quick-and-dirty pattern used by maintainers who just need a non-empty result or a version placeholder from the page. There is no obfuscation, no encoded data, no command execution, no writing or exfiltration of local files, and no download-and-execute behavior. The file is fetched by nvchecker solely to compare version strings; the remote content is not executed as code.

The URL is the legitimate upstream distribution domain for claude-code, so this is standard version-tracking hygiene, not a supply-chain attack. There is nothing here that deviates from ordinary AUR packaging practices.
</details>
<evidence>
</evidence>
<summary>
Benign nvchecker config; checks official Claude AI releases page for versions. No malicious behavior.
</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Benign nvchecker config; checks official Claude AI releases page for versions. No malicious behavior.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR PKGBUILD for packaging the `claude-code` binary from Anthropic&#x27;s official distribution endpoints (`downloads.claude.ai` and `code.claude.com`). The source tarballs have pinned SHA-256 checksums, and the `SKIP` entry in the generic `sha256sums` array is normal (it corresponds to the license file, which is not checksummed).  

The `package()` function installs the binary to `/opt/claude-code/bin/claude` and creates a small wrapper script at `/usr/bin/claude` that sets `DISABLE_UPDATES=1` and `DISABLE_INSTALLATION_CHECKS=1` before `exec`&#x27;ing the real binary. This is a common and expected pattern for AUR packages of self-updating software—it prevents the upstream tool from attempting its own update mechanism (which would conflict with pacman) and silences a startup warning about the missing native-installer layout.  

No obfuscated code, unexpected network requests, backdoors, data exfiltration, or dangerous command execution (e.g., `curl | bash`, `eval` of encoded strings) is present. The package behaves exactly as expected for a prebuilt binary package distributed through the AUR.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD, no malicious behavior found.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD, no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,305
  Completion Tokens: 2,482
  Total Tokens: 12,787
  Total Cost: $0.001353
  Execution Time: 56.83 seconds

Final Status: SAFE


No issues found.
