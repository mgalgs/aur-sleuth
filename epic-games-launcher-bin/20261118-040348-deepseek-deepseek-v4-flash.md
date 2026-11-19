---
package: epic-games-launcher-bin
pkgver: 0.117.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 9343
completion_tokens: 1613
total_tokens: 10956
cost: 0.00113121
execution_time: 22.52
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-18T04:03:48Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with verified source and no malicious code.
  - file: .SRCINFO
    status: safe
    summary: Standard metadata with pinned official source.
---

Materializing epic-games-launcher-bin from local mirror...
Cloning https://aur.archlinux.org/epic-games-launcher-bin.git...
Cloned epic-games-launcher-bin
Analyzing epic-games-launcher-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard top-level variable and array definitions (e.g., pkgname, depends, source, sha256sums). No dangerous commands (eval, curl, wget, command substitutions that would execute at parse time) appear in the global scope. The prepare() and package() functions are not executed during `makepkg --printsrcinfo`. The source URL points to the official Epic Games CDN and checksums are pinned. No obfuscation or code injection is evident.
</details>
<evidence></evidence>
<summary>No top-level code execution risk.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level code execution risk.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD downloads the official Epic Games Launcher `.deb` package from Epic's own content distribution server (`content-download-egs.distro.on.epicgames.com`). The source is pinned to a specific version and commit, and the SHA256 checksum is provided and not `SKIP`, ensuring the downloaded file integrity is verified. The `prepare()` function extracts the `.deb` and its data archive using `bsdtar`, which is a standard extraction method. The `package()` function installs the prebuilt binary, a wrapper shell script that sets `EGL_DISABLE_SELF_UPDATE=1` (a common upstream environment variable to disable self-updates), icons, a desktop file, and a license file. There are no suspicious network requests, obfuscated code, base64 decoding, eval usage, or attempts to exfiltrate data or execute arbitrary code from untrusted sources. The wrapper script is a simple `/bin/sh` script with no dangerous operations. All file operations are confined to the package's own install destination (`$pkgdir`). No evidence of a supply-chain attack or malicious intent.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with verified source and no malicious code.</summary>
</security_assessment>

[1/2] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with verified source and no malicious code.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is standard package metadata for the Epic Games Launcher binary package. The source is downloaded from an official Epic Games domain with a pinned SHA-256 checksum, and there are no executable commands, obfuscated code, or unexpected network requests. All dependencies, options, and fields follow normal AUR packaging practices.
</details>
<evidence></evidence>
<summary>Standard metadata with pinned official source.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata with pinned official source.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 9,343
  Completion Tokens: 1,613
  Total Tokens: 10,956
  Total Cost: $0.001131
  Execution Time: 22.52 seconds

Final Status: SAFE


No issues found.
