---
package: stably-orca-bin
pkgver: 1.4.199
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 13446
completion_tokens: 2020
total_tokens: 15466
cost: 0.00122402
execution_time: 42.1
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-09T23:02:47Z
file_verdicts:
  - file: stably-orca.desktop
    status: safe
    summary: A plain desktop entry file with no security issues.
  - file: stably-orca.sh
    status: safe
    summary: Standard application launcher, no malicious content.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with pinned checksums, no malicious behavior.
---

Materializing stably-orca-bin from local mirror...
Materialized stably-orca-bin
Analyzing stably-orca-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains global variable definitions (pkgname, pkgver, source, sha256sums, etc.) and function definitions (prepare, package). No command substitutions or code execution occurs in the top-level scope when the file is sourced. The functions are only called later by makepkg steps that are not executed by `--printsrcinfo`. Therefore, running `makepkg --printsrcinfo` on this PKGBUILD is safe.
</details>
<evidence>
</evidence>
<summary>No dangerous global code execution detected.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous global code execution detected.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, PKGBUILD...
[0/4] Reviewing .SRCINFO, PKGBUILD, stably-orca.desktop...
LLM auditresponse for stably-orca.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.desktop` entry for the Orca application by Stably AI. It contains only declarative metadata: application name, icon, categories, and the executable command (`stably-orca %U`). There are no network requests, obfuscated code, dangerous commands, or any operations beyond defining how the application appears in the desktop environment. It follows the freedesktop.org Desktop Entry Specification and contains no deviations indicative of malicious behavior.
</details>
<evidence>
</evidence>
<summary>A plain desktop entry file with no security issues.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, PKGBUILD, stably-orca.desktop, stably-orca.sh...
[1/4] Reviewing .SRCINFO, PKGBUILD, stably-orca.sh...
+ Reviewed stably-orca.desktop. Status: SAFE -- A plain desktop entry file with no security issues.
LLM auditresponse for stably-orca.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a standard wrapper for launching the Stably AI Orca application from its extracted AppImage tree. It exports the `APPDIR` environment variable to fix a detection issue in the upstream AppRun, then executes the binary with a `--disable-features=Vulkan` flag to work around a graphics compatibility problem. There are no suspicious network requests, obfuscated commands, unexpected file operations, or any other indicators of malicious activity. The script performs only the actions necessary to properly launch the packaged application.
</details>
<evidence></evidence>
<summary>Standard application launcher, no malicious content.</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed stably-orca.sh. Status: SAFE -- Standard application launcher, no malicious content.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a metadata descriptor for the AUR package. It contains no executable code, only declarations of package name, version, dependencies, sources, and checksums. The sources are pulled from the official GitHub releases of the upstream project, and all checksums are provided (none are set to SKIP). The dependencies are typical for an Electron-based application. There are no network requests, obfuscated strings, or system modifications defined in this file. No malicious behavior is present; the file conforms to standard AUR packaging practices.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata file, no malicious content.</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR practices for distributing a prebuilt AppImage. It downloads the binary from the official upstream GitHub releases over HTTPS, pins SHA256 checksums (including for the AppImage), and extracts it for packaging into `/opt`. All operations (extraction, file installation, icon handling) are routine packaging steps. There is no obfuscated code, no unexpected network requests, no exfiltration, and no execution of untrusted content beyond the intended upstream binary. The file is safe.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with pinned checksums, no malicious behavior.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with pinned checksums, no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,446
  Completion Tokens: 2,020
  Total Tokens: 15,466
  Total Cost: $0.001224
  Execution Time: 42.10 seconds

Final Status: SAFE


No issues found.
