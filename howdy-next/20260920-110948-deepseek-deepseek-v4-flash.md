---
package: howdy-next
pkgver: 3.4.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 12681
completion_tokens: 1654
total_tokens: 14335
cost: 0.0005819996
execution_time: 35.87
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-20T11:09:47Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with pinned source and no malicious indicators.
  - file: howdy-next.install
    status: safe
    summary: Install script contains only advisory echo statements.
  - file: .SRCINFO
    status: safe
    summary: Declarative .SRCINFO only; no malicious, obfuscated, or dangerous behavior found.
  - file: polkit-agent-helper-howdy.conf
    status: safe
    summary: Legitimate device access configuration for howdy.
---

Materializing howdy-next from local mirror...
Materialized howdy-next
Analyzing howdy-next AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard packaging script. At the top-level scope (executed during `makepkg --printsrcinfo`), it only contains variable and array definitions with no embedded command substitutions, backticks, or dangerous operations. No code runs that could exfiltrate data, download payloads, or perform any malicious actions. The functions `build()`, `check()`, and `package()` are not executed by `--printsrcinfo`, so their contents are irrelevant for this gate.
</details>
<evidence></evidence>
<summary>No malicious top-level code found.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious top-level code found.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, PKGBUILD...
[0/4] Reviewing .SRCINFO, PKGBUILD, howdy-next.install...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard packaging practices for Arch Linux. It fetches the source tarball from the project's own Codeberg repository with a pinned version tag and verifies it via a BLAKE2b checksum. The build uses CMake in a conventional manner, and the install step removes a license file (standard for Arch) and places a polkit override config from the bundled source. There are no suspicious network requests, obfuscated code, or dangerous commands like `eval`, `curl`, `wget`, or `git pull`. The only dynamically sourced content is the upstream archive, which is checksummed. The polkit helper config is a routine system integration file for the application's stated purpose. No evidence of supply-chain attack or malicious behavior.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with pinned source and no malicious indicators.</summary>
</security_assessment>

[1/4] Reviewing .SRCINFO, howdy-next.install...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with pinned source and no malicious indicators.
[1/4] Reviewing .SRCINFO, howdy-next.install, polkit-agent-helper-howdy.conf...
LLM auditresponse for howdy-next.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `howdy-next.install` contains only informational echo statements in the `pre_install()` and `post_install()` functions. It prints a caution about keeping a root shell open and provides setup instructions for the user (downloading models, configuring camera, testing, adding face model, and editing PAM files). There are no dangerous commands, no network requests, no file modifications, no obfuscation, and no deviations from standard AUR install scripts. The content is purely advisory and safe.
</details>
<evidence></evidence>
<summary>Install script contains only advisory echo statements.</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, polkit-agent-helper-howdy.conf...
+ Reviewed howdy-next.install. Status: SAFE -- Install script contains only advisory echo statements.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file contains only standard packaging metadata for the `howdy-next` AUR package. It declares the package description, version, URL, dependencies, and two source entries: the upstream tarball from `codeberg.org/nathawat/howdy-next` and a local `polkit-agent-helper-howdy.conf` file. Both sources have explicit `b2sums` checksums, which is normal and good packaging practice.

There are no suspicious functions, scripts, network operations, encoded payloads, or file-manipulation commands in this file. The source URL points to the project's own Codeberg repository, which is the expected upstream location. The PAM-related and polkit-oriented dependencies are consistent with a facial authentication package and do not indicate tampering.

The file is purely declarative metadata; it contains no executable code or commands that could introduce a supply-chain risk.
</details>
<evidence>
</evidence>
<summary>
Declarative .SRCINFO only; no malicious, obfuscated, or dangerous behavior found.</summary>
</security_assessment>

[3/4] Reviewing polkit-agent-helper-howdy.conf...
+ Reviewed .SRCINFO. Status: SAFE -- Declarative .SRCINFO only; no malicious, obfuscated, or dangerous behavior found.
LLM auditresponse for polkit-agent-helper-howdy.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a PolKit agent helper configuration for the howdy face recognition package. It adjusts systemd service settings to allow access to video devices (`/dev/video*` via `char-video4linux`) and the uinput device (`/dev/uinput`), which are necessary for howdy's camera-based authentication and keyboard input simulation. There is no malicious content: no network requests, code execution, data exfiltration, or obfuscation. The file conforms to standard packaging practices for granting device permissions required by the application's functionality.
</details>
<evidence>
</evidence>
<summary>Legitimate device access configuration for howdy.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed polkit-agent-helper-howdy.conf. Status: SAFE -- Legitimate device access configuration for howdy.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,681
  Completion Tokens: 1,654
  Total Tokens: 14,335
  Total Cost: $0.000582
  Execution Time: 35.87 seconds

Final Status: SAFE


No issues found.
