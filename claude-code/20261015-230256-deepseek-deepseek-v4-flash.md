---
package: claude-code
pkgver: 2.1.301
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 10325
completion_tokens: 2302
total_tokens: 12627
cost: 0.001358539
execution_time: 29.97
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 1
injection_attempts: 0
date: 2026-10-15T23:02:56Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file with no malicious content.
  - file: .nvchecker.toml
    status: safe
    summary: AUR version-checking config; no malicious behavior found.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no signs of supply-chain attack.
---

Materializing claude-code from local mirror...
Materialized claude-code
Analyzing claude-code AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources only the PKGBUILD's top-level scope, which here consists exclusively of static variable assignments (pkgname, pkgver, arch, source arrays, checksum arrays, etc.). There are no top-level command substitutions, function calls, `eval`/`base64` usage, network fetches, or file operations that would execute during sourcing.

The `package()` function contains file installation and wrapper-script creation, but it is not executed by `--printsrcinfo` and is out of scope for this gate. Source URLs point to the project's official domains (code.claude.com and downloads.claude.ai), which is expected. The `SKIP` checksum on the legal-doc source is a hygiene/pinning concern only and does not affect the safety of this command.
</details>
<evidence>
</evidence>
<summary>
Top-level scope is static variables only; no malicious code executes during printsrcinfo.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level scope is static variables only; no malicious code executes during printsrcinfo.
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
This is a standard AUR `.SRCINFO` metadata file for the `claude-code` package. It defines package metadata, dependencies, and download sources. The binary sources are fetched from the official Claude AI domain (`downloads.claude.ai`) with pinned SHA256 checksums for reproducibility and integrity verification. The legal document source uses a `SKIP` checksum, which is a common and acceptable practice (no evidence of malice). No obfuscated code, dangerous commands, network exfiltration, or unexpected system modifications are present. The file is purely declarative and follows normal AUR packaging conventions.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file with no malicious content.</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, .nvchecker.toml...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file with no malicious content.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a configuration for `nvchecker`, a tool that checks for new upstream releases. It defines a version-checking rule for the `claude-code` package: it fetches the page at `https://downloads.claude.ai/claude-code-releases/latest` and applies the regex `.+` (which matches any non-empty content). The URL points to the official Anthropic domain, which is the expected upstream source. The regex `.+` is overly broad and would match the entire page content, but this is merely a packaging/version-detection weakness — not a supply-chain attack. There is no code execution, no obfuscation, no exfiltration, and no deviation from standard packaging practices.
</details>
<evidence></evidence>
<summary>AUR version-checking config; no malicious behavior found.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- AUR version-checking config; no malicious behavior found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD fetches the official binary release of claude-code from downloads.claude.ai, an expected domain owned by Anthropic (the upstream vendor). SHA256 checksums are provided and verified for both x86_64 and aarch64 binary downloads. The only source with a SKIP checksum is a plaintext license document from the upstream docs site –– a common practice for non-binary artifacts and not indicative of malicious intent. The package() function installs the binary to `/opt/claude-code/bin/claude`, creates a harmless wrapper script in `/usr/bin/claude` that sets two environment variables to disable upstream self-update checks (standard for packages managed by the system package manager), and installs the license file. There are no obfuscated commands, no unexpected network requests (the sole remote fetch is the upstream release binary), no exfiltration of system data, and no tampering with unrelated files. The packaging follows normal AUR conventions and contains no genuinely malicious behavior.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with no signs of supply-chain attack.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no signs of supply-chain attack.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,325
  Completion Tokens: 2,302
  Total Tokens: 12,627
  Total Cost: $0.001359
  Execution Time: 29.97 seconds

Final Status: SAFE


No issues found.
