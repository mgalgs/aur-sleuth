---
package: rustdesk-kde-wayland-bin
pkgver: 1.5.0.kde1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 13773
completion_tokens: 4450
total_tokens: 18223
cost: 0.002063243
execution_time: 48.19
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-30T03:08:45Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file, no security issues.
  - file: rustdesk.install
    status: safe
    summary: Standard install script for RustDesk service.
  - file: PKGBUILD
    status: safe
    summary: Standard packaging, no malicious behavior found.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no evidence of malice.
---

Materializing rustdesk-kde-wayland-bin from local mirror...
Materialized rustdesk-kde-wayland-bin
Analyzing rustdesk-kde-wayland-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources only the top-level of this PKGBUILD. The top-level content consists entirely of metadata variable assignments (`pkgname`, `pkgver`, `source`, `sha256sums`, etc.) and a `package()` function definition. There are no top-level command substitutions, network fetches, `eval`, `curl`, `wget`, base64-decoded payloads, or file-modifying commands that would execute during sourcing.

The `package()` function contains file installation steps, but it is not executed by `makepkg --printsrcinfo` and is therefore outside the scope of this narrow gate. The source URLs point to the official RustDesk GitHub releases and the maintainer's own GitHub releases; this may be worth noting in the full audit, but it does not affect the safety of the metadata-print command.
</details>
<evidence>
</evidence>
<summary>
Top-level PKGBUILD contains only metadata assignments; no dangerous commands execute during printsrcinfo.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD contains only metadata assignments; no dangerous commands execute during printsrcinfo.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, PKGBUILD...
[0/4] Reviewing .SRCINFO, PKGBUILD, .gitignore...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` file used to prevent build artifacts and temporary files from being tracked by Git. It ignores common directories (`pkg/`, `src/`), compressed archive files (`*.zst`), and shared object binaries (`*.so`). There is no executable code, network access, encoded payload, or any deviation from expected packaging practices. The file poses no security risk.
</details>
<evidence></evidence>
<summary>Standard .gitignore file, no security issues.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, PKGBUILD, .gitignore, rustdesk.install...
[1/4] Reviewing .SRCINFO, PKGBUILD, rustdesk.install...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore file, no security issues.
LLM auditresponse for rustdesk.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.install` script for Arch Linux packages, defining post-install, post-upgrade, and pre-remove hooks for the RustDesk daemon. It only displays informational messages to the user (via the `note` function) and interacts with `systemd` using `systemctl` to check/enable the `rustdesk` service and mark it for restart on upgrade. No network requests, file modifications outside the package scope, obscured commands, or any behavior that matches the criteria for malicious code (exfiltration, backdoors, downloading/executing arbitrary code) is present. The terminal escape sequences for coloring are purely cosmetic and pose no security risk.
</details>
<evidence>
</evidence>
<summary>Standard install script for RustDesk service.</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed rustdesk.install. Status: SAFE -- Standard install script for RustDesk service.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging conventions without any indication of malicious intent. The source files are fetched from GitHub releases (the upstream RustDesk tarball and a patched librustdesk.so from the maintainer's fork), both with pinned SHA-256 checksums for integrity verification. The `package()` function performs only routine installation operations: copying files, creating symlinks, and installing systemd/desktop entries. There are no network requests, eval invocations, obfuscated code, or unexpected system modifications. The replacement of `librustdesk.so` with a patched version is the explicit purpose of the package (adding KDE Wayland resolution support), not a supply-chain attack. The file is safe.
</details>
<evidence>
</evidence>
<summary>Standard packaging, no malicious behavior found.</summary>
</security_assessment>

[3/4] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard packaging, no malicious behavior found.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a .SRCINFO metadata file for an AUR package. It contains source URLs pointing to GitHub releases for the official rustdesk binary and a custom shared library (librustdesk) from a personal fork (edoaurahman) that enables KDE Wayland resolution support. Both URLs include pinned sha256 checksums, ensuring download integrity. No obfuscated commands, base64 blobs, eval calls, or suspicious file operations are present. The file does not contain any executable code or instructions; it is only a descriptor. While the second source comes from a personal fork rather than the upstream organization, it is logically related to the package's stated purpose (adding KDE Wayland support) and the repository is a standard GitHub release, not an unexpected or anonymous host. There is no evidence of exfiltration, backdoor, or supply-chain injection within this file.
</details>
<evidence>

</evidence>
<summary>Standard AUR metadata file, no evidence of malice.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no evidence of malice.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,773
  Completion Tokens: 4,450
  Total Tokens: 18,223
  Total Cost: $0.002063
  Execution Time: 48.19 seconds

Final Status: SAFE


No issues found.
