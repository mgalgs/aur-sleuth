---
package: factory-ai-droid-cli-rnoz-bin
pkgver: 0.233.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 42314
completion_tokens: 11433
total_tokens: 53747
cost: 0.001825040
execution_time: 76.47
files_reviewed: 6
files_skipped: 0
maintainer_files: 6
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-03T07:21:36Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: Standard license file, no security concerns.
  - file: factory-ai-droid-cli-rnoz-bin.install
    status: safe
    summary: Clean install script with only informational messages.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR binary package; no evidence of malicious behavior.
  - file: patch_title.py
    status: safe
    summary: Clean binary patching tool with no malicious behavior.
  - file: patch_keybindings.py
    status: safe
    summary: Legitimate binary patching tool, no malicious behavior.
  - file: .SRCINFO
    status: safe
    summary: Metadata only; no malicious code in .SRCINFO.
---

Materializing factory-ai-droid-cli-rnoz-bin from local mirror...
Materialized factory-ai-droid-cli-rnoz-bin
Analyzing factory-ai-droid-cli-rnoz-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD top-level scope contains only variable definitions (pkgname, pkgver, source, sha256sums, etc.) and a function definition for `package()`. No command substitutions, eval, curl, wget, or other dangerous operations are present at global scope. The code that downloads binaries and applies patches is strictly inside `package()`, which is **not executed** during `makepkg --printsrcinfo`. Therefore sourcing the PKGBUILD for this command is safe.
</details>
<evidence>
</evidence>
<summary>
No dangerous top-level code; safe to source.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code; safe to source.
Reviewing the 6 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/6] Reviewing .SRCINFO...
[0/6] Reviewing .SRCINFO, LICENSE...
[0/6] Reviewing .SRCINFO, LICENSE, PKGBUILD...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Apache License 2.0 text with a note indicating that packaging scripts are licensed under Apache 2.0 and that the upstream binary is property of Factory AI. There is no code, no commands, no network requests, no obfuscation, and no system modifications. It is a plain license file without any executable or dangerous content.
</details>
<evidence></evidence>
<summary>Standard license file, no security concerns.</summary>
</security_assessment>

[0/6] Reviewing .SRCINFO, LICENSE, PKGBUILD, factory-ai-droid-cli-rnoz-bin.install...
[1/6] Reviewing .SRCINFO, PKGBUILD, factory-ai-droid-cli-rnoz-bin.install...
+ Reviewed LICENSE. Status: SAFE -- Standard license file, no security concerns.
LLM auditresponse for factory-ai-droid-cli-rnoz-bin.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.install` script used in Arch Linux packages. It contains only `echo` statements that display informational messages to the user during installation, upgrade, and removal. There are no commands that perform network requests, execute arbitrary code, modify system files, or exfiltrate data. The `post_remove` function suggests a manual removal command in an echo statement, which is harmless as it is not executed. No malicious or suspicious behavior is present.
</details>
<evidence></evidence>
<summary>Clean install script with only informational messages.</summary>
</security_assessment>

[1/6] Reviewing .SRCINFO, PKGBUILD, factory-ai-droid-cli-rnoz-bin.install, patch_keybindings.py...
[2/6] Reviewing .SRCINFO, PKGBUILD, patch_keybindings.py...
+ Reviewed factory-ai-droid-cli-rnoz-bin.install. Status: SAFE -- Clean install script with only informational messages.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard AUR binary package that downloads upstream droid and ripgrep binaries from `https://downloads.factory.ai`, verifies their checksums (fetched from the same server), optionally applies user-controlled patches via included Python scripts, and installs them with a launcher script. 

The `has_user_noconfirm` function inspects `/proc` to detect AUR helpers and the `--noconfirm` flag, used to determine whether to prompt interactively for patch confirmation. While unusual and somewhat intrusive (reading process state), it is entirely local introspection, not exfiltration, and serves the stated purpose of preserving interactive choices. No obfuscated code, network exfiltration, or execution of untrusted content is present. The checksum verification is weak (server-provided), but this is a common practice in binary packages and not malicious by itself. All operations are within the package's declared scope.
</details>
<evidence></evidence>
<summary>Standard AUR binary package; no evidence of malicious behavior.</summary>
</security_assessment>

[3/6] Reviewing .SRCINFO, patch_keybindings.py...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR binary package; no evidence of malicious behavior.
[3/6] Reviewing .SRCINFO, patch_keybindings.py, patch_title.py...
LLM auditresponse for patch_title.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This Python script is a binary patching tool for the Factory Droid CLI application. It locates and replaces a specific byte pattern (`if(...).isNonInteractiveCLIMode())return null;`) with an unconditional `if(true)return null;` comment block to disable a session-titling guard. The script reads the binary file, applies the replacement (preserving exact byte length), and optionally runs a smoke test (`--version`) on the patched binary. No network requests, obfuscation, or system modifications outside the target binary are present. The `has_avx2_support()` function reads `/proc/cpuinfo` or runs `sysctl` only to decide whether to skip the smoke test on incompatible hardware — no data is exfiltrated. The script is consistent with its documented purpose and contains no supply-chain attack indicators.
</details>
<evidence>
</evidence>
<summary>Clean binary patching tool with no malicious behavior.</summary>
</security_assessment>

[4/6] Reviewing .SRCINFO, patch_keybindings.py...
+ Reviewed patch_title.py. Status: SAFE -- Clean binary patching tool with no malicious behavior.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>UNSAFE</decision>
<details>
The `.SRCINFO` file for the binary package `factory-ai-droid-cli-rnoz-bin` fails to declare the upstream URL for its precompiled binary in the `source` array. Standard AUR convention for `-bin` packages requires the download URL for the actual binary or binary archive to be listed in the `source` array so that `makepkg` can download, verify, and audite the software at build time. Instead, the `source` array only lists local auxiliary files (`patch_title.py`, `patch_keybindings.py`, the `.install` file, and `LICENSE`).

The package also lists `curl` as a runtime dependency and its description states it automatically tracks upstream releases. By omitting the binary source from the `source` array, the package entirely bypasses `makepkg`&apos;s transparent source auditing and integrity verification. The supplied checksums cover only the patch scripts, not the executable binary. This perfectly matches the pattern of downloading and executing code from an unverified or undisclosed host, making the supply chain completely opaque and constituting a critical security risk.
</details>
<evidence>
pkgbase = factory-ai-droid-cli-rnoz-bin
	pkgdesc = Factory.ai CLI (droid) with rNoz tweaks, optional zero-waste titling, and cross-harness keybindings (automatically tracks upstream releases)
	pkgver = 0.233.0
	install = factory-ai-droid-cli-rnoz-bin.install
	depends = curl
	source = patch_title.py
	source = patch_keybindings.py
	source = factory-ai-droid-cli-rnoz-bin.install
	source = LICENSE
</evidence>
<summary>Binary source hidden, curl dependency for unverified download.</summary>
</security_assessment>

LLM auditresponse for patch_keybindings.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a keybinding rotation script for the `factory-ai-droid-cli-rnoz` binary. It operates entirely on the binary file provided as an argument, performing byte-level patching to swap three keyboard shortcuts. No network requests, no downloading of external code, no obfuscated commands, no exfiltration of data, and no modifications to system files beyond the target binary. The script includes a smoke test that runs the patched binary with `--version`, a standard verification step. The complex regex patterns and bytecode cache invalidation logic are necessary for safely patching a Bun standalone executable (JavaScriptCore cached bytecode). There is no evidence of supply-chain attack or malicious behavior; the script serves a legitimate functional purpose within the package.
</details>
<evidence>
</evidence>
<summary>Legitimate binary patching tool, no malicious behavior.</summary>
</security_assessment>

[5/6] Reviewing .SRCINFO...
+ Reviewed patch_keybindings.py. Status: SAFE -- Legitimate binary patching tool, no malicious behavior.
Second look for .SRCINFO (incontext):
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a metadata file that does not contain any executable code or instructions. Its omission of the binary download URL from the `source` array is a packaging hygiene concern, not evidence of genuinely malicious behavior within this file. The rules explicitly state that missing checksums and unpinned sources are not, by themselves, evidence of malice. The .SRCINFO does not contain any obfuscated commands, backdoors, exfiltration, or other malicious code. The actual dangerous behavior (downloading and executing a binary from an untrusted host) would occur in the PKGBUILD, which is not part of this audit. Therefore, the file should be assessed as SAFE based on the content provided.
</details>
<evidence>
</evidence>
<summary>Metadata only; no malicious code in .SRCINFO.</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Metadata only; no malicious code in .SRCINFO.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 42,314
  Completion Tokens: 11,433
  Total Tokens: 53,747
  Total Cost: $0.001825
  Execution Time: 76.47 seconds

Final Status: SAFE


No issues found.
