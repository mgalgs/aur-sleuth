---
package: stably-orca-bin
pkgver: 1.4.215
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 13698
completion_tokens: 2811
total_tokens: 16509
cost: 0.00090881280
execution_time: 54.06
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-27T07:04:58Z
file_verdicts:
  - file: stably-orca.desktop
    status: safe
    summary: Standard desktop launcher file; no malicious or suspicious behavior detected.
  - file: PKGBUILD
    status: safe
    summary: Standard AppImage packaging with pinned checksums.
  - file: .SRCINFO
    status: safe
    summary: Standard package metadata with pinned checksums; no malicious or suspicious behavior found.
  - file: stably-orca.sh
    status: safe
    summary: Benign wrapper setting APPDIR and execing packaged AppRun; no malicious behavior.
---

Materializing stably-orca-bin from local mirror...
Materialized stably-orca-bin
Analyzing stably-orca-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>The top-level scope of this PKGBUILD contains only variable assignments, array definitions, and function definitions (`prepare()` and `package()`). There is no command substitution, backtick execution, `eval`, or any other code that would execute when the file is sourced by `makepkg --printsrcinfo`. The `source` array and `sha256sums` are plain string literals; no download or verification occurs at parse time. The functions are not invoked during the `--printsrcinfo` step, so no potentially dangerous operations (such as extracting an AppImage or modifying the filesystem) can run here. Therefore, parsing this PKGBUILD is safe.</details>
<evidence>
</evidence>
<summary>No top-level code execution; safe to source.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level code execution; safe to source.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, stably-orca.desktop...
[0/4] Reviewing .SRCINFO, stably-orca.desktop, PKGBUILD...
LLM auditresponse for stably-orca.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard desktop entry file that defines a launcher for the "Orca" IDE application. The `Exec=stably-orca %U` line simply runs the package's own binary, passing any file arguments supplied by the user. There is no evidence of malicious behavior: no network requests, no obfuscation, no file operations outside the application's scope, and no altered execution path. This is ordinary packaging content.

The file contains no red flags and follows standard desktop entry conventions. No concern about supply-chain injection is present.
</details>
<evidence>
</evidence>
<summary>
Standard desktop launcher file; no malicious or suspicious behavior detected.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, stably-orca.desktop, PKGBUILD, stably-orca.sh...
[1/4] Reviewing .SRCINFO, PKGBUILD, stably-orca.sh...
+ Reviewed stably-orca.desktop. Status: SAFE -- Standard desktop launcher file; no malicious or suspicious behavior detected.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a prebuilt Electron application (AppImage). It downloads the binary from the official GitHub releases URL with a pinned SHA-256 checksum, extracts the AppImage using its built-in `--appimage-extract` flag, and installs the extracted directory structure into `/opt` along with a launcher script and desktop file. There is no obfuscated code, no unexpected network requests, no execution of unsigned or mutable fetch content at build time beyond the pinned source, and no exfiltration or backdoor mechanisms. All operations are consistent with securely packaging an upstream AppImage for Arch Linux.
</details>
<evidence></evidence>
<summary>Standard AppImage packaging with pinned checksums.</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, stably-orca.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AppImage packaging with pinned checksums.
LLM auditresponse for .SRCINFO:
 <security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR `.SRCINFO` metadata file. It declares a single package `stably-orca-bin` for Stably AI Orca, an Electron-based IDE distributed as a prebuilt AppImage. The source is a pinned versioned GitHub release from the project's own repository (`https://github.com/stablyai/orca/releases/download/v1.4.215/orca-linux.AppImage`), plus a launcher shell script and a `.desktop` file.

All three source entries have explicit `sha256sums` values, so the artifacts are checksum-pinned rather than `SKIP`. There are no network requests beyond the declared source URLs, no `prepare()` or `build()` functions in this file, no obfuscation, and no suspicious commands. The `noextract`, `options = !strip`, and `options = !debug` settings are ordinary for AppImage-based packaging. Nothing in this metadata indicates exfiltration, backdoors, download-and-execute behavior, or tampering with system files.
</details>
<evidence></evidence>
<summary>Standard package metadata with pinned checksums; no malicious or suspicious behavior found.</summary>
</security_assessment>

[3/4] Reviewing stably-orca.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard package metadata with pinned checksums; no malicious or suspicious behavior found.
LLM auditresponse for stably-orca.sh:
 <security_assessment>
<decision>SAFE</decision>
<details>
This is a straightforward launcher wrapper for the stably-orca package. It sets `APPDIR` to `/opt/stably-orca` and then `exec`s that directory's `AppRun` binary with any user-supplied arguments forwarded via `"$@"`. This is normal AppImage-style packaging behavior and does not involve any network access, downloading, obfuscation, or modification of system files.

The comments explain the environment variables and flags used to work around graphical rendering issues, which is consistent with the package's stated purpose. No data exfiltration, credential access, backdoor, or unexpected command execution is present. The script only launches the application that the package is intended to install.
</details>
<evidence>
</evidence>
<summary>
Benign wrapper setting APPDIR and execing packaged AppRun; no malicious behavior.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed stably-orca.sh. Status: SAFE -- Benign wrapper setting APPDIR and execing packaged AppRun; no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,698
  Completion Tokens: 2,811
  Total Tokens: 16,509
  Total Cost: $0.000909
  Execution Time: 54.06 seconds

Final Status: SAFE


No issues found.
