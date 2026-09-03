---
package: stably-orca-bin
pkgver: 1.4.195
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: b9e20f728bbe0de1871ebaca31738c802edc31f8
prompt_tokens: 13635
completion_tokens: 1872
total_tokens: 15507
cost: 0.001539883674
execution_time: 185.75
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: ok
upstream_files: 3
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-02T11:08:46Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; no malicious elements.
  - file: stably-orca.sh
    status: safe
    summary: Simple wrapper script, no security concerns.
  - file: stably-orca.desktop
    status: safe
    summary: Standard desktop entry file, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR package; no malicious content.
---

Cloning https://aur.archlinux.org/stably-orca-bin.git...
Cloned stably-orca-bin
Analyzing stably-orca-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only variable assignments and array definitions in its global scope. There is no `pkgver()` function, no command substitutions, no `eval`, no `curl|bash`, or any other code that could execute during the `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo` commands. The `source` array downloads an AppImage from the official GitHub releases over HTTPS with pinned checksums. The `prepare()`, `build()`, and `package()` functions are out of scope for these commands because `--nobuild` and `--noprepare` prevent their execution. No dangerous or obfuscated code is present in the top-level scope.
</details>
<evidence></evidence>
<summary>No malicious code executes during source fetch or PKGBUILD parsing.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code executes during source fetch or PKGBUILD parsing.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Reviewing the 4 file(s) in the AUR repository. The 3 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, stably-orca.desktop...
[0/4] Reviewing .SRCINFO, stably-orca.desktop, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a standard AUR metadata file for the stably-orca-bin package. It defines package name, version, dependencies, and sources. All source URLs point to the project's official GitHub releases, and each source has a pinned SHA256 checksum (no `SKIP`). No dangerous commands, obfuscated code, or unexpected operations are present. The file simply declares packaging metadata and is consistent with routine AUR practices.
</details>
<evidence></evidence>
<summary>Standard AUR metadata; no malicious elements.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, stably-orca.desktop, PKGBUILD, stably-orca.sh...
[1/4] Reviewing stably-orca.desktop, PKGBUILD, stably-orca.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; no malicious elements.
LLM auditresponse for stably-orca.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard wrapper script for the Stably AI Orca application. It sets the `APPDIR` environment variable to `/opt/stably-orca` and launches the application's `AppRun` binary with a `--disable-features=Vulkan` flag for compatibility reasons. There is no evidence of malicious activity: no network requests, no obfuscated code, no dangerous commands (eval, base64, curl, wget), and no unexpected file operations. The script only performs a straightforward execution of the packaged application.
</details>
<evidence></evidence>
<summary>Simple wrapper script, no security concerns.</summary>
</security_assessment>

[2/4] Reviewing stably-orca.desktop, PKGBUILD...
+ Reviewed stably-orca.sh. Status: SAFE -- Simple wrapper script, no security concerns.
LLM auditresponse for stably-orca.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Freedesktop `.desktop` file that provides metadata and launch configuration for the Orca IDE. The `Exec` line runs the application binary `stably-orca` with URL arguments (`%U`), which is normal and expected for an application that can handle URI schemes. There are no network requests, obfuscated code, file operations, or other behaviors that deviate from standard desktop entry files. No security issues are present.
</details>
<evidence>
</evidence>
<summary>Standard desktop entry file, no security issues.</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed stably-orca.desktop. Status: SAFE -- Standard desktop entry file, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a prebuilt AppImage-based application. The source is fetched from the official GitHub releases page of the upstream project (stablyai/orca) with a pinned version and a valid SHA256 checksum on the AppImage. The helper files (shell script and desktop entry) also have checksums. The `prepare()` function extracts the AppImage using its own `--appimage-extract` flag, which is the standard way to unpack an AppImage for static installation. The `package()` function installs the extracted files into `/opt/stably-orca` and sets appropriate permissions. There is no obfuscated code, no execution of untrusted remote code at build time, no exfiltration of data, and no modification of system files outside the package's installation scope. The icon-finding loop is merely a defensive heuristic for upstream icon layout changes. Everything in this file is consistent with legitimate packaging and shows no signs of a supply-chain attack.
</details>
<evidence></evidence>
<summary>Standard AUR package; no malicious content.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR package; no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,635
  Completion Tokens: 1,872
  Total Tokens: 15,507
  Total Cost: $0.001540
  Execution Time: 185.75 seconds

Final Status: SAFE


No issues found.
