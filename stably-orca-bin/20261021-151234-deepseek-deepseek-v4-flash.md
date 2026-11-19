---
package: stably-orca-bin
pkgver: 1.4.237
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 13539
completion_tokens: 1712
total_tokens: 15251
cost: 0.001543633
execution_time: 19.07
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-21T15:12:33Z
file_verdicts:
  - file: stably-orca.desktop
    status: safe
    summary: Standard .desktop file; no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard metadata file, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR package, no security issues found.
  - file: stably-orca.sh
    status: safe
    summary: Clean wrapper, no malicious behavior.
---

Materializing stably-orca-bin from local mirror...
Materialized stably-orca-bin
Analyzing stably-orca-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` only sources the top-level scope of this PKGBUILD. The top-level content consists solely of static variable definitions (`pkgname`, `pkgver`, `source`, `sha256sums`, etc.) and function definitions. There are no top-level command substitutions, no `eval`/`curl`/`wget`/`base64`, no network operations, and no dangerous assignments that execute at source time.

The `prepare()` and `package()` functions contain AppImage extraction/installing logic, but those functions are not invoked by `makepkg --printsrcinfo`, so they are out of scope for this narrow gate. The checksums are present (not SKIP), and even if they were missing or skipped, that would not be grounds to fail this gate because no sources are downloaded during `--printsrcinfo`.
</details>
<evidence>
</evidence>
<summary>
Top-level PKGBUILD is static; no code executes during printsrcinfo. SAFE.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD is static; no code executes during printsrcinfo. SAFE.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing PKGBUILD...
[0/4] Reviewing PKGBUILD, .SRCINFO...
[0/4] Reviewing PKGBUILD, .SRCINFO, stably-orca.desktop...
LLM auditresponse for stably-orca.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.desktop` file for a Linux application. It contains only desktop entry fields (Name, GenericName, Comment, Exec, Terminal, Type, Icon, Categories, StartupWMClass). There are no executable commands, network requests, obfuscated content, or other malicious elements. The `Exec` line launches the `stably-orca` binary with URL handling (`%U`), which is typical for desktop applications.
</details>
<evidence></evidence>
<summary>Standard .desktop file; no security issues.</summary>
</security_assessment>

[0/4] Reviewing PKGBUILD, .SRCINFO, stably-orca.desktop, stably-orca.sh...
[1/4] Reviewing PKGBUILD, .SRCINFO, stably-orca.sh...
+ Reviewed stably-orca.desktop. Status: SAFE -- Standard .desktop file; no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a package metadata file used by Arch Linux and AUR. It contains only declarative fields such as package name, version, dependencies, source URLs and checksums. There is no executable code, no obfuscated content, and no network requests or system modifications. All sources point to the official GitHub repository for the Stably AI Orca project and have specified SHA256 checksums, which is standard and expected for a binary AUR package. No evidence of malicious or unusually dangerous behavior is present.
</details>
<evidence></evidence>
<summary>Standard metadata file, no security issues.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, stably-orca.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata file, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard AUR package for a prebuilt Electron-based IDE. It downloads an AppImage from the project&#39;s own GitHub releases URL, verifies it with a pinned SHA256 checksum, extracts it, and installs the files into the package directory. All operations are routine for packaging an AppImage: extraction, file copying, permission fixes, icon installation, and desktop entry creation. There are no suspicious network requests (besides the declared source), no obfuscated code, no execution of untrusted content outside the expected extraction, and no exfiltration or system modification outside the package&#39;s own installation paths. The use of `--appimage-extract` and subsequent file manipulation is entirely normal and expected for this type of package. No security issues are present.
</details>
<evidence></evidence>
<summary>Standard AUR package, no security issues found.</summary>
</security_assessment>

[3/4] Reviewing stably-orca.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR package, no security issues found.
LLM auditresponse for stably-orca.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `stably-orca.sh` is a simple wrapper script that sets the `APPDIR` environment variable to `/opt/stably-orca` and launches the application's `AppRun` with `--disable-features=Vulkan` and any user-supplied arguments. There are no network requests, obfuscated code, dangerous commands (curl, wget, eval, base64 decoding), or any operations outside the expected scope of launching the packaged application. The comments explain the reasons for these settings (correcting APPDIR detection and Vulkan compatibility). This is standard packaging practice for AppImage-based packages distributed in an AUR binary package.
</details>
<evidence></evidence>
<summary>Clean wrapper, no malicious behavior.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed stably-orca.sh. Status: SAFE -- Clean wrapper, no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,539
  Completion Tokens: 1,712
  Total Tokens: 15,251
  Total Cost: $0.001544
  Execution Time: 19.07 seconds

Final Status: SAFE


No issues found.
