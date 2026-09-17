---
package: claude-code
pkgver: 2.1.275
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 10498
completion_tokens: 8086
total_tokens: 18584
cost: 0.00186690
execution_time: 191.98
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 1
injection_attempts: 0
date: 2026-09-17T23:04:06Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Clean AUR metadata; official source with pinned checksums.
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config checking upstream claude-code releases; no malicious behavior found.
  - file: PKGBUILD
    status: safe
    summary: "Legitimate upstream PKGBUILD: pinned checksums, official sources, no malicious behavior."
---

Materializing claude-code from local mirror...
Materialized claude-code
Analyzing claude-code AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
 <security_assessment>
<decision>SAFE</decision>
<details>
Sourcing this PKGBUILD for `makepkg --printsrcinfo` only executes top-level statements: simple variable assignments (`pkgname`, `pkgver`, `pkgrel`, `pkgdesc`, `arch`, `depends`, `options`, `optdepends`) and the `source` array definitions. These are plain data declarations with no command substitution, no `eval`, no backtick expansion, and no download-and-execute patterns. The `source` URLs point to official Anthropic domains (`downloads.claude.ai`, `code.claude.com`), and the arch-specific binary sources include pinned SHA-256 checksums. The `SKIP` checksum on the legal-document source is a hygiene/trust concern only, not an execution risk at this step.

The `package()` function body (binary install, wrapper-script creation, license install) is only defined here, not executed during `--printsrcinfo`; it will be reviewed in the full audit. Nothing in the global scope manipulates files, contacts the network, or exfiltrates data when the PKGBUILD is sourced.
</details>
<evidence></evidence>
<summary>Top-level scope is plain variable/array definitions; no malicious code executes when sourced.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level scope is plain variable/array definitions; no malicious code executes when sourced.
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
This `.SRCINFO` file describes a binary release of the `claude-code` package from the official Anthropic CDN (`downloads.claude.ai`). Both architecture-specific binaries (`x86_64` and `aarch64`) have pinned SHA256 checksums, providing integrity verification. The only `SKIP` checksum is for a legal/README document (`cc-legal`), which is not a binary and is standard practice for non-essential documentation. No obfuscated code, suspicious sources, unusual file operations, or backdoors are present. The package depends only on `bash` and lists optional dependencies typical for a terminal-based coding tool (git, github-cli, ripgrep, tmux, etc.). This is a clean, minimal packaging metadata file with no evidence of supply-chain compromise.
</details>
<evidence></evidence>
<summary>Clean AUR metadata; official source with pinned checksums.</summary>
</security_assessment>

[1/3] Reviewing .nvchecker.toml, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Clean AUR metadata; official source with pinned checksums.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard nvchecker configuration file used by AUR maintainers to check for new upstream releases of the `claude-code` package. It configures a regex-based version check against the official upstream URL `https://downloads.claude.ai/claude-code-releases/latest`. The fetching of the latest release information from the package's own upstream host is normal, expected behavior for a version-checking tool.

The only minor note is that `regex = ".+"` is a very loose pattern that will match any non-empty line on the page, which could in theory cause incorrect version detection (e.g., matching an unrelated string rather than a version number). This is a correctness/hygiene concern, not a security threat. There is no code execution, no obfuscation, no data exfiltration, and no download of executables from unexpected hosts. This file behaves exactly as expected for its stated purpose.
</details>
<evidence>
</evidence>
<summary>
Standard nvchecker config checking upstream claude-code releases; no malicious behavior found.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config checking upstream claude-code releases; no malicious behavior found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a legitimate, well-formed package definition for the official claude-code binary distribution. The source URLs point exclusively to Anthropic's own domains (`downloads.claude.ai` and `code.claude.com`), and both architecture-specific binaries are pinned with hard-coded sha256 checksums, so the actual executable is verified at build time. The `SKIP` entry applies only to the license/legal markdown document, which is a minor hygiene choice (the URL is https, so it is at least transport-secured); it is not a security problem and does not affect verification of the binary itself.

The package() function performs only standard packaging operations: installing the prebuilt binary into `${pkgdir}/opt/claude-code/bin`, creating a transparent POSIX-sh wrapper that merely exports `DISABLE_UPDATES=1` and `DISABLE_INSTALLATION_CHECKS=1` and then execs the packaged binary with properly quoted arguments, and installing the license file. Setting those two environment variables is expected for a distro-packaged self-updating application — pacman owns updates, so disabling the upstream updater and the native-install layout health check is intentional and consistent with packaging practice, not a backdoor. There is no obfuscation, no eval/curl/wget, no network access beyond fetching the declared upstream sources, and no file operations outside `$pkgdir`.
</details>
<evidence></evidence>
<summary>
Legitimate upstream PKGBUILD: pinned checksums, official sources, no malicious behavior.
</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Legitimate upstream PKGBUILD: pinned checksums, official sources, no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,498
  Completion Tokens: 8,086
  Total Tokens: 18,584
  Total Cost: $0.001867
  Execution Time: 191.98 seconds

Final Status: SAFE


No issues found.
