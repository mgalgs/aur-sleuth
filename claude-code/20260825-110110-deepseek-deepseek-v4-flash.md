---
package: claude-code
pkgver: 2.1.245
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 34eecedf33cdb5da67bea8964402044d560850d8
prompt_tokens: 11370
completion_tokens: 2231
total_tokens: 13601
cost: 0.0013520528
execution_time: 49.1
files_reviewed: 3
files_skipped: 0
files_unauditable: 1
unpinned_sources: 1
date: 2026-08-25T11:01:08Z
file_verdicts:
  - file: cc-legal
    status: safe
    summary: Documentation file with no executable code or malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR binary package, no malicious behavior.
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config; no malicious content.
---

Cloning https://aur.archlinux.org/claude-code.git...
Cloned claude-code
Analyzing claude-code AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable assignments and an unconditional `package()` function. No `pkgver()` function is defined. There are no top-level command substitutions, no `eval`/`curl`/`bash`/`wget` invocations, and no obfuscated or encoded code. All `source` URLs point to the official Anthropic/Claude domains (`code.claude.com` and `downloads.claude.ai`) over HTTPS. The `--nobuild`/`--noprepare` flags prevent the `package()` function (and any `prepare()`/`build()` functions, which are absent here) from executing. Fetching and extracting the sources writes files to disk only; the extracted content is a binary executable and a markdown file, neither of which is executed during this step. No malicious behavior is possible from running these commands.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with no dangerous top-level code.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Standard PKGBUILD with no dangerous top-level code.
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
The file `cc-legal` is a plain markdown documentation file containing legal agreements, compliance information, and usage policies for Claude Code. It contains no executable code, no shell commands, no network requests beyond standard text hyperlinks, and no obfuscated content. The content is entirely informational and references official Anthropic websites. There is no evidence of any supply-chain attack, malicious behavior, or deviation from standard documentation practices.
</details>
<evidence></evidence>
<summary>Documentation file with no executable code or malicious content.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed cc-legal. Status: SAFE -- Documentation file with no executable code or malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard binary release package for the claude-code CLI tool. It downloads the official x86_64 and aarch64 binaries from Anthropic's own domain (`downloads.claude.ai`) with pinned SHA-256 checksums, along with a legal document from `code.claude.com`. The `package()` function installs the binary into `/opt/claude-code/bin/` and creates a wrapper script at `/usr/bin/claude` that sets `DISABLE_UPDATES=1` and `DISABLE_INSTALLATION_CHECKS=1` — a common and expected practice for AUR packages that replaces upstream's self-update mechanism with the system package manager.

No obfuscated code, dangerous commands (eval, base64, curl, wget), unexpected network destinations, or data exfiltration is present. The `SKIP` checksum on the legal source is standard AUR practice and not a security concern. The file is clean and follows normal packaging conventions.
</details>
<evidence></evidence>
<summary>Standard AUR binary package, no malicious behavior.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR binary package, no malicious behavior.
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
This file is a configuration file for `nvchecker`, a tool used to monitor upstream releases for AUR packages. It defines a single source `claude-code` that fetches the latest release URL from the official Anthropic domain (`downloads.claude.ai`) and applies a regex pattern. The URL and domain are legitimate for the claude-code package. The regex `.+` is unusual but not malicious—it simply matches the entire fetched content, which may be a functional oversight but does not introduce a security risk. There are no commands, obfuscation, or downloads from untrusted sources. The file performs no operations of its own; it is purely a declarative configuration parsed by `nvchecker`.
</details>
<evidence></evidence>
<summary>Standard nvchecker config; no malicious content.</summary>
</security_assessment>

[1/1] Reviewing ...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config; no malicious content.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 11,370
  Completion Tokens: 2,231
  Total Tokens: 13,601
  Total Cost: $0.001352
  Execution Time: 49.10 seconds

Final Status: SAFE


No issues found.
