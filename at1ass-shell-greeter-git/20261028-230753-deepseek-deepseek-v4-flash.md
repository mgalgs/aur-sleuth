---
package: at1ass-shell-greeter-git
pkgbase: at1ass-shell-git
pkgver: r297.91abb810
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 12942
completion_tokens: 1663
total_tokens: 14605
cost: 0.001480388
execution_time: 44.23
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-28T23:07:51Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with upstream git sources; no malicious or suspicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard VCS PKGBUILD with pinned submodule; no malicious behavior found.
---

at1ass-shell-greeter-git is built from at1ass-shell-git
Materializing at1ass-shell-greeter-git from local mirror...
Materialized at1ass-shell-greeter-git
Analyzing at1ass-shell-greeter-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains variable definitions and function declarations at the top-level scope. No command substitutions, backtick executions, or embedded code that would execute when the file is sourced by makepkg --printsrcinfo. All dangerous operations (git commands, cmake builds, file installations) are confined within function bodies (pkgver(), prepare(), build(), package_*()) and are not invoked during the metadata extraction step. Therefore, running makepkg --printsrcinfo on this file is safe.
</details>
<evidence></evidence>
<summary>No top-level code execution risk.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level code execution risk.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.SRCINFO` metadata file for an AUR package. It declares package metadata, dependencies, options, and source URLs only; it contains no build logic, no scripts, and no commands. The sources are `git+https` URLs pointing to the project's own upstream GitHub repository, plus a pinned commit for a separate upstream dependency (material-color-utilities). `sha256sums = SKIP` is normal and required for VCS sources, not evidence of malice.

No suspicious network destinations, obfuscated content, file operations, or executable code are present. The listed dependencies and optdependencies are consistent with a Hyprland/Quickshell desktop shell and greeter. This metadata is safe.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata with upstream git sources; no malicious or suspicious content.
</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with upstream git sources; no malicious or suspicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard multi-package VCS build for an upstream GitHub project. The sources are the project&apos;s own repository and a pinned-commit submodule from `material-foundation/material-color-utilities`. Checksums are `SKIP`, which is expected for VCS/git sources and is not by itself malicious. The `prepare()` function uses the already-declared local submodule checkout from `$srcdir/mcu` and applies a patch from the package&apos;s own source tree; no remote `git pull`, `curl`, `wget`, or encoded/obfuscated commands are used. The build uses normal CMake/Ninja commands with `FETCHCONTENT_FULLY_DISCONNECTED=ON`, preventing unexpected network fetching during the build.
</details>
<details>
The package functions perform ordinary installation operations: running an upstream install helper script (`install-runtime.py`) with `--destdir "$pkgdir"`, installing binaries, systemd user units, docs, licenses, and configuration files into the package directory or standard `/etc/greetd` locations for the greeter. There is no exfiltration of local data, no download-and-execute of attacker-controlled code, no backdoor or reverse-shell behavior, and no tampering with unrelated system files. Overall this is a legitimate AUR packaging workflow.
</details>
<evidence>
</evidence>
<summary>
Standard VCS PKGBUILD with pinned submodule; no malicious behavior found.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard VCS PKGBUILD with pinned submodule; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,942
  Completion Tokens: 1,663
  Total Tokens: 14,605
  Total Cost: $0.001480
  Execution Time: 44.23 seconds

Final Status: SAFE


No issues found.
