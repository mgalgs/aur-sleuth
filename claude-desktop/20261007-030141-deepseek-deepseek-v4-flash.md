---
package: claude-desktop
pkgver: 2.26454.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 16681
completion_tokens: 2702
total_tokens: 19383
cost: 0.00395899
execution_time: 45.74
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-07T03:01:40Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Benign .gitignore file; no security concerns found.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no code or threats.
  - file: PKGBUILD
    status: safe
    summary: Legitimate repackaging of official binary with pinned checksums; no malicious behavior.
  - file: claude-desktop.sh
    status: safe
    summary: Launcher script is benign; only reads flags and starts the application normally.
---

Materializing claude-desktop from local mirror...
Materialized claude-desktop
Analyzing claude-desktop AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The top-level scope of this PKGBUILD contains only standard variable assignments (arrays, strings) and no command substitutions or code execution outside function bodies. No `$()` or backtick expressions exist at the global scope — only literal string and array definitions for `pkgname`, `pkgver`, `source`, `depends`, etc. The `package()` function is defined but not executed during `--printsrcinfo`. There are no `eval`, `source`, `curl`, `wget`, or other dangerous commands at the top level. Sourcing this PKGBUILD for metadata extraction is safe.
</details>
<evidence></evidence>
<summary>No top-level code execution; safe to source.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level code execution; safe to source.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .gitignore...
[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` used in an AUR git repository. It only excludes common build artifacts and local packaging workspace directories such as `*.deb`, `*.pkg.tar*`, `src/`, and `pkg/`. There are no commands, network operations, obfuscated content, or any behavior that could modify the system or execute code. The file is entirely benign and consistent with normal AUR packaging practice.
</details>
<evidence>
</evidence>
<summary>
Benign .gitignore file; no security concerns found.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD, claude-desktop.sh...
[1/4] Reviewing .SRCINFO, PKGBUILD, claude-desktop.sh...
+ Reviewed .gitignore. Status: SAFE -- Benign .gitignore file; no security concerns found.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a metadata descriptor for the Arch User Repository (AUR) package. It declares the package name, version, dependencies, upstream source URLs, and checksums. All sources are fetched from the official Anthropic downloads domain (`downloads.claude.ai`) over HTTPS using `.deb` packages with provided `sha256sums`. No executable code, no suspicious network destinations, no obfuscation, and no commands of any kind are present. The file is purely declarative and follows standard AUR packaging practices.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file, no code or threats.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, claude-desktop.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no code or threats.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD repackages Anthropic&apos;s official Debian package for Arch. The source URLs point to Anthropic&apos;s own official download server (downloads.claude.ai), and all three sha256sums are pinned, so the downloaded payloads are integrity-checked. The build steps are ordinary packaging: extracting the .deb payload, installing a launcher script, and creating compatibility symlinks for the Cowork VM feature. Nothing here fetches or executes code from unexpected hosts, uses obfuscation, or exfiltrates data.

The file does modify system permissions (chmod 4755 on chrome-sandbox) and creates symlinks under /usr/share/edk2 and /usr/bin, but these are standard Chromium/Electron packaging practices and explicit compatibility shims for the app&apos;s stated purpose. They are documented and do not constitute malicious behaviour. The launcher script source is included but not analyzed here; it is not shown to do anything harmful based on the PKGBUILD context. Overall, the PKGBUILD is consistent with legitimately packaging a vendor-provided binary with pinned checksums.
</details>
<evidence>
</evidence>
<summary>Legitimate repackaging of official binary with pinned checksums; no malicious behavior.</summary>
</security_assessment>

[3/4] Reviewing claude-desktop.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Legitimate repackaging of official binary with pinned checksums; no malicious behavior.
LLM auditresponse for claude-desktop.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard shell launcher for an Electron-based application. It reads optional user flags from a config file, detects a Wayland session, and passes the resulting arguments to the installed Claude Desktop binary. There are no network requests, downloads, obfuscated commands, or file writes outside normal runtime behavior.

The config file parsing uses standard shell reads and word splitting, and the script only passes the resulting flags to the application. The unquoted `$conf` in the `-r` test is a minor robustness issue, not a security vulnerability. No evidence of malicious or supply-chain behavior was found.
</details>
<evidence>
</evidence>
<summary>
Launcher script is benign; only reads flags and starts the application normally.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed claude-desktop.sh. Status: SAFE -- Launcher script is benign; only reads flags and starts the application normally.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 16,681
  Completion Tokens: 2,702
  Total Tokens: 19,383
  Total Cost: $0.003959
  Execution Time: 45.74 seconds

Final Status: SAFE


No issues found.
