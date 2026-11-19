---
package: sherpa-onnx-piper-voice-ru-denis
pkgver: 20251202
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 9232
completion_tokens: 1175
total_tokens: 10407
cost: 0.001053962
execution_time: 20.17
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-13T23:09:05Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard AUR .gitignore; no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard voice model PKGBUILD with pinned checksum, no suspicious content.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR package metadata, no threats.
---

Materializing sherpa-onnx-piper-voice-ru-denis from local mirror...
Materialized sherpa-onnx-piper-voice-ru-denis
Analyzing sherpa-onnx-piper-voice-ru-denis AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources only the global/top-level scope of this PKGBUILD. That scope contains only standard variable assignments (`pkgname`, `_model`, `pkgver`, `pkgrel`, `pkgdesc`, `arch`, `url`, `license`, `optdepends`, `source`, `sha256sums`) and a `package()` function definition. There are no top-level command substitutions, no `eval`, no downloads, no network calls, no file operations, and no exfiltration.

The `source` entry points to the upstream project's own GitHub release URL, which is expected. The `package()` function is not executed by `makepkg --printsrcinfo` and is therefore out of scope for this gate. The checksum is pinned and non-SKIP, but even a SKIP would not affect this step since no sources are downloaded or verified during `--printsrcinfo`.
</details>
<evidence>
</evidence>
<summary>
Top-level scope contains only safe assignments; no code executes during printsrcinfo.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level scope contains only safe assignments; no code executes during printsrcinfo.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, .gitignore...
[0/3] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.gitignore` file contains standard entries for an AUR package repository: it ignores all files (`*`) except for the essential packaging files (`.gitignore`, `PKGBUILD`, `*.install`, `.SRCINFO`). This is normal practice to prevent accidental commits of build artifacts or other transient files. No malicious or suspicious content is present.
</details>
<evidence></evidence>
<summary>Standard AUR .gitignore; no security issues.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard AUR .gitignore; no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a straightforward definition for a voice model package. It sources a tarball from the official GitHub releases of the sherpa-onnx project, with a pinned SHA-256 checksum. The `package()` function installs the model data and license file into standard locations. There is no obfuscation, no unexpected network requests, no execution of untrusted code, and no deviation from standard packaging practices. No evidence of malicious behavior was found.
</details>
<evidence></evidence>
<summary>Standard voice model PKGBUILD with pinned checksum, no suspicious content.</summary>
</security_assessment>

[2/3] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard voice model PKGBUILD with pinned checksum, no suspicious content.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard AUR `.SRCINFO` metadata file. It defines package metadata, a source URL pointing to the official `sherpa-onnx` GitHub releases page, and includes a SHA-256 checksum (non-SKIP). There is no executable code, no obfuscation, no network requests outside the declared source, and no deviation from typical packaging practices. The source is a prebuilt voice model archive from the project's own releases, which is legitimate. No security issues are present.
</details>
<evidence></evidence>
<summary>Standard AUR package metadata, no threats.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR package metadata, no threats.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 9,232
  Completion Tokens: 1,175
  Total Tokens: 10,407
  Total Cost: $0.001054
  Execution Time: 20.17 seconds

Final Status: SAFE


No issues found.
