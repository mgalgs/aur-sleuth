---
package: herakleo
pkgver: 0.2.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 8838
completion_tokens: 960
total_tokens: 9798
cost: 0.000978978
execution_time: 21.84
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-29T03:24:35Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file with pinned source and checksum.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with no malicious indicators.
---

Materializing herakleo from local mirror...
Materialized herakleo
Analyzing herakleo AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` only sources the PKGBUILD and executes top-level code. In this PKGBUILD, the top-level scope contains only standard variable assignments (`pkgname`, `pkgver`, `depends`, `source`, `sha256sums`, etc.) and function definitions (`_goenv`, `prepare`, `build`, `package`). None of these function bodies are executed during `--printsrcinfo`, and no top-level command substitution, eval, network fetch, or file exfiltration is present.

The `source` array points to the project’s own GitHub tag tarball, and the checksum is a fixed SHA-256 value. The `prepare()`, `build()`, and `package()` functions contain only ordinary build/install steps and are out of scope for this narrow gate; any concerns there would belong in the full audit. No genuinely malicious behavior executes during this step.
</details>
<evidence>
</evidence>
<summary>
Top-level PKGBUILD sourcing is safe; only standard variables and function definitions execute.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD sourcing is safe; only standard variables and function definitions execute.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a standard AUR package metadata descriptor. It declares the package name, version, dependencies, and a single source tarball from the project's own GitHub tag (v0.2.0) with a corresponding SHA256 checksum. There is no obfuscated code, no network requests beyond the declared source URL, no file operations, and no unexpected commands. All dependencies are typical for a desktop IPTV player using webkitgtk and Go/Bun build system. The file presents no evidence of malicious or supply-chain attack behavior.</details>
<evidence></evidence>
<summary>Standard AUR metadata file with pinned source and checksum.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file with pinned source and checksum.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard Arch Linux package build script for the herakleo IPTV player. It downloads the source tarball from the official GitHub repository with a pinned SHA256 checksum, builds the Go and frontend components using `go mod download`, `bun install`, and `bun run build:wails`, then installs the resulting binary and supporting files. There are no suspicious network requests, obfuscated code, dangerous commands (`eval`, `curl|bash`, etc.), or unexpected file operations. All operations are standard for a Wails (Go + frontend) application. The script follows typical AUR packaging practices, and there is no evidence of injected malicious behavior.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with no malicious indicators.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with no malicious indicators.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 8,838
  Completion Tokens: 960
  Total Tokens: 9,798
  Total Cost: $0.000979
  Execution Time: 21.84 seconds

Final Status: SAFE


No issues found.
