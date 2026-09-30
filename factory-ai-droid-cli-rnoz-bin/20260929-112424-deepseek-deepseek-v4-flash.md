---
package: factory-ai-droid-cli-rnoz-bin
pkgver: 0.229.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 37947
completion_tokens: 8535
total_tokens: 46482
cost: 0.00770238
execution_time: 190.25
files_reviewed: 6
files_skipped: 0
maintainer_files: 6
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-29T11:24:23Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Legitimate PKGBUILD with upstream downloads and optional patching.
  - file: factory-ai-droid-cli-rnoz-bin.install
    status: safe
    summary: "Safe: only informational echo messages."
  - file: LICENSE
    status: safe
    summary: Standard Apache-2.0 license text; no malicious or suspicious content.
  - file: patch_keybindings.py
    status: safe
    summary: Legitimate keybinding patching script; no malicious behavior detected.
  - file: .SRCINFO
    status: safe
    summary: Standard metadata file, no malicious content.
  - file: patch_title.py
    status: safe
    summary: Binary patcher with clear purpose; no network, exfiltration, or malicious behavior found.
---

Materializing factory-ai-droid-cli-rnoz-bin from local mirror...
Materialized factory-ai-droid-cli-rnoz-bin
Analyzing factory-ai-droid-cli-rnoz-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global/top-level scope contains only standard variable assignments (pkgname, pkgver, source, sha256sums, etc.) and function definitions (has_user_noconfirm, apply_patch_if_requested, download_and_patch_droid). There are no command substitutions, backtick expressions, eval, or other executable code outside of functions. Since `makepkg --printsrcinfo` only sources the PKGBUILD and does not call any functions, no malicious code would execute during this operation.
</details>
<evidence></evidence>
<summary>No malicious code at global scope; safe to source.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code at global scope; safe to source.
Reviewing the 6 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/6] Reviewing .SRCINFO...
[0/6] Reviewing .SRCINFO, LICENSE...
[0/6] Reviewing .SRCINFO, LICENSE, PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD downloads the upstream `droid` binary and `ripgrep` from `downloads.factory.ai`, the project&#39;s own domain, with SHA-256 checksum verification fetched from the same host. Two patching scripts (`patch_title.py`, `patch_keybindings.py`) are included in the source array with pinned checksums. The `has_user_noconfirm` function reads `/proc` to detect AUR helpers in the parent process chain – this is a novel but non-malicious approach to determine interactivity for prompting the user about optional patches; no data is exfiltrated. There is no obfuscated code, no execution of fetched scripts (only the patchers run via `python3` with `--test`), no tampering with system files outside the package scope, and no unexpected network destinations. The package follows standard AUR practices for binary packages and provides transparency through detailed comments.
</details>
<evidence></evidence>
<summary>Legitimate PKGBUILD with upstream downloads and optional patching.</summary>
</security_assessment>

[0/6] Reviewing .SRCINFO, LICENSE, PKGBUILD, factory-ai-droid-cli-rnoz-bin.install...
[1/6] Reviewing .SRCINFO, LICENSE, factory-ai-droid-cli-rnoz-bin.install...
+ Reviewed PKGBUILD. Status: SAFE -- Legitimate PKGBUILD with upstream downloads and optional patching.
LLM auditresponse for factory-ai-droid-cli-rnoz-bin.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.install` file contains only standard post-installation messages printed via `echo`. There are no network requests, file manipulations, obfuscated code, or dangerous commands. The `post_remove` function mentions preserving user configuration, which is normal packaging practice. No evidence of supply-chain attack or malicious behavior.
</details>
<evidence>
</evidence>
<summary>Safe: only informational echo messages.</summary>
</security_assessment>

[1/6] Reviewing .SRCINFO, LICENSE, factory-ai-droid-cli-rnoz-bin.install, patch_keybindings.py...
[2/6] Reviewing .SRCINFO, LICENSE, patch_keybindings.py...
+ Reviewed factory-ai-droid-cli-rnoz-bin.install. Status: SAFE -- Safe: only informational echo messages.
LLM auditresponse for LICENSE:
 <security_assessment>
<decision>SAFE</decision>
<details>
This file contains only the verbatim text of the Apache License, Version 2.0, a copyright notice, and a short note clarifying the licensing of the packaging scripts versus the upstream Factory AI binary. It contains no executable code, no network requests, no file operations, no obfuscation, and no instructions that could constitute malicious behavior.

The note about the upstream binary being "fetched during installation" is a factual statement about the package's normal AUR flow (downloading a prebuilt binary from the project's own upstream) and is not itself an instruction or a supply-chain concern. Nothing in this file deviates from standard packaging practice or attempts to hide malicious activity.
</details>
<evidence>
</evidence>
<summary>
Standard Apache-2.0 license text; no malicious or suspicious content.
</summary>
</security_assessment>

[2/6] Reviewing .SRCINFO, LICENSE, patch_keybindings.py, patch_title.py...
[3/6] Reviewing .SRCINFO, patch_keybindings.py, patch_title.py...
+ Reviewed LICENSE. Status: SAFE -- Standard Apache-2.0 license text; no malicious or suspicious content.
LLM auditresponse for patch_keybindings.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a specialized binary patcher designed to rotate editor/model/queue keybindings in a compiled application (likely a Bun or Node.js standalone executable). It performs byte-level edits using regular expressions, validates expected layouts, and refuses to patch ambiguous or partially-patched states. Its operations are limited to the input binary path and an optional destination path, writing a temp file and replacing the target only after consistency checks. It does not perform any network activity, does not download or execute code from external sources, does not exfiltrate data, and contains no obfuscation or encoded payloads. The only subprocess call is an optional smoke test that invokes the patched binary with `--version`. Bytecode cache invalidation for Bun executables is consistent with the stated purpose and involves zeroing magic numbers and hashes—not malicious tampering. No indicators of supply-chain attack were found.
</details>
<evidence>
</evidence>
<summary>
Legitimate keybinding patching script; no malicious behavior detected.
</summary>
</security_assessment>

[4/6] Reviewing .SRCINFO, patch_title.py...
+ Reviewed patch_keybindings.py. Status: SAFE -- Legitimate keybinding patching script; no malicious behavior detected.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a standard Arch Linux package metadata file. It contains only declarative fields: package name, version, dependencies, source file names, and their SHA-256 checksums. There is no executable code, obfuscation, or any references to unexpected remote hosts. The presence of an install script (`factory-ai-droid-cli-rnoz-bin.install`) is normal for AUR packages, and its content cannot be evaluated from this file alone. The checksums are all explicitly provided (none set to `SKIP`), indicating pinned sources. No security issues are present in this file itself.</details>
<evidence></evidence>
<summary>Standard metadata file, no malicious content.</summary>
</security_assessment>

[5/6] Reviewing patch_title.py...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata file, no malicious content.
LLM auditresponse for patch_title.py:
<security_assessment>  
<decision>SAFE</decision>  
<details>  
This script is a size-preserving binary patcher for the Factory Droid CLI. It locates the byte pattern `if(&lt;obj&gt;.isNonInteractiveCLIMode())return null;` inside the user-specified binary and replaces it with the equal-length payload `if(true)return null;/**/`, padded with spaces inside a comment to keep offsets and total file size identical. This is a standard, transparent binary-patching technique, not obfuscation — the docstring clearly explains the purpose (disabling LLM session-titling in non-interactive mode to reduce token usage), and the code contains no encoded/decoded commands, no eval, and no hidden logic.

The script performs no network activity, downloads nothing, and never executes anything except the user-specified binary in an optional smoke test (`--test` runs the patched binary with `--version`). File writes are atomic (temp file + permission preservation + replace), and the patch is validated to ensure the output size matches the original. Context markers and an AVX2 CPU check are used purely to avoid false pattern matches and to decide whether the smoke test can run. No exfiltration, backdoors, credential access, or tampering with unrelated files was found. The only consideration is that in-place patching of a third-party binary may raise upstream licensing/ToS questions, but that is not a supply-chain security threat.
</details>  
<evidence></evidence>  
<summary>Binary patcher with clear purpose; no network, exfiltration, or malicious behavior found.</summary>  
</security_assessment>

[6/6] Reviewing ...
+ Reviewed patch_title.py. Status: SAFE -- Binary patcher with clear purpose; no network, exfiltration, or malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 37,947
  Completion Tokens: 8,535
  Total Tokens: 46,482
  Total Cost: $0.007702
  Execution Time: 190.25 seconds

Final Status: SAFE


No issues found.
