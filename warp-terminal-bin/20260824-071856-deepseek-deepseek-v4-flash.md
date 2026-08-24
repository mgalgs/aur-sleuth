---
package: warp-terminal-bin
pkgver: 0.2026.08.19.08.15.stable_01
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 56580919ea5cd225cb34031d0932798021e4a0d8
prompt_tokens: 10226
completion_tokens: 1183
total_tokens: 11409
cost: 0.0007227808
execution_time: 63.55
files_reviewed: 3
files_skipped: 0
files_unauditable: 143
unpinned_sources: 0
date: 2026-08-24T07:18:56Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard AUR binary package with pinned checksums, no malicious code.
  - file: LICENSE.txt
    status: safe
    summary: Benign license text, no security issues.
  - file: src/opt/warpdotdev/warp-terminal/resources/bundled/skills/create-skill/scripts/__init__.py
    status: safe
    summary: Empty file, no code to analyze.
---

Cloning https://aur.archlinux.org/warp-terminal-bin.git...
Cloned warp-terminal-bin
Analyzing warp-terminal-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only top-level variable assignments and array definitions. There is no `pkgver()` function and no command substitutions or dangerous commands (eval, curl, base64) in the global scope. The source URLs point to the official Warp releases domain (releases.warp.dev) over HTTPS, which is the expected upstream. The `package()` function is not executed during `makepkg --nobuild --nodeps --noprepare` or `makepkg --printsrcinfo` because those commands stop before `build()`/`package()`. The checksums are provided (not skipped) for the binary archives. No malicious code is present in the scope that will be executed.
</details>
<evidence></evidence>
<summary>Safe to source and fetch sources.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe to source and fetch sources.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, LICENSE.txt...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard AUR binary package that downloads a pre-compiled archive from the official Warp releases domain (`releases.warp.dev`). All sources have pinned SHA256 checksums. The `package()` function simply extracts the archive, copies files to the package directory, installs the license, and creates a symlink for convenience. No obfuscated code, suspicious network requests, or unexpected system modifications are present. The file follows normal AUR packaging practices and shows no evidence of a supply-chain attack.
</details>
<evidence>
</evidence>
<summary>Standard AUR binary package with pinned checksums, no malicious code.</summary>
</security_assessment>

[1/2] Reviewing LICENSE.txt...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR binary package with pinned checksums, no malicious code.
LLM auditresponse for LICENSE.txt:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a plain text license statement. It contains no executable code, no network requests, no file operations, and no system modifications. It simply states that Warp is currently closed-source and references a GitHub discussion about potential open sourcing. There is no evidence of malicious behavior of any kind.
</details>
<evidence></evidence>
<summary>Benign license text, no security issues.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed LICENSE.txt. Status: SAFE -- Benign license text, no security issues.
Reviewed all required files.
Deciding which files to review next...
Note: 143 compiled/archived file(s) cannot be audited as text and were not reviewed (warp-terminal-v0.2026.08.19.08.15.stable_01-1-x86_64.pkg.tar.zst, src/.MTREE, src/.BUILDINFO and 140 more). For a package that ships prebuilt binaries, the audit covers the packaging, not the payload.
Decided to review 1 additional files: src/opt/warpdotdev/warp-terminal/resources/bundled/skills/create-skill/scripts/__init__.py
Reviewing additional files...
Reviewing additional files...
[0/1] Reviewing src/opt/warpdotdev/warp-terminal/resources/bundled/skills/create-skill/scripts/__init__.py...
LLM auditresponse for __init__.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is empty. There is no code to analyze, and therefore no potential security issues.
</details>
<evidence></evidence>
<summary>Empty file, no code to analyze.</summary>
</security_assessment>

[1/1] Reviewing ...
+ Reviewed src/opt/warpdotdev/warp-terminal/resources/bundled/skills/create-skill/scripts/__init__.py. Status: SAFE -- Empty file, no code to analyze.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,226
  Completion Tokens: 1,183
  Total Tokens: 11,409
  Total Cost: $0.000723
  Execution Time: 63.55 seconds

Final Status: SAFE


No issues found.
