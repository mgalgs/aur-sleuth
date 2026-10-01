---
package: deadlywp-bin
pkgver: 0.0.7
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 8028
completion_tokens: 1751
total_tokens: 9779
cost: 0.000484260
execution_time: 46.2
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-01T11:24:35Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard binary package with pinned checksum; no signs of malicious activity.
  - file: .SRCINFO
    status: safe
    summary: Declarative .SRCINFO with pinned checksum and legitimate upstream source; no malicious behavior found.
---

Materializing deadlywp-bin from local mirror...
Materialized deadlywp-bin
Analyzing deadlywp-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains top-level variable assignments (pkgname, pkgver, source, sha256sums, etc.) and a function definition for `package()`. There are no command substitutions, backtick executions, or calls to external commands (e.g. `curl`, `wget`, `eval`, `base64`) at the global scope. Since `makepkg --printsrcinfo` only sources the global scope and does not execute functions, no malicious code can run during this step.
</details>
<evidence></evidence>
<summary>No malicious top-level code; safe to source.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious top-level code; safe to source.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a binary release. The source tarball is downloaded from the project's own GitHub releases page with a pinned SHA-256 checksum. The `package()` function only installs the pre-built binary, desktop file, icons, license, and documentation into standard locations. There are no network requests beyond the declared source, no obfuscated commands, no execution of fetched code in `prepare()` or `build()`, and no unexpected system modifications. The file contains no evidence of supply-chain compromise.
</details>
<evidence></evidence>
<summary>Standard binary package with pinned checksum; no signs of malicious activity.</summary>
</security_assessment>

[1/2] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard binary package with pinned checksum; no signs of malicious activity.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file describes a standard AUR binary package. The source tarball is fetched over HTTPS from the project's own GitHub releases page (github.com/nickheyer/deadlywallpaper), which matches the declared `url` field — this is the expected upstream relationship for a legitimate `-bin` package. The `sha256sums` value is a pinned hash (`576dc94f...`), not `SKIP`, so the downloaded binary is checksum-verified at build time, and the source URL is not mutable or unversioned.

The dependency list (gtk3, webkit2gtk-4.1, mpv, libpulse, etc.) is consistent with a GTK/webkit-based wallpaper application that plays video and web content. The `optdepends` entries (Steam Workshop support, KDE Plasma wallpaper plugin, tray icon libraries) are also consistent with the stated feature set of Wallpaper Engine / Lively compatibility. No suspicious commands, obfuscated data, unexpected file operations, or network destinations outside the project's own release URL appear in this file.

This is a declarative packaging metadata file with no executable logic of its own. There is no evidence of injected malicious code, exfiltration, backdoors, or unexpected system modifications. The only minor hygiene note is that this is a prebuilt-binary package, so the contents of the tarball are opaque without a separate source inspection — but the pinned checksum and legitimate origin make this a normal and acceptable `-bin` packaging pattern.
</details>
<evidence></evidence>
<summary>Declarative .SRCINFO with pinned checksum and legitimate upstream source; no malicious behavior found.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Declarative .SRCINFO with pinned checksum and legitimate upstream source; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 8,028
  Completion Tokens: 1,751
  Total Tokens: 9,779
  Total Cost: $0.000484
  Execution Time: 46.20 seconds

Final Status: SAFE


No issues found.
