---
package: undertalemodtool-avalonia-bin
pkgver: 2026.08.28
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 14518
completion_tokens: 2308
total_tokens: 16826
cost: 0.00157511088
execution_time: 51.49
files_reviewed: 5
files_skipped: 1
maintainer_files: 6
source_fetch: failed
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 1
date: 2026-08-29T19:45:22Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard binary package; no malicious indicators.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore for AUR packaging.
  - file: icon.png
    status: skipped
    summary: "Skipping binary file: icon.png"
  - file: gamemaker-data.xml
    status: safe
    summary: Static MIME type definition, no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no malicious content.
  - file: undertalemodtool-avalonia.desktop
    status: safe
    summary: Standard desktop entry file, no security issues.
---

Cloning https://aur.archlinux.org/undertalemodtool-avalonia-bin.git...
Cloned undertalemodtool-avalonia-bin
Analyzing undertalemodtool-avalonia-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's top-level scope only assigns variables and defines arrays. The only command substitution is `$(date +&quot;%Y.%m.%d&quot;)` used for a dynamic version – a standard practice for VCS-like or daily-build packages. The `pkgver()` function runs `date +&quot;%Y.%m.%d&quot;`, which is equally benign. No obfuscated code, no network requests to unexpected hosts, no execution of downloaded content. The source array fetches a prebuilt binary and auxiliary files from the upstream GitHub Actions nightly.link (consistent with the package's purpose). The SKIP checksum on the zip is permitted and does not trigger execution; `--nobuild` and `--noprepare` ensure no extraction or execution of the binary occurs at this stage. All other code resides inside `prepare()`, `build()` (absent), and `package()`, which are not executed by the two commands in question. There is no risk of malicious code running during source fetching or PKGBUILD sourcing.
</details>
<evidence></evidence>
<summary>No malicious code in global scope or pkgver().</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code in global scope or pkgver().
Downloading sources (attempt 1/3)...
Retrying in 2s...
Downloading sources (attempt 2/3)...
Retrying in 4s...
Downloading sources (attempt 3/3)...
makepkg --nobuild could not fetch all upstream sources; continuing with the AUR repository files, which are the complete maintainer-controlled audit boundary. Downloaded-source facts are unavailable.

makepkg --nobuild could not fetch all upstream sources; continuing with the AUR repository files, which are the complete maintainer-controlled audit boundary. Downloaded-source facts are unavailable.
Note: 1 remote source(s) have no checksum (sha256sums=SKIP), so the fetched bytes are not verifiable and can change without any AUR update: undertalemodtool-avalonia-2026.08.29.zip::https://nightly.link/luizzeroxis/UndertaleModTool/workflows/publish_gui_avalonia/avalonia/GUI-ubuntu-latest-Release-isBundled-true-isSingleFile-false.zip
Reviewing the 6 file(s) in the AUR repository. No downloaded files are included in the review.
Reviewing the AUR repository's files...
[0/6] Reviewing .SRCINFO...
[0/6] Reviewing .SRCINFO, .gitignore...
[0/6] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard practices for an AUR binary package. It downloads a prebuilt artifact from the official GitHub Actions nightly link, extracts it, and installs the program files along with a desktop file, icon, and MIME type definition. All network destinations are directly related to the upstream project. The only checksum set to SKIP is for the zip file, which is an accepted practice for binary packages sourced from nightly builds. No obfuscated code, unexpected file operations, or system modifications outside the package&#x27;s own installation directories are present.
</details>
<evidence></evidence>
<summary>Standard binary package; no malicious indicators.</summary>
</security_assessment>

[0/6] Reviewing .SRCINFO, .gitignore, PKGBUILD, gamemaker-data.xml...
[1/6] Reviewing .SRCINFO, .gitignore, gamemaker-data.xml...
+ Reviewed PKGBUILD. Status: SAFE -- Standard binary package; no malicious indicators.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file for an AUR package. It ignores the `pkg/` and `src/` directories created by `makepkg`, as well as any built package tarballs (`*.pkg.tar.*`) and zip files. There are no commands, network requests, or any executable content. It is purely a list of file patterns used by git to exclude build artifacts from version control. No security concerns.
</details>
<evidence>
</evidence>
<summary>Standard .gitignore for AUR packaging.</summary>
</security_assessment>

[1/6] Reviewing .SRCINFO, .gitignore, gamemaker-data.xml, icon.png...
[2/6] Reviewing .SRCINFO, gamemaker-data.xml, icon.png...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore for AUR packaging.
[3/6] Reviewing .SRCINFO, gamemaker-data.xml...
! Reviewed icon.png. Status: SKIPPED -- Skipping binary file: icon.png
[3/6] Reviewing .SRCINFO, gamemaker-data.xml, undertalemodtool-avalonia.desktop...
LLM auditresponse for gamemaker-data.xml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard freedesktop.org shared MIME info XML definition. It declares a custom MIME type (`application/gamemaker-data`) for GameMaker asset files, associates glob patterns (`data.win`, `game.unx`), and references an icon theme name. There is no executable content, no network or file operations, no obfuscation, and nothing that deviates from normal packaging of MIME-type registrations.
</details>
<evidence></evidence>
<summary>Static MIME type definition, no security concerns.</summary>
</security_assessment>

[4/6] Reviewing .SRCINFO, undertalemodtool-avalonia.desktop...
+ Reviewed gamemaker-data.xml. Status: SAFE -- Static MIME type definition, no security concerns.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a metadata-only file describing the package. It defines the package source as a prebuilt binary ZIP from the project's own GitHub Actions workflow, using the `nightly.link` service (a standard redirect for GitHub artifacts). Checksums are present for the ancillary files (`.desktop`, `.xml`, `.png`), and the binary source is set to `SKIP`, which is acceptable under normal AUR practices for prebuilt or VCS packages. There is no obfuscated code, no execution of downloaded content, no suspicious network destinations, and no instructions that deviate from expected packaging metadata. No malicious behavior is present.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata file, no malicious content.</summary>
</security_assessment>

[5/6] Reviewing undertalemodtool-avalonia.desktop...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no malicious content.
LLM auditresponse for undertalemodtool-avalonia.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.desktop` file conforming to the freedesktop.org specification. It defines a desktop entry for the UndertaleModTool Avalonia application, specifying the executable to run (`undertalemodtool-avalonia`), categories, icon, and MIME type. There are no embedded commands, network requests, obfuscation, or any other suspicious content. The file is purely declarative and poses no security risk.
</details>
<evidence></evidence>
<summary>Standard desktop entry file, no security issues.</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed undertalemodtool-avalonia.desktop. Status: SAFE -- Standard desktop entry file, no security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
(Skipped 1 file: icon.png)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 14,518
  Completion Tokens: 2,308
  Total Tokens: 16,826
  Total Cost: $0.001575
  Execution Time: 51.49 seconds

Final Status: SAFE


No issues found.


Audit Skips:

icon.png: [SKIPPED] Skipping binary file: icon.png
