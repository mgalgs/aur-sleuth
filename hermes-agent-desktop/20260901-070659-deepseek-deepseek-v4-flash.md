---
package: hermes-agent-desktop
pkgver: 0.21.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: b9e20f728bbe0de1871ebaca31738c802edc31f8
prompt_tokens: 24062
completion_tokens: 3283
total_tokens: 27345
cost: 0.00247841776
execution_time: 87.87
files_reviewed: 6
files_skipped: 0
maintainer_files: 6
source_fetch: ok
upstream_files: 10928
upstream_named_files: 1
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-01T07:06:58Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: Standard license file, no security concerns.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore, no security concern.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD, no security issues found.
  - file: system-electron-resources.patch
    status: safe
    summary: Standard environment variable path addition, no malice.
  - file: pin-packaged-runtime.patch
    status: safe
    summary: "Safe: package management integration patch."
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; no malicious content detected.
---

Cloning https://aur.archlinux.org/hermes-agent-desktop.git...
Cloned hermes-agent-desktop
Analyzing hermes-agent-desktop AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only variable assignments, function definitions, and standard source array entries at the top level. No command substitutions or function calls execute during sourcing. The `pkgver()` function is not defined, so no additional code runs. The `source` array fetches from the project's own GitHub repository (a pinned archive) and two local patch files, all with valid checksums. The `prepare()`, `build()`, `check()`, and `package()` functions are defined but not executed during `makepkg --nobuild --nodeps --noprepare` or `makepkg --printsrcinfo`, so they are out of scope for this gate. There is no evidence of malicious code that would execute during the source fetch or PKGBUILD parsing.
</details>
<evidence></evidence>
<summary>No malicious top-level code execution risk.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious top-level code execution risk.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: the PKGBUILD names 1 file(s) in the downloaded sources (src/hermes-agent-2026.8.31/apps/desktop/assets/icon.png); they are upstream content and were not reviewed.
Reviewing the 6 file(s) in the AUR repository. The 10928 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/6] Reviewing .SRCINFO...
[0/6] Reviewing .SRCINFO, .gitignore...
[0/6] Reviewing .SRCINFO, .gitignore, LICENSE...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard BSD Zero Clause License text. It contains no executable code, network requests, obfuscation, or any other potentially malicious content. It is a routine license file included with the package.
</details>
<evidence></evidence>
<summary>Standard license file, no security concerns.</summary>
</security_assessment>

[0/6] Reviewing .SRCINFO, .gitignore, LICENSE, PKGBUILD...
[1/6] Reviewing .SRCINFO, .gitignore, PKGBUILD...
+ Reviewed LICENSE. Status: SAFE -- Standard license file, no security concerns.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.gitignore` file contains only standard file patterns for excluding build artifacts such as tarballs, zip files, and compiled package archives from version control. This is a routine and expected file in any AUR package repository. There is no executable code, network requests, obfuscation, or any other potentially malicious content.
</details>
<evidence></evidence>
<summary>Standard .gitignore, no security concern.</summary>
</security_assessment>

[1/6] Reviewing .SRCINFO, .gitignore, PKGBUILD, pin-packaged-runtime.patch...
[2/6] Reviewing .SRCINFO, PKGBUILD, pin-packaged-runtime.patch...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore, no security concern.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for an Electron application. It downloads the source tarball from the official upstream GitHub repository, applies patches, runs `npm ci` with `--ignore-scripts` and `--offline`, and builds the desktop app using the system Electron runtime. No suspicious network requests, obfuscated code, or unexpected file operations are present. The script reads optional user flags from a config file, which is a common and safe pattern. The maintainer has pinned the source tarball with a SHA256 checksum and uses a pinned commit for reproducibility. There is no evidence of malicious injection or supply-chain attack.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD, no security issues found.</summary>
</security_assessment>

[3/6] Reviewing .SRCINFO, pin-packaged-runtime.patch...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD, no security issues found.
[3/6] Reviewing .SRCINFO, pin-packaged-runtime.patch, system-electron-resources.patch...
LLM auditresponse for system-electron-resources.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch adds an additional candidate path for locating the `install-stamp.json` file, using the environment variable `HERMES_DESKTOP_RESOURCES_PATH`. It is a simple, transparent file path resolution with no obfuscation, network requests, or dangerous commands. Such environment variable overrides are a standard practice in packaging to allow system administrators to point the application to custom resource directories. The patch does not introduce any supply-chain attack vector; it only extends the list of locations checked for a configuration file.
</details>
<evidence>
</evidence>
<summary>Standard environment variable path addition, no malice.</summary>
</security_assessment>

[4/6] Reviewing .SRCINFO, pin-packaged-runtime.patch...
+ Reviewed system-electron-resources.patch. Status: SAFE -- Standard environment variable path addition, no malice.
LLM auditresponse for pin-packaged-runtime.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch adds support for detecting when the Hermes desktop application is installed via a system package (a "package-managed runtime") by checking the `HERMES_DESKTOP_PACKAGE_MANAGED_RUNTIME` environment variable. The changes disable the built-in update mechanism (applyUpdates and checkUpdates) when the runtime is package-managed, instead directing the user to update via the package manager. Additionally, it introduces a commit-verification check during bootstrap: if the active checkout commit does not match the commit recorded in the package's install stamp, the runtime is considered mismatched and a re-bootstrap is triggered. This is a legitimate feature to integrate the application with the package manager and prevent conflicts from mixed update methods. No obfuscated code, external network requests, or dangerous commands are present. The patch is consistent with standard packaging practices and does not contain any supply-chain attack indicators.
</details>
<evidence></evidence>
<summary>Safe: package management integration patch.</summary>
</security_assessment>

[5/6] Reviewing .SRCINFO...
+ Reviewed pin-packaged-runtime.patch. Status: SAFE -- Safe: package management integration patch.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a metadata descriptor for an AUR package. It declares the package name, version, description, upstream URL, dependencies, and source tarball with SHA-256 checksums. All sources reference the official upstream GitHub repository (`NousResearch/hermes-agent`) and bundled patches. There are no embedded scripts, obfuscated commands, or external downloads beyond the declared upstream archive. No evidence of malicious or unexpected behavior is present.</details>
<evidence></evidence>
<summary>Standard AUR metadata; no malicious content detected.</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; no malicious content detected.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 24,062
  Completion Tokens: 3,283
  Total Tokens: 27,345
  Total Cost: $0.002478
  Execution Time: 87.87 seconds

Final Status: SAFE


No issues found.
