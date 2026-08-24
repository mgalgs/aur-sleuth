---
package: sunshine-beta-bin
pkgver: 2026.824.30334
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 56580919ea5cd225cb34031d0932798021e4a0d8
prompt_tokens: 127366
completion_tokens: 3864
total_tokens: 131230
cost: 0.0077543956
execution_time: 114.85
files_reviewed: 4
files_skipped: 0
files_unauditable: 83
unpinned_sources: 1
date: 2026-08-24T08:41:33Z
file_verdicts:
  - file: sunshine-beta-bin.install
    status: safe
    summary: "Safe: only informational echo statements."
  - file: PKGBUILD
    status: safe
    summary: Standard AUR binary package, no malicious content.
  - file: sunshine-beta-bin-2026.824.30334.desktop
    status: safe
    summary: Misnamed file but no malicious code found.
  - file: sunshine-capabilities.hook
    status: safe
    summary: Standard pacman hook for capability assignment.
---

Cloning https://aur.archlinux.org/sunshine-beta-bin.git...
Cloned sunshine-beta-bin
Analyzing sunshine-beta-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD sources are fetched from the official GitHub repository of the LizardByte/Sunshine project. The source array includes a prebuilt binary package with a valid checksum, a desktop file (with a SKIP checksum, which is acceptable), and two local helper scripts (hook and install file). No code is executed at global scope or in `pkgver()` (which is not defined). The `package()`, `prepare()`, and `build()` functions are not run during `makepkg --nobuild --nodeps --noprepare` or `makepkg --printsrcinfo`. All network destinations are expected and related to the package's own upstream. There is no obfuscated code, no dangerous commands, and no evidence of supply-chain attack within the scope of this gate.
</details>
<evidence>
</evidence>
<summary>Safe to fetch sources and parse PKGBUILD.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe to fetch sources and parse PKGBUILD.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Note: 1 remote source(s) have no checksum (sha256sums=SKIP), so the fetched bytes are not verifiable and can change without any AUR update: sunshine-beta-bin-2026.824.30334.desktop::https://github.com/LizardByte/Sunshine/blob/master/packaging/linux/dev.lizardbyte.app.Sunshine.desktop
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, sunshine-beta-bin.install...
LLM auditresponse for sunshine-beta-bin.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.install` script for an Arch Linux package. It contains only harmless informational messages echoed to the user during package installation and upgrade. No commands that could execute arbitrary code, fetch external resources, or modify system files are present. The script adheres to normal packaging practices.
</details>
<evidence></evidence>
<summary>Safe: only informational echo statements.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed sunshine-beta-bin.install. Status: SAFE -- Safe: only informational echo statements.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard AUR package for a prebuilt binary release. It downloads the official Sunshine release archive from the project's GitHub, a desktop file (using a blob URL, not raw), a capabilities hook, and an install script. All sources except the desktop file have pinned SHA-256 checksums; the desktop file has `SKIP`, which is acceptable practice for non-essential metadata files. The `package()` function correctly extracts and installs the binary, libraries, and shared data into `$pkgdir`. There is no obfuscated code, no unexpected network calls, no execution of untrusted content at build time, and no operations outside the package's intended install scope. The use of a blob URL for the desktop file is a minor hygiene concern (not raw.githubusercontent.com) but does not indicate malice.</details>
<evidence></evidence>
<summary>Standard AUR binary package, no malicious content.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR binary package, no malicious content.
Reviewed all required files.
Deciding which files to review next...
Note: 83 compiled/archived file(s) cannot be audited as text and were not reviewed (sunshine-beta-bin-2026.824.30334.pkg.tar.zst, src/.MTREE, src/.BUILDINFO and 80 more). For a package that ships prebuilt binaries, the audit covers the packaging, not the payload.
Decided to review 2 additional files: sunshine-capabilities.hook, sunshine-beta-bin-2026.824.30334.desktop
Reviewing additional files...
Reviewing additional files...
[0/2] Reviewing sunshine-capabilities.hook...
[0/2] Reviewing sunshine-capabilities.hook, sunshine-beta-bin-2026.824.30334.desktop...
LLM auditresponse for sunshine-beta-bin-2026.824.30334.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
The file content provided is not a valid `.desktop` file but rather a full HTML page downloaded from GitHub, likely from a mistake in packaging or file naming. The actual Sunshine `.desktop` file content is embedded within the JSON payload inside the HTML, and it consists of standard desktop entry fields with CMake template variables (e.g. `@PROJECT_NAME@`, `@PROJECT_DESCRIPTION@`). There is no obfuscated code, no network requests outside of the expected GitHub infrastructure, no system modifications, and no evidence of supply-chain injection. The HTML is the standard GitHub interface for viewing the file; it does not execute any harmful code when placed as a desktop entry file. The misnamed file is suspicious but not indicative of malicious intent—it is more consistent with an error in retrieving or presenting the file.

</details>
<evidence>
</evidence>
<summary>Misnamed file but no malicious code found.</summary>
</security_assessment>

[1/2] Reviewing sunshine-capabilities.hook...
+ Reviewed sunshine-beta-bin-2026.824.30334.desktop. Status: SAFE -- Misnamed file but no malicious code found.
LLM auditresponse for sunshine-capabilities.hook:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a pacman hook file that runs after installing or upgrading the `sunshine-beta-bin` package. It uses `setcap` to grant the `cap_sys_admin` capability to `/usr/bin/sunshine`, which is a standard practice for applications that require elevated privileges for legitimate functionality (e.g., KMS capture on Wayland). There is no obfuscation, network activity, data exfiltration, or unexpected system modifications. The operation is limited to the package's own binary and is consistent with the stated purpose of the Sunshine streaming server.
</details>
<evidence></evidence>
<summary>Standard pacman hook for capability assignment.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed sunshine-capabilities.hook. Status: SAFE -- Standard pacman hook for capability assignment.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 127,366
  Completion Tokens: 3,864
  Total Tokens: 131,230
  Total Cost: $0.007754
  Execution Time: 114.85 seconds

Final Status: SAFE


No issues found.
