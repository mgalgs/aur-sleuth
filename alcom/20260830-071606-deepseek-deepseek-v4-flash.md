---
package: alcom
pkgver: 1.1.8
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 11193
completion_tokens: 2783
total_tokens: 13976
cost: 0.00135144576
execution_time: 218.07
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: ok
upstream_files: 529
upstream_named_files: 1
unpinned_sources: 0
date: 2026-08-30T07:16:06Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Declarative AUR metadata only; pinned upstream source with checksums; no malicious behavior found.
  - file: build.patch
    status: safe
    summary: Patch tweaks NVIDIA env var and suppresses app update dialog; no malice.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with no malicious content.
---

Cloning https://aur.archlinux.org/alcom.git...
Cloned alcom
Analyzing alcom AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains no top-level command substitutions, dangerous function calls, or suspicious source URLs. The `source` array downloads the upstream tarball from the official GitHub releases and a local patch file, both of which are standard practice. No code executes during `makepkg --nobuild --nodeps --noprepare` that could be malicious. The `pkgver()` function is absent, and the `prepare()`, `build()`, and `package()` functions are not invoked by the requested commands. Thus, fetching and sourcing are safe.
</details>
<evidence></evidence>
<summary>No malicious top-level code or dangerous sources.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious top-level code or dangerous sources.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: the PKGBUILD names 1 file(s) in the downloaded sources (src/vrc-get-gui-v1.1.8/LICENSE); they are upstream content and were not reviewed.
Reviewing the 3 file(s) in the AUR repository. The 529 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, build.patch...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a `.SRCINFO` metadata file only — it contains purely declarative key-value pairs (pkgbase, pkgver, depends, sources, checksums) with no executable code, so it cannot perform any network requests, file system modifications, or command execution on its own.

The source tarball is fetched from the project's own upstream GitHub repository (`vrc-get/vrc-get`) pinned to a specific release tag (`gui-v1.1.8`), and both the tarball and the local `build.patch` have pinned SHA256 checksums. Nothing here indicates obfuscation, data exfiltration, or download-and-execute behavior. The `build.patch` content is not visible in this file and therefore cannot be assessed, but the `.SRCINFO` itself is consistent with normal, safe AUR packaging practice.
</details>
<evidence>
</evidence>
<summary>
Declarative AUR metadata only; pinned upstream source with checksums; no malicious behavior found.
</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, build.patch...
+ Reviewed .SRCINFO. Status: SAFE -- Declarative AUR metadata only; pinned upstream source with checksums; no malicious behavior found.
LLM auditresponse for build.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
The patch makes two straightforward modifications:
1. Adds the environment variable `__NV_DISABLE_EXPLICIT_SYNC=1` to the desktop file's `Exec` line. This is a known NVIDIA driver workaround for explicit sync issues; it adjusts application launch behaviour and is not malicious.
2. Removes the built-in update-check dialog from the providers component. This is a standard packaging practice: AUR packages are managed by pacman, so suppressing the application&#39;s own update prompt avoids confusion and double-updating. No new code, network requests, or suspicious operations are introduced.

Neither change exhibits any signs of a supply-chain attack: no obfuscation, no downloaded executables, no exfiltration, and no deviation from expected packaging workflow.
</details>
<evidence></evidence>
<summary>Patch tweaks NVIDIA env var and suppresses app update dialog; no malice.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed build.patch. Status: SAFE -- Patch tweaks NVIDIA env var and suppresses app update dialog; no malice.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard packaging recipe for the ALCOM application (a VRChat Creator Companion alternative). It downloads a pinned version of the source code from the official GitHub repository via a tar.gz archive with a verified checksum, applies a build patch (also checksummed), and builds the application using Rust/Cargo and Node/npm dependencies. All file operations are confined to the build directory and the package destination (`$pkgdir`). There are no occurrences of obfuscated code, unusual network requests, data exfiltration, or execution of untrusted content. The build and packaging commands are typical for a Tauri-based Rust GUI application and are consistent with the project's stated purpose. No evidence of malicious or supply-chain attack behavior was found.
</details>
<evidence>
</evidence>
<summary>Standard PKGBUILD with no malicious content.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 11,193
  Completion Tokens: 2,783
  Total Tokens: 13,976
  Total Cost: $0.001351
  Execution Time: 218.07 seconds

Final Status: SAFE


No issues found.
