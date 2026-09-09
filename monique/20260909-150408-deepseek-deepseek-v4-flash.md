---
package: monique
pkgver: 0.8.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 8044
completion_tokens: 1276
total_tokens: 9320
cost: 0.00090638184
execution_time: 28.79
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-09T15:04:07Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with pinned source, checksum, and normal build steps. No malicious behavior found.
  - file: .SRCINFO
    status: safe
    summary: Standard package metadata, no malicious content.
---

Materializing monique from local mirror...
Materialized monique
Analyzing monique AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only variable assignments and function definitions in its global scope. There are no command substitutions, backticks, or any other executable code that would run when `makepkg --printsrcinfo` sources the file. The `source` array uses a simple variable expansion (`$pkgname-$pkgver.tar.gz`) but does not execute any commands. The `sha256sums` is a fixed hash. All potentially dangerous operations (building, installing) are confined to the `build()` and `package()` functions, which are not executed during the `--printsrcinfo` step. Therefore, sourcing this PKGBUILD is safe.
</details>
<evidence></evidence>
<summary>No top-level executable code; safe to source.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level executable code; safe to source.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Arch packaging practices. It downloads a version-pinned tarball from the project's official GitHub repository, provides a fixed sha256sum, builds a Python wheel with `python -m build`, and installs it with `python -m installer`. There is no suspicious code execution, no base64/encoded payloads, no unexpected network fetching, and no modification of files outside the package's own install and data directories.

The polkit rule installed into `/usr/share/polkit-1/rules.d/` is notable from a security perspective, but it directly supports the application's declared feature of passwordless SDDM Xsetup writes for monitor layout configuration. This is an application-scope policy choice rather than evidence of a supply-chain attack or injected malicious behavior. The remaining packaged files (desktop entry, systemd user service, icon, license) are all conventional.

No evidence of exfiltration, backdoors, obfuscation, or tampering with unrelated system files was found. The package is consistent with an ordinary AUR package for an upstream graphical monitor configurator.
</details>
<evidence>
</evidence>
<summary>
Standard AUR PKGBUILD with pinned source, checksum, and normal build steps. No malicious behavior found.
</summary>
</security_assessment>

[1/2] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with pinned source, checksum, and normal build steps. No malicious behavior found.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file contains only standard package metadata for the monique AUR package. It defines the package as a graphical monitor configurator for Hyprland, Sway, and Niri compositors. The source is fetched from the project's own GitHub release archive (`https://github.com/ToRvaLDz/monique/archive/refs/tags/v0.8.0.tar.gz`), and a SHA-256 checksum is provided (not skipped), allowing verification of the downloaded archive. Dependencies and optional dependencies are all legitimate libraries for the described purpose (python, python-gobject, gtk4, libadwaita, etc.). There is no obfuscated code, no dangerous commands (curl, eval, base64, etc.), no unexpected network destinations, and no exfiltration or backdoor indicators. The file is purely declarative metadata and poses no security risk.
</details>
<evidence></evidence>
<summary>Standard package metadata, no malicious content.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard package metadata, no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 8,044
  Completion Tokens: 1,276
  Total Tokens: 9,320
  Total Cost: $0.000906
  Execution Time: 28.79 seconds

Final Status: SAFE


No issues found.
