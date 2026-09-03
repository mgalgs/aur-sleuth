---
package: stably-orca-bin
pkgver: 1.4.195
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: b9e20f728bbe0de1871ebaca31738c802edc31f8
prompt_tokens: 13714
completion_tokens: 2344
total_tokens: 16058
cost: 0.001630527612
execution_time: 85.07
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: ok
upstream_files: 3
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-02T07:07:48Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Metadata only, no malicious content.
  - file: stably-orca.desktop
    status: safe
    summary: Standard .desktop file, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD, no malicious code found.
  - file: stably-orca.sh
    status: safe
    summary: Benign Electron app wrapper; sets APPDIR and execs AppRun with a flag.
---

Cloning https://aur.archlinux.org/stably-orca-bin.git...
Cloned stably-orca-bin
Analyzing stably-orca-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global scope consists only of variable assignments, array definitions, and function declarations. No command substitutions, backtick execution, or dangerous top-level code runs when the file is sourced by `makepkg`. The `source()` array contains three entries: an AppImage from the project's own GitHub releases page (with a valid checksum), plus two local helper files (`stably-orca.sh` and `stably-orca.desktop`). These are standard sources that will be downloaded and verified by sha256sums during the fetch step. There is no `pkgver()` function, so no code runs during version determination beyond reading the static `pkgver` variable. The `prepare()`, `build()`, and `package()` functions are defined but not executed with the `--nobuild --nodeps --noprepare` flags, so any actions they contain (extracting the AppImage or installing files) are out of scope for this gate. No obfuscation, network exfiltration, or untrusted payload execution exists in the top-level code. The fetch and source steps are safe.
</details>
<evidence></evidence>
<summary>No dangerous top-level code; safe to fetch sources.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code; safe to fetch sources.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Reviewing the 4 file(s) in the AUR repository. The 3 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, PKGBUILD...
[0/4] Reviewing .SRCINFO, PKGBUILD, stably-orca.desktop...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a metadata descriptor for the AUR package. It defines the package name, version, dependencies, and three source files. All sources are from the project&#39;s own GitHub releases and are accompanied by SHA-256 checksums. There are no executable commands, network fetches, or any other dynamic content. The file is purely declarative and follows standard AUR packaging practices.
</details>
<evidence></evidence>
<summary>Metadata only, no malicious content.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, PKGBUILD, stably-orca.desktop, stably-orca.sh...
[1/4] Reviewing PKGBUILD, stably-orca.desktop, stably-orca.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Metadata only, no malicious content.
LLM auditresponse for stably-orca.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Linux desktop entry file (`.desktop`) for the Orca IDE by Stably AI. It defines basic metadata: name, comment, icon, categories, and the executable to launch. The `Exec` line runs `stably-orca %U`, which is typical for an Electron-based application. There are no embedded commands, network requests, obfuscation, or other suspicious content. The file conforms to the freedesktop.org Desktop Entry Specification and contains no security risks.
</details>
<evidence></evidence>
<summary>Standard .desktop file, no security issues.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, stably-orca.sh...
+ Reviewed stably-orca.desktop. Status: SAFE -- Standard .desktop file, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a prebuilt binary (AppImage) package. The source is downloaded from the official upstream GitHub releases page with a pinned version and a valid SHA-256 checksum (not SKIP). The `prepare()` function extracts the AppImage, and `package()` installs the extracted files into `/opt/stably-orca` and copies the launcher script and desktop file. There are no network requests beyond the declared source, no obfuscated code, no eval, no base64, and no unexpected file operations. The icon installation logic is a bit verbose but not malicious. All operations are confined to the package's own install paths and are consistent with the application's stated purpose as an Electron-based IDE. No evidence of exfiltration, backdoors, or code injection was found.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD, no malicious code found.</summary>
</security_assessment>

[3/4] Reviewing stably-orca.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD, no malicious code found.
LLM auditresponse for stably-orca.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard wrapper script for an Electron-based application. It exports `APPDIR=/opt/stably-orca` (the package's own install directory) to work around an upstream AppRun autodetection quirk, then `exec`s the packaged `AppRun` binary with a Chromium feature flag (`--disable-features=Vulkan`) and forwards the user's arguments. There are no network requests, no downloads, no encoded/obfuscated content, no writes outside the application directory, no credential access, and no eval/dangerous command substitutions. The behavior is entirely consistent with ordinary packaging of a prebuilt Electron app.

Note: the `&quot;` and `&apos;` sequences in the presented content are HTML-escaped quotes from the transcript display, not obfuscation — in the actual script these are ordinary `"` and `'` characters. Even interpreted literally, they are harmless. No malicious behavior is present.
</details>
<evidence>
</evidence>
<summary>Benign Electron app wrapper; sets APPDIR and execs AppRun with a flag.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed stably-orca.sh. Status: SAFE -- Benign Electron app wrapper; sets APPDIR and execs AppRun with a flag.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,714
  Completion Tokens: 2,344
  Total Tokens: 16,058
  Total Cost: $0.001631
  Execution Time: 85.07 seconds

Final Status: SAFE


No issues found.
