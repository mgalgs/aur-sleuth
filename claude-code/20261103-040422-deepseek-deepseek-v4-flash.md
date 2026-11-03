---
package: claude-code
pkgver: 2.1.317
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 10341
completion_tokens: 1676
total_tokens: 12017
cost: 0.001246063
execution_time: 27.41
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 1
injection_attempts: 0
date: 2026-11-03T04:04:21Z
file_verdicts:
  - file: .nvchecker.toml
    status: safe
    summary: Benign nvchecker config querying upstream version endpoint; no malicious behavior.
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO metadata; official upstream sources and pinned binary checksums.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR binary repackaging; official sources, pinned hashes, benign wrapper. Safe.
---

Materializing claude-code from local mirror...
Materialized claude-code
Analyzing claude-code AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global/top-level scope contains nothing but ordinary variable assignments: package metadata (pkgname, pkgver, pkgrel, pkgdesc, arch, url, license), dependency arrays, `options`, and `source`/`sha256sums` arrays. The only expansions at source time are `${pkgver}` (defined immediately above, a literal version string) and `${CARCH}` (used only inside `package()`, which is not executed by `makepkg --printsrcinfo`). There are no command substitutions, no `$(...)`/backticks, no `eval`, no downloads, and no file or network operations in the sourced scope.

The sources point at the project's own upstream hosts (`downloads.claude.ai`, `code.claude.com`) and the x86_64/aarch64 binaries carry pinned SHA-256 checksums; the license markdown uses 'SKIP', which is a hygiene/trust consideration only and irrelevant to this gate since no sources are fetched during `--printsrcinfo`.

The `package()` function merely installs the prebuilt binary, writes a small wrapper script via a quoted heredoc (`DISABLE_UPDATES`/`DISABLE_INSTALLATION_CHECKS`), and installs the license file — normal packaging, and out of scope for this command anyway. No evidence of injected malicious behavior.
</details>
<evidence>
</evidence>
<summary>Top-level scope is only static variables and arrays; no execution risk.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level scope is only static variables and arrays; no execution risk.
Note: 1 remote source(s) have no checksum (sha256sums=SKIP), so the bytes are not verifiable: cc-legal::https://code.claude.com/docs/en/legal-and-compliance.md
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, .nvchecker.toml...
[0/3] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is an `nvchecker` configuration, a standard tool used by AUR maintainers to detect new upstream versions. It defines a single `[claude-code]` section that uses a `regex` source to read the version from `https://downloads.claude.ai/claude-code-releases/latest` — the package's own upstream host — and treats the entire response (`regex = ".+"`) as the version string.

There is no executable code, no shell invocation, no file manipulation, and no data exfiltration. Fetching a version endpoint from the project's own download domain is routine maintainer tooling, not a supply-chain risk. No suspicious or obfuscated content is present.
</details>
<evidence>
</evidence>
<summary>Benign nvchecker config querying upstream version endpoint; no malicious behavior.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Benign nvchecker config querying upstream version endpoint; no malicious behavior.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a generated `.SRCINFO` metadata file and contains no executable code. It defines standard package metadata for `claude-code`, including dependencies and optional dependencies. The two binary sources are downloaded from the official `downloads.claude.ai` release host and are pinned with SHA-256 checksums for both x86_64 and aarch64; the `!strip` option is ordinary for a prebuilt binary. The additional `cc-legal` source points to the project's own documentation host and uses `SKIP` for its checksum, which is a hygiene/reproducibility concern but not evidence of malicious behavior.

No suspicious network destinations, obfuscated content, file operations, system modifications, or dangerous commands are present. Nothing in this `.SRCINFO` deviates from normal AUR packaging practice.
</details>
<evidence>
</evidence>
<summary>
Standard .SRCINFO metadata; official upstream sources and pinned binary checksums.
</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO metadata; official upstream sources and pinned binary checksums.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows conventional AUR practice for repackaging a prebuilt upstream binary. All sources point to the project's own official infrastructure: `downloads.claude.ai` for the `x86_64`/`aarch64` executables and `code.claude.com` for the compliance/legal document, both matching the declared upstream (`github.com/anthropics/claude-code`). The two architecture-specific binaries carry pinned SHA-256 checksums, so the executed payload is integrity-pinned; only the legal document uses `SKIP`, which is a hygiene note rather than a threat and does not affect any code that gets run.

The `package()` function is standard: it installs the binary into `/opt/claude-code/bin`, generates a small `/usr/bin/claude` wrapper, and installs the license file under `/usr/share/licenses`. The wrapper merely exports `DISABLE_UPDATES=1` and `DISABLE_INSTALLATION_CHECKS=1` (so the upstream self-updater/health-check does not interfere with pacman-managed files) and then `exec`s the packaged binary with the user's arguments. There is no `eval`, no base64/hex-encoded payload, no network fetch at build time beyond the declared sources, no access to credentials or unrelated system files, and no writes outside `$pkgdir`.

One general supply-chain consideration (not a defect of this file): because the package ships an opaque prebuilt Bun executable rather than building from source, trust ultimately rests on Anthropic's release artifacts; the pinned hashes limit substitution but not upstream compromise. This is normal for vendor-binary packages and is not evidence of malicious tampering.
</details>
<evidence>
</evidence>
<summary>Standard AUR binary repackaging; official sources, pinned hashes, benign wrapper. Safe.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR binary repackaging; official sources, pinned hashes, benign wrapper. Safe.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,341
  Completion Tokens: 1,676
  Total Tokens: 12,017
  Total Cost: $0.001246
  Execution Time: 27.41 seconds

Final Status: SAFE


No issues found.
