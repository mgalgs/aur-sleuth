---
package: stably-orca-bin
pkgver: 1.4.194
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: b9e20f728bbe0de1871ebaca31738c802edc31f8
prompt_tokens: 13638
completion_tokens: 2056
total_tokens: 15694
cost: 0.00143633000
execution_time: 101.88
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: ok
upstream_files: 3
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-01T07:02:02Z
file_verdicts:
  - file: stably-orca.desktop
    status: safe
    summary: Standard desktop entry file, no security concerns.
  - file: stably-orca.sh
    status: safe
    summary: Standard wrapper script, no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard package metadata, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR binary package; no malicious behavior.
---

Cloning https://aur.archlinux.org/stably-orca-bin.git...
Cloned stably-orca-bin
Analyzing stably-orca-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable assignments in its top-level scope and no command substitutions, eval calls, or any code that would execute during `makepkg --nobuild --nodeps --noprepare` or `makepkg --printsrcinfo`. The `source` array points to a GitHub release asset (AppImage) and local auxiliary files; the AppImage is listed in `noextract` so it is only downloaded, not extracted. The functions `prepare()`, `build()`, and `package()` are present but are not executed by the two commands in scope. No `pkgver()` function exists. The top-level code is purely declarative, and fetching the sources via standard makepkg mechanisms is safe.
</details>
<evidence></evidence>
<summary>Safe – no executable code in global scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe – no executable code in global scope.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Reviewing the 4 file(s) in the AUR repository. The 3 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, PKGBUILD...
[0/4] Reviewing .SRCINFO, PKGBUILD, stably-orca.desktop...
LLM auditresponse for stably-orca.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.desktop` file for a Linux application. It declares the application name, generic name, comment, icon, and categories. The `Exec` line runs `stably-orca` with the `%U` argument (for URI handling). There is no embedded code, no network requests, no obfuscation, and no deviation from normal packaging practices. No security issues are present.
</details>
<evidence></evidence>
<summary>Standard desktop entry file, no security concerns.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, PKGBUILD, stably-orca.desktop, stably-orca.sh...
[1/4] Reviewing .SRCINFO, PKGBUILD, stably-orca.sh...
+ Reviewed stably-orca.desktop. Status: SAFE -- Standard desktop entry file, no security concerns.
LLM auditresponse for stably-orca.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a standard wrapper for the stably-orca-bin AUR package. It sets the `APPDIR` environment variable to `/opt/stably-orca` and then executes the packaged `AppRun` binary with `--disable-features=Vulkan` and any user-provided arguments. There are no network requests, obfuscated code, dangerous commands (eval, base64, curl, wget), or any operations that exfiltrate data or modify system files outside the package's scope. The comments explain the rationale for the explicit `APPDIR` and the Vulkan flag, which are normal upstream compatibility adjustments. No security concerns are present.
</details>
<evidence></evidence>
<summary>Standard wrapper script, no security issues.</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed stably-orca.sh. Status: SAFE -- Standard wrapper script, no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file contains standard AUR package metadata for *stably-orca-bin*. All three source files are fetched from the project&#39;s official GitHub releases and each has a pinned SHA256 checksum (none are skipped). There are no suspicious URLs, obfuscated code, or dangerous commands; the file is purely declarative. No evidence of any supply-chain attack or malicious behavior is present.
</details>
<evidence>
</evidence>
<summary>Standard package metadata, no security issues.</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard package metadata, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a prebuilt Electron-based IDE distributed via an AppImage.  
The source is a tarball downloaded from the project's own GitHub releases URL (`${url}/releases/download/v${pkgver}/orca-linux.AppImage`), and checksums are provided for all files.  
The `prepare()` function extracts the AppImage using its own `--appimage-extract` flag, which is a normal and expected operation.  
The `package()` function installs the extracted tree, a launcher shell script, and a desktop entry — all routine.  
There are no obfuscated commands, no unexpected network requests, no eval/base64 usage, and no alterations to system files beyond the application’s own installation directory.  
No evidence of supply-chain attack or injection of malicious code.
</details>
<evidence></evidence>
<summary>Standard AUR binary package; no malicious behavior.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR binary package; no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,638
  Completion Tokens: 2,056
  Total Tokens: 15,694
  Total Cost: $0.001436
  Execution Time: 101.88 seconds

Final Status: SAFE


No issues found.
