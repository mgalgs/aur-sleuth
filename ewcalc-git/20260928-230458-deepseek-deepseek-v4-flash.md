---
package: ewcalc-git
pkgver: 1.2.0.r3.g38c3caa
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 9468
completion_tokens: 1533
total_tokens: 11001
cost: 0.00061241124
execution_time: 32.1
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-28T23:04:56Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no malicious behavior.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no malicious content.
---

Materializing ewcalc-git from local mirror...
Materialized ewcalc-git
Analyzing ewcalc-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's top-level scope contains only static variable definitions (pkgname, pkgver, pkgdesc, etc.) and a simple source array. There are no command substitutions, function calls, or any executable statements that would run during `makepkg --printsrcinfo`. The functions `pkgver()`, `prepare()`, `build()`, and `package()` are defined but not invoked at global scope, so they cannot execute during this narrow gate. No evidence of malicious code that would exfiltrate data, download payloads, or modify the system.
</details>
<evidence></evidence>
<summary>No dangerous top-level code.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.SRCINFO` metadata file for the `ewcalc-git` AUR package. It declares the package name, version, description, upstream URL, dependencies (Qt6, libglvnd, cmake, make, svgo, git), and a VCS source (`git+https://github.com/OldCrow/ewcalc.git`) with `sha256sums = SKIP`. `SKIP` is normal and required for VCS sources; it is not a security issue. There are no executable commands, no obfuscated code, no unexpected network requests, and no attempts to modify system files outside of normal packaging. The content is entirely declarative and consistent with legitimate AUR packaging practices.
</details>
<evidence></evidence>
<summary>Standard AUR metadata, no malicious behavior.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no malicious behavior.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is standard for a -git package. It clones the upstream repository from the project's official GitHub page (https://github.com/OldCrow/ewcalc.git), uses SKIP for checksums (expected for VCS sources), and performs normal build and install steps with cmake. The only non-standard element is the repeated build block (building the main project and then the frontend/linux subdirectory with identical compiler flags), which is inefficient but not malicious. There are no hidden network requests, obfuscated commands, file exfiltration, or other supply-chain attack indicators. The aggressive compiler flags (`-march=native`, `-flto`, etc.) are a packaging hygiene concern (reproducibility) but not evidence of malice.
</details>
<evidence>
</evidence>
<summary>Standard AUR PKGBUILD with no malicious content.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 9,468
  Completion Tokens: 1,533
  Total Tokens: 11,001
  Total Cost: $0.000612
  Execution Time: 32.10 seconds

Final Status: SAFE


No issues found.
