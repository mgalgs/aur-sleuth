---
package: millennium
pkgver: 3.6.3
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 14049
completion_tokens: 2810
total_tokens: 16859
cost: 0.00177021
execution_time: 21.61
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-13T20:07:41Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with no security concerns.
  - file: millennium-x86.install
    status: safe
    summary: Intended Steam overlay injection, no malice.
  - file: millennium.install
    status: safe
    summary: Standard Steam addon install script, no malicious content.
---

Materializing millennium from local mirror...
Materialized millennium
Analyzing millennium AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only variable assignments and function definitions in its global/top-level scope. There are no command substitutions, backticks, `$()`, or direct invocations of any commands (e.g., `curl`, `wget`, `eval`, `bash`) that would execute during sourcing. All code that performs downloads, builds, or installations is confined to `build()`, `package_*()`, and helper functions, which are **not** executed by `makepkg --printsrcinfo`. Therefore, parsing this PKGBUILD for metadata extraction is safe.
</details>
<evidence></evidence>
<summary>No executable code in global scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No executable code in global scope.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, PKGBUILD...
[0/4] Reviewing .SRCINFO, PKGBUILD, millennium-x86.install...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR `.SRCINFO` metadata file. It defines the package `millennium` with a pinned git commit source from the project's own GitHub repository. All dependencies, makedepends, and architecture are clearly listed. The `sha256sums = SKIP` is normal for a VCS source. No obfuscated commands, suspicious network requests, or malicious content are present. The file contains no executable code and follows typical AUR packaging conventions.
</details>
<evidence></evidence>
<summary>Standard AUR metadata, no malicious content.</summary>
</security_assessment>

[1/4] Reviewing PKGBUILD, millennium-x86.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no malicious content.
[1/4] Reviewing PKGBUILD, millennium-x86.install, millennium.install...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard Arch packaging practices. The source is pinned to a specific commit from the official upstream GitHub repository, and the SHA256 sum is correctly set to SKIP (expected for git sources). All build steps use cmake with presets and standard install commands to copy built artifacts into the package directory. No obfuscated code, unexpected network requests, or dangerous commands (curl, wget, eval, base64) are present. There is no evidence of supply-chain tampering or malicious intent in this file.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with no security concerns.</summary>
</security_assessment>

[2/4] Reviewing millennium-x86.install, millennium.install...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with no security concerns.
LLM auditresponse for millennium-x86.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a standard post-installation helper for the Millennium Steam overlay package. It iterates over system users with a Steam installation and creates a symlink from the package&#39;s library (`/usr/lib/millennium/libmillennium_bootstrap_x86.so`) into Steam&#39;s library directory (`ubuntu12_32/libXtst.so.6`). This is a known injection technique used by Steam overlays to load custom libraries. The script does not perform any network requests, download external code, use obfuscation, or execute unexpected commands. On removal, it cleans up the symlinks. While modifying user home directories is invasive, it is the intended functionality of the package and not a supply-chain attack. No security threats are present.
</details>
<evidence>
</evidence>
<summary>Intended Steam overlay injection, no malice.</summary>
</security_assessment>

[3/4] Reviewing millennium.install...
+ Reviewed millennium-x86.install. Status: SAFE -- Intended Steam overlay injection, no malice.
LLM auditresponse for millennium.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `millennium.install` is a standard Arch Linux package install script for the Millennium Steam addon. It performs expected post-install, upgrade, and removal tasks: it patches `/usr/bin/steam` to inject Millennium libraries (by restoring a backup or creating a minimal wrapper), and it creates/removes symlinks in each user's Steam directory so the libraries are loaded. All operations are local and use `runuser` to act as each user without escalating privileges. There are no network requests, no obfuscated or encoded commands, no execution of untrusted external code, and no exfiltration of data. The script is consistent with the stated purpose of a Steam client modification. No malicious behavior is present.
</details>
<evidence></evidence>
<summary>Standard Steam addon install script, no malicious content.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed millennium.install. Status: SAFE -- Standard Steam addon install script, no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 14,049
  Completion Tokens: 2,810
  Total Tokens: 16,859
  Total Cost: $0.001770
  Execution Time: 21.61 seconds

Final Status: SAFE


No issues found.
