---
package: claude-code
pkgver: 2.1.183
pkgrel: 1
result: safe
model: anthropic/claude-sonnet-4.6
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 11c93a0c95e2166961e3664fea6b5a63827ded10
prompt_tokens: 10905
completion_tokens: 2452
total_tokens: 13357
cost: 0.069495
execution_time: 48.64
files_reviewed: 3
files_skipped: 0
date: 2026-06-19T16:47:05Z
file_verdicts:
  - file: cc-legal
    status: safe
    summary: Plain documentation file; no executable code or malicious content.
  - file: PKGBUILD
    status: safe
    summary: "Standard binary AUR package from Anthropic's official domains; no malicious behavior."
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config querying legitimate upstream; no threats found.
---

Cloning https://aur.archlinux.org/claude-code.git to /home/mgalgs/aur-sleuth-data/bulk-reports/anthropic-claude-sonnet-4.6/aur-sleuth-l15t3ljd...
Cloned repository to /home/mgalgs/aur-sleuth-data/bulk-reports/anthropic-claude-sonnet-4.6/aur-sleuth-l15t3ljd
Analyzing claude-code AUR package (working in /home/mgalgs/aur-sleuth-data/bulk-reports/anthropic-claude-sonnet-4.6/aur-sleuth-l15t3ljd) with anthropic/claude-sonnet-4.6 from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's top-level scope contains only standard variable assignments — no command substitutions, no `eval`, no dynamic code execution. There is no `pkgver()` function, so nothing dynamic runs during sourcing.

The `source` arrays download from `code.claude.com` (legal document) and `downloads.claude.ai` (architecture-specific binaries). Both are Anthropic's official domains and directly correspond to the upstream project being packaged. The binary sources have pinned `sha256sums` for both architectures, while the legal markdown has `SKIP` which is a common and acceptable practice for non-critical documentation files.

The only function defined, `package()`, is out of scope for this gate and on review looks entirely standard (installing files into `$pkgdir` with `install`).
</details>
<summary>Standard PKGBUILD; sources from official Anthropic domains, no suspicious top-level code.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- Standard PKGBUILD; sources from official Anthropic domains, no suspicious top-level code.[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, cc-legal...
LLM auditresponse for cc-legal:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a plain documentation/markdown file describing legal and compliance information for the Claude Code product. It contains no executable code, scripts, shell commands, network requests, or any form of code that could be executed. The content consists entirely of legal text, references to Anthropic's own legal pages (anthropic.com, support.claude.com, trust.anthropic.com, hackerone.com), and descriptions of authentication methods. There are no packaging scripts, build instructions, or anything that could constitute a supply-chain threat. All external links point to Anthropic's own domains or well-known third-party services (HackerOne) directly relevant to the described content.
</details>
<summary>
Plain documentation file; no executable code or malicious content.
</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed cc-legal. Status: SAFE -- Plain documentation file; no executable code or malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is straightforward and follows standard AUR packaging practices for a pre-built binary package.

**Sources and checksums**: The binary is downloaded directly from `downloads.claude.ai` (Anthropic's official distribution domain), and the legal document from `code.claude.com`. Both are legitimate Anthropic-owned domains consistent with the package's stated upstream. Pinned SHA-256 checksums are provided for both architecture-specific binaries (`df3b409c...` for x86_64 and `260a6e43...` for aarch64). The `SKIP` on the legal markdown document is acceptable, as it's a documentation artifact rather than an executable.

**Wrapper script**: The `cat > "${pkgdir}/usr/bin/claude"` block creates a simple, human-readable shell wrapper that sets `DISABLE_UPDATES=1` and `DISABLE_INSTALLATION_CHECKS=1` before calling the real binary. This is a routine and sensible packaging practice to prevent the upstream binary from attempting self-updates or warning about an unexpected install layout.

**No red flags**: There is no obfuscated code, no base64/eval, no fetching from unexpected third-party hosts, no file exfiltration, and no execution of dynamically downloaded content. The `!strip` option is explained clearly (Bun executable format).
</details>
<summary>
Standard binary AUR package from Anthropic&apos;s official domains; no malicious behavior.
</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard binary AUR package from Anthropic's official domains; no malicious behavior.
Reviewed all required files.
Deciding which files to review next...
Decided to review 1 additional files: .nvchecker.toml
Reviewing additional files...
Reviewing additional files...
[0/1] Reviewing .nvchecker.toml...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `nvchecker` configuration file used by AUR maintainers to automate upstream version checking. It defines a single entry for the `claude-code` package, pointing to `https://downloads.claude.ai/claude-code-releases/latest` — which is the legitimate upstream source for the Claude Code package maintained by Anthropic. The `regex` source type with `.+` is a common pattern to capture a version string from a plain-text endpoint.

There is no code execution, no data exfiltration, no obfuscated commands, and no downloads from unexpected or unrelated hosts. This file is purely declarative and only instructs `nvchecker` to check the package's own upstream for version updates — a routine AUR maintainer workflow task.
</details>
<summary>
Standard nvchecker config querying legitimate upstream; no threats found.
</summary>
</security_assessment>

[1/1] Reviewing ...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config querying legitimate upstream; no threats found.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: anthropic/claude-sonnet-4.6
  Prompt Tokens: 10,905
  Completion Tokens: 2,452
  Total Tokens: 13,357
  Total Cost: $0.069495
  Execution Time: 48.64 seconds
Full audit report can be found in /home/mgalgs/aur-sleuth-data/bulk-reports/anthropic-claude-sonnet-4.6/aur-sleuth-report-claude-code.txt
Final Status: SAFE


No issues found.
