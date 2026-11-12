---
package: stably-orca-bin
pkgver: 1.4.257
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 13601
completion_tokens: 2585
total_tokens: 16186
cost: 0.00168939
execution_time: 19.08
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-12T16:11:48Z
file_verdicts:
  - file: stably-orca.desktop
    status: safe
    summary: Standard desktop entry file, no security issues.
  - file: stably-orca.sh
    status: safe
    summary: Standard wrapper script, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Clean PKGBUILD, no security issues found.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no malicious content.
---

Materializing stably-orca-bin from local mirror...
Materialized stably-orca-bin
Analyzing stably-orca-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The top-level scope of this PKGBUILD contains only standard variable definitions and array assignments (pkgname, pkgver, source, sha256sums, etc.). There are no global command substitutions, no invocations of curl, wget, eval, or any other potentially dangerous commands. The functions prepare() and package() are defined but are not executed during sourcing, so they pose no risk at the printsrcinfo step. The source URL points to the project's own GitHub releases, which is consistent with the package's stated purpose. No malicious or obfuscated code is present.
</details>
<evidence></evidence>
<summary>Sourcing this PKGBUILD for metadata is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Sourcing this PKGBUILD for metadata is safe.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing PKGBUILD...
[0/4] Reviewing PKGBUILD, .SRCINFO...
[0/4] Reviewing PKGBUILD, .SRCINFO, stably-orca.desktop...
LLM auditresponse for stably-orca.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.desktop` entry file for the "Orca" application. It contains only metadata fields such as Name, GenericName, Comment, Exec, Terminal, Type, Icon, Categories, and StartupWMClass. The `Exec` line runs `stably-orca %U`, which is the expected executable for the package. There are no suspicious commands, encoded content, network requests, or file operations. The file follows normal packaging practices and does not exhibit any malicious behavior.
</details>
<evidence></evidence>
<summary>Standard desktop entry file, no security issues.</summary>
</security_assessment>

[0/4] Reviewing PKGBUILD, .SRCINFO, stably-orca.desktop, stably-orca.sh...
[1/4] Reviewing PKGBUILD, .SRCINFO, stably-orca.sh...
+ Reviewed stably-orca.desktop. Status: SAFE -- Standard desktop entry file, no security issues.
LLM auditresponse for stably-orca.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard wrapper script for launching an installed AppImage-based application. It sets the `APPDIR` environment variable to the installation path and executes the `AppRun` binary with a performance-related flag (`--disable-features=Vulkan`). The script contains no network requests, no file downloads, no obfuscated code, and no dangerous command invocations (eval, base64, curl, wget, etc.). All operations are confined to setting an environment variable and launching the intended application binary. There is no evidence of injected malicious code or supply-chain attack.
</details>
<evidence></evidence>
<summary>Standard wrapper script, no security issues.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, .SRCINFO...
+ Reviewed stably-orca.sh. Status: SAFE -- Standard wrapper script, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Arch packaging practices for distributing a prebuilt AppImage. The source array fetches the upstream binary from the project's own GitHub releases with a pinned version and provides checksums to verify integrity. The `prepare()` function extracts the AppImage using its built-in extraction mechanism (`--appimage-extract`), which is the normal procedure for repackaging AppImages. The `package()` function installs the extracted contents to `/opt/stably-orca`, along with a wrapper script and desktop file from the AUR repository itself. There are no obfuscated commands, unexpected network requests, eval, base64, or any behavior that would indicate a supply-chain attack. All operations are consistent with the stated purpose of packaging the Orca IDE.
</details>
<evidence>
</evidence>
<summary>Clean PKGBUILD, no security issues found.</summary>
</security_assessment>

[3/4] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Clean PKGBUILD, no security issues found.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a standard Arch Linux AUR metadata file. It contains package name, version, dependencies, source URLs, and checksums. All sources point to the official GitHub repository of the stablyai/orca project (https://github.com/stablyai/orca/releases/download/v1.4.257/). The AppImage, shell script, and desktop file each have non-SKIP SHA256 checksums. There is no executable code, obfuscation, suspicious network destinations, or any behavior deviating from normal packaging practices. This file poses no security risk.
</details>
<evidence></evidence>
<summary>Standard AUR metadata, no malicious content.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,601
  Completion Tokens: 2,585
  Total Tokens: 16,186
  Total Cost: $0.001689
  Execution Time: 19.08 seconds

Final Status: SAFE


No issues found.
