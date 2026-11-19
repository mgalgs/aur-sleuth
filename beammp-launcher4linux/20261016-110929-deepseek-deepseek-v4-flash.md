---
package: beammp-launcher4linux
pkgver: 2.8.1
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 14251
completion_tokens: 2613
total_tokens: 16864
cost: 0.001772407
execution_time: 27.28
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-16T11:09:28Z
file_verdicts:
  - file: README-AUR.md
    status: safe
    summary: Documentation-only file; no malicious or dangerous behavior detected.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with pinned upstream checksums; no malicious behavior found.
  - file: beammp.desktop
    status: safe
    summary: Standard desktop entry; no malicious or suspicious content found.
  - file: PKGBUILD
    status: safe
    summary: "Safe: pinned HTTPS prebuilt download with checksums; only standard install operations, no malicious behavior."
  - file: beammp.sh
    status: safe
    summary: Wrapper copies packaged launcher to user data and executes it; no malicious behavior found.
---

Materializing beammp-launcher4linux from local mirror...
Materialized beammp-launcher4linux
Analyzing beammp-launcher4linux AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable definitions (pkgver, source, sha256sums, etc.) and a `package()` function that is not executed during `makepkg --printsrcinfo`. No top-level command substitutions, external network calls, or dangerous operations are present. Sourcing this file for metadata extraction poses no risk.
</details>
<evidence>
</evidence>
<summary>No dangerous top-level code during sourcing.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code during sourcing.
Reviewing the 5 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, README-AUR.md...
[0/5] Reviewing .SRCINFO, README-AUR.md, PKGBUILD...
LLM auditresponse for README-AUR.md:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a README document for an AUR package. It describes the package purpose, prerequisites, build instructions, and the standard workflow for uploading to the AUR using git. It contains no code execution, no network downloads beyond the documented upstream repository, no obfuscation, and no system modification logic.

The only commands shown are routine maintainer operations (`git remote add`, `git add`, `git commit`, `git push` to the official AUR SSH endpoint) and normal build instructions (`makepkg -si`). There is nothing resembling a backdoor, exfiltration, or injected malicious behavior.
</details>
<evidence>
</evidence>
<summary>
Documentation-only file; no malicious or dangerous behavior detected.</summary>
</security_assessment>

[0/5] Reviewing .SRCINFO, README-AUR.md, PKGBUILD, beammp.desktop...
[1/5] Reviewing .SRCINFO, PKGBUILD, beammp.desktop...
+ Reviewed README-AUR.md. Status: SAFE -- Documentation-only file; no malicious or dangerous behavior detected.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is standard AUR package metadata. It declares a single package `beammp-launcher4linux` based on the upstream GitHub project `SerShef/BeamMP-Launcher4Linux`. The sources are fetched from the project's own GitHub releases over HTTPS, and both source files have pinned SHA-256 checksums.

No malicious patterns are present: there are no network requests beyond the declared upstream source, no obfuscated commands, no suspicious file operations, and no unverified `SKIP` checksums. The use of a prebuilt binary release is a trust/hygiene consideration but is not itself evidence of malice, especially since the binary is checksum-pinned from the project's own release page.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata with pinned upstream checksums; no malicious behavior found.</summary>
</security_assessment>

[2/5] Reviewing PKGBUILD, beammp.desktop...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with pinned upstream checksums; no malicious behavior found.
[2/5] Reviewing PKGBUILD, beammp.desktop, beammp.sh...
LLM auditresponse for beammp.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard freedesktop.org desktop entry that launches the installed `beammp` executable. It contains no commands, network operations, file manipulation, or obfuscated content. The `Exec=beammp` line simply references the launcher binary installed by the package, which is normal for a game desktop entry. No security concerns are present.
</details>
<evidence>
</evidence>
<summary>
Standard desktop entry; no malicious or suspicious content found.</summary>
</security_assessment>

[3/5] Reviewing PKGBUILD, beammp.sh...
+ Reviewed beammp.desktop. Status: SAFE -- Standard desktop entry; no malicious or suspicious content found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD fetches a prebuilt BeamMP-Launcher binary and its accompanying `.sha256` file from the package maintainer's GitHub releases. Both downloads use HTTPS and the artifacts are pinned with explicit `sha256sums` values, which is a reasonable level of verification for a prebuilt release. The `package()` function only performs standard file installation into the package directory (`install -Dm755` and `install -Dm644`), with no execution of downloaded code, no network calls during build/install, no obfuscation, and no modification of system files outside normal packaging.

The only notable issue is a functional defect: `package()` references `$srcdir/beammp.sh` and `$srcdir/beammp.desktop`, but these files are not listed in the `source` array. This would likely cause the package build to fail unless those files are somehow provided elsewhere. This is a packaging error, not a security threat. The overall behavior is consistent with ordinary AUR packaging for a prebuilt application.
</details>
<evidence>
</evidence>
<summary>
Safe: pinned HTTPS prebuilt download with checksums; only standard install operations, no malicious behavior.</summary>
</security_assessment>

[4/5] Reviewing beammp.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Safe: pinned HTTPS prebuilt download with checksums; only standard install operations, no malicious behavior.
LLM auditresponse for beammp.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a thin wrapper that copies the packaged BeamMP launcher from the system directory to the user data directory when missing or outdated, and then executes it. It performs no network access, no downloads from external hosts, no decoding or obfuscation, and no modification of files outside its own application data directory. Running the application's own binary from the user data directory is consistent with launcher-style applications that need a writable location for updates and runtime data. The `install` and `exec` usage is normal for this packaging pattern. No injected or supply-chain behavior is present in this file.
</details>
<evidence>
</evidence>
<summary>
Wrapper copies packaged launcher to user data and executes it; no malicious behavior found.
</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed beammp.sh. Status: SAFE -- Wrapper copies packaged launcher to user data and executes it; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 14,251
  Completion Tokens: 2,613
  Total Tokens: 16,864
  Total Cost: $0.001772
  Execution Time: 27.28 seconds

Final Status: SAFE


No issues found.
