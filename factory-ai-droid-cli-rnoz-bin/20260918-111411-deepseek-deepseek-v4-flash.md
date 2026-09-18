---
package: factory-ai-droid-cli-rnoz-bin
pkgver: 0.222.0
pkgrel: 4
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 34829
completion_tokens: 4504
total_tokens: 39333
cost: 0.003884221222
execution_time: 39.84
files_reviewed: 6
files_skipped: 0
maintainer_files: 6
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-18T11:14:11Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Metadata-only file; no security concerns.
  - file: LICENSE
    status: safe
    summary: Standard license file, no security issues.
  - file: factory-ai-droid-cli-rnoz-bin.install
    status: safe
    summary: Standard .install script with informational messages only.
  - file: patch_keybindings.py
    status: safe
    summary: Legitimate keybinding patcher; no malicious behavior detected.
  - file: patch_title.py
    status: safe
    summary: Benign local binary patching tool with no malicious behavior.
  - file: PKGBUILD
    status: safe
    summary: No malicious code; /proc inspection is a privacy concern but not a threat.
---

Materializing factory-ai-droid-cli-rnoz-bin from local mirror...
Materialized factory-ai-droid-cli-rnoz-bin
Analyzing factory-ai-droid-cli-rnoz-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only static top-level variable definitions and a function definition for `package()`. No command substitutions (e.g., `$(...)` or backticks) or any executable code exists at the global scope that would run during `makepkg --printsrcinfo`. The `curl`, `/proc` inspection, file operations, and other potentially dangerous code are all inside the `package()` function, which is not executed during the metadata printing step. Therefore, sourcing this PKGBUILD for `--printsrcinfo` is safe.
</details>
<evidence></evidence>
<summary>No top-level executable code; only function definitions.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level executable code; only function definitions.
Reviewing the 6 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/6] Reviewing .SRCINFO...
[0/6] Reviewing .SRCINFO, LICENSE...
[0/6] Reviewing .SRCINFO, LICENSE, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is metadata-only—it declares package name, version, dependencies, and source files with checksums. No executable code, network requests, or obfuscated content is present. All sources are local files, and checksums are provided for integrity. The description of automatic upstream tracking is not actionable in this file. There is no evidence of malicious behavior.
</details>
<evidence></evidence>
<summary>Metadata-only file; no security concerns.</summary>
</security_assessment>

[1/6] Reviewing LICENSE, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Metadata-only file; no security concerns.
[1/6] Reviewing LICENSE, PKGBUILD, factory-ai-droid-cli-rnoz-bin.install...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Apache License 2.0 text, commonly used in open-source projects. It includes a note clarifying the licensing of packaging scripts vs. the upstream binary. There is no executable code, no network requests, no file operations, and no obfuscation. The file poses no security risk.
</details>
<evidence></evidence>
<summary>Standard license file, no security issues.</summary>
</security_assessment>

[2/6] Reviewing PKGBUILD, factory-ai-droid-cli-rnoz-bin.install...
+ Reviewed LICENSE. Status: SAFE -- Standard license file, no security issues.
[2/6] Reviewing PKGBUILD, factory-ai-droid-cli-rnoz-bin.install, patch_keybindings.py...
LLM auditresponse for factory-ai-droid-cli-rnoz-bin.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Arch Linux `.install` script used to display informational messages during package installation, upgrade, and removal. It contains only `echo` statements that output user-friendly text about the package status, paths, and usage instructions. No network requests, file modifications, dangerous commands (eval, base64, curl, wget), obfuscation, or any behavior that deviates from normal packaging practices are present. The script poses no security risk.
</details>
<evidence></evidence>
<summary>Standard .install script with informational messages only.</summary>
</security_assessment>

[3/6] Reviewing PKGBUILD, patch_keybindings.py...
+ Reviewed factory-ai-droid-cli-rnoz-bin.install. Status: SAFE -- Standard .install script with informational messages only.
[3/6] Reviewing PKGBUILD, patch_keybindings.py, patch_title.py...
LLM auditresponse for patch_keybindings.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The script `patch_keybindings.py` is a binary patching utility for the Factory Droid application. It rotates keybinding assignments in the compiled executable by applying byte-level, size-preserving replacements. All operations are confined to the specified input binary file; the script does not download any external code, exfiltrate data, perform obfuscated commands, or manipulate system files beyond its target. The only executed command is an optional `--version` smoke test of the patched binary itself. No genuinely malicious behavior is present.
</details>
<evidence></evidence>
<summary>Legitimate keybinding patcher; no malicious behavior detected.</summary>
</security_assessment>

[4/6] Reviewing PKGBUILD, patch_title.py...
+ Reviewed patch_keybindings.py. Status: SAFE -- Legitimate keybinding patcher; no malicious behavior detected.
LLM auditresponse for patch_title.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a utility for patching a specific pattern in a binary (the Droid CLI) to modify session-titling behavior. It operates solely on local files, performing a byte-level replacement with strict size preservation. All file operations (read, write, chmod, replace) are confined to the provided paths and follow standard Python practices. The script includes a `has_avx2_support()` function that reads `/proc/cpuinfo` or runs `sysctl`, which are normal system queries, not data exfiltration. The `smoke_test_binary` function executes the patched binary with `--version` for verification, which is a standard test step. There are no network requests, no obfuscated code, no eval, and no unexpected downloads. The script does not exfiltrate data, install backdoors, or tamper with unrelated system files. It is a straightforward patching tool intended for user-controlled use.
</details>
<evidence></evidence>
<summary>Benign local binary patching tool with no malicious behavior.</summary>
</security_assessment>

[5/6] Reviewing PKGBUILD...
+ Reviewed patch_title.py. Status: SAFE -- Benign local binary patching tool with no malicious behavior.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD downloads its precompiled binary from `https://downloads.factory.ai`, which matches the upstream project domain (`factory.ai`) referenced in the `url` field, and verifies it with a `sha256` checksum from the same host.  No requests to unexpected or unrelated hosts are made.  The patch scripts (`patch_title.py`, `patch_keybindings.py`) are local files whose checksums are pinned in the `source` array, and they implement the package’s stated tweaks (titling and keybinding patches), not injected backdoor code.  The build process is transparent: `curl` + sha256 verification + patch + install.

One unusual element is the `has_user_noconfirm()` function, which reads `/proc/$p/comm` and `/proc/$p/cmdline` of ancestor processes to detect AUR helpers.  While this is a privacy-invasive technique (inspecting other processes’ command lines), the data is never exfiltrated, logged, or sent anywhere; it is used only to decide whether to prompt interactively for optional patches.  This does not meet the threshold for genuinely malicious behavior (data exfiltration, code execution from an attacker-controlled source, obfuscated commands, backdoors, etc.).  The function is essentially a heuristic to infer whether the build is running headless, which could be achieved more simply, but it is not a supply‑chain attack.

No other red flags are present: there are no `eval`, `base64`, `curl|bash`, or `git pull` of unchecked content, no unexpected file system modifications, and no encoding tricks.  The package follows standard binary‑package conventions (SKIP-free checksums on local sources, dependency on `curl`, `!strip`, install paths under `/usr/lib/factory` and `/usr/bin`).
</details>
<evidence>

</evidence>
<summary>
No malicious code; /proc inspection is a privacy concern but not a threat.
</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- No malicious code; /proc inspection is a privacy concern but not a threat.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 34,829
  Completion Tokens: 4,504
  Total Tokens: 39,333
  Total Cost: $0.003884
  Execution Time: 39.84 seconds

Final Status: SAFE


No issues found.
