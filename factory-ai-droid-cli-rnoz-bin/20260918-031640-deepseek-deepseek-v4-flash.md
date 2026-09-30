---
package: factory-ai-droid-cli-rnoz-bin
pkgver: 0.222.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 31594
completion_tokens: 3868
total_tokens: 35462
cost: 0.003484873980
execution_time: 180.27
files_reviewed: 6
files_skipped: 0
maintainer_files: 6
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-18T03:16:39Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard metadata file, no security concerns.
  - file: factory-ai-droid-cli-rnoz-bin.install
    status: safe
    summary: Standard .install file with only echo statements.
  - file: LICENSE
    status: safe
    summary: Standard license file, no security issues.
  - file: patch_title.py
    status: safe
    summary: Legitimate binary patcher; no malicious behavior detected.
  - file: PKGBUILD
    status: safe
    summary: Standard binary PKGBUILD with verified upstream downloads.
  - file: patch_keybindings.py
    status: safe
    summary: Helper script for local keybinding patch; no malicious behavior.
---

Materializing factory-ai-droid-cli-rnoz-bin from local mirror...
Materialized factory-ai-droid-cli-rnoz-bin
Analyzing factory-ai-droid-cli-rnoz-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global/top-level scope contains only standard variable definitions (package name, version, description, dependencies, sources, checksums, etc.) and a `package()` function definition. No code is executed at source time beyond these declarations—there are no top-level command substitutions, function calls, or dangerous operations such as `curl`, `wget`, or `eval`. The content that performs downloads and system modifications is confined to the `package()` function, which is **not** executed by `makepkg --printsrcinfo`. Therefore, running `makepkg --printsrcinfo` is safe.
</details>
<evidence>
</evidence>
<summary>No top-level malicious code; only function definitions.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level malicious code; only function definitions.
Reviewing the 6 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/6] Reviewing .SRCINFO...
[0/6] Reviewing .SRCINFO, LICENSE...
[0/6] Reviewing .SRCINFO, LICENSE, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR `.SRCINFO` metadata file. It declares package metadata, dependencies (curl, python for makedepends), optional dependencies, sources (patch scripts, install script, LICENSE), and SHA-256 checksums. No code execution, obfuscation, network requests, or unexpected modifications are present. The checksums are provided and not `SKIP`. The file follows normal Arch packaging conventions. There is no evidence of malicious or dangerous behavior within this file.
</details>
<evidence></evidence>
<summary>Standard metadata file, no security concerns.</summary>
</security_assessment>

[0/6] Reviewing .SRCINFO, LICENSE, PKGBUILD, factory-ai-droid-cli-rnoz-bin.install...
[1/6] Reviewing LICENSE, PKGBUILD, factory-ai-droid-cli-rnoz-bin.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata file, no security concerns.
LLM auditresponse for factory-ai-droid-cli-rnoz-bin.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Arch Linux .install script that only prints informational messages during package installation, upgrade, and removal. It contains no network requests, file operations, encoded commands, or any other suspicious behavior. The output messages are typical for post-installation guidance and cleanup reminders. No security issues are present.
</details>
<evidence></evidence>
<summary>Standard .install file with only echo statements.</summary>
</security_assessment>

[1/6] Reviewing LICENSE, PKGBUILD, factory-ai-droid-cli-rnoz-bin.install, patch_keybindings.py...
[2/6] Reviewing LICENSE, PKGBUILD, patch_keybindings.py...
+ Reviewed factory-ai-droid-cli-rnoz-bin.install. Status: SAFE -- Standard .install file with only echo statements.
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Apache License 2.0 text with a note clarifying that the packaging scripts are under that license while the upstream binary belongs to Factory AI. It contains no executable instructions, no network requests, no obfuscation, and no system-level operations. It is purely a legal document and poses no security risk.
</details>
<evidence></evidence>
<summary>Standard license file, no security issues.</summary>
</security_assessment>

[2/6] Reviewing LICENSE, PKGBUILD, patch_keybindings.py, patch_title.py...
[3/6] Reviewing PKGBUILD, patch_keybindings.py, patch_title.py...
+ Reviewed LICENSE. Status: SAFE -- Standard license file, no security issues.
LLM auditresponse for patch_title.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a binary patcher for the Factory Droid CLI, intended to modify a specific non-interactive guard check to an unconditional return, eliminating token waste. It performs only local file operations (reading/writing the binary) and system information queries for AVX2 detection. No network requests are made, no data is exfiltrated, and no downloaded code is executed. The patching is deterministic and uses a fixed replacement string with zero drift. The smoke test runs the binary with `--version` under user control. There is no obfuscated code, no use of dangerous functions like `eval` or `base64`, and no deviation from its stated purpose. The script is a legitimate tool for the intended application and does not exhibit any malicious behavior.
</details>
<evidence></evidence>
<summary>Legitimate binary patcher; no malicious behavior detected.</summary>
</security_assessment>

[4/6] Reviewing PKGBUILD, patch_keybindings.py...
+ Reviewed patch_title.py. Status: SAFE -- Legitimate binary patcher; no malicious behavior detected.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR binary packaging practices. It downloads the precompiled `droid` CLI binary and `ripgrep` from the project's own upstream domain (`downloads.factory.ai`), verifies both downloads against SHA-256 checksums fetched over HTTPS from the same domain, and applies optional patches via Python scripts that are included as source files with pinned checksums. There is no obfuscation, no execution of untrusted code through `eval`/`curl|bash`, and no exfiltration of sensitive data. The interactive patch prompts only occur when a real terminal is detected—this is benign and respects non-interactive build environments. The only remote downloads are the official upstream binaries; all destinations are directly related to the package's stated purpose.
</details>
<evidence></evidence>
<summary>Standard binary PKGBUILD with verified upstream downloads.</summary>
</security_assessment>

[5/6] Reviewing patch_keybindings.py...
+ Reviewed PKGBUILD. Status: SAFE -- Standard binary PKGBUILD with verified upstream downloads.
LLM auditresponse for patch_keybindings.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The script `patch_keybindings.py` is a helper utility provided with the `factory-ai-droid-cli-rnoz-bin` AUR package. It performs byte-level patching of the package's own binary to rotate three keyboard shortcuts (Ctrl-P/G, Ctrl-N/P, Ctrl-G/I) as described in the docstring. The patching is done via regex searches on the binary's raw data, with numerous validation checks to ensure the binary layout is exactly as expected and that the patch does not change the binary size.

Key findings:
- No network access, no data exfiltration, no execution of external code, no obfuscation or encoding tricks.
- The script only modifies the specified binary file (and optionally runs a `--version` smoke test against it after patching).
- All operations are local and only affect the target binary.
- The code is complex but transparent; it implements a specific user-facing customization.
- Typical AUR risks (unpinned sources, mutable VCS refs, `curl|bash`, etc.) are not present.

The only noteworthy point is that the script modifies an installed binary in place, which is unusual but consistent with the `-bin` package type and the stated purpose of offering a keybinding rotation without rebuilding. There is no evidence of malicious behavior.
</details>
<evidence></evidence>
<summary>Helper script for local keybinding patch; no malicious behavior.</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed patch_keybindings.py. Status: SAFE -- Helper script for local keybinding patch; no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 31,594
  Completion Tokens: 3,868
  Total Tokens: 35,462
  Total Cost: $0.003485
  Execution Time: 180.27 seconds

Final Status: SAFE


No issues found.
