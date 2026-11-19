---
package: beammp-launcher4linux
pkgver: 2.8.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 14257
completion_tokens: 3737
total_tokens: 17994
cost: 0.001977521
execution_time: 41.6
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-16T07:03:22Z
file_verdicts:
  - file: README-AUR.md
    status: safe
    summary: README contains only standard build and AUR upload instructions; no malicious behavior found.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with pinned checksums from official upstream releases; no malicious behavior.
  - file: beammp.desktop
    status: safe
    summary: Standard desktop entry file; no malicious or suspicious behavior found.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD; downloads pinned upstream binary. Packaging bug only, no malice.
  - file: beammp.sh
    status: safe
    summary: Simple launcher wrapper; copies system binary to user data dir and executes it. No malicious behavior found.
---

Materializing beammp-launcher4linux from local mirror...
Materialized beammp-launcher4linux
Analyzing beammp-launcher4linux AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The top-level (global) scope of this PKGBUILD contains only standard variable assignments (`pkgname`, `pkgver`, `_srcbase`, `source`, `sha256sums`, etc.) and a `package()` function definition. There are no command substitutions (`$(...)`), backticks, arithmetic evaluations, or external command executions in the global scope that would run when the file is sourced by `makepkg --printsrcinfo`. The `package()` function is not invoked during `--printsrcinfo` and consists of routine packaging commands (`install`, `cd`). No evidence of malicious code execution at this stage is present.
</details>
<evidence></evidence>
<summary>No dangerous top-level scope code.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level scope code.
Reviewing the 5 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, PKGBUILD...
[0/5] Reviewing .SRCINFO, PKGBUILD, README-AUR.md...
LLM auditresponse for README-AUR.md:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a maintainer README for the AUR package `beammp-launcher4linux-git`. It documents the upstream fork URL, build prerequisites, standard `makepkg` usage, and routine AUR upload commands (`git add`, `git commit`, `git push` to the official AUR SSH endpoint). There is no obfuscated code, no suspicious network behavior, no data exfiltration, and no execution of untrusted content. The instructions are limited to normal packaging and maintainer workflows.
</details>
<evidence>
</evidence>
<summary>
README contains only standard build and AUR upload instructions; no malicious behavior found.</summary>
</security_assessment>

[1/5] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed README-AUR.md. Status: SAFE -- README contains only standard build and AUR upload instructions; no malicious behavior found.
[1/5] Reviewing .SRCINFO, PKGBUILD, beammp.desktop...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR `.SRCINFO` metadata file for the `beammp-launcher4linux` package. It declares package metadata, dependencies, and two source files downloaded from the project's own GitHub releases page: the prebuilt `BeamMP-Launcher` binary and its accompanying `.sha256` checksum file. Both sources have explicit SHA-256 checksums, and there is no use of `curl`, `eval`, `base64`, network exfiltration, obfuscated code, or unexpected filesystem modifications.

There is no build, prepare, or install logic in this file; it only describes package metadata. Shipping a prebuilt binary from the upstream project's official release URL is normal for this type of AUR package. The presence of pinned checksums is a positive supply-chain hygiene indicator. No genuinely malicious or dangerous behavior is present.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata with pinned checksums from official upstream releases; no malicious behavior.</summary>
</security_assessment>

[2/5] Reviewing PKGBUILD, beammp.desktop...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with pinned checksums from official upstream releases; no malicious behavior.
[2/5] Reviewing PKGBUILD, beammp.desktop, beammp.sh...
LLM auditresponse for beammp.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard freedesktop.org .desktop launcher file for the BeamMP game launcher. It defines the application name, comment, executable (`beammp`), icon, and desktop categories. There are no network operations, encoded payloads, file manipulation commands, or any other executable content. The `Exec=beammp` line simply invokes the package-provided binary, which is normal behavior for a desktop entry. No security concerns are present.
</details>
<evidence></evidence>
<summary>Standard desktop entry file; no malicious or suspicious behavior found.</summary>
</security_assessment>

[3/5] Reviewing PKGBUILD, beammp.sh...
+ Reviewed beammp.desktop. Status: SAFE -- Standard desktop entry file; no malicious or suspicious behavior found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard, minimal packaging script. It downloads a prebuilt `BeamMP-Launcher` binary and its `.sha256` checksum file from the project's own GitHub releases page, with both `sha256sums` entries pinned to specific hashes. The `package()` function only installs the binary and two helper files into `$pkgdir` using standard `install` commands. There are no network requests beyond the declared upstream source, no `eval`, `base64`, `curl|bash`, obfuscated commands, or suspicious file operations.
One packaging issue is that `package()` references `$srcdir/beammp.sh` and `$srcdir/beammp.desktop`, but these files are not listed in the `source=` array. Unless they are supplied some other way, the build will likely fail. This is a correctness/quality problem, not evidence of malicious behavior. The package is otherwise consistent with normal AUR practices.
</details>
<evidence>
</evidence>
<summary>
Standard AUR PKGBUILD; downloads pinned upstream binary. Packaging bug only, no malice.</summary>
</security_assessment>

[4/5] Reviewing beammp.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD; downloads pinned upstream binary. Packaging bug only, no malice.
LLM auditresponse for beammp.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a simple launcher wrapper for the BeamMP game launcher. It defines the appropriate data directory, ensures it exists, and copies the system-installed launcher binary (`/usr/lib/beammp/BeamMP-Launcher`) into the user data directory if it is missing or differs from the system version. It then executes that local copy with the user-supplied arguments.

There is no suspicious network activity, obfuscation, credential access, or unauthorized system modification. Copying the launcher into the user data directory and running it is consistent with the application launcher&#39;s apparent design, particularly if the launcher self-updates or writes its own data. The script performs no dangerous commands and only touches files under the package&#39;s own paths and the user&#39;s data directory.
</details>
<evidence></evidence>
<summary>Simple launcher wrapper; copies system binary to user data dir and executes it. No malicious behavior found.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed beammp.sh. Status: SAFE -- Simple launcher wrapper; copies system binary to user data dir and executes it. No malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 14,257
  Completion Tokens: 3,737
  Total Tokens: 17,994
  Total Cost: $0.001978
  Execution Time: 41.60 seconds

Final Status: SAFE


No issues found.
