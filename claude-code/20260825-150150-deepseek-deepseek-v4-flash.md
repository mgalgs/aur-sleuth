---
package: claude-code
pkgver: 2.1.245
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 34eecedf33cdb5da67bea8964402044d560850d8
prompt_tokens: 11370
completion_tokens: 2151
total_tokens: 13521
cost: 0.0012945072
execution_time: 91.88
files_reviewed: 3
files_skipped: 0
files_unauditable: 1
unpinned_sources: 1
date: 2026-08-25T15:01:50Z
file_verdicts:
  - file: cc-legal
    status: safe
    summary: Static legal documentation, no executable code or threats.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with official sources, no malicious behavior detected.
  - file: .nvchecker.toml
    status: safe
    summary: Declarative version checker config, no malicious content.
---

Cloning https://aur.archlinux.org/claude-code.git...
Cloned claude-code
Analyzing claude-code AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only defines variables, arrays, and a `package()` function at the global scope. No dangerous top-level command substitutions or code execution during sourcing. The `pkgver()` function is not defined (pkgver is a literal string), so no code runs during version detection. The source URLs all point to the official Claude AI domain (downloads.claude.ai, code.claude.com) with proper HTTPS, and the binary artifacts have valid SHA-256 checksums for both architectures. The legal document source has SKIP checksum, which is acceptable for a plain text file and does not execute anything. No dangerous operations (eval, curl|bash, network exfiltration, obfuscation, etc.) are present anywhere in the PKGBUILD. The `prepare()`, `build()`, and `package()` functions are not executed by the requested commands.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD; no dangerous top-level code.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Standard PKGBUILD; no dangerous top-level code.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Note: 1 remote source(s) have no checksum (sha256sums=SKIP), so the fetched bytes are not verifiable and can change without any AUR update: cc-legal::https://code.claude.com/docs/en/legal-and-compliance.md
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, cc-legal...
LLM auditresponse for cc-legal:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `cc-legal` contains standard legal documentation—terms of service, compliance information, and usage policies for Claude Code. It is a plain text/markdown file with no executable code, no shell commands, no obfuscated content, and no network requests or file operations. All links point to legitimate Anthropic domains (anthropic.com, claude.com) and a HackerOne security reporting form. There is no evidence of malicious or supply-chain attack behavior.
</details>
<evidence>

</evidence>
<summary>Static legal documentation, no executable code or threats.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed cc-legal. Status: SAFE -- Static legal documentation, no executable code or threats.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR PKGBUILD for the `claude-code` binary package. All sources are fetched from official Anthropic domains (`code.claude.com` and `downloads.claude.ai`). The binary's checksums are pinned (sha256sums_x86_64, sha256sums_aarch64). The `package()` function performs routine installation: copying the binary to `/opt/claude-code/bin/claude`, creating a wrapper script that sets environment variables to suppress upstream update warnings (acceptable packaging practice), and installing the license file. There are no obfuscated commands, no unexpected network requests, no data exfiltration, no backdoors, and no tampering with system files outside the package's scope. The SKIP checksum on the legal/license source is normal for a Markdown file from a static URL and is not a security concern.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with official sources, no malicious behavior detected.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with official sources, no malicious behavior detected.
Reviewed all required files.
Deciding which files to review next...
Note: 1 compiled/archived file(s) cannot be audited as text and were not reviewed (claude-2.1.245-x86_64). For a package that ships prebuilt binaries, the audit covers the packaging, not the payload.
Decided to review 1 additional files: .nvchecker.toml
Reviewing additional files...
Reviewing additional files...
[0/1] Reviewing .nvchecker.toml...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard nvchecker configuration file used to automatically check for new upstream versions of the claude-code package. It uses the regex source type to scrape the latest release from the official downloads page at `https://downloads.claude.ai/claude-code-releases/latest`. The regex `.+` simply matches any non-empty string, typical for extracting a version number. No executable code, no downloads of untrusted content, no data exfiltration, and no unexpected system modifications are present. The file is purely declarative and serves only as a version monitoring tool within AUR workflows.
</details>
<evidence></evidence>
<summary>Declarative version checker config, no malicious content.</summary>
</security_assessment>

[1/1] Reviewing ...
+ Reviewed .nvchecker.toml. Status: SAFE -- Declarative version checker config, no malicious content.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 11,370
  Completion Tokens: 2,151
  Total Tokens: 13,521
  Total Cost: $0.001295
  Execution Time: 91.88 seconds

Final Status: SAFE


No issues found.
