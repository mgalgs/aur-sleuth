---
package: epic-games-launcher-bin
pkgver: 0.118.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 9355
completion_tokens: 1530
total_tokens: 10885
cost: 0.00111735
execution_time: 13.41
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-19T00:05:59Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD for Epic Games Launcher binary.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; no malicious content.
---

Materializing epic-games-launcher-bin from local mirror...
Materialized epic-games-launcher-bin
Analyzing epic-games-launcher-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only static variable assignments and function definitions (`prepare()`, `package()`) in its global/top-level scope. There are no command substitutions, backtick-executed commands, invocations of `curl`, `wget`, `eval`, or any other code that would execute at source time. All variables are defined with simple string assignments. The `source` array and `sha256sums` are static. No dangerous operations occur during `makepkg --printsrcinfo`.
</details>
<evidence></evidence>
<summary>No top-level executable code; sourcing is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level executable code; sourcing is safe.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD downloads a prebuilt .deb from the official Epic Games CDN (content-download-egs.distro.on.epicgames.com) over HTTPS with a fixed SHA-256 checksum. Extraction and installation follow standard Arch packaging patterns: using bsdtar to unpack the .deb, copying binaries, libraries, desktop file, icons, and licenses. A small wrapper shell script is created that sets `EGL_DISABLE_SELF_UPDATE=1` (a documented environment variable to disable the launcher's auto-updater, which would not work on Linux anyway) and then execs the actual binary. There are no suspicious network requests, no obfuscated code, no unexpected file operations, and no exfiltration of data. The source is pinned and checksummed. No red flags.
</details>
<evidence>
</evidence>
<summary>Standard AUR PKGBUILD for Epic Games Launcher binary.</summary>
</security_assessment>

[1/2] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD for Epic Games Launcher binary.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a standard AUR package metadata file. It declares the package `epic-games-launcher-bin` sourced from the official Epic Games store distribution URL (`content-download-egs.distro.on.epicgames.com`) and includes a pinned SHA-256 checksum. No obfuscated code, suspicious network destinations, dangerous commands, or exfiltration behavior is present. The file follows normal AUR packaging practices and contains no indications of a supply-chain attack.
</details>
<evidence></evidence>
<summary>Standard AUR metadata; no malicious content.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 9,355
  Completion Tokens: 1,530
  Total Tokens: 10,885
  Total Cost: $0.001117
  Execution Time: 13.41 seconds

Final Status: SAFE


No issues found.
