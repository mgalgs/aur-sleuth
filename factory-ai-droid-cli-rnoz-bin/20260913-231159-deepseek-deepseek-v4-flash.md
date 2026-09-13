---
package: factory-ai-droid-cli-rnoz-bin
pkgver: 0.218.1
pkgrel: 3
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 28603
completion_tokens: 6035
total_tokens: 34638
cost: 0.0018790926
execution_time: 54.94
files_reviewed: 6
files_skipped: 0
maintainer_files: 6
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-13T23:11:58Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: Standard license file, no security concerns.
  - file: PKGBUILD
    status: safe
    summary: No malicious behavior detected; file is safe.
  - file: factory-ai-droid-cli-rnoz-bin.install
    status: safe
    summary: Standard install script with harmless echo messages.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR package metadata with pinned checksums; no malicious behavior evident.
  - file: patch_keybindings.py
    status: safe
    summary: Safe binary patch script, no malicious code.
  - file: patch_title.py
    status: safe
    summary: Safe binary patching utility with no malicious behavior.
---

Materializing factory-ai-droid-cli-rnoz-bin from local mirror...
Materialized factory-ai-droid-cli-rnoz-bin
Analyzing factory-ai-droid-cli-rnoz-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains standard variable assignments and a function definition (`package()`) in its top-level scope. There are no command substitutions, `eval` calls, `curl`/`wget` invocations, or any other executable statements that would run during sourcing. The entire `package()` function body, including network operations and file downloads, is only executed when the function is called during `makepkg`'s build/install phase, which is out of scope for the `--printsrcinfo` gate. No genuinely malicious code exists at the global level.
</details>
<evidence>
</evidence>
<summary>No dangerous top-level code during sourcing.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code during sourcing.
Reviewing the 6 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/6] Reviewing .SRCINFO...
[0/6] Reviewing .SRCINFO, PKGBUILD...
[0/6] Reviewing .SRCINFO, PKGBUILD, LICENSE...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Apache License 2.0 text with a metadata note clarifying the licensing scope. It contains no executable code, no network requests, no obfuscation, and no system modifications. It is purely a license file and poses no security risk.
</details>
<evidence>
</evidence>
<summary>Standard license file, no security concerns.</summary>
</security_assessment>

[0/6] Reviewing .SRCINFO, PKGBUILD, LICENSE, factory-ai-droid-cli-rnoz-bin.install...
[1/6] Reviewing .SRCINFO, PKGBUILD, factory-ai-droid-cli-rnoz-bin.install...
+ Reviewed LICENSE. Status: SAFE -- Standard license file, no security concerns.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD downloads precompiled binaries (`droid` and optionally `ripgrep`) from the official upstream domain `downloads.factory.ai`. Each download is accompanied by a SHA-256 checksum file from the same server, and the actual checksum is verified before use. No external or unexpected hosts are contacted. The patches (`patch_title.py`, `patch_keybindings.py`) are local files with pinned checksums and are applied only after interactive user confirmation. The launcher script in `$pkgdir/usr/bin/droid` is a simple wrapper that prepends `/usr/lib/factory` to `PATH` if system `rg` is absent. There is no obfuscation, no `eval`, no hidden network requests, and no tampering with system files outside the application&#x27;s own scope. The build-time download from a mutable remote is a reproducibility concern but is not malicious—it is the standard pattern for `-bin` packages that track upstream releases. No evidence of a supply-chain attack, data exfiltration, backdoor, or credential theft was found.
</details>
<evidence>

</evidence>
<summary>No malicious behavior detected; file is safe.</summary>
</security_assessment>

[1/6] Reviewing .SRCINFO, PKGBUILD, factory-ai-droid-cli-rnoz-bin.install, patch_keybindings.py...
[2/6] Reviewing .SRCINFO, factory-ai-droid-cli-rnoz-bin.install, patch_keybindings.py...
+ Reviewed PKGBUILD. Status: SAFE -- No malicious behavior detected; file is safe.
LLM auditresponse for factory-ai-droid-cli-rnoz-bin.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Arch Linux package install script that only echoes informational messages to the user during post-install, upgrade, and removal. No commands that modify the system, download content, execute external code, or perform any operation beyond printing text. No obfuscation, no network requests, no dangerous operations like eval, base64, curl, or wget. The script is entirely benign and serves only to notify the user of the package status.
</details>
<evidence></evidence>
<summary>Standard install script with harmless echo messages.</summary>
</security_assessment>

[2/6] Reviewing .SRCINFO, factory-ai-droid-cli-rnoz-bin.install, patch_keybindings.py, patch_title.py...
[3/6] Reviewing .SRCINFO, patch_keybindings.py, patch_title.py...
+ Reviewed factory-ai-droid-cli-rnoz-bin.install. Status: SAFE -- Standard install script with harmless echo messages.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file contains only standard Arch Linux package metadata: package name, description, version, architecture, dependencies, conflicts, provides, and checksums. No executable code is present in this file.

The sources are local files (`patch_title.py`, `patch_keybindings.py`, an install script, and a license) and each has a pinned `sha256sums` entry. The homepage URL points to the project's own GitHub repository, and the dependencies (`curl`, `python`, optional `ripgrep`) are plausible for a CLI tool. The `install` hook, `!strip` option, and conflict/provides declarations are all ordinary packaging practice.

There is no evidence of network exfiltration, obfuscated commands, downloading and executing code, or any other malicious behavior in this metadata file. Without seeing the actual contents of the referenced patch scripts or install hook, nothing in this `.SRCINFO` warrants an UNSAFE classification.
</details>
<evidence>
</evidence>
<summary>
Standard AUR package metadata with pinned checksums; no malicious behavior evident.</summary>
</security_assessment>

[4/6] Reviewing patch_keybindings.py, patch_title.py...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR package metadata with pinned checksums; no malicious behavior evident.
LLM auditresponse for patch_keybindings.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `patch_keybindings.py` is a binary patching script that rotates three keybindings inside a prebuilt `factory-ai-droid-cli-rnoz` binary. The script reads the binary from a given path, performs targeted byte‑level replacements using regular expressions, and writes the result back (optionally after a dry‑run or a smoke test with `--version`).  

**No malicious behavior detected:**
- No network requests, no downloads, no exfiltration of local data.
- No use of `eval`, `base64`, `curl`, `wget`, or other dangerous constructs.
- No obfuscation; the code is clear and explicitly documented.
- The only subprocess call is the binary itself (`--version`) for an optional smoke test – this is a routine verification step, not a supply‑chain attack.
- All operations are confined to the supplied binary path and a temporary file; no system‑wide modifications are made outside the packaging area.
- The logic is consistent with an AUR maintainer helper that applies a known upstream customization (keybinding rotation).  

The script does not contain injected malicious code. While binary patching can weaken reproducibility, that is a packaging‑hygiene consideration, not evidence of malice.
</details>
<evidence></evidence>
<summary>Safe binary patch script, no malicious code.</summary>
</security_assessment>

[5/6] Reviewing patch_title.py...
+ Reviewed patch_keybindings.py. Status: SAFE -- Safe binary patch script, no malicious code.
LLM auditresponse for patch_title.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a legitimate binary patching utility for the Factory Droid CLI. It modifies a specific byte pattern in the binary to change the titling function's behavior. The script performs no network requests, no obfuscated code execution, and no data exfiltration. All operations are local file reads/writes with an atomic write pattern. The smoke test runs the patched binary with `--version` to verify execution, which is standard practice. The CPU feature check via `/proc/cpuinfo` and `sysctl` is benign. No evidence of supply-chain attack or malicious intent.
</details>
<evidence></evidence>
<summary>Safe binary patching utility with no malicious behavior.</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed patch_title.py. Status: SAFE -- Safe binary patching utility with no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 28,603
  Completion Tokens: 6,035
  Total Tokens: 34,638
  Total Cost: $0.001879
  Execution Time: 54.94 seconds

Final Status: SAFE


No issues found.
