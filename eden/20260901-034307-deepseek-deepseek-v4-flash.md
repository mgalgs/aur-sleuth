---
package: eden
pkgver: 0.2.1
pkgrel: 3
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: b9e20f728bbe0de1871ebaca31738c802edc31f8
prompt_tokens: 21325
completion_tokens: 3283
total_tokens: 24608
cost: 0.00225693972
execution_time: 54.27
files_reviewed: 4
files_skipped: 3
maintainer_files: 7
source_fetch: ok
upstream_files: 4454
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-01T03:43:02Z
file_verdicts:
  - file: 3751.patch
    status: skipped
    summary: "Skipping binary file: 3751.patch"
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with no malicious indicator.
  - file: 7c0e993b5b.patch
    status: skipped
    summary: "Skipping binary file: 7c0e993b5b.patch"
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with no malicious content.
  - file: bd6dd7ecec.patch
    status: skipped
    summary: "Skipping binary file: bd6dd7ecec.patch"
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config, no security issues.
  - file: 60e1032771.patch
    status: safe
    summary: Standard patch with no malicious code.
---

Cloning https://aur.archlinux.org/eden.git...
Cloned eden
Analyzing eden AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard packaging elements: variable assignments, source definitions referencing the project's own upstream git repository, and local patch files. There is no `pkgver()` function or any top-level code that executes commands or downloads unverified payloads. The triage commands (`makepkg --nobuild --nodeps --noprepare` and `--printsrcinfo`) will only fetch the declared sources and source the PKGBUILD's global scope, which is inert. No malicious behavior is present.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD, no dangerous top-level execution.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Standard PKGBUILD, no dangerous top-level execution.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Reviewing the 7 file(s) in the AUR repository. The 4454 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/7] Reviewing .SRCINFO...
[0/7] Reviewing .SRCINFO, .nvchecker.toml...
[0/7] Reviewing .SRCINFO, .nvchecker.toml, 3751.patch...
[0/7] Reviewing .SRCINFO, .nvchecker.toml, 3751.patch, 60e1032771.patch...
[1/7] Reviewing .SRCINFO, .nvchecker.toml, 60e1032771.patch...
! Reviewed 3751.patch. Status: SKIPPED -- Skipping binary file: 3751.patch
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is standard AUR package metadata (`.SRCINFO`) describing the `eden` package, a Nintendo Switch emulator. It declares upstream sources, dependencies, and checksums. All checksums are provided as SHA256 hashes (not `SKIP`), and the source URL points to the project&#39;s own official git server (`git.eden-emu.dev`). There are no suspicious network requests, obfuscated code, or dangerous commands. The file contains only declarative metadata and follows standard packaging conventions. No evidence of malicious or supply-chain attack behavior.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata with no malicious indicator.</summary>
</security_assessment>

[1/7] Reviewing .SRCINFO, .nvchecker.toml, 60e1032771.patch, 7c0e993b5b.patch...
[2/7] Reviewing .nvchecker.toml, 60e1032771.patch, 7c0e993b5b.patch...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with no malicious indicator.
[3/7] Reviewing .nvchecker.toml, 60e1032771.patch...
! Reviewed 7c0e993b5b.patch. Status: SKIPPED -- Skipping binary file: 7c0e993b5b.patch
[3/7] Reviewing .nvchecker.toml, 60e1032771.patch, PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for building a Nintendo Switch emulator from upstream source. The source tarball is fetched from the official project domain (git.eden-emu.dev) with a pinned version and SHA-256 checksums. Two patches are included as local files in the AUR repository and applied in prepare(). The build uses cmake with standard options, and the package() function installs files and applies a minor udev rule fix with sed. There are no suspicious network requests, obfuscated code, dangerous commands (curl, wget, eval), or unexpected system modifications. The patches are not fetched from external sources; they are part of the package. No evidence of a supply-chain attack.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with no malicious content.</summary>
</security_assessment>

[3/7] Reviewing .nvchecker.toml, 60e1032771.patch, PKGBUILD, bd6dd7ecec.patch...
[4/7] Reviewing .nvchecker.toml, 60e1032771.patch, bd6dd7ecec.patch...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with no malicious content.
[5/7] Reviewing .nvchecker.toml, 60e1032771.patch...
! Reviewed bd6dd7ecec.patch. Status: SKIPPED -- Skipping binary file: bd6dd7ecec.patch
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a configuration file for `nvchecker`, a tool commonly used in AUR packages to automate version checking. It defines the upstream repository location (`git.eden-emu.dev`, repo `eden-emu/eden`) and instructs nvchecker to use the maximum git tag with a prefix of `v`. There is no executable code, obfuscation, or suspicious behavior. The configuration references the package's own upstream, which is standard and expected. No security issues detected.
</details>
<evidence></evidence>
<summary>Standard nvchecker config, no security issues.</summary>
</security_assessment>

[6/7] Reviewing 60e1032771.patch...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config, no security issues.
LLM auditresponse for 60e1032771.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard code maintenance patch for the Eden emulator (a fork of yuzu). It makes type correctness improvements (changing `int` to `u32`/`s64`), adds enum range clamping, improves input validation for UDP addresses, and cleans up formatting. The new file `tools/fuzzsettings.cpp` is a fuzzing utility that reads a settings file and corrupts values for robustness testing; it does not execute any external commands or exfiltrate data. The shell script `tools/fuzzsettings.sh` simply compiles and runs that tool as part of development. All changes are consistent with ordinary upstream development and do not exhibit any supply-chain attack patterns such as obfuscated code, unexpected network requests, credential theft, or backdoor installation.
</details>
<evidence></evidence>
<summary>Standard patch with no malicious code.</summary>
</security_assessment>

[7/7] Reviewing ...
+ Reviewed 60e1032771.patch. Status: SAFE -- Standard patch with no malicious code.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
(Skipped 3 files: 3751.patch, 7c0e993b5b.patch, bd6dd7ecec.patch)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 21,325
  Completion Tokens: 3,283
  Total Tokens: 24,608
  Total Cost: $0.002257
  Execution Time: 54.27 seconds

Final Status: SAFE


No issues found.


Audit Skips:

3751.patch: [SKIPPED] Skipping binary file: 3751.patch

7c0e993b5b.patch: [SKIPPED] Skipping binary file: 7c0e993b5b.patch

bd6dd7ecec.patch: [SKIPPED] Skipping binary file: bd6dd7ecec.patch
