---
package: stably-orca-bin
pkgver: 1.4.225
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 13458
completion_tokens: 1686
total_tokens: 15144
cost: 0.001531530
execution_time: 23.68
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-14T23:03:05Z
file_verdicts:
  - file: stably-orca.desktop
    status: safe
    summary: Standard desktop entry file, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no malicious code.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file with no security issues.
  - file: stably-orca.sh
    status: safe
    summary: Standard wrapper script, no security issues.
---

Materializing stably-orca-bin from local mirror...
Materialized stably-orca-bin
Analyzing stably-orca-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only static variable definitions (pkgname, pkgver, depends, source, sha256sums, etc.) and function declarations (prepare, package) in its global scope. There are no top-level command substitutions, backtick executions, `eval`, `curl`, `wget`, or any other code that would execute when the file is sourced by `makepkg --printsrcinfo`. All potentially dangerous operations (extracting AppImage, copying files, setting permissions) are confined inside the `prepare()` and `package()` functions, which are **not** executed during this parsing step.</details>
<evidence></evidence>
<summary>No top-level execution; sourcing is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level execution; sourcing is safe.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing PKGBUILD...
[0/4] Reviewing PKGBUILD, .SRCINFO...
[0/4] Reviewing PKGBUILD, .SRCINFO, stably-orca.desktop...
LLM auditresponse for stably-orca.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard desktop entry file. It defines the application name, icon, categories, and the command to launch `stably-orca %U`. There is no embedded code, no obfuscation, no network requests, and no system modifications beyond registering the application in the desktop environment. The file follows standard freedesktop.org format and contains no malicious or suspicious content.
</details>
<evidence>
</evidence>
<summary>Standard desktop entry file, no security issues.</summary>
</security_assessment>

[0/4] Reviewing PKGBUILD, .SRCINFO, stably-orca.desktop, stably-orca.sh...
[1/4] Reviewing PKGBUILD, .SRCINFO, stably-orca.sh...
+ Reviewed stably-orca.desktop. Status: SAFE -- Standard desktop entry file, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD downloads a prebuilt AppImage from the project's official GitHub releases URL (`https://github.com/stablyai/orca/releases/download/v${pkgver}/orca-linux.AppImage`). All three sources have pinned SHA256 checksums. The prepare() function extracts the AppImage using its built-in `--appimage-extract` flag (a standard AppImage operation). The package() function copies the extracted directory into `/opt/stably-orca`, installs a launcher script and desktop file, and handles icon installation. There are no network requests beyond the declared source, no obfuscated commands, no eval, no base64 decoding, no execution of untrusted fetched code at build time. The behaviour is entirely consistent with standard AUR packaging practices for a prebuilt binary Electron application.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with no malicious code.</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, stably-orca.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no malicious code.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR `.SRCINFO` metadata file for the `stably-orca-bin` package. It declares the package name, version, dependencies, and three source files (an AppImage from the upstream GitHub releases, a shell script, and a desktop file). All sources have explicit SHA256 checksums, and no source uses `SKIP`. There are no embedded commands, no obfuscated content, no unexpected network destinations, and no operations beyond routine metadata declaration. The file contains no executable or script-like code.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file with no security issues.</summary>
</security_assessment>

[3/4] Reviewing stably-orca.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file with no security issues.
LLM auditresponse for stably-orca.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `stably-orca.sh` is a trivial wrapper that sets the `APPDIR` environment variable to `/opt/stably-orca` and then executes the application&#39;s `AppRun` binary with a `--disable-features=Vulkan` flag. There are no network operations, no dynamic code execution, no obfuscated payloads, and no attempts to access or exfiltrate sensitive data. The script simply prepares the environment and launches the upstream binary, which is standard and expected packaging behavior. A commented-out line for Wayland support is also benign. No supply-chain attack indicators are present.
</details>
<evidence></evidence>
<summary>Standard wrapper script, no security issues.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed stably-orca.sh. Status: SAFE -- Standard wrapper script, no security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,458
  Completion Tokens: 1,686
  Total Tokens: 15,144
  Total Cost: $0.001532
  Execution Time: 23.68 seconds

Final Status: SAFE


No issues found.
