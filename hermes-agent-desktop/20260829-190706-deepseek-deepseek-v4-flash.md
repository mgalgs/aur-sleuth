---
package: hermes-agent-desktop
pkgver: 0.20.6
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 24096
completion_tokens: 3201
total_tokens: 27297
cost: 0.00251059536
execution_time: 83.99
files_reviewed: 6
files_skipped: 0
maintainer_files: 6
source_fetch: ok
upstream_files: 10491
upstream_named_files: 1
unpinned_sources: 0
date: 2026-08-29T19:07:05Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: Standard open-source license text, no security concerns.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with pinned checksums, no malicious code.
  - file: pin-packaged-runtime.patch
    status: safe
    summary: Legitimate feature patch for package-managed runtime support.
  - file: system-electron-resources.patch
    status: safe
    summary: Patch adds environment variable override path, harmless.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore for AUR packaging; no issues.
  - file: .SRCINFO
    status: safe
    summary: Standard metadata file, no security issues.
---

Cloning https://aur.archlinux.org/hermes-agent-desktop.git...
Cloned hermes-agent-desktop
Analyzing hermes-agent-desktop AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains no top-level code that executes during sourcing beyond variable assignments and function definitions. The `source` array fetches an upstream GitHub release tarball and two patch files, all with SHA-256 checksums. No `pkgver()` function is present, and there are no command substitutions or dangerous statements (eval, base64, curl, wget) outside of the `prepare()`, `build()`, `package()`, and `check()` functions, which are not executed by `makepkg --nobuild --nodeps --noprepare` or `makepkg --printsrcinfo`. The fetched sources are standard and the URLs point to the expected upstream repository. Therefore, running the requested commands is safe.
</details>
<evidence></evidence>
<summary>Top-level code is benign; sources are standard.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level code is benign; sources are standard.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: the PKGBUILD names 1 file(s) in the downloaded sources (src/hermes-agent-2026.8.27/apps/desktop/assets/icon.png); they are upstream content and were not reviewed.
Reviewing the 6 file(s) in the AUR repository. The 10491 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/6] Reviewing .SRCINFO...
[0/6] Reviewing .SRCINFO, .gitignore...
[0/6] Reviewing .SRCINFO, .gitignore, LICENSE...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard BSD Zero Clause License. It contains only legal text and no executable code, network requests, file operations, or any other potentially dangerous content. There is no evidence of any supply-chain attack or malicious behavior.
</details>
<evidence></evidence>
<summary>Standard open-source license text, no security concerns.</summary>
</security_assessment>

[0/6] Reviewing .SRCINFO, .gitignore, LICENSE, PKGBUILD...
[1/6] Reviewing .SRCINFO, .gitignore, PKGBUILD...
+ Reviewed LICENSE. Status: SAFE -- Standard open-source license text, no security concerns.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for an Electron application. All source files are pinned with SHA-256 checksums, network operations are limited to `npm ci` (with `--ignore-scripts` and `--prefer-offline`), and no unexpected external downloads or data exfiltration occur. The launcher script is a benign shell wrapper that reads user configuration from `~/.config/hermes-desktop-flags.conf` (a common pattern) and invokes the system Electron runtime with the packaged app. No obfuscated code, dangerous commands, or unusual system modifications are present. The build process is deterministic and uses offline mode where possible. The package is safe.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with pinned checksums, no malicious code.</summary>
</security_assessment>

[2/6] Reviewing .SRCINFO, .gitignore...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with pinned checksums, no malicious code.
[2/6] Reviewing .SRCINFO, .gitignore, pin-packaged-runtime.patch...
LLM auditresponse for pin-packaged-runtime.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
The patch introduces a feature to support a package-managed runtime in the Hermes desktop application. It adds logic to detect when the runtime is managed by the system package (via environment variable `HERMES_DESKTOP_PACKAGE_MANAGED_RUNTIME`) and then prevents the application from self-updating, redirects update checks to inform the user to use the package manager, and validates that the active checkout commit matches the expected commit from the package's install stamp. These changes are entirely consistent with the stated purpose of integrating the application with a system package manager. There is no obfuscation, no external network requests, no file exfiltration, no unexpected code execution, and no deviation from standard packaging practices. The patch modifies only the application's own source code to add a new configuration mode. No malicious behavior is present.
</details>
<evidence>
</evidence>
<summary>
Legitimate feature patch for package-managed runtime support.
</summary>
</security_assessment>

[2/6] Reviewing .SRCINFO, .gitignore, pin-packaged-runtime.patch, system-electron-resources.patch...
[3/6] Reviewing .SRCINFO, .gitignore, system-electron-resources.patch...
+ Reviewed pin-packaged-runtime.patch. Status: SAFE -- Legitimate feature patch for package-managed runtime support.
LLM auditresponse for system-electron-resources.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch adds a new candidate path for `install-stamp.json` using the environment variable `HERMES_DESKTOP_RESOURCES_PATH`. This is a common pattern for development or testing, allowing the user to override the resources path. The patch does not introduce any network requests, obfuscated code, or file operations outside the application's own scope. No malicious behavior is present.
</details>
<evidence></evidence>
<summary>Patch adds environment variable override path, harmless.</summary>
</security_assessment>

[4/6] Reviewing .SRCINFO, .gitignore...
+ Reviewed system-electron-resources.patch. Status: SAFE -- Patch adds environment variable override path, harmless.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.gitignore` file contains standard gitignore patterns for AUR packaging (excluding tarballs, compiled package archives, and source archive files). It is a simple, minimal configuration file with no commands, network requests, obfuscation, or any behavior that could be considered malicious. There are no security concerns.</details>
<evidence></evidence>
<summary>Standard .gitignore for AUR packaging; no issues.</summary>
</security_assessment>

[5/6] Reviewing .SRCINFO...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore for AUR packaging; no issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a metadata file used by the Arch User Repository to describe package sources, dependencies, and checksums. It contains no executable code, network requests, or system modifications. All source tarballs are pinned with specific SHA-256 checksums, and the source URLs point to the official upstream GitHub repository (`https://github.com/NousResearch/hermes-agent/archive/refs/tags/v2026.8.27.tar.gz`). There is no obfuscation, strange encoding, or deviation from standard AUR packaging practices. The dependencies (`electron42`, `curl`, `git`, `libsecret`, etc.) are typical for an Electron desktop application. No malicious behaviors or supply‑chain attack indicators are present.
</details>
<evidence></evidence>
<summary>Standard metadata file, no security issues.</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata file, no security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 24,096
  Completion Tokens: 3,201
  Total Tokens: 27,297
  Total Cost: $0.002511
  Execution Time: 83.99 seconds

Final Status: SAFE


No issues found.
