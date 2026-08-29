---
package: stably-orca-bin
pkgver: 1.4.192
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 13632
completion_tokens: 2248
total_tokens: 15880
cost: 0.00149229696
execution_time: 147.48
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: ok
upstream_files: 3
upstream_named_files: 0
unpinned_sources: 0
date: 2026-08-29T19:18:00Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no security issues detected.
  - file: stably-orca.sh
    status: safe
    summary: Safe wrapper script, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard AppImage package, no malicious behavior found.
  - file: stably-orca.desktop
    status: safe
    summary: Standard desktop entry file, no security issues.
---

Cloning https://aur.archlinux.org/stably-orca-bin.git...
Cloned stably-orca-bin
Analyzing stably-orca-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains no code that executes in global scope or `pkgver()` during sourcing. All source URLs point to the project&#39;s own GitHub releases or local files in the AUR repository. The sha256sums are provided and not skipped. No suspicious network requests, obfuscated code, or dangerous commands (eval, base64, curl|bash) exist at the top level. The `prepare()`, `build()`, and `package()` functions are not executed with the given flags. Fetching and extracting the sources is safe for this gate.
</details>
<evidence></evidence>
<summary>PKGBUILD sources standard GitHub release and local files.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- PKGBUILD sources standard GitHub release and local files.
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
The `.SRCINFO` file is a metadata descriptor for an AUR package. It contains only declarative fields (package name, version, dependencies, sources, and checksums) and no executable code. All sources point to the upstream GitHub repository of the application, and SHA256 checksums are provided for each source file. There are no suspicious URLs, obfuscated content, or any instructions that could lead to malicious behavior. The file is consistent with standard AUR packaging practices.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file, no security issues detected.</summary>
</security_assessment>

[1/4] Reviewing PKGBUILD, stably-orca.desktop...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no security issues detected.
[1/4] Reviewing PKGBUILD, stably-orca.desktop, stably-orca.sh...
LLM auditresponse for stably-orca.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a straightforward wrapper that sets the `APPDIR` environment variable to `/opt/stably-orca` and then launches the AppRun binary with the `--disable-features=Vulkan` flag. There are no network requests, no downloads, no obfuscated code, no file operations outside the application's own directory, and no attempts to modify system state or exfiltrate data. The comments explain the purpose of each variable and flag, which is to work around upstream auto-detection and GPU compatibility issues. This is standard packaging practice for distributing an extracted AppImage.
</details>
<evidence></evidence>
<summary>Safe wrapper script, no malicious content.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, stably-orca.desktop...
+ Reviewed stably-orca.sh. Status: SAFE -- Safe wrapper script, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard packaging practices for prebuilt AppImage-based applications. The source is a pinned GitHub release with a valid sha256 checksum, and the build process merely extracts the AppImage into a directory for installation. No obfuscated code, unexpected network requests, dangerous commands (eval, base64, curl, wget), or system tampering beyond the application&amp;#39;s own install prefix are present. The icon handling and permission adjustments are routine. The file shows no evidence of a supply-chain attack.
</details>
<evidence></evidence>
<summary>Standard AppImage package, no malicious behavior found.</summary>
</security_assessment>

[3/4] Reviewing stably-orca.desktop...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AppImage package, no malicious behavior found.
LLM auditresponse for stably-orca.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.desktop` entry file used to register an application in Linux desktop environments. It contains only metadata (name, comment, icon, categories) and a launch command (`Exec=stably-orca %U`). There is no executable code, no network requests, no obfuscation, and no reference to any external resources beyond the application itself. The file follows standard packaging practices and presents no security concerns.
</details>
<evidence></evidence>
<summary>Standard desktop entry file, no security issues.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed stably-orca.desktop. Status: SAFE -- Standard desktop entry file, no security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,632
  Completion Tokens: 2,248
  Total Tokens: 15,880
  Total Cost: $0.001492
  Execution Time: 147.48 seconds

Final Status: SAFE


No issues found.
