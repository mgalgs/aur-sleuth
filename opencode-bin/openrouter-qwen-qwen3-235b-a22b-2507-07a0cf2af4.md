---
package: opencode-bin
result: safe
model: qwen/qwen3-235b-a22b-2507
provider: openrouter
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 07a0cf2af4a8a0b0d0a16732d331c1eb045fb140
tokens: 3,623
cost: $0.000334
date: 2026-06-16T00:18:43Z
---

Cloning https://aur.archlinux.org/opencode-bin.git to /tmp/aur-sleuth/aur-sleuth-d_wnbn6l...
Cloned repository to /tmp/aur-sleuth/aur-sleuth-d_wnbn6l
Analyzing opencode-bin AUR package (working in /tmp/aur-sleuth/aur-sleuth-d_wnbn6l) with qwen/qwen3-235b-a22b-2507 from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD file does not contain any executable code or commands within the `source` arrays or elsewhere that would be executed during `makepkg --nobuild` or `makepkg --printsrcinfo`. The `source` entries are simple URL assignments using standard parameter expansions (`${pkgver}`, `${_subver}`), which are safely evaluated by makepkg for download purposes only. There are no calls to `eval`, `exec`, `bash -c`, or any other command substitution that could lead to code execution. The `package()` function is irrelevant here because it is not executed during `--nobuild` or `--printsrcinfo` operations. All URLs point to official GitHub release assets over HTTPS, which is a standard and trusted practice. No obfuscated code or suspicious logic is present.

Additionally, the use of `sha255sums` for each architecture ensures download integrity. Variables like `_subver` are empty but safely interpolated. The PKGBUILD follows standard conventions and poses no risk during the specified makepkg invocations.
</details>
<summary>
No executable code; safe source URLs
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- No executable code; safe source URLs[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/1] Reviewing PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD file follows standard Arch Linux packaging practices and shows no signs of malicious activity. It defines metadata and build instructions for the `opencode-bin` package, which is sourced from the official GitHub repository (anomalyco/opencode). The source URLs point directly to GitHub release binaries for both aarch64 and x86_64 architectures, which is typical for precompiled binary packages.

The integrity of the downloaded binaries is verified using fixed, hardcoded SHA-256 checksums for each architecture. These checksums prevent tampering during download. The package installs only a single binary to `/usr/bin/opencode` with appropriate permissions and depends on `ripgrep`, a legitimate and widely-used tool. There is no use of `eval`, `base64`, obfuscated code, or any dynamic code execution mechanisms.

All variables are properly quoted, and the PKGBUILD does not execute arbitrary commands or download additional payloads. The maintainers are listed generically, but this is common in community packages. The license (MIT), description, and URL are consistent with the upstream project.
</details>
<summary>
Standard PKGBUILD with no malicious content or anomalies.
</summary>
</security_assessment>

[1/1] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with no malicious content or anomalies.
Reviewed all required files.
Deciding which files to review next...
Decided to review 3 additional files: opencode-bin_1.17.7_x86_64.tar.gz, .SRCINFO, src/opencode
Reviewing additional files...
Reviewing additional files...
[0/3] Reviewing opencode-bin_1.17.7_x86_64.tar.gz...
[0/3] Reviewing opencode-bin_1.17.7_x86_64.tar.gz, .SRCINFO...
[0/3] Reviewing opencode-bin_1.17.7_x86_64.tar.gz, .SRCINFO, src/opencode...
[1/3] Reviewing .SRCINFO, src/opencode...
! Reviewed opencode-bin_1.17.7_x86_64.tar.gz. Status: SKIPPED -- Skipping binary file: opencode-bin_1.17.7_x86_64.tar.gz
[2/3] Reviewing .SRCINFO...
! Reviewed src/opencode. Status: SKIPPED -- Skipping binary file: opencode
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a metadata file used by Arch Linux's AUR build system and contains no executable code. It declares standard package metadata such as package name, version, architecture, source URLs, and checksums. All source URLs point to official GitHub releases under the legitimate `anomalyco/opencode` repository, using HTTPS, which ensures transport security. The checksums (SHA-256) are provided for both supported architectures and match the expected format and length, reducing the risk of tampered binaries.

The package depends on `ripgrep`, a legitimate and widely-used tool, and does not include any suspicious commands, scripts, or network calls. There are no signs of obfuscation, embedded payloads, or dangerous build options. The only notable options are `!debug` and `!strip`, which disable debugging and binary stripping—this is uncommon but not inherently malicious, especially for binaries distributed in pre-built form. Since this file only describes how to obtain and verify a pre-built binary and contains no executable logic, the risk is minimal.

The package follows standard AUR packaging conventions and does not deviate in a way that suggests tampering or supply chain compromise. While `opencode-bin` is a binary-only package (meaning the source isn't built locally), the use of verifiable checksums and official release URLs provides reasonable assurance of integrity.
</details>
<summary>
No executable code; metadata appears legitimate and standard.
</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- No executable code; metadata appears legitimate and standard.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found in inspected files
(Skipped 2 files: opencode-bin_1.17.7_x86_64.tar.gz, opencode)

API Usage Summary
  Models: qwen/qwen3-235b-a22b-2507
  Prompt Tokens: 2,791
  Completion Tokens: 832
  Total Tokens: 3,623
  Total Cost: $0.000334
  Execution Time: 32.79 seconds
Full audit report can be found in /tmp/aur-sleuth/aur-sleuth-report-opencode-bin.txt
Final Status: SAFE


No issues found in inspected files.


Audit Skips:

/tmp/aur-sleuth/aur-sleuth-d_wnbn6l/opencode-bin_1.17.7_x86_64.tar.gz: [SKIPPED] Skipping binary file: opencode-bin_1.17.7_x86_64.tar.gz

/tmp/aur-sleuth/aur-sleuth-d_wnbn6l/src/opencode: [SKIPPED] Skipping binary file: opencode
