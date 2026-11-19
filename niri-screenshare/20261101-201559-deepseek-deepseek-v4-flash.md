---
package: niri-screenshare
pkgver: 0.2.5
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 8028
completion_tokens: 2379
total_tokens: 10407
cost: 0.001163526
execution_time: 32.09
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-01T20:15:58Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with pinned upstream release and checksum; no malicious behavior found.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with pinned checksum; installs portal files and services only. No malicious behavior found.
---

Materializing niri-screenshare from local mirror...
Materialized niri-screenshare
Analyzing niri-screenshare AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The top-level (global) scope of this PKGBUILD consists solely of standard variable/array assignments (`pkgname`, `pkgver`, `pkgrel`, `arch`, `depends`, `source`, `sha256sums`, etc.) and a single function definition (`package() { ... }`). There are no command substitutions, backticks, `eval`, `curl`, `wget`, or any other executable statements outside of the function body. Because `makepkg --printsrcinfo` only sources the global scope and does **not** execute function bodies like `package()`, no code with any risk of executing runs during this step. The structure is perfectly normal for an AUR PKGBUILD distributing a prebuilt binary.
</details>
<evidence>
</evidence>
<summary>No malicious top-level code present.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious top-level code present.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO describes a standard AUR package: it declares a prebuilt binary tarball downloaded from the project's own GitHub releases page (https://github.com/pantarune/niri-screenshare), with a pinned version (v0.2.5), a pinned SHA-256 checksum, and expected dependencies (xdg-desktop-portal, pipewire, niri, gtk4, libadwaita). There are no suspicious network destinations, no encoded or obfuscated commands, no file operations, and no build-time behavior in this metadata file.

The fact that the package ships a prebuilt binary rather than building from source is a supply-chain consideration, but the checksum is pinned and the source is the upstream project's own release URL. This is consistent with ordinary AUR packaging practice and does not constitute evidence of malicious or injected code. No security issues are present in this file.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata with pinned upstream release and checksum; no malicious behavior found.
</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with pinned upstream release and checksum; no malicious behavior found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Arch packaging practices. It downloads a versioned prebuilt release tarball from the project&apos;s own GitHub repository and verifies it with a pinned SHA-256 checksum. The `package()` function installs the binary and creates the expected XDG desktop portal, D-Bus service, and systemd user unit files required for the package&apos;s stated purpose as a niri screen-cast portal backend.

There are no suspicious network requests, no encoded or obfuscated commands, no execution of downloaded scripts, and no modifications outside the package&apos;s own installation paths. The use of `install` and `cat` heredocs is normal packaging practice. The prebuilt binary itself is not inspected here, but the PKGBUILD contains no evidence of injected malicious behavior.
</details>
<evidence>
</evidence>
<summary>
Standard PKGBUILD with pinned checksum; installs portal files and services only. No malicious behavior found.
</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with pinned checksum; installs portal files and services only. No malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 8,028
  Completion Tokens: 2,379
  Total Tokens: 10,407
  Total Cost: $0.001164
  Execution Time: 32.09 seconds

Final Status: SAFE


No issues found.
