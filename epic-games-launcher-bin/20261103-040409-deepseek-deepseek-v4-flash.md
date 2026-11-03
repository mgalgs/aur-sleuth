---
package: epic-games-launcher-bin
pkgver: 0.109.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 9231
completion_tokens: 1192
total_tokens: 10423
cost: 0.001056965
execution_time: 16.15
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-03T04:04:07Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Pinned checksum, official Epic CDN source, standard metadata — no malice found.
  - file: PKGBUILD
    status: safe
    summary: Standard AppImage PKGBUILD, official Epic CDN, pinned checksum, no malicious behavior.
---

Materializing epic-games-launcher-bin from local mirror...
Materialized epic-games-launcher-bin
Analyzing epic-games-launcher-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD top-level scope only defines package metadata, dependency arrays, source URL, `noextract`, and a pinned SHA-256 checksum. There are no top-level command substitutions, network fetches, decoding operations, or execution of downloaded content during `makepkg --printsrcinfo`.

The `prepare()` and `package()` functions contain extraction and installation logic, but these functions are not executed by `makepkg --printsrcinfo` and are therefore out of scope for this specific gate.
</details>
<evidence></evidence>
<summary>No top-level malicious execution; parsing is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level malicious execution; parsing is safe.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` is a plain metadata file generated from the PKGBUILD. It contains no executable logic, no network calls beyond the declared source fetch, and no obfuscation.

The single source points to `https://content-download-egs.distro.on.epicgames.com/...` — Epic Games' own distribution CDN, which matches the package's stated purpose (the official Epic Games Launcher). The download is pinned with a concrete `sha256sums` value (`20b5a1...9285ec`), not `SKIP`, so the fetched AppImage is integrity-checked against a fixed digest. `noextract` is used appropriately so the AppImage is not unpacked, and `options = !strip !debug` are standard for prebuilt binaries. Dependencies (`gtk3`, `webkit2gtk-4.1`, `libsoup3`, etc.) are the ordinary runtime set for a web-based Electron-like launcher.

There is nothing here deviating from standard AUR packaging: no scriptlets, no file operations outside `$pkgdir`, no download-and-execute patterns, and no unexpected hosts. This is consistent with a benign binary-repackage PKGBUILD metadata file.
</details>
<evidence>
</evidence>
<summary>
Pinned checksum, official Epic CDN source, standard metadata — no malice found.
</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Pinned checksum, official Epic CDN source, standard metadata — no malice found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows ordinary packaging practice for a prebuilt AppImage. The single source is downloaded over HTTPS from Epic Games' own distribution CDN (`content-download-egs.distro.on.epicgames.com`), which matches the package's declared upstream, and it is pinned with a concrete `sha256sums` value rather than SKIP. `prepare()` merely deletes the local extraction directory and unpacks the AppImage with `7z`, and `package()` installs the launcher binary, shared library, desktop file, icons, and license text into `$pkgdir` — all standard operations.

The only generated content is a small POSIX shell wrapper installed via a heredoc that exports `EGL_DISABLE_SELF_UPDATE=1` and execs the real binary; there is no `eval`, no decoding of obfuscated blobs, no unexpected downloads at build time, no modification of files outside the package staging tree, and no data exfiltration. Nothing here deviates from normal AUR packaging, and there is no evidence of injected malicious behavior.
</details>
<evidence>
</evidence>
<summary>Standard AppImage PKGBUILD, official Epic CDN, pinned checksum, no malicious behavior.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AppImage PKGBUILD, official Epic CDN, pinned checksum, no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 9,231
  Completion Tokens: 1,192
  Total Tokens: 10,423
  Total Cost: $0.001057
  Execution Time: 16.15 seconds

Final Status: SAFE


No issues found.
