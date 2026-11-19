---
package: epic-games-launcher-bin
pkgver: 0.110.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 9227
completion_tokens: 1494
total_tokens: 10721
cost: 0.001111565
execution_time: 28.51
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-04T00:03:31Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO; official Epic source with pinned SHA-256, no malicious behavior.
  - file: PKGBUILD
    status: safe
    summary: Standard AppImage PKGBUILD; official Epic CDN, pinned checksum, no malicious behavior.
---

Materializing epic-games-launcher-bin from local mirror...
Materialized epic-games-launcher-bin
Analyzing epic-games-launcher-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's top-level scope consists only of standard metadata and source definitions: package name/version, dependencies, options, `_appimage`, `source`, `noextract`, and a pinned `sha256sums` value. There are no top-level command substitutions, `eval` calls, network fetches, data exfiltration attempts, or encoded payloads that would execute when `makepkg --printsrcinfo` sources the file.

The only executable logic is inside the `prepare()` and `package()` functions, which are not run by `makepkg --printsrcinfo`. The declared source points to Epic Games' own distribution host, and the checksum is pinned, though source trust is outside this narrow gate.
</details>
<evidence>
</evidence>
<summary>Top-level PKGBUILD parsing is safe; no malicious execution occurs.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD parsing is safe; no malicious execution occurs.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard generated `.SRCINFO` metadata file for the `epic-games-launcher-bin` package. It declares routine packaging fields: pkgbase/pkgname, pkgver 0.110.0, dependencies (gtk3, webkit2gtk-4.1, glibc, etc.), an `optdepends` for libsecret and xdg-utils, and `options = !debug !strip` (common for prebuilt AppImage packages).

The single source is an Epichames-launcher AppImage downloaded over HTTPS from `content-download-egs.distro.on.epicgames.com`, which is Epic Games' own official distribution host and matches the package's stated upstream (`launcher.epicgames.com`). Notably, the source is pinned with a full SHA-256 checksum (`53bbd124...`), not `SKIP`. There is no code execution, no eval/base64/curl|bash, no network exfiltration, and no file/system manipulation in this file. It deviates in no way from ordinary AUR metadata conventions.
</details>
<evidence>
</evidence>
<summary>Standard .SRCINFO; official Epic source with pinned SHA-256, no malicious behavior.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO; official Epic source with pinned SHA-256, no malicious behavior.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a conventional binary/AppImage packaging PKGBUILD. The single source is the official Epic Games CDN (`content-download-egs.distro.on.epicgames.com`) for the declared Epic Games Launcher AppImage, matched to `pkgver`/`_commit`, and it is integrity-pinned with a concrete `sha256sum` (not `SKIP`). `prepare()` simply extracts the AppImage with `7z` after clearing the extraction directory.

`package()` installs the upstream launcher binary, its EOSSDK shared library, third-party notices, desktop entry, and icons into `$pkgdir` — standard `install` usage. The one piece of generated content is the small wrapper written via heredoc to `/usr/bin/EpicGamesLauncher`, which merely defaults `EGL_DISABLE_SELF_UPDATE=1` and `exec`s the packaged binary; this is a legitimate, common measure to stop an AppImage from self-updating over package-managed files.

There is no obfuscation, no `eval`/base64/decoded blobs, no downloads from unexpected hosts, no exfiltration, and no writes outside `$pkgdir`. The `ln -s ..` self-referential symlink is unusual but benign (Electron path expectation). No malicious or dangerous behavior is present.
</details>
<evidence>
</evidence>
<summary>Standard AppImage PKGBUILD; official Epic CDN, pinned checksum, no malicious behavior.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AppImage PKGBUILD; official Epic CDN, pinned checksum, no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 9,227
  Completion Tokens: 1,494
  Total Tokens: 10,721
  Total Cost: $0.001112
  Execution Time: 28.51 seconds

Final Status: SAFE


No issues found.
