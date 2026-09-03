---
package: stably-orca-bin
pkgver: 1.4.193
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 13647
completion_tokens: 1973
total_tokens: 15620
cost: 0.00150490522
execution_time: 149.4
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: ok
upstream_files: 3
upstream_named_files: 0
unpinned_sources: 0
date: 2026-08-31T15:27:38Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with no malicious behavior.
  - file: .SRCINFO
    status: safe
    summary: Standard metadata with pinned checksums; no malicious indicators.
  - file: stably-orca.sh
    status: safe
    summary: Simple launcher wrapper, no malicious code.
  - file: stably-orca.desktop
    status: safe
    summary: Standard desktop entry, no malicious content.
---

Cloning https://aur.archlinux.org/stably-orca-bin.git...
Cloned stably-orca-bin
Analyzing stably-orca-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The top-level scope of this PKGBUILD contains only variable assignments and array definitions. No `pkgver()` function is present, and no commands or command substitutions execute during sourcing. The `source` array downloads a prebuilt AppImage from the official GitHub releases page over HTTPS, plus two local script/desktop files – all standard and expected. No obfuscation, no `curl|bash`, no exfiltration, no execution of downloaded content during this phase. The `prepare()`, `build()`, and `package()` functions are not run due to the `--nobuild` and `--noprepare` flags. Therefore, running `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo` is safe.
</details>
<evidence></evidence>
<summary>No dangerous top-level code or pkgver runs.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code or pkgver runs.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Reviewing the 4 file(s) in the AUR repository. The 3 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, PKGBUILD...
[0/4] Reviewing .SRCINFO, PKGBUILD, stably-orca.desktop...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard Arch packaging practices for a prebuilt AppImage. The source is downloaded from the official GitHub releases URL with a pinned version tag, and verified via a SHA256 checksum (not skipped). The AppImage is extracted in `prepare()` and its contents are installed into the package directory. No unusual network requests, obfuscated commands, data exfiltration, or unexpected system modifications are present. The use of `--appimage-extract` is normal and expected for packaging AppImage-based applications. The file is safe.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with no malicious behavior.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, PKGBUILD, stably-orca.desktop, stably-orca.sh...
[1/4] Reviewing .SRCINFO, stably-orca.desktop, stably-orca.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with no malicious behavior.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.SRCINFO` metadata file for an AUR package. It declares a prebuilt AppImage from the project's own GitHub releases (`https://github.com/stablyai/orca/releases/download/...`), along with two plain-text support files (`stably-orca.sh` and `stably-orca.desktop`). All three sources have pinned SHA256 checksums, ensuring deterministic builds. There is no obfuscated code, no unexpected network destinations, and no executable shell commands. The file conforms to normal AUR packaging conventions. No evidence of a supply-chain attack or malicious behavior is present.
</details>
<evidence></evidence>
<summary>Standard metadata with pinned checksums; no malicious indicators.</summary>
</security_assessment>

[2/4] Reviewing stably-orca.desktop, stably-orca.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata with pinned checksums; no malicious indicators.
LLM auditresponse for stably-orca.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard wrapper script that sets the `APPDIR` environment variable to `/opt/stably-orca` and then executes the AppRun binary with `--disable-features=Vulkan`. There is no obfuscation, no network requests, no file manipulation, and no dangerous command usage. The script performs only intended packaging behavior: launching the upstream application with appropriate flags. No evidence of supply-chain attack or malicious code.
</details>
<evidence></evidence>
<summary>Simple launcher wrapper, no malicious code.</summary>
</security_assessment>

[3/4] Reviewing stably-orca.desktop...
+ Reviewed stably-orca.sh. Status: SAFE -- Simple launcher wrapper, no malicious code.
LLM auditresponse for stably-orca.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.desktop` file for a desktop application launcher. It contains no executable code, no network requests, no obfuscated commands, and no unexpected operations. The `Exec` line runs the `stably-orca` binary with the `%U` placeholder for URLs/files, which is normal and expected for an application launcher. All other fields are standard metadata. There are no security concerns.
</details>
<evidence>
</evidence>
<summary>Standard desktop entry, no malicious content.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed stably-orca.desktop. Status: SAFE -- Standard desktop entry, no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,647
  Completion Tokens: 1,973
  Total Tokens: 15,620
  Total Cost: $0.001505
  Execution Time: 149.40 seconds

Final Status: SAFE


No issues found.
