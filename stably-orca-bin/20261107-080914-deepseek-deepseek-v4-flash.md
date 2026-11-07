---
package: stably-orca-bin
pkgver: 1.4.252
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 13691
completion_tokens: 4991
total_tokens: 18682
cost: 0.002154243
execution_time: 32.85
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-07T08:09:14Z
file_verdicts:
  - file: stably-orca.desktop
    status: safe
    summary: Standard desktop entry file; no issues.
  - file: stably-orca.sh
    status: safe
    summary: Standard wrapper script, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard AppImage PKGBUILD, no malicious code.
  - file: .SRCINFO
    status: safe
    summary: Clean metadata file, no security issues detected.
---

Materializing stably-orca-bin from local mirror...
Materialized stably-orca-bin
Analyzing stably-orca-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>No code in the global/top-level scope executes any dangerous operations.  The PKGBUILD consists solely of variable assignments and function definitions, with no command substitutions (`$()`, backticks) or `eval` statements at parse time.  Neither `prepare()` nor `package()` is invoked by `makepkg --printsrcinfo`, so the AppImage extraction and file installation logic within them does not trigger.  Running `makepkg --printsrcinfo` on this file is safe.</details>
<evidence></evidence>
<summary>Sourcing this PKGBUILD is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Sourcing this PKGBUILD is safe.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing stably-orca.desktop...
[0/4] Reviewing stably-orca.desktop, .SRCINFO...
[0/4] Reviewing stably-orca.desktop, .SRCINFO, PKGBUILD...
LLM auditresponse for stably-orca.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Linux .desktop entry for the Orca IDE by Stably AI. It defines the application name, icon, categories, and the command to launch (Exec=stably-orca %U). No suspicious commands, network activity, obfuscation, or unusual system operations are present. The file conforms to expected packaging practices for a desktop entry.
</details>
<evidence>
</evidence>
<summary>Standard desktop entry file; no issues.</summary>
</security_assessment>

[1/4] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed stably-orca.desktop. Status: SAFE -- Standard desktop entry file; no issues.
[1/4] Reviewing .SRCINFO, PKGBUILD, stably-orca.sh...
LLM auditresponse for stably-orca.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a straightforward wrapper script for the Stably AI Orca application. It sets the `APPDIR` environment variable to `/opt/stably-orca` and executes the AppRun binary with `--disable-features=Vulkan` and any user-supplied arguments. There are no network requests, obfuscated code, file operations outside the application directory, or any other suspicious behavior. The script only does what it states: configuring the environment for the upstream application and launching it. No evidence of a supply-chain attack.
</details>
<evidence></evidence>
<summary>Standard wrapper script, no malicious content.</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed stably-orca.sh. Status: SAFE -- Standard wrapper script, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Arch packaging practices for a prebuilt AppImage. It downloads the binary from the project&#x27;s official GitHub releases, pins the download with a SHA-256 checksum, extracts the AppImage in `prepare()`, and installs the extracted files under `/opt/stably-orca` along with a wrapper script and desktop entry. All file operations are confined to the build directory (`$srcdir`) and the package destination (`$pkgdir`). There are no suspicious network requests, obfuscated commands, or unexpected system modifications. The icon-discovery loop is merely a robustness measure to handle upstream icon naming changes and does not introduce any security risk.
</details>
<evidence></evidence>
<summary>Standard AppImage PKGBUILD, no malicious code.</summary>
</security_assessment>

[3/4] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AppImage PKGBUILD, no malicious code.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a metadata manifest for the AUR package `stably-orca-bin`. It declares the package name, version, dependencies, runtime options, and source files. The primary binary source (`stably-orca-bin-1.4.252.AppImage`) is fetched directly from the official GitHub releases page of the upstream project (`https://github.com/stablyai/orca/releases/download/v1.4.252/orca-linux.AppImage`). This is exactly the expected and standard location for the software the package is designed to distribute. The file also includes pinned `sha256sums` for all declared sources, allowing integrity verification of the downloaded files.

No obfuscated code, suspicious network destinations, dangerous commands (`eval`, `curl`, `wget`, `base64` decoding), backdoors, or unexpected system modifications are present within this file. The declared dependencies (`gtk3`, `nss`, `alsa-lib`, `libsecret`, etc.) are standard runtime requirements for an Electron-based IDE application on Linux and do not indicate any malicious behavior. The `.SRCINFO` adheres to standard AUR packaging conventions for a prebuilt binary package and contains no evidence of a supply chain attack.
</details>
<evidence></evidence>
<summary>Clean metadata file, no security issues detected.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Clean metadata file, no security issues detected.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,691
  Completion Tokens: 4,991
  Total Tokens: 18,682
  Total Cost: $0.002154
  Execution Time: 32.85 seconds

Final Status: SAFE


No issues found.
