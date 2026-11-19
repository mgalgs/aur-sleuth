---
package: claude-code
pkgver: 2.1.318
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 10563
completion_tokens: 2170
total_tokens: 12733
cost: 0.001356173
execution_time: 32.54
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 1
injection_attempts: 0
date: 2026-11-04T04:02:01Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR package definition with pinned official binaries and checksums; no malicious behavior found.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR binary package; official sources, pinned checksums, no malicious behavior found.
  - file: .nvchecker.toml
    status: safe
    summary: Benign nvchecker config checking the official Claude Code release endpoint.
---

Materializing claude-code from local mirror...
Materialized claude-code
Analyzing claude-code AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
During `makepkg --printsrcinfo`, only the top-level/global scope of the PKGBUILD is sourced. This PKGBUILD only contains variable assignments (`pkgname`, `pkgver`, `source`, `sha256sums`, etc.) and a `package()` function definition. There are no top-level command substitutions, no calls to `eval`, `curl`, `wget`, `base64`, or other executable statements that could download or run untrusted payloads while the file is sourced.

The `package()` function is not executed by `makepkg --printsrcinfo` and is therefore out of scope for this narrow gate. The `sha256sums` entry using `SKIP` is also not a concern at this step because no sources are downloaded or verified during `--printsrcinfo`; it will be considered in the full audit. The declared sources point to official Claude Code domains, and nothing in the global scope suggests malicious behavior.
</details>
<evidence>
</evidence>
<summary>
Top-level scope is safe; only definitions and function declarations, no execution hazards.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level scope is safe; only definitions and function declarations, no execution hazards.
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
This is a standard AUR `.SRCINFO` file for the `claude-code` binary package. It declares two architecture-specific prebuilt binaries from `downloads.claude.ai`, which is Anthropic's official distribution domain for this product, with pinned versions and valid `sha256sums`. It also includes one unpinned legal documentation source from `code.claude.com` with a `SKIP` checksum; while that is not reproducible, it is only documentation metadata and is not executed or installed as code. There are no suspicious network endpoints, no obfuscated commands, no build-time downloads beyond the declared sources, and no file operations outside normal packaging.
</details>
<evidence>
</evidence>
<summary>
Standard AUR package definition with pinned official binaries and checksums; no malicious behavior found.</summary>
</security_assessment>

[1/3] Reviewing .nvchecker.toml, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR package definition with pinned official binaries and checksums; no malicious behavior found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a prebuilt binary package. It fetches the Claude Code binary from Anthropic&apos;s official download host (`downloads.claude.ai`) and the license text from the official docs domain (`code.claude.com`). Both binary sources have pinned checksums; only the license text uses `SKIP`, which is a hygiene choice and not suspicious.
The `package()` function only installs the binary into `/opt/claude-code/bin/claude`, creates a small shell wrapper that sets `DISABLE_UPDATES=1` and `DISABLE_INSTALLATION_CHECKS=1` before executing the installed binary, and installs the license file. There are no network calls during build/install, no encoded or obfuscated commands, no dangerous shell constructs, and no writes outside the package directory. The wrapper behavior is consistent with the maintainer&apos;s stated intent of suppressing upstream update/native-install checks for an Arch-packaged binary.
No evidence of injected malicious code, data exfiltration, backdoors, or unexpected remote execution was found.
</details>
<evidence>
</evidence>
<summary>
Standard AUR binary package; official sources, pinned checksums, no malicious behavior found.</summary>
</security_assessment>

[2/3] Reviewing .nvchecker.toml...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR binary package; official sources, pinned checksums, no malicious behavior found.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This is an nvchecker configuration file used to check for the latest upstream release of Claude Code. It fetches `https://downloads.claude.ai/claude-code-releases/latest` (the official vendor download endpoint) and applies the regex `.+` to extract a version string. This is a standard version-checking workflow for AUR maintainers and contains no unusual behavior.

There is no obfuscation, no downloading or execution of code, no data exfiltration, and no system modification. The broad regex is a configuration choice for version detection, not an injection vector. The file does exactly what a tool like nvchecker is designed to do.
</details>
<evidence></evidence>
<summary>
Benign nvchecker config checking the official Claude Code release endpoint.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .nvchecker.toml. Status: SAFE -- Benign nvchecker config checking the official Claude Code release endpoint.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,563
  Completion Tokens: 2,170
  Total Tokens: 12,733
  Total Cost: $0.001356
  Execution Time: 32.54 seconds

Final Status: SAFE


No issues found.
