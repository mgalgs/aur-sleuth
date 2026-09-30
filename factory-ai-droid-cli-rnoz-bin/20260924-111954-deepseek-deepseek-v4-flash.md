---
package: factory-ai-droid-cli-rnoz-bin
pkgver: 0.226.2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 37960
completion_tokens: 5776
total_tokens: 43736
cost: 0.004387060272
execution_time: 100.9
files_reviewed: 6
files_skipped: 0
maintainer_files: 6
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-24T11:19:54Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: Standard license file; no security concerns.
  - file: factory-ai-droid-cli-rnoz-bin.install
    status: safe
    summary: Standard .install file with only echo statements.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; no malicious code.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR bin package with no malicious code found.
  - file: patch_title.py
    status: safe
    summary: Legitimate binary patcher; no malicious indicators.
  - file: patch_keybindings.py
    status: safe
    summary: Local keybinding patcher; no network, exfiltration, or hidden code execution found.
---

Materializing factory-ai-droid-cli-rnoz-bin from local mirror...
Materialized factory-ai-droid-cli-rnoz-bin
Analyzing factory-ai-droid-cli-rnoz-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only variable assignments and function definitions at the top level. No code executes during sourcing — all download, verification, patching, and installation logic resides inside the `package()` function, which is not invoked by `makepkg --printsrcinfo`. There are no top-level command substitutions or function calls that could run malicious code.</details>
<evidence></evidence>
<summary>Sourcing this PKGBUILD is safe for metadata extraction.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Sourcing this PKGBUILD is safe for metadata extraction.
Reviewing the 6 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/6] Reviewing .SRCINFO...
[0/6] Reviewing .SRCINFO, PKGBUILD...
[0/6] Reviewing .SRCINFO, PKGBUILD, LICENSE...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Apache License 2.0 text with a brief note clarifying licensing of packaging scripts versus the upstream binary. It contains no executable code, no network operations, no system modifications, and no obfuscated content. There is no evidence of malicious behavior.
</details>
<evidence></evidence>
<summary>Standard license file; no security concerns.</summary>
</security_assessment>

[0/6] Reviewing .SRCINFO, PKGBUILD, LICENSE, factory-ai-droid-cli-rnoz-bin.install...
[1/6] Reviewing .SRCINFO, PKGBUILD, factory-ai-droid-cli-rnoz-bin.install...
+ Reviewed LICENSE. Status: SAFE -- Standard license file; no security concerns.
LLM auditresponse for factory-ai-droid-cli-rnoz-bin.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Arch Linux `.install` script that only contains echo statements to display messages during package installation, upgrade, and removal. There are no network requests, file modifications, obfuscated code, or any other dangerous operations. It does exactly what a packaging post-install script is expected to do: inform the user about the installed package. No security issues are present.
</details>
<evidence></evidence>
<summary>Standard .install file with only echo statements.</summary>
</security_assessment>

[1/6] Reviewing .SRCINFO, PKGBUILD, factory-ai-droid-cli-rnoz-bin.install, patch_keybindings.py...
[2/6] Reviewing .SRCINFO, PKGBUILD, patch_keybindings.py...
+ Reviewed factory-ai-droid-cli-rnoz-bin.install. Status: SAFE -- Standard .install file with only echo statements.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `.SRCINFO` is a standard Arch User Repository (AUR) metadata file. It contains only key-value pairs describing the package: version, dependencies, sources, checksums, and related metadata. There is no executable code, no obfuscated commands, no network requests, and no instructions that could execute arbitrary actions. All source checksums are provided and not set to `SKIP`. The listed dependencies (`curl`) and optional dependencies (`ripgrep`) are typical for a CLI tool. The install script reference is a packaging convention. No evidence of malicious behavior is present.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata; no malicious code.</summary>
</security_assessment>

[3/6] Reviewing PKGBUILD, patch_keybindings.py...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; no malicious code.
[3/6] Reviewing PKGBUILD, patch_keybindings.py, patch_title.py...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD downloads prebuilt binaries from the project's own upstream (`downloads.factory.ai`), verifies them with SHA-256 checksums fetched from the same server, and applies deterministic patches via Python scripts whose checksums are pinned in the `source` array. While the checksum verification is not independent (the checksum comes from the same server as the binary), this is a common pattern for prebuilt binary packages and is not, by itself, evidence of malice.  

The `has_user_noconfirm()` function traverses `/proc` to detect AUR helpers and their `--noconfirm` flags. This is unconventional but purely local—it reads process metadata to decide whether to prompt interactively—and does not exfiltrate data, download unexpected code, or modify system files outside the package's scope. No obfuscation, backdoors, or other malicious behaviors are present. The code is consistent with the stated purpose of packaging a forked CLI tool with optional patches.
</details>
<evidence></evidence>
<summary>Standard AUR bin package with no malicious code found.</summary>
</security_assessment>

[4/6] Reviewing patch_keybindings.py, patch_title.py...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR bin package with no malicious code found.
LLM auditresponse for patch_title.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a straightforward binary patcher that modifies a specific executable (Factory Droid CLI) to disable a non-interactive check in the title generation function. It performs local file operations only: reading the binary, searching for a specific byte pattern, and replacing it with an equal-length comment-padded replacement to preserve file size. There are no network requests, no code downloads, no obfuscated commands, and no exfiltration of data. The smoke test runs the patched binary with `--version`, which is standard practice. While patching binaries carries inherent risks (e.g., breaking signature validation or system integrity), that is a user choice, not a supply-chain attack. The script is transparent about its actions and contains no malicious behavior.
</details>
<evidence>
</evidence>
<summary>Legitimate binary patcher; no malicious indicators.</summary>
</security_assessment>

[5/6] Reviewing patch_keybindings.py...
+ Reviewed patch_title.py. Status: SAFE -- Legitimate binary patcher; no malicious indicators.
LLM auditresponse for patch_keybindings.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a self-contained, purely local Python utility that patches keybindings inside a Bun standalone executable for the Factory Droid CLI. It performs no network I/O of any kind (no urllib/requests/socket/curl/wget), no environment or credential harvesting, no decoding/executing of fetched payloads, and no writes outside the user-specified binary and its sibling temporary file. The complex byte-level regexes, the `RANGE_GAP` sentinel, and the ELF/Bun section parsing all serve the stated purpose: rotating the serialized keymap table, runtime dispatch statements, model-cycle registry, and display strings in a minified JS bundle inside a Bun executable, while failing closed on any unknown layout.

The only subprocess use is an optional `--test` smoke test that runs the locally patched binary with `--version` (list-argument invocation, no shell, captured output, 10-second timeout) — standard post-patch verification of the very file the tool was asked to patch. The bytecode-cache invalidation logic (zeroing JavaScriptCore cache magic and source hashes for modified modules) is consistent with patching Bun-compiled JS and is not obfuscated malicious activity. Minor hygiene notes without security significance: the temporary file name is predictable and permissions are reset to 0o755, so original special permissions/setuid bits would not be preserved; neither is evidence of malice.

No evidence of injected malicious behavior — no data exfiltration, no remote code download, no backdoors, no obfuscated commands, no tampering with unrelated system files. The tool is consistent with its documented purpose as an AUR package patcher.
</details>
<evidence>
</evidence>
<summary>
Local keybinding patcher; no network, exfiltration, or hidden code execution found.</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed patch_keybindings.py. Status: SAFE -- Local keybinding patcher; no network, exfiltration, or hidden code execution found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 37,960
  Completion Tokens: 5,776
  Total Tokens: 43,736
  Total Cost: $0.004387
  Execution Time: 100.90 seconds

Final Status: SAFE


No issues found.
