---
package: microsoft-edge-stable-bin
pkgver: 151.0.4129.107
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 34eecedf33cdb5da67bea8964402044d560850d8
prompt_tokens: 22183
completion_tokens: 4308
total_tokens: 26491
cost: 0.0026302346
execution_time: 221.39
files_reviewed: 5
files_skipped: 1
files_unauditable: 363
unpinned_sources: 0
date: 2026-08-25T11:22:38Z
file_verdicts:
  - file: Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf
    status: skipped
    summary: "Skipping binary file: Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf"
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD, no malicious content found.
  - file: src/usr/share/applications/com.microsoft.Edge.desktop
    status: safe
    summary: Standard desktop entry file, no security issues.
  - file: microsoft-edge-stable.install
    status: safe
    summary: No malicious behavior; purely informational post-install notes.
  - file: microsoft-edge-stable.sh
    status: safe
    summary: Standard wrapper script with no malicious behavior.
  - file: src/usr/share/applications/microsoft-edge.desktop
    status: safe
    summary: Standard desktop entry file with no security issues.
---

Cloning https://aur.archlinux.org/microsoft-edge-stable-bin.git...
Cloned microsoft-edge-stable-bin
Analyzing microsoft-edge-stable-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only sets variables in the top-level scope; no commands are executed during sourcing. The `pkgver` is a static string, and no `pkgver()` function is defined that could run arbitrary code. The `source` array contains two local files (a shell script and a PDF) and a `.deb` downloaded from Microsoft's official repository (`packages.microsoft.com`), which is the expected upstream. All sources have pinned SHA256 checksums. No obfuscated code, network requests to unexpected hosts, or dangerous commands are present in the top‑level scope. Since `--nobuild` and `--noprepare` are used, the `package()` function is not executed, and only the sources are fetched/extracted (which is the intended purpose of the audit). There is no risk of executing malicious code during the requested `makepkg` commands.
</details>
<evidence></evidence>
<summary>No malicious code in top-level scope; sources are legitimate.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code in top-level scope; sources are legitimate.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf...
[1/2] Reviewing PKGBUILD...
! Reviewed Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf. Status: SKIPPED -- Skipping binary file: Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD fetches Microsoft Edge from the official Microsoft repository, uses pinned SHA256 checksums for all sources, and performs standard packaging operations: extracting a `.deb`, setting `msedge-sandbox` to setuid (normal for Chromium-based browsers), generating icons with ImageMagick, and installing a launcher script and license file. There is no obfuscation, no unexpected network access, no data exfiltration, and no execution of untrusted code beyond the declared upstream source. All operations are consistent with legitimate AUR packaging practices.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD, no malicious content found.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD, no malicious content found.
Reviewed all required files.
Deciding which files to review next...
Note: 363 compiled/archived file(s) cannot be audited as text and were not reviewed (microsoft-edge-stable_151.0.4129.107-1_amd64.deb, src/control.tar.xz, src/data.tar.xz and 360 more). For a package that ships prebuilt binaries, the audit covers the packaging, not the payload.
LLM response for file selection:
microsoft-edge-stable.install
microsoft-edge-stable.sh
src/usr/share/applications/com.microsoft.Edge.desktop
src/usr/share/applications/microsoft-edge.desktop
Decided to review 4 additional files: microsoft-edge-stable.install, microsoft-edge-stable.sh, src/usr/share/applications/com.microsoft.Edge.desktop, src/usr/share/applications/microsoft-edge.desktop
Reviewing additional files...
Reviewing additional files...
[0/4] Reviewing microsoft-edge-stable.install...
[0/4] Reviewing microsoft-edge-stable.install, microsoft-edge-stable.sh...
[0/4] Reviewing microsoft-edge-stable.install, microsoft-edge-stable.sh, src/usr/share/applications/com.microsoft.Edge.desktop...
LLM auditresponse for com.microsoft.Edge.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard freedesktop.org .desktop file for Microsoft Edge. It defines the application name, comment, icon, categories, MIME types, and desktop actions (new window, new private window). The `Exec` lines point to `/usr/bin/microsoft-edge-stable`, the expected binary for the package. There is no obfuscated code, no network requests, no unexpected file operations, and no system modifications. The file follows standard packaging practices for a desktop entry and poses no security risk.
</details>
<evidence></evidence>
<summary>Standard desktop entry file, no security issues.</summary>
</security_assessment>

[0/4] Reviewing microsoft-edge-stable.install, microsoft-edge-stable.sh, src/usr/share/applications/com.microsoft.Edge.desktop, src/usr/share/applications/microsoft-edge.desktop...
[1/4] Reviewing microsoft-edge-stable.install, microsoft-edge-stable.sh, src/usr/share/applications/microsoft-edge.desktop...
+ Reviewed src/usr/share/applications/com.microsoft.Edge.desktop. Status: SAFE -- Standard desktop entry file, no security issues.
LLM auditresponse for microsoft-edge-stable.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.install` script for an AUR package. It defines helper functions for colored output (using `tput` and ANSI escape sequences) and implements `post_install` and `post_upgrade` hooks that merely print informational notes to the user about custom flags and the launcher name. No network requests, file downloads, encoded commands, system modifications, or data exfiltration are present. The content is entirely benign and follows expected packaging conventions.
</details>
<evidence>
</evidence>
<summary>No malicious behavior; purely informational post-install notes.</summary>
</security_assessment>

[2/4] Reviewing microsoft-edge-stable.sh, src/usr/share/applications/microsoft-edge.desktop...
+ Reviewed microsoft-edge-stable.install. Status: SAFE -- No malicious behavior; purely informational post-install notes.
LLM auditresponse for microsoft-edge-stable.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a standard launcher wrapper that reads optional user-provided flags from `$XDG_CONFIG_HOME/microsoft-edge-stable-flags.conf` and passes them to the Edge binary. It uses `set -e` for error handling and `exec` to replace the shell process with Edge. There are no network operations, encoded commands, file manipulations outside the user&#39;s own config, or any other indicators of supply-chain compromise. The behavior is entirely consistent with a normal AUR packaging helper script.
</details>
<evidence>
</evidence>
<summary>Standard wrapper script with no malicious behavior.</summary>
</security_assessment>

[3/4] Reviewing src/usr/share/applications/microsoft-edge.desktop...
+ Reviewed microsoft-edge-stable.sh. Status: SAFE -- Standard wrapper script with no malicious behavior.
LLM auditresponse for microsoft-edge.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Freedesktop.org `.desktop` file for the Microsoft Edge browser. It contains only desktop entry metadata (name, generic name, comment, icon, categories, MIME types) and launcher actions (new window, new private window). All `Exec` lines point to `/usr/bin/microsoft-edge-stable`, the legitimate installed binary. There are no embedded scripts, network requests, encoded commands, or any other potentially malicious content. The file is a normal application launcher configuration.
</details>
<evidence></evidence>
<summary>Standard desktop entry file with no security issues.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed src/usr/share/applications/microsoft-edge.desktop. Status: SAFE -- Standard desktop entry file with no security issues.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
(Skipped 1 file: Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 22,183
  Completion Tokens: 4,308
  Total Tokens: 26,491
  Total Cost: $0.002630
  Execution Time: 221.39 seconds

Final Status: SAFE


No issues found.


Audit Skips:

Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf: [SKIPPED] Skipping binary file: Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf
