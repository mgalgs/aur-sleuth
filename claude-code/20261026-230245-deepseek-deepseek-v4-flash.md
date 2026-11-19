---
package: claude-code
pkgver: 2.1.311
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 10595
completion_tokens: 2161
total_tokens: 12756
cost: 0.001357447
execution_time: 50.34
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 1
injection_attempts: 0
date: 2026-10-26T23:02:45Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; official Anthropic sources with pinned checksums. No malicious behavior found.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR binary package from official Anthropic sources with pinned checksums; no malicious behavior found.
  - file: .nvchecker.toml
    status: safe
    summary: "Safe: standard nvchecker config checking official upstream releases page."
---

Materializing claude-code from local mirror...
Materialized claude-code
Analyzing claude-code AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only top-level variable assignments and a `package()` function definition. There are no command substitutions (`$()`, backticks), no `eval` invocations, no network calls, and no code execution at the global scope. All variable references are simple parameter expansions within quoted strings (e.g., `${pkgver}` in the `source_*` arrays) that depend only on previously defined variables. The `sha256sums` entries contain `SKIP` and valid hashes, but no execution occurs during sourcing. The `package()` function is defined but not invoked by `makepkg --printsrcinfo`. Sourcing this PKGBUILD to parse metadata is safe.
</details>
<evidence></evidence>
<summary>No dangerous top-level code; sourcing is safe</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code; sourcing is safe
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
This is a standard AUR `.SRCINFO` metadata file for the `claude-code` package. It declares the package metadata, architecture-specific binary sources, and checksums. The binaries are fetched from `downloads.claude.ai`, which is the official Anthropic distribution domain matching the package's upstream URL (`https://github.com/anthropics/claude-code`), and both binaries have pinned SHA-256 checksums. The only `SKIP` checksum is on the upstream legal/compliance documentation page (`cc-legal::https://code.claude.com/docs/en/legal-and-compliance.md`), which is a trust/hygiene consideration but not malicious — it is a documentation page from the project's own domain and is not executed.

No obfuscated code, suspicious network endpoints, dangerous commands, or unexpected file operations are present. The file solely describes sources and build metadata; all behavior is consistent with ordinary AUR packaging practices. The prebuilt binary is fetched over HTTPS from the vendor's official host with a pinned checksum, which is a reasonable trust posture for a vendor-distributed binary package.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata; official Anthropic sources with pinned checksums. No malicious behavior found.
</summary>
</security_assessment>

[1/3] Reviewing .nvchecker.toml, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; official Anthropic sources with pinned checksums. No malicious behavior found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a prebuilt binary package. The binaries are fetched from `downloads.claude.ai` (Anthropic's official distribution domain) with pinned sha256 checksums for both architectures, and the license text comes from `code.claude.com` (also an official upstream domain). There are no suspicious network destinations, no encoding/obfuscation, and no dangerous commands (no eval, curl-pipe-bash, or post-install execution of fetched content).

The `package()` function only installs the binary into `/opt/claude-code/bin/` and creates a small wrapper in `/usr/bin` that sets `DISABLE_UPDATES=1` and `DISABLE_INSTALLATION_CHECKS=1`. This is a routine and sensible approach for self-updating applications installed via the package manager — it prevents the app from bypassing pacman and is not malicious behavior. The `!strip` option is correctly documented (Bun self-contained binary).

One minor hygiene note: the license source (`cc-legal`) uses a `SKIP` checksum. Since it is non-executable documentation installed as a LICENSE file rather than code that gets run, this is a trust/hygiene concern only, not evidence of malice. The executable binaries themselves have properly pinned checksums.
</details>
<evidence>
</evidence>
<summary>
Standard AUR binary package from official Anthropic sources with pinned checksums; no malicious behavior found.
</summary>
</security_assessment>

[2/3] Reviewing .nvchecker.toml...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR binary package from official Anthropic sources with pinned checksums; no malicious behavior found.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a configuration file for `nvchecker`, a standard tool used by AUR maintainers to automatically check for new upstream releases. It defines a version check for the `claude-code` package by fetching the upstream releases page from `https://downloads.claude.ai/claude-code-releases/latest` and applying the regex `.+` to determine the latest version.

There are no executable commands, no network requests to suspicious or unrelated hosts, no obfuscation, no file operations, and no system modifications. The URL points to the project's own official download domain (`downloads.claude.ai`), which is consistent with normal upstream version-checking behavior. The regex `.+` is naive and may over-match, but that is a correctness/hygiene concern rather than a security issue.
</details>
<evidence>
</evidence>
<summary>
Safe: standard nvchecker config checking official upstream releases page.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .nvchecker.toml. Status: SAFE -- Safe: standard nvchecker config checking official upstream releases page.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,595
  Completion Tokens: 2,161
  Total Tokens: 12,756
  Total Cost: $0.001357
  Execution Time: 50.34 seconds

Final Status: SAFE


No issues found.
