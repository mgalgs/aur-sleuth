---
package: factory-ai-droid-cli-rnoz-bin
pkgver: 0.225.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 37868
completion_tokens: 4619
total_tokens: 42487
cost: 0.004173874236
execution_time: 101.14
files_reviewed: 6
files_skipped: 0
maintainer_files: 6
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-23T11:17:09Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard binary package with no evidence of malicious behavior.
  - file: LICENSE
    status: safe
    summary: Standard license file, no malicious content.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no malicious content.
  - file: factory-ai-droid-cli-rnoz-bin.install
    status: safe
    summary: Simple post-install script with informational messages only.
  - file: patch_keybindings.py
    status: safe
    summary: Legitimate binary patching script, no malicious behavior found.
  - file: patch_title.py
    status: safe
    summary: Legitimate binary patcher with no malicious behavior.
---

Materializing factory-ai-droid-cli-rnoz-bin from local mirror...
Materialized factory-ai-droid-cli-rnoz-bin
Analyzing factory-ai-droid-cli-rnoz-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's top-level scope only contains static variable assignments and array definitions (pkgname, pkgver, source, sha256sums, etc.). There are no command substitutions, function calls, or any executable statements at the global level. All potentially dangerous operations (downloading binaries, verifying checksums, applying patches) reside within the `package()` function, which is not executed when `makepkg --printsrcinfo` sources the file. Therefore, running this command poses no risk of executing malicious code.
</details>
<evidence></evidence>
<summary>No executable code at top level; safe to source.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No executable code at top level; safe to source.
Reviewing the 6 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/6] Reviewing .SRCINFO...
[0/6] Reviewing .SRCINFO, LICENSE...
[0/6] Reviewing .SRCINFO, LICENSE, PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is for a prebuilt binary package that downloads its upstream application from the project&#39;s official server (downloads.factory.ai) and verifies the binary with a checksum fetched from the same origin. The source array contains only local helper scripts (patch_title.py, patch_keybindings.py, the .install file, and a license), all verified by SHA-256 hashes. There is no obfuscated code, no execution of attacker-controlled scripts, no exfiltration of local data, and no use of dangerous patterns such as `eval`, `base64`, or `curl|bash`.  

The package does include an unusual function (`has_user_noconfirm`) that reads `/proc` to detect whether an AUR helper is in the process ancestry and whether `--noconfirm` was passed. This is done solely to decide whether to show interactive prompts for optional patches; it does not send data anywhere and is not a supply-chain attack. The reliance on server-provided SHA-256 files for binary verification is a common trust model in binary packages, not evidence of malice. No part of the file injects code outside the application&#39;s expected scope or performs operations unrelated to installing the stated package.
</details>
<evidence></evidence>
<summary>Standard binary package with no evidence of malicious behavior.</summary>
</security_assessment>

[1/6] Reviewing .SRCINFO, LICENSE...
+ Reviewed PKGBUILD. Status: SAFE -- Standard binary package with no evidence of malicious behavior.
[1/6] Reviewing .SRCINFO, LICENSE, factory-ai-droid-cli-rnoz-bin.install...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Apache License 2.0 text. It contains no executable code, instructions, or any potentially malicious content. It is a routine license file with no security concerns.
</details>
<evidence>
</evidence>
<summary>Standard license file, no malicious content.</summary>
</security_assessment>

[2/6] Reviewing .SRCINFO, factory-ai-droid-cli-rnoz-bin.install...
+ Reviewed LICENSE. Status: SAFE -- Standard license file, no malicious content.
[2/6] Reviewing .SRCINFO, factory-ai-droid-cli-rnoz-bin.install, patch_keybindings.py...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `.SRCINFO` is a standard AUR package metadata file. It contains only key-value pairs describing the package name, version, dependencies, sources, and checksums. There is no executable code, no network requests, no obfuscation, and no instructions that could be interpreted as a supply-chain attack. The sources listed (Python scripts, install script, license) are typical for an AUR package, and their checksums are provided (not skipped). While the actual content of those source files could potentially be malicious, this `.SRCINFO` file itself is harmless metadata. No evidence of malicious behavior is present in this file.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata file, no malicious content.</summary>
</security_assessment>

[2/6] Reviewing .SRCINFO, factory-ai-droid-cli-rnoz-bin.install, patch_keybindings.py, patch_title.py...
[3/6] Reviewing factory-ai-droid-cli-rnoz-bin.install, patch_keybindings.py, patch_title.py...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no malicious content.
LLM auditresponse for factory-ai-droid-cli-rnoz-bin.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `factory-ai-droid-cli-rnoz-bin.install` is a standard post-installation script that contains only `echo` statements printing informational messages to the terminal. There are no network requests, file operations, system modifications, obfuscated code, or dangerous command invocations (such as `eval`, `curl`, `wget`, etc.). The messages are benign, informing the user about installation, upgrades, and removal. The mention of `rm -rf ~/.factory` is only a printed suggestion for optional manual cleanup, not an executed command. No evidence of malicious behavior or deviation from standard packaging practices was found.
</details>
<evidence></evidence>
<summary>Simple post-install script with informational messages only.</summary>
</security_assessment>

[4/6] Reviewing patch_keybindings.py, patch_title.py...
+ Reviewed factory-ai-droid-cli-rnoz-bin.install. Status: SAFE -- Simple post-install script with informational messages only.
LLM auditresponse for patch_keybindings.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This script patches keybinding strings inside a binary (the `factory-ai-droid-cli`) to rotate three keyboard shortcuts. It operates entirely on local files, performing byte-level search-and-replace with regex and structural validation. The code is verbose, well-commented, and does not include any network requests, data exfiltration, obfuscated payloads, or execution of code from untrusted sources. The only use of `subprocess` is an optional `--test` mode that runs the patched binary with `--version` to verify it still runs, which is a standard packaging sanity check and not malicious. The complexity of the binary patching (including an extra step to invalidate Bun bytecode caches) is consistent with the stated goal of modifying a compiled JavaScript/TypeScript application built with Bun. There is no evidence of injected malicious behavior beyond the application's own functionality.
</details>
<evidence></evidence>
<summary>Legitimate binary patching script, no malicious behavior found.</summary>
</security_assessment>

[5/6] Reviewing patch_title.py...
+ Reviewed patch_keybindings.py. Status: SAFE -- Legitimate binary patching script, no malicious behavior found.
LLM auditresponse for patch_title.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The script `patch_title.py` is a binary patcher designed to replace a specific non-interactive CLI guard in the Factory Droid CLI binary with an unconditional return. It performs no network requests, does not download or execute arbitrary code, and does not access or exfiltrate sensitive user data. All operations are local: reading the specified binary file, applying a fixed byte replacement, optionally running a smoke test via `--version`, and checking CPU flags via `/proc/cpuinfo` or `sysctl`. The code is transparent, uses no obfuscation or base64 encoding, and follows standard Python practices. There is no evidence of malicious intent; the script only does what it claims and is safe for AUR distribution.
</details>
<evidence></evidence>
<summary>Legitimate binary patcher with no malicious behavior.</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed patch_title.py. Status: SAFE -- Legitimate binary patcher with no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 37,868
  Completion Tokens: 4,619
  Total Tokens: 42,487
  Total Cost: $0.004174
  Execution Time: 101.14 seconds

Final Status: SAFE


No issues found.
