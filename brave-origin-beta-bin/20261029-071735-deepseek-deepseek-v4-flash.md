---
package: brave-origin-beta-bin
pkgver: 1.100.44
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 16538
completion_tokens: 5229
total_tokens: 21767
cost: 0.002456636
execution_time: 80.04
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-29T07:17:34Z
file_verdicts:
  - file: MPL2
    status: safe
    summary: Standard MPL-2.0 license text; no executable or malicious content.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with official sources and checksums; no malicious behavior found.
  - file: brave-origin-beta-bin.sh
    status: safe
    summary: Standard browser launcher wrapper; reads user flags and launches binary; no malicious behavior.
  - file: PKGBUILD
    status: safe
    summary: No malicious behavior found; standard packaging with pinned checksums and expected setuid sandbox.
---

Materializing brave-origin-beta-bin from local mirror...
Materialized brave-origin-beta-bin
Analyzing brave-origin-beta-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The global/top-level scope of this PKGBUILD contains only variable assignments (strings and arrays) and function definitions. There are no command substitutions, no network requests, no file operations, and no other executable statements that would run when the PKGBUILD is sourced by `makepkg --printsrcinfo`. The `prepare()` and `package()` functions are defined but not invoked during this step, so their contents are irrelevant for this narrow safety gate. All variable values are either literal strings or simple expansions of previously defined variables; none involve dangerous operations like `$(curl ...)`, `$(wget ...)`, or `$(base64 ...)`. Therefore, executing `makepkg --printsrcinfo` on this file is safe.
</details>
<evidence></evidence>
<summary>Global scope has no executable malicious code.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Global scope has no executable malicious code.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, MPL2...
[0/4] Reviewing .SRCINFO, MPL2, PKGBUILD...
LLM auditresponse for MPL2:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is the plain-text Mozilla Public License Version 2.0. It contains only license terms, definitions, and legal notices. There is no executable code, no network activity, no file operations, no obfuscated content, and no deviation from standard packaging practices. It is a standard upstream license file and presents no security concerns.
</details>
<evidence>
</evidence>
<summary>
Standard MPL-2.0 license text; no executable or malicious content.</summary>
</security_assessment>

[1/4] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed MPL2. Status: SAFE -- Standard MPL-2.0 license text; no executable or malicious content.
[1/4] Reviewing .SRCINFO, PKGBUILD, brave-origin-beta-bin.sh...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file describes a standard AUR binary package for `brave-origin-beta-bin`. All binary sources point to the official Brave GitHub releases page (`github.com/brave/brave-browser/releases/download/...`) for the pinned version `1.100.44`, and both `x86_64` and `aarch64` sources have explicit `sha512sums` values. The `brave-origin-beta-bin.sh` helper script source also has a sha512 checksum.

There are no suspicious network endpoints, no encoded or obfuscated commands, no post-install hooks, and no file operations outside normal packaging metadata. The `aarch64` URL contains a “beta-beta” filename segment, but this is likely an upstream naming quirk rather than evidence of malice, especially since the checksum pins the expected content. The file does not contain any executable logic at all; it is only package metadata.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata with official sources and checksums; no malicious behavior found.
</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, brave-origin-beta-bin.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with official sources and checksums; no malicious behavior found.
LLM auditresponse for brave-origin-beta-bin.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard launcher wrapper for the Brave Origin Beta browser. It reads an optional user flags file from `$XDG_CONFIG_HOME/brave-origin-beta-flags.conf`, sets a default Chrome user data directory, and execs the package binary `/opt/brave.com/brave-origin-beta/brave-origin` with those flags and any command-line arguments.

There is no suspicious network activity, no download-and-execute behavior, no obfuscation, no base64/eval usage, and no modification of files outside of reading the user's own optional configuration. The script performs only routine launcher operations consistent with standard packaging practice.
</details>
<evidence>
</evidence>
<summary>
Standard browser launcher wrapper; reads user flags and launches binary; no malicious behavior.
</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed brave-origin-beta-bin.sh. Status: SAFE -- Standard browser launcher wrapper; reads user flags and launches binary; no malicious behavior.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD downloads the package from Brave's official GitHub releases using a pinned version and SHA-512 checksums for all sources, then installs the extracted `.deb` payload into `$pkgdir`. I found no `curl|bash`, no encoded or obfuscated commands, no unexpected network endpoints, and no file access outside the package's own build/install directories.

The only operations worth noting are removal of the upstream `cron` directory from the extracted application tree and `chmod 4755` on `chrome-sandbox`. Both are confined to the application's own files and are consistent with normal packaging practices: Chromium-based browsers require the setuid sandbox helper. No injected supply-chain behavior is evident in this file.
</details>
<evidence>
</evidence>
<summary>
No malicious behavior found; standard packaging with pinned checksums and expected setuid sandbox.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- No malicious behavior found; standard packaging with pinned checksums and expected setuid sandbox.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 16,538
  Completion Tokens: 5,229
  Total Tokens: 21,767
  Total Cost: $0.002457
  Execution Time: 80.04 seconds

Final Status: SAFE


No issues found.
