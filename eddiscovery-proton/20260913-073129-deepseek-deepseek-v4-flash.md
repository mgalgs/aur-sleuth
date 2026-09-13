---
package: eddiscovery-proton
pkgver: 19.1.11
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 18804
completion_tokens: 3229
total_tokens: 22033
cost: 0.00125198472
execution_time: 39.85
files_reviewed: 7
files_skipped: 0
maintainer_files: 7
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-13T07:31:29Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file; no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Package metadata only; upstream source, pinned checksums, no malicious behavior.
  - file: eddiscovery-proton
    status: safe
    summary: Legitimate Proton wrapper for EDDiscovery.
  - file: eddiscovery-proton.desktop
    status: safe
    summary: Standard .desktop file, no security concerns.
  - file: eddiscovery-proton.install
    status: safe
    summary: Informational install script, no malicious content.
  - file: update.sh
    status: safe
    summary: Standard AUR maintainer helper script, no malicious behavior.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD, no malicious content.
---

Materializing eddiscovery-proton from local mirror...
Materialized eddiscovery-proton
Analyzing eddiscovery-proton AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains static top‑level variable assignments (pkgname, pkgver, source, checksums, etc.) and function definitions for `prepare()`, `build()`, and `package()`. No command substitutions, external commands, downloads, or data exfiltration occur in the global scope. Running `makepkg --printsrcinfo` only sources this top-level code, which is entirely benign. The potentially sensitive operations (file extraction, network fetching) are confined to the later build stages and are not executed during this command.
</details>
<evidence></evidence>
<summary>No top-level malicious code; safe to parse.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level malicious code; safe to parse.
Reviewing the 7 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/7] Reviewing .SRCINFO...
[0/7] Reviewing .SRCINFO, .gitignore...
[0/7] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` file used to exclude build artifacts and output packages from version control. It contains only three common patterns: `src`, `pkg`, `*.pkg.tar.zst`, and `*.zip`. There is no executable code, no network activity, no obfuscation, and no deviation from normal packaging practices. No security issues are present.
</details>
<evidence></evidence>
<summary>Standard .gitignore file; no security concerns.</summary>
</security_assessment>

[1/7] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore file; no security concerns.
[1/7] Reviewing .SRCINFO, PKGBUILD, eddiscovery-proton...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a `.SRCINFO` package metadata file only. It declares package name, version, dependencies, and three sources: the upstream EDDiscovery portable ZIP from the official GitHub releases page, plus two local packaging files. No install, prepare, build, or other executable logic is present in this file, so there is no opportunity for injected commands, network exfiltration, or obfuscated code.

The checksums are pinned MD5 hashes rather than `SKIP`, and the download source is the project's own upstream release URL. The dependency on `protontricks` and `proton-ge-custom` is consistent with the package description of running EDDiscovery inside a Proton-GE prefix. There are no suspicious hosts, no encoded payloads, and no unexpected system modifications. This file conforms to normal AUR packaging practice.
</details>
<evidence>
</evidence>
<summary>
Package metadata only; upstream source, pinned checksums, no malicious behavior.</summary>
</security_assessment>

[2/7] Reviewing PKGBUILD, eddiscovery-proton...
+ Reviewed .SRCINFO. Status: SAFE -- Package metadata only; upstream source, pinned checksums, no malicious behavior.
[2/7] Reviewing PKGBUILD, eddiscovery-proton, eddiscovery-proton.desktop...
LLM auditresponse for eddiscovery-proton:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a simple wrapper that launches EDDiscovery.exe (a legitimate application for Elite Dangerous) via Proton using protontricks-launch. It constructs a Wine‑style path from the user's home directory using sed, which is standard practice for Proton setups. There are no network requests, no code downloads, no obfuscation, and no file operations beyond those needed to run the intended application. All operations are consistent with the package's stated purpose.
</details>
<evidence></evidence>
<summary>Legitimate Proton wrapper for EDDiscovery.</summary>
</security_assessment>

[2/7] Reviewing PKGBUILD, eddiscovery-proton, eddiscovery-proton.desktop, eddiscovery-proton.install...
[3/7] Reviewing PKGBUILD, eddiscovery-proton.desktop, eddiscovery-proton.install...
+ Reviewed eddiscovery-proton. Status: SAFE -- Legitimate Proton wrapper for EDDiscovery.
LLM auditresponse for eddiscovery-proton.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard freedesktop.org `.desktop` file for the EDDiscovery (Proton) application. It contains no executable code, no network requests, no obfuscation, and no references to external resources. The `Exec` line points to a script installed under `/opt/eddiscovery-proton/`, which is consistent with the package's installation path. The file is purely declarative metadata for the desktop environment and poses no security risk.
</details>
<evidence></evidence>
<summary>Standard .desktop file, no security concerns.</summary>
</security_assessment>

[4/7] Reviewing PKGBUILD, eddiscovery-proton.install...
+ Reviewed eddiscovery-proton.desktop. Status: SAFE -- Standard .desktop file, no security concerns.
[4/7] Reviewing PKGBUILD, eddiscovery-proton.install, update.sh...
LLM auditresponse for eddiscovery-proton.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard installation script that displays reminder messages and first-time setup instructions to the user. It contains only `echo` commands printing text to the terminal. There are no network requests, file writes, code execution, or any other potentially dangerous operations. The script is purely informational and follows normal packaging practices.</details>
<evidence></evidence>
<summary>Informational install script, no malicious content.</summary>
</security_assessment>

[5/7] Reviewing PKGBUILD, update.sh...
+ Reviewed eddiscovery-proton.install. Status: SAFE -- Informational install script, no malicious content.
LLM auditresponse for update.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard AUR maintainer helper that automates updating the package version. It performs routine packaging operations: updating `pkgver` in the PKGBUILD via `sed`, regenerating checksums with `updpkgsums`, recreating `.SRCINFO` with `makepkg --printsrcinfo`, and building the package with `makepkg -s`. There are no network requests, no encoding/obfuscation, no file operations outside the package's own files, and no execution of untrusted code. The script does exactly what a maintainer would manually do to bump a version and repackage. It is harmless.
</details>
<evidence></evidence>
<summary>Standard AUR maintainer helper script, no malicious behavior.</summary>
</security_assessment>

[6/7] Reviewing PKGBUILD...
+ Reviewed update.sh. Status: SAFE -- Standard AUR maintainer helper script, no malicious behavior.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices. It downloads the upstream release from the official GitHub repository, verifies integrity with MD5 checksums (not SKIP), and uses conventional build and install steps. The only network access is fetching the upstream zip file. The wrapper script and desktop file are provided by the maintainer with checksums. There are no suspicious commands, obfuscated code, or unexpected operations. The package only manipulates its own installation paths under `/opt` and the icon/desktop directories, which is normal. No evidence of supply-chain attack or malicious behavior.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD, no malicious content.</summary>
</security_assessment>

[7/7] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD, no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 18,804
  Completion Tokens: 3,229
  Total Tokens: 22,033
  Total Cost: $0.001252
  Execution Time: 39.85 seconds

Final Status: SAFE


No issues found.
