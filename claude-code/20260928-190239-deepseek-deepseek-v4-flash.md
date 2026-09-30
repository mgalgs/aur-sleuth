---
package: claude-code
pkgver: 2.1.284
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 10320
completion_tokens: 3030
total_tokens: 13350
cost: 0.0010204740
execution_time: 105.86
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 1
injection_attempts: 0
date: 2026-09-28T19:02:39Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Clean, standard PKGBUILD with pinned checksums and official sources.
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config; no malicious content.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; no malicious content found.
---

Materializing claude-code from local mirror...
Materialized claude-code
Analyzing claude-code AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
 <security_assessment>
<decision>SAFE</decision>
<details>
The entire top-level scope of this PKGBUILD consists of standard metadata variable assignments (`pkgname`, `pkgver`, `pkgrel`, `pkgdesc`, `arch`, `url`, `license`, `depends`, `options`, `optdepends`, `source`/`source_x86_64`/`source_aarch64` arrays, and `sha256sums`) plus the definition of the `package()` function. There are no top-level command substitutions, no `eval`, no `curl`/`wget` invocations, no `base64`-decoded payloads, and no network or file operations that would execute when the file is sourced by `makepkg --printsrcinfo`.

The executable content (installing the binary, creating the `/usr/bin/claude` wrapper script, setting `DISABLE_UPDATES=1`) lives inside the `package()` function body. That function is not invoked by `--printsrcinfo` and is out of scope for this narrow gate; it will be covered by the full PKGBUILD review. The `SKIP` checksum on the legal-doc source is not relevant here because no source is downloaded or verified during `--printsrcinfo`, and it is noted for the full audit.
</details>
<evidence></evidence>
<summary>Only variable assignments and function definitions; no top-level execution risk.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Only variable assignments and function definitions; no top-level execution risk.
Note: 1 remote source(s) have no checksum (sha256sums=SKIP), so the bytes are not verifiable: cc-legal::https://code.claude.com/docs/en/legal-and-compliance.md
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, .nvchecker.toml...
[0/3] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard Arch Linux packaging file for the `claude-code` application. All network sources point to the official Anthropic domains (`code.claude.com` and `downloads.claude.ai`), which are the legitimate upstream locations for Claude Code. The binary checksums for both architectures are explicitly pinned and verified (SHA256 hashes provided), ensuring integrity.

The package function performs three routine operations: installing the pre-built binary to `/opt/claude-code/bin/`, creating a wrapper script at `/usr/bin/claude` that sets two environment variables (`DISABLE_UPDATES`, `DISABLE_INSTALLATION_CHECKS`) then `exec`s the real binary, and installing the license file. The wrapper is a legitimate packaging choice to prevent the application's built-in auto-updater from running, which would conflict with `pacman` package management. There is no obfuscation, no suspicious commands, no unexpected network requests, and no tampering with system files outside the package's scope.
</details>
<evidence>
</evidence>
<summary>Clean, standard PKGBUILD with pinned checksums and official sources.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, .nvchecker.toml...
+ Reviewed PKGBUILD. Status: SAFE -- Clean, standard PKGBUILD with pinned checksums and official sources.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is an `.nvchecker.toml` configuration for checking the latest version of `claude-code` using `nvchecker`. It defines a regex-based source pointing to the official `downloads.claude.ai` domain. The regex `".+"` is a broad pattern, but this is standard for nvchecker when the version is embedded in the page content. There is no obfuscation, no network requests outside the package&#x27;s legitimate upstream, no code execution, and no system modification. The file is entirely declarative and benign.
</details>
<evidence>
</evidence>
<summary>Standard nvchecker config; no malicious content.</summary>
</security_assessment>

[2/3] Reviewing .SRCINFO...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config; no malicious content.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a standard AUR package metadata file describing the `claude-code` package. It contains no executable code, no post-installation scripts, and no commands. The source URLs all point to the official Anthropic domains (`code.claude.com`, `downloads.claude.ai`) over HTTPS. SHA256 checksums are provided for the two binary downloads (x86_64 and aarch64), with a SKIP on the legal documentation source only—this is expected and not a security issue. Dependencies and optional dependencies are appropriate for the application's stated purpose. There is no evidence of obfuscation, data exfiltration, unexpected network requests, or any other supply-chain attack indicators.
</details>
<evidence></evidence>
<summary>Standard AUR metadata; no malicious content found.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; no malicious content found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,320
  Completion Tokens: 3,030
  Total Tokens: 13,350
  Total Cost: $0.001020
  Execution Time: 105.86 seconds

Final Status: SAFE


No issues found.
