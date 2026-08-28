---
package: claude-code
pkgver: 2.1.250
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 10433
completion_tokens: 1928
total_tokens: 12361
cost: 0.001266091134
execution_time: 80.06
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: ok
upstream_files: 2
upstream_named_files: 0
unpinned_sources: 1
date: 2026-08-28T03:01:39Z
file_verdicts:
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config for upstream version checking.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with pinned checksums and no malicious behavior.
  - file: .SRCINFO
    status: safe
    summary: Declarative metadata file, no security concerns.
---

Cloning https://aur.archlinux.org/claude-code.git...
Cloned claude-code
Analyzing claude-code AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only defines variables, arrays, and function bodies at the top level. No top-level command substitutions, backticks, `eval`, or other arbitrary code execution occurs when the file is sourced. The `package()` function is defined but will not be executed by `--nobuild --nodeps --noprepare` or `--printsrcinfo`. Source URLs point to official Anthropic domains (code.claude.com, downloads.claude.ai), and there is no `pkgver()` function that could execute at source time. No code exfiltrates data, downloads external payloads, or modifies the system outside the expected packaging workflow.
</details>
<evidence></evidence>
<summary>No malicious code in sourced scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code in sourced scope.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: 1 remote source(s) have no checksum (sha256sums=SKIP), so the fetched bytes are not verifiable and can change without any AUR update: cc-legal::https://code.claude.com/docs/en/legal-and-compliance.md
Reviewing the 3 file(s) in the AUR repository. The 2 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, .nvchecker.toml...
[0/3] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard nvchecker configuration file used by AUR maintainers to automatically detect new upstream releases. It instructs nvchecker to fetch the URL `https://downloads.claude.ai/claude-code-releases/latest` and apply a regex pattern (`.+`) to extract the version string. The URL points to the official Claude AI downloads domain (`downloads.claude.ai`), which is the legitimate upstream source for the `claude-code` package. There is no obfuscation, no unexpected network destinations, no code execution, and no data exfiltration. The file performs only the intended function of version checking.
</details>
<evidence></evidence>
<summary>Standard nvchecker config for upstream version checking.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config for upstream version checking.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard Arch User Repository package for Claude Code. It downloads the official binary from Anthropic's own CDN (`downloads.claude.ai`) with pinned checksums for both x86_64 and aarch64 architectures. The only source with `SKIP` is a documentation/license file from `code.claude.com`, which is a routine trust/hygiene choice and not evidence of malice.

The `package()` function performs three standard operations: installing the pre-compiled binary to `/opt`, creating a wrapper script at `/usr/bin/claude` that sets environment variables to disable upstream self-update logic and installation checks (a common and expected practice when packaging self-contained binaries via the system package manager), and installing the license file. No obfuscated code, no unexpected network requests, no data exfiltration, no backdoors, and no system tampering beyond the package's own installation path. The file follows established AUR packaging conventions.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with pinned checksums and no malicious behavior.</summary>
</security_assessment>

[2/3] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with pinned checksums and no malicious behavior.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a purely declarative metadata file for an AUR package. It contains only the package name, description, version, dependencies, license, and source URLs with checksums. All binary sources are hosted on the official Anthropic domain (`downloads.claude.ai`), and have pinned SHA-256 checksums (non-SKIP). The sole SKIP checksum is for a documentation/legal file, which is standard for non-essential text assets and not a security concern. No executable code, no obfuscated content, no suspicious network destinations, and no system-modifying instructions are present. This file conforms to standard AUR packaging practices.
</details>
<evidence></evidence>
<summary>Declarative metadata file, no security concerns.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Declarative metadata file, no security concerns.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,433
  Completion Tokens: 1,928
  Total Tokens: 12,361
  Total Cost: $0.001266
  Execution Time: 80.06 seconds

Final Status: SAFE


No issues found.
