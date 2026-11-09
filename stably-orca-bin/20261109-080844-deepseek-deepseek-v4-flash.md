---
package: stably-orca-bin
pkgver: 1.4.254
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 13452
completion_tokens: 2114
total_tokens: 15566
cost: 0.001608880
execution_time: 20.06
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-09T08:08:44Z
file_verdicts:
  - file: stably-orca.desktop
    status: safe
    summary: Standard .desktop file, no malicious content.
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO; no malicious code.
  - file: PKGBUILD
    status: safe
    summary: Standard -bin PKGBUILD with pinned checksums; no malicious code.
  - file: stably-orca.sh
    status: safe
    summary: Standard launcher wrapper, no suspicious content.
---

Materializing stably-orca-bin from local mirror...
Materialized stably-orca-bin
Analyzing stably-orca-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only variable definitions at global scope, all of which are standard for an AUR package (source URLs, checksums, dependencies). No commands such as `eval`, `curl`, `wget`, `base64`, or other potentially dangerous operations appear outside of function bodies. The `prepare()` and `package()` functions are not executed during `makepkg --printsrcinfo`, so any code within them is out of scope for this gate. There is no risk of executing malicious code when sourcing this file for metadata generation.
</details>
<evidence></evidence>
<summary>No dangerous global code execution.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous global code execution.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, PKGBUILD...
[0/4] Reviewing .SRCINFO, PKGBUILD, stably-orca.desktop...
LLM auditresponse for stably-orca.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard desktop entry file for the Stably Orca application. It contains only metadata fields (Name, GenericName, Comment, Exec, Icon, Categories, etc.) and a simple Exec line that launches the application with `stably-orca %U`. There are no embedded scripts, network requests, obfuscated code, or unusual operations. The file follows standard freedesktop.org desktop entry specification practices and poses no security risk.
</details>
<evidence></evidence>
<summary>Standard .desktop file, no malicious content.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, PKGBUILD, stably-orca.desktop, stably-orca.sh...
[1/4] Reviewing .SRCINFO, PKGBUILD, stably-orca.sh...
+ Reviewed stably-orca.desktop. Status: SAFE -- Standard .desktop file, no malicious content.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.SRCINFO` metadata file for the `stably-orca-bin` AUR package. It contains only declarative fields (pkgver, dependencies, source URLs, checksums) and no executable code. The sources are fetched over HTTPS from the official project GitHub releases and include valid SHA-256 checksums. No suspicious URLs, obfuscation, or commands are present. The file adheres to normal AUR packaging practices for a prebuilt binary.
</details>
<evidence></evidence>
<summary>Standard .SRCINFO; no malicious code.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, stably-orca.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO; no malicious code.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD for `stably-orca-bin` downloads a prebuilt AppImage from the official GitHub releases page of the upstream project. All source URLs point to the project's own GitHub repository, and each source is pinned with a SHA-256 checksum, ensuring integrity at build time. The build process (prepare) extracts the AppImage using `--appimage-extract`, and the package function installs the extracted files, a wrapper script, and a desktop entry. No commands (`curl`, `bash`, `eval`, `wget`, base64 decoding, etc.) are used outside of standard Arch packaging operations (`install`, `cp`, `chmod`). There is no obfuscated code, no unexpected network requests, and no attempt to exfiltrate data or modify system files outside the package scope. The icon-detection loop, while complex, is a straightforward file-glob operation and does not introduce any injection or execution of untrusted input. The file adheres to standard AUR packaging practices for prebuilt binary packages and shows no evidence of injected malicious code.
</details>
<evidence></evidence>
<summary>Standard -bin PKGBUILD with pinned checksums; no malicious code.</summary>
</security_assessment>

[3/4] Reviewing stably-orca.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard -bin PKGBUILD with pinned checksums; no malicious code.
LLM auditresponse for stably-orca.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a wrapper script for the Stably AI Orca application. It sets the `APPDIR` environment variable to `/opt/stably-orca` and launches `AppRun` with `--disable-features=Vulkan`. There are no network requests, obfuscated code, dangerous commands (`curl`, `wget`, `eval`, `base64`), or file operations outside the application's scope. The comments explain the purpose of the environment variable and the Vulkan workaround. Behavior is consistent with standard packaging for a pre-installed AppImage tree. No evidence of supply-chain attack or malicious intent.
</details>
<evidence>
</evidence>
<summary>Standard launcher wrapper, no suspicious content.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed stably-orca.sh. Status: SAFE -- Standard launcher wrapper, no suspicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,452
  Completion Tokens: 2,114
  Total Tokens: 15,566
  Total Cost: $0.001609
  Execution Time: 20.06 seconds

Final Status: SAFE


No issues found.
