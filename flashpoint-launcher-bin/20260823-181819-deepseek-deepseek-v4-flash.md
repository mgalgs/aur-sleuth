---
package: flashpoint-launcher-bin
pkgver: 14.0.3_20251201
pkgrel: 3
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: fe97f45c52ce35303ffaaa9e3aab59c432e69008
prompt_tokens: 53470
completion_tokens: 7653
total_tokens: 61123
cost: 0.00336039536
execution_time: 435.67
files_reviewed: 7
files_skipped: 0
files_unauditable: 2160
unpinned_sources: 0
date: 2026-08-23T18:18:18Z
file_verdicts:
  - file: start-flashpoint.patch
    status: safe
    summary: Patch adjusts paths and adds ownership warning only.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR package, no signs of malice.
  - file: flashpoint-launcher.sh
    status: safe
    summary: Standard application launcher, no security issues.
  - file: setup-desktop-entry.patch
    status: safe
    summary: Patch improves path handling; no malicious behavior found.
  - file: src/FPSoftware/Flash/flash32.sh
    status: safe
    summary: Standard Flash Player launcher script, no malicious behavior.
  - file: src/FPSoftware/FlashpointSecurePlayer.sh
    status: safe
    summary: Upstream Flashpoint launcher script, no malicious code.
  - file: src/FPSoftware/startBasilisk.sh
    status: safe
    summary: Standard Wine launcher, no malicious activity detected.
---

Cloning https://aur.archlinux.org/flashpoint-launcher-bin.git...
Cloned flashpoint-launcher-bin
Analyzing flashpoint-launcher-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains no code that executes during the source-fetching phase (`makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo`). The top-level scope consists only of variable assignments, dependency declarations, and the `source` array with a download from the project's official upstream (`download.flashpointarchive.org`). There is no `pkgver()` function, `eval`, `curl`, `wget`, or any command substitution that could run arbitrary code. The `prepare()`, `build()`, and `package()` functions are not executed due to the `--nobuild` and `--noprepare` flags. Checksums are provided (not SKIP), but even if they were SKIP, that would be acceptable for this narrow gate. The source download is standard and expected.
</details>
<evidence></evidence>
<summary>No malicious top-level code; safe to fetch sources.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious top-level code; safe to fetch sources.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, start-flashpoint.patch...
LLM auditresponse for start-flashpoint.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
The patch introduces a configurable directory variable (`FP_DIR`) to replace hardcoded `$PWD` references, and adds an ownership check that prints a warning if the Flashpoint data directory is not owned by the current user. This is a legitimate improvement for non-standard installations. The ownership check uses standard `stat` and `echo` commands, and does not exfiltrate data, download/execute code, or modify system files. All changes are within the application's own scope.
</details>
<evidence>

</evidence>
<summary>Patch adjusts paths and adds ownership warning only.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed start-flashpoint.patch. Status: SAFE -- Patch adjusts paths and adds ownership warning only.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging conventions: it sources the application from the official project domain (https://download.flashpointarchive.org), provides pinned SHA256 checksums for all files, and uses patches and helper scripts from the maintainer. The build and install steps (patching, copying files, installing desktop entries, cleaning up) are routine and do not involve any network requests outside the declared source URLs, obfuscation, eval, or unexpected system modifications. No evidence of supply-chain attack or malicious code injection was found.
</details>
<evidence></evidence>
<summary>Standard AUR package, no signs of malice.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR package, no signs of malice.
Reviewed all required files.
Deciding which files to review next...
Note: 2160 compiled/archived file(s) cannot be audited as text and were not reviewed (fp14.0.3_lin_20251201.7z, src/Data/flashpoint.sqlite, src/FPSoftware/BasiliskII/macos75.img and 2157 more). For a package that ships prebuilt binaries, the audit covers the packaging, not the payload.
Note: 2871 files available for selection; offering the 50 highest-priority to the model. 1920 lower-priority file(s) were not offered.
LLM response for file selection:
setup-desktop-entry.patch
flashpoint-launcher.sh
src/FPSoftware/startBasilisk.sh
src/FPSoftware/Flash/flash32.sh
src/FPSoftware/FlashpointSecurePlayer.sh
Decided to review 5 additional files: setup-desktop-entry.patch, flashpoint-launcher.sh, src/FPSoftware/startBasilisk.sh, src/FPSoftware/Flash/flash32.sh, src/FPSoftware/FlashpointSecurePlayer.sh
Reviewing additional files...
Reviewing additional files...
[0/5] Reviewing setup-desktop-entry.patch...
[0/5] Reviewing setup-desktop-entry.patch, flashpoint-launcher.sh...
[0/5] Reviewing setup-desktop-entry.patch, flashpoint-launcher.sh, src/FPSoftware/startBasilisk.sh...
LLM auditresponse for flashpoint-launcher.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a simple launcher that sets the `FP_DIR` environment variable to `/opt/Flashpoint/` and then executes the `start-flashpoint.sh` script from that path. This is standard practice for launching an application with a specific working environment. No suspicious network requests, obfuscated code, file modifications, or any other malicious behavior is present. The script does exactly what a launcher for a Flashpoint package should do.
</details>
<evidence></evidence>
<summary>Standard application launcher, no security issues.</summary>
</security_assessment>

[0/5] Reviewing setup-desktop-entry.patch, flashpoint-launcher.sh, src/FPSoftware/startBasilisk.sh, src/FPSoftware/Flash/flash32.sh...
[1/5] Reviewing setup-desktop-entry.patch, src/FPSoftware/startBasilisk.sh, src/FPSoftware/Flash/flash32.sh...
+ Reviewed flashpoint-launcher.sh. Status: SAFE -- Standard application launcher, no security issues.
LLM auditresponse for setup-desktop-entry.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch modifies a shell script that generates a desktop entry for Flashpoint Archive. The changes are benign and improve the script's robustness by replacing `$PWD` (current working directory) with `$FP_DIR` (absolute path derived from the script's own location via `realpath` and `BASH_SOURCE`). The addition of an `FP_DIR` variable with a configurable fallback is a standard packaging improvement. No obfuscated code, network requests, file exfiltration, backdoors, or other malicious behavior is present. The script only creates a desktop entry and a symlink for compatibility, all within the expected scope of the application.
</details>
<evidence></evidence>
<summary>Patch improves path handling; no malicious behavior found.</summary>
</security_assessment>

[2/5] Reviewing src/FPSoftware/startBasilisk.sh, src/FPSoftware/Flash/flash32.sh...
+ Reviewed setup-desktop-entry.patch. Status: SAFE -- Patch improves path handling; no malicious behavior found.
[2/5] Reviewing src/FPSoftware/startBasilisk.sh, src/FPSoftware/Flash/flash32.sh, src/FPSoftware/FlashpointSecurePlayer.sh...
LLM auditresponse for flash32.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a standard launcher for the Flash Player executable within the Flashpoint project. It sets up environment paths for the Flash Player cache and save directories (native and Wine), creates symlinks if needed, and runs the `./flash32` binary from the package directory. There are no network requests, no obfuscated code, no unexpected system modifications outside the user's home directory and the package's own workspace. The use of environment variables and the `cd` command is standard for locating the binary. The symlink creation is a convenience for the application's own data directories and is not malicious. No evidence of supply-chain attack or injected malicious code.
</details>
<evidence>
</evidence>
<summary>Standard Flash Player launcher script, no malicious behavior.</summary>
</security_assessment>

[3/5] Reviewing src/FPSoftware/startBasilisk.sh, src/FPSoftware/FlashpointSecurePlayer.sh...
+ Reviewed src/FPSoftware/Flash/flash32.sh. Status: SAFE -- Standard Flash Player launcher script, no malicious behavior.
LLM auditresponse for FlashpointSecurePlayer.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a helper for the Flashpoint game preservation project, running Windows-based legacy applications and browsers under Wine. It sets up registry keys, downloads content via `curl` (to cache locally served legacy files), and launches the appropriate player or browser. All operations are consistent with the application's stated purpose: running old Flash, Shockwave, and similar content. There is no evidence of obfuscation, data exfiltration, execution of attacker-controlled code, or other supply-chain attack patterns. The use of `curl` with a user-supplied URL is expected application behavior (fetching game assets from the local Flashpoint server or remote). No injected malicious code was found.
</details>
<evidence></evidence>
<summary>Upstream Flashpoint launcher script, no malicious code.</summary>
</security_assessment>

[4/5] Reviewing src/FPSoftware/startBasilisk.sh...
+ Reviewed src/FPSoftware/FlashpointSecurePlayer.sh. Status: SAFE -- Upstream Flashpoint launcher script, no malicious code.
LLM auditresponse for startBasilisk.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
**Analysis:**  
The script `startBasilisk.sh` is a launcher for the Flashpoint project's Basilisk (or FPNavigator) browser under Wine. It performs Wine registry operations to register the 3DVIA ActiveX plugin when detected, then launches the browser. All registry additions are cleaned up after use. The script uses only standard shell commands (`wine`, `regsvr32`, `sed`, `wait`, etc.) and contains no network requests, obfuscated code, or file exfiltration. The background processes (`&`) are a normal pattern for parallel registry operations and are properly waited upon. There is no evidence of a supply-chain attack; the script's behavior aligns with its stated purpose of enabling legacy browser plugins under Wine.
</details>
<evidence>
</evidence>
<summary>Standard Wine launcher, no malicious activity detected.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed src/FPSoftware/startBasilisk.sh. Status: SAFE -- Standard Wine launcher, no malicious activity detected.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 53,470
  Completion Tokens: 7,653
  Total Tokens: 61,123
  Total Cost: $0.003360
  Execution Time: 435.67 seconds

Final Status: SAFE


No issues found.
