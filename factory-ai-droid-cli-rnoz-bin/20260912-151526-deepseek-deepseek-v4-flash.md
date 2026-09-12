---
package: factory-ai-droid-cli-rnoz-bin
pkgver: 0.218.1
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 28428
completion_tokens: 6456
total_tokens: 34884
cost: 0.00272595960
execution_time: 47.37
files_reviewed: 6
files_skipped: 0
maintainer_files: 6
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-12T15:15:26Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: Standard license file, no security concerns.
  - file: factory-ai-droid-cli-rnoz-bin.install
    status: safe
    summary: Standard informational install script, no malicious content.
  - file: .SRCINFO
    status: safe
    summary: AUR metadata file with no executable content; no security issues.
  - file: patch_keybindings.py
    status: safe
    summary: No malicious behavior found; clean binary patching script.
  - file: PKGBUILD
    status: safe
    summary: No malicious behavior found; standard AUR binary package with verified upstream downloads.
  - file: patch_title.py
    status: safe
    summary: Binary patcher; no malicious indicators present.
---

Materializing factory-ai-droid-cli-rnoz-bin from local mirror...
Materialized factory-ai-droid-cli-rnoz-bin
Analyzing factory-ai-droid-cli-rnoz-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's top-level scope contains only static variable assignments and function definitions (the `package()` function and its nested helpers). No command substitutions, eval, network requests, file operations, or other executable code is present at global scope. Running `makepkg --printsrcinfo` will source this file, which only defines variables and functions without invoking any harmful operations.
</details>
<evidence></evidence>
<summary>No malicious top-level code; safe to printsrcinfo.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious top-level code; safe to printsrcinfo.
Reviewing the 6 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/6] Reviewing .SRCINFO...
[0/6] Reviewing .SRCINFO, LICENSE...
[0/6] Reviewing .SRCINFO, LICENSE, PKGBUILD...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Apache License 2.0 text with a brief note clarifying licensing of packaging scripts vs. the upstream binary. It contains no executable code, no commands, no network requests, no file operations, and no obfuscation. There is no evidence of any malicious or dangerous behavior.
</details>
<evidence>
</evidence>
<summary>Standard license file, no security concerns.</summary>
</security_assessment>

[0/6] Reviewing .SRCINFO, LICENSE, PKGBUILD, factory-ai-droid-cli-rnoz-bin.install...
[1/6] Reviewing .SRCINFO, PKGBUILD, factory-ai-droid-cli-rnoz-bin.install...
+ Reviewed LICENSE. Status: SAFE -- Standard license file, no security concerns.
LLM auditresponse for factory-ai-droid-cli-rnoz-bin.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.install` script for an Arch Linux package. It contains three functions (`post_install`, `post_upgrade`, `post_remove`) that only output informational messages to the user via `echo`. There are no commands that download or execute code, read or exfiltrate sensitive data, modify system files, or perform any other potentially dangerous operations. The script simply prints post-installation instructions and notes about user configuration preservation. No obfuscation, no network requests, no unexpected file operations. This is benign packaging metadata.
</details>
<evidence></evidence>
<summary>Standard informational install script, no malicious content.</summary>
</security_assessment>

[1/6] Reviewing .SRCINFO, PKGBUILD, factory-ai-droid-cli-rnoz-bin.install, patch_keybindings.py...
[2/6] Reviewing .SRCINFO, PKGBUILD, patch_keybindings.py...
+ Reviewed factory-ai-droid-cli-rnoz-bin.install. Status: SAFE -- Standard informational install script, no malicious content.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `.SRCINFO` is a metadata file for an AUR package. It contains only package information (name, version, dependencies, sources, checksums) and no executable code. The sources are local files (`patch_title.py`, `patch_keybindings.py`, etc.) with corresponding SHA-256 checksums provided. There are no suspicious network requests, obfuscated content, or dangerous commands. The package depends on `curl` and provides CLI tools, which is consistent with its stated purpose. No evidence of supply-chain attack or malicious behavior is present in this file.
</details>
<evidence>
</evidence>
<summary>AUR metadata file with no executable content; no security issues.</summary>
</security_assessment>

[2/6] Reviewing .SRCINFO, PKGBUILD, patch_keybindings.py, patch_title.py...
[3/6] Reviewing PKGBUILD, patch_keybindings.py, patch_title.py...
+ Reviewed .SRCINFO. Status: SAFE -- AUR metadata file with no executable content; no security issues.
LLM auditresponse for patch_keybindings.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This Python script performs keybinding transformations on a pre-built binary. It reads the binary, applies string and pattern substitutions using regular expressions, and writes the patched binary back. There are no network requests, no obfuscated or encoded commands, no attempts to exfiltrate data, and no execution of untrusted external code beyond the optional `--test` flag which runs the patched binary itself with `--version`. The script is well-commented, uses standard library modules, and follows a straightforward patching workflow. All operations are limited to the binary file provided by the user. There is no evidence of supply-chain attack or malicious behavior. The optional smoke test (`--test`) runs the given binary, which is a normal packaging helper activity and not a sign of malice.
</details>
<evidence></evidence>
<summary>No malicious behavior found; clean binary patching script.</summary>
</security_assessment>

[4/6] Reviewing PKGBUILD, patch_title.py...
+ Reviewed patch_keybindings.py. Status: SAFE -- No malicious behavior found; clean binary patching script.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a `-bin` package that downloads the prebuilt `droid` CLI and an optional `ripgrep` from `https://downloads.factory.ai`, verifies each artifact against a SHA-256 checksum downloaded from the same host, and installs them under `/usr/lib/factory` with a launcher in `/usr/bin`. Downloading the project's own upstream binaries and verifying checksums is ordinary packaging practice for binary packages; there is no exfiltration, obfuscation, eval/base64 usage, unrelated download host, or backdoor in this file.

The Python patch scripts (`patch_title.py`, `patch_keybindings.py`) are part of the package's declared source and are invoked to implement the advertised "zero-waste titling" and "cross-harness keybindings." Their contents are not visible in this file, so they cannot be audited here, but nothing in the PKGBUILD indicates malicious use. The dynamic downloads are not pinned in the `source` array and the checksums come from the same download server, which is a supply-chain hygiene consideration rather than evidence of malice. Overall, this matches a normal AUR binary packaging workflow.
</details>
<evidence>
</evidence>
<summary>
No malicious behavior found; standard AUR binary package with verified upstream downloads.</summary>
</security_assessment>

[5/6] Reviewing patch_title.py...
+ Reviewed PKGBUILD. Status: SAFE -- No malicious behavior found; standard AUR binary package with verified upstream downloads.
LLM auditresponse for patch_title.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The script `patch_title.py` is a binary patcher that modifies a precompiled Droid CLI binary to disable a non-interactive CLI mode check in the title generation function. It performs byte-level pattern replacement with zero-drift length preservation. All operations are local file manipulation: reading the binary, applying a regex substitution, writing the patched binary (with atomic write), and optionally running a `--version` smoke test. It reads `/proc/cpuinfo` and calls `sysctl` to check AVX2 support—this is a local capability check, not data exfiltration. There are no network requests, no downloading of code, no base64/obfuscated commands, and no execution of untrusted content. The script serves a single packaging purpose: applying a patch to an upstream binary to change its behavior. This is a standard AUR build helper, not a supply-chain attack.
</details>
<evidence>
</evidence>
<summary>Binary patcher; no malicious indicators present.</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed patch_title.py. Status: SAFE -- Binary patcher; no malicious indicators present.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 28,428
  Completion Tokens: 6,456
  Total Tokens: 34,884
  Total Cost: $0.002726
  Execution Time: 47.37 seconds

Final Status: SAFE


No issues found.
