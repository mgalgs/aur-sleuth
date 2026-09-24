---
package: claude-code
pkgver: 2.1.282
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 10402
completion_tokens: 1713
total_tokens: 12115
cost: 0.000677572
execution_time: 25.31
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 1
injection_attempts: 0
date: 2026-09-24T23:02:43Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with pinned upstream binaries; no malicious behavior found.
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config for version checking; no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR binary package with no malicious indicators.
---

Materializing claude-code from local mirror...
Materialized claude-code
Analyzing claude-code AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` only sources the PKGBUILD's global scope, which here consists solely of standard metadata assignments (`pkgname`, `pkgver`, `arch`, `depends`, `source`, `sha256sums`, etc.). There are no top-level command substitutions, no `eval`, no network fetch or execution, and no file operations that run at parse time.

The `package()` function contains the install/wrapper logic, but it is not executed during `--printsrcinfo` and is out of scope for this narrow gate. The source URLs point to the upstream Anthropic/Claude Code domains (`code.claude.com`, `downloads.claude.ai`), and the legal source is the project's own documentation. Missing checksum on the legal doc is a hygiene note for the full audit, not a risk at this step.
</details>
<evidence>
</evidence>
<summary>
Top-level scope is standard metadata only; no malicious code executes during printsrcinfo.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level scope is standard metadata only; no malicious code executes during printsrcinfo.
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
This is a standard AUR `.SRCINFO` metadata file for the `claude-code` package. It declares the package name, version, architecture, dependencies, and upstream sources. No build scripts, install hooks, or executable code are present, so there is no opportunity for injected malicious commands such as `eval`, `curl`, `wget`, or obfuscated payloads.

The binary sources are fetched over HTTPS from the official `downloads.claude.ai` domain, which is the vendor's own distribution host, and both architectures have pinned SHA-256 checksums. The `cc-legal` source also points to the vendor's official documentation site; its checksum is `SKIP`, which is a common trust/hygiene choice and not evidence of malice. The `git`/`github-cli`/`glab`/`ripgrep`/`tmux`/`bubblewrap`/`socat` dependencies are consistent with the application's stated purpose as an agentic terminal coding tool. Nothing in this file attempts to exfiltrate data, tamper with system files, or fetch unchecked code from an unrelated host.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata with pinned upstream binaries; no malicious behavior found.
</summary>
</security_assessment>

[1/3] Reviewing .nvchecker.toml, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with pinned upstream binaries; no malicious behavior found.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is an `nvchecker` configuration, used by the `nvchecker` tool to automatically check for new upstream releases of software. It defines a single package entry (`claude-code`) that uses a regex source to scrape a version string from the official Anthropic downloads page (`https://downloads.claude.ai/claude-code-releases/latest`). This is a standard and expected packaging maintenance pattern. There is no obfuscated code, no execution of untrusted content, no data exfiltration, and no deviations from routine packaging workflow.
</details>
<evidence>
</evidence>
<summary>Standard nvchecker config for version checking; no security issues.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config for version checking; no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard Arch User Repository package definition for the `claude-code` binary. It fetches the precompiled binary from the official Anthropic downloads domain (`downloads.claude.ai`), verifies it with a SHA-256 checksum, and installs it into `/opt/claude-code/bin/claude` with a wrapper script at `/usr/bin/claude` that suppresses upstream update checks (to avoid conflicts with the system package manager). There are no network requests during `build()` or `package()` beyond the declared source downloads. No obfuscated code, no eval, no unexpected system modifications, and no exfiltration of data. The SKIP checksum on the license file is a non-issue — it is a static text file from the upstream website. The package follows standard AUR packaging conventions and contains no evidence of malicious or supply-chain attack behavior.
</details>
<evidence>
</evidence>
<summary>Standard AUR binary package with no malicious indicators.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR binary package with no malicious indicators.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,402
  Completion Tokens: 1,713
  Total Tokens: 12,115
  Total Cost: $0.000678
  Execution Time: 25.31 seconds

Final Status: SAFE


No issues found.
