---
package: sherpa-onnx-piper-voice-ru-ruslan
pkgver: 20251202
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 9408
completion_tokens: 1583
total_tokens: 10991
cost: 0.001144234
execution_time: 20.2
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-13T23:07:37Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard AUR .gitignore with no malicious or suspicious content.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file with upstream source and checksum; no malicious behavior found.
  - file: PKGBUILD
    status: safe
    summary: Standard model packaging with pinned checksum; no malicious behavior found.
---

Materializing sherpa-onnx-piper-voice-ru-ruslan from local mirror...
Materialized sherpa-onnx-piper-voice-ru-ruslan
Analyzing sherpa-onnx-piper-voice-ru-ruslan AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only global variable assignments and a function definition (<code>package()</code>). No command substitutions, backticks, or <code>eval</code>-like constructs appear at the top level. Running <code>makepkg --printsrcinfo</code> will simply source these definitions; no code that downloads, executes, or exfiltrates data runs during this step. The <code>package()</code> function is not executed during <code>--printsrcinfo</code>.
</details>
<evidence>
</evidence>
<summary>No malicious top-level code execution.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious top-level code execution.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, .gitignore...
[0/3] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` for an AUR package repository. It instructs Git to ignore all files except the packaging files that should be tracked: `.gitignore`, `PKGBUILD`, `*.install`, and `.SRCINFO`. This is normal and expected AUR maintenance practice. There is no network activity, no code execution, no obfuscation, and no suspicious file operations. Nothing in this file deviates from standard packaging behavior.
</details>
<evidence>
</evidence>
<summary>
Standard AUR .gitignore with no malicious or suspicious content.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard AUR .gitignore with no malicious or suspicious content.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file describes a voice-model package for the sherpa-onnx TTS engine. It declares a single source tarball downloaded from the project's own upstream GitHub releases (`github.com/k2-fsa/sherpa-onnx`), which is the standard and expected location for this package's content.

The file contains no build logic, no install operations, no network commands beyond the declared source URL, and no obfuscated or encoded content. A specific SHA-256 checksum is provided for the source archive, which is a good supply-chain hygiene practice. There is nothing here that deviates from standard AUR packaging or indicates malicious behavior.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata file with upstream source and checksum; no malicious behavior found.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file with upstream source and checksum; no malicious behavior found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard AUR packaging file for a prebuilt TTS voice model. It downloads a tarball from the upstream k2-fsa/sherpa-onnx GitHub releases page and verifies it with a pinned sha256sum. The `package()` function only installs the extracted model directory into `/usr/share/sherpa-onnx` and copies the MODEL_CARD file as the package license.

There is no obfuscated code, no suspicious network request, no execution of downloaded scripts, no attempts to exfiltrate data, and no unexpected system modifications. The behavior is fully consistent with ordinary AUR packaging practices for a model/voice package.
</details>
<evidence></evidence>
<summary>Standard model packaging with pinned checksum; no malicious behavior found.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard model packaging with pinned checksum; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 9,408
  Completion Tokens: 1,583
  Total Tokens: 10,991
  Total Cost: $0.001144
  Execution Time: 20.20 seconds

Final Status: SAFE


No issues found.
