---
package: heroic-games-launcher
pkgver: 2.22.3
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 10185
completion_tokens: 2718
total_tokens: 12903
cost: 0.001384114326
execution_time: 63.26
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-18T11:03:37Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file with no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD, no security issues.
  - file: heroic.sh
    status: safe
    summary: Standard Electron launcher wrapper; no malicious behavior detected.
---

Materializing heroic-games-launcher from local mirror...
Materialized heroic-games-launcher
Analyzing heroic-games-launcher AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains standard variable definitions and function declarations. No code executes at the global/top-level scope beyond simple variable assignments and array definitions. There are no dangerous commands like `eval`, `curl`, `wget`, base64 decoding, or `exec` that could execute during sourcing. The `makepkg --printsrcinfo` command only sources the file's global scope, which is entirely benign in this case. All potentially risky operations are confined within `prepare()`, `build()`, and `package()` functions, which are not invoked by this command.
</details>
<evidence></evidence>
<summary>No dangerous top-level code; printsrcinfo is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code; printsrcinfo is safe.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, heroic.sh...
[0/3] Reviewing .SRCINFO, heroic.sh, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR `.SRCINFO` metadata file for the `heroic-games-launcher` package. It defines the package name, version, architecture, dependencies, sources, and checksums. The sources are a pinned Git tag (`v2.22.3`) from the official upstream repository and a local shell script (`heroic.sh`). Both sources have valid SHA-256 checksums. No obfuscated code, suspicious network requests, or dangerous commands are present. The file is purely declarative and conforms to normal AUR packaging practices.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file with no malicious content.</summary>
</security_assessment>

[1/3] Reviewing heroic.sh, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file with no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard Arch packaging practices for an Electron application. The source is pinned to a specific tag (v${pkgver}) with a valid SHA-256 checksum. All commands (sed, pnpm install with --ignore-scripts, pnpm run download-helper-binaries, pnpm run dist:linux, install, cp, desktop-file-edit) are routine for building and installing an Electron app. No obfuscated code, suspicious network destinations, or unauthorized file system modifications are present. The only network activity (pnpm install and download-helper-binaries) is expected and originates from the project&#x27;s own upstream. This file does not contain any injected malicious code.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD, no security issues.</summary>
</security_assessment>

[2/3] Reviewing heroic.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD, no security issues.
LLM auditresponse for heroic.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Electron application launcher wrapper. It simply runs the Electron binary against the Heroic application bundle at `/usr/lib/heroic/app.asar`. The `@ELECTRON@` placeholder is a normal packaging substitution used by the PKGBUILD, and `exec` replaces the shell with the Electron process as expected.

There is no evidence of malicious behavior: no network requests, no downloading or executing remote code, no obfuscated commands, no file exfiltration, and no suspicious system modifications. Even though the file was truncated for review, the visible content is a routine wrapper script consistent with standard AUR packaging practice.
</details>
<evidence></evidence>
<summary>Standard Electron launcher wrapper; no malicious behavior detected.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed heroic.sh. Status: SAFE -- Standard Electron launcher wrapper; no malicious behavior detected.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,185
  Completion Tokens: 2,718
  Total Tokens: 12,903
  Total Cost: $0.001384
  Execution Time: 63.26 seconds

Final Status: SAFE


No issues found.
