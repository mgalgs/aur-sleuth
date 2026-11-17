---
package: orbbec-viewer
pkgver: 1.10.37
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 36360
completion_tokens: 4016
total_tokens: 40376
cost: 0.00399528
execution_time: 21.3
files_reviewed: 7
files_skipped: 0
maintainer_files: 7
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-17T16:13:42Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore with no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO with pinned checksums and official sources.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with no malicious indicators.
  - file: orbbec-viewer.desktop
    status: safe
    summary: Standard desktop entry file, no security issues.
  - file: orbbec-viewer.install
    status: safe
    summary: Trivial informational install script, no malicious behavior.
  - file: udev-uaccess.patch
    status: safe
    summary: Benign udev rules patch, no malicious activity.
  - file: orbbec-viewer.sh
    status: safe
    summary: Safe wrapper script for AUR package.
---

Materializing orbbec-viewer from local mirror...
Materialized orbbec-viewer
Analyzing orbbec-viewer AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains variable assignments, function definitions (including `_srcdir()`, `prepare()`, and `package()`), and standard packaging metadata at the global scope. No top-level command substitutions, `eval`, `exec`, or other code execution constructs are present. `makepkg --printsrcinfo` sources the global scope only, so it will not execute the `prepare()` or `package()` functions. The source array definitions use string expansions that do not run external commands. There is no risk of malicious code execution during the `--printsrcinfo` step.
</details>
<evidence></evidence>
<summary>No malicious global code; safe to source.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious global code; safe to source.
Reviewing the 7 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/7] Reviewing .SRCINFO...
[0/7] Reviewing .SRCINFO, PKGBUILD...
[0/7] Reviewing .SRCINFO, PKGBUILD, .gitignore...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file for an AUR package. It lists patterns to ignore compiled package archives (`*.zst`, `*.zip`) and build directories (`pkg/`, `src/`). There is no code execution, network activity, or any other security concern. The file serves only to prevent generated artifacts from being tracked in version control.
</details>
<evidence></evidence>
<summary>Standard .gitignore with no security concerns.</summary>
</security_assessment>

[1/7] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore with no security concerns.
[1/7] Reviewing .SRCINFO, PKGBUILD, orbbec-viewer.desktop...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file contains standard package metadata for the `orbbec-viewer` AUR package. All source URLs point to the official OrbbecSDK GitHub releases page (`https://github.com/orbbec/OrbbecSDK/releases/download/...`). Checksums (`sha256sums`) are provided and pinned for all architecture-specific archives. There are no suspicious commands, obfuscated content, or unexpected network destinations. The file does not contain any code that could be executed; it is purely a metadata descriptor used by `makepkg` and AUR helpers. No evidence of supply-chain compromise or malicious behavior is present.
</details>
<evidence>
</evidence>
<summary>Standard .SRCINFO with pinned checksums and official sources.</summary>
</security_assessment>

[1/7] Reviewing .SRCINFO, PKGBUILD, orbbec-viewer.desktop, orbbec-viewer.install...
[2/7] Reviewing PKGBUILD, orbbec-viewer.desktop, orbbec-viewer.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO with pinned checksums and official sources.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Arch packaging practices for a prebuilt binary release. All sources are fetched from the official GitHub repository of OrbbecSDK, with valid SHA256 checksums. The `prepare()` function applies a local patch (also checksummed) to replace world-writable device nodes with uaccess ACLs, which is a standard security hardening recommended by Arch Linux. The `package()` function copies the prebuilt files into `/opt/orbbec-viewer`, fixes the RPATH with `patchelf`, installs a wrapper script, a desktop entry, icons, and a renamed udev rule. There are no network requests, obfuscated code, or unexpected system modifications. The use of `patchelf --set-rpath '$ORIGIN'` and the removal of bundled `lib/` and `staticlib/` are routine maintenance steps. No supply-chain attack indicators are present.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with no malicious indicators.</summary>
</security_assessment>

[3/7] Reviewing orbbec-viewer.desktop, orbbec-viewer.install...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with no malicious indicators.
[3/7] Reviewing orbbec-viewer.desktop, orbbec-viewer.install, orbbec-viewer.sh...
LLM auditresponse for orbbec-viewer.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard .desktop file that provides a menu entry for the Orbbec Viewer application. It defines the executable name (`orbbec-viewer`), icon, categories, and other metadata. There are no executable commands, no network requests, no obfuscated code, and no unusual operations. The file follows the freedesktop.org Desktop Entry Specification and is completely benign.
</details>
<evidence></evidence>
<summary>Standard desktop entry file, no security issues.</summary>
</security_assessment>

[3/7] Reviewing orbbec-viewer.desktop, orbbec-viewer.install, orbbec-viewer.sh, udev-uaccess.patch...
[4/7] Reviewing orbbec-viewer.install, orbbec-viewer.sh, udev-uaccess.patch...
+ Reviewed orbbec-viewer.desktop. Status: SAFE -- Standard desktop entry file, no security issues.
LLM auditresponse for orbbec-viewer.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is an Arch Linux package installation script (.install). It defines two functions, `post_install()` and `post_upgrade()`, that only output a plain text message to the user explaining where the package is installed and how per-user data is managed. There are no network calls, file operations, command executions (besides `echo`/`cat`), encoded payloads, or references to external resources. The script performs no system modifications and does not fetch or run any untrusted code. It is a standard, plain-text informational message with no security risks.
</details>
<evidence>
</evidence>
<summary>Trivial informational install script, no malicious behavior.</summary>
</security_assessment>

[5/7] Reviewing orbbec-viewer.sh, udev-uaccess.patch...
+ Reviewed orbbec-viewer.install. Status: SAFE -- Trivial informational install script, no malicious behavior.
LLM auditresponse for udev-uaccess.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a patch that modifies a udev rules file for Orbbec USB devices. It replaces `MODE:=&quot;0666&quot;, OWNER:=&quot;root&quot;, GROUP:=&quot;video&quot;` with `TAG+=&quot;uaccess&quot;` on every device entry. This is a standard, well-documented udev practice to delegate device access control to the seat/ACL system (logind/ConsoleKit) instead of using static permissions or group membership. There is no encoded or obfuscated content, no network operations, no executable code, and no alteration to anything outside the udev context. The patch is purely a local cleanup of udev rules and does not introduce any supply-chain compromise or malicious behavior.
</details>
<evidence></evidence>
<summary>Benign udev rules patch, no malicious activity.</summary>
</security_assessment>

[6/7] Reviewing orbbec-viewer.sh...
+ Reviewed udev-uaccess.patch. Status: SAFE -- Benign udev rules patch, no malicious activity.
LLM auditresponse for orbbec-viewer.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a standard wrapper that sets up per-user writable data directories, copies configuration from the read-only installation directory on first run, creates a symlink for static assets, and launches the application binary. All file operations are confined to the package's own installation path (`/opt/orbbec-viewer`) and the user's XDG data directory. No network requests, obfuscated code, or dangerous commands are present. The `LD_LIBRARY_PATH` modification is a routine measure to satisfy runtime dynamic loading requirements of the application's SDK.
</details>
<evidence>
</evidence>
<summary>Safe wrapper script for AUR package.</summary>
</security_assessment>

[7/7] Reviewing ...
+ Reviewed orbbec-viewer.sh. Status: SAFE -- Safe wrapper script for AUR package.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 36,360
  Completion Tokens: 4,016
  Total Tokens: 40,376
  Total Cost: $0.003995
  Execution Time: 21.30 seconds

Final Status: SAFE


No issues found.
