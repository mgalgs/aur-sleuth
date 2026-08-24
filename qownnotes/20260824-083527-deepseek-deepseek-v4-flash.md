---
package: qownnotes
pkgver: 26.8.8
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 56580919ea5cd225cb34031d0932798021e4a0d8
prompt_tokens: 32830
completion_tokens: 5018
total_tokens: 37848
cost: 0.0024605084
execution_time: 85.94
files_reviewed: 8
files_skipped: 1
files_unauditable: 73
unpinned_sources: 0
date: 2026-08-24T08:35:27Z
file_verdicts:
  - file: qownnotes-26.8.8.tar.xz
    status: skipped
    summary: "Skipping binary file: qownnotes-26.8.8.tar.xz"
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with pinned checksum; no malicious behavior detected. Safe.
  - file: src/qownnotes-26.8.8/CMakeLists.txt
    status: safe
    summary: Standard CMake build file; no malicious indicators.
  - file: src/qownnotes-26.8.8/icons/download-icon.sh
    status: safe
    summary: Legitimate icon-copying helper script; no security issues.
  - file: src/qownnotes-26.8.8/cmake/FindBotan3.cmake
    status: safe
    summary: Standard CMake find module, no security issues.
  - file: src/qownnotes-26.8.8/cmake/FindBotan2.cmake
    status: safe
    summary: Standard CMake find module, no security issues.
  - file: src/qownnotes-26.8.8/PBE.QOwnNotes.desktop
    status: safe
    summary: Standard desktop entry file, no security issues.
  - file: src/qownnotes-26.8.8/icons/breeze-dark-qownnotes/copy-from-breeze-dark.sh
    status: safe
    summary: Helper script for copying icons; no malicious behavior.
  - file: qownnotes.desktop
    status: safe
    summary: Standard desktop entry file, no security issues.
---

Cloning https://aur.archlinux.org/qownnotes.git...
Cloned qownnotes
Analyzing qownnotes AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is standard: it defines metadata and a single source tarball from the official GitHub release with a fixed SHA256 checksum. No code executes in the global/top-level scope or in `pkgver()` (which is absent). The functions `prepare()`, `build()`, and `package()` are not executed by the commands in question. Fetching the source and extracting the archive are normal operations; the checksum is pinned, so there is no unverified download risk. No dangerous commands, obfuscation, or suspicious behavior are present at the scope that would be evaluated during `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo`.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with no active dangerous code.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Standard PKGBUILD with no active dangerous code.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, qownnotes-26.8.8.tar.xz...
[1/2] Reviewing PKGBUILD...
! Reviewed qownnotes-26.8.8.tar.xz. Status: SKIPPED -- Skipping binary file: qownnotes-26.8.8.tar.xz
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard Arch packaging recipe. It downloads the upstream QOwnNotes release tarball from the official GitHub releases URL, pins it with a SHA-256 checksum, and builds it with CMake. The `prepare()` function writes a small `release.h` header identifying the build as an AUR release, which is normal for this project. The `build()` and `package()` functions only compile the project and install it into `$pkgdir` via the CMake install target.

There is no obfuscated code, no suspicious network requests, no execution of downloaded scripts, no base64/eval usage, and no file operations outside the expected build/install workflow. The unused `tag` variable is harmless. No evidence of injected malicious behavior was found.
</details>
<evidence>
</evidence>
<summary>
Standard PKGBUILD with pinned checksum; no malicious behavior detected. Safe.
</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with pinned checksum; no malicious behavior detected. Safe.
Reviewed all required files.
Deciding which files to review next...
Note: 73 compiled/archived file(s) cannot be audited as text and were not reviewed (src/qownnotes-26.8.8/QOwnNotes.icns, src/qownnotes-26.8.8/libraries/sonnet/src/trigrams.map, src/qownnotes-26.8.8/libraries/fakevim/utils/patches/add-patches-for-upstream.patch and 70 more). For a package that ships prebuilt binaries, the audit covers the packaging, not the payload.
Note: 1149 files available for selection; offering the 50 highest-priority to the model. 1002 lower-priority file(s) were not offered.
LLM response for file selection:
src/qownnotes-26.8.8/CMakeLists.txt
src/qownnotes-26.8.8/icons/download-icon.sh
src/qownnotes-26.8.8/cmake/FindBotan2.cmake
src/qownnotes-26.8.8/cmake/FindBotan3.cmake
src/qownnotes-26.8.8/icons/breeze-dark-qownnotes/copy-from-breeze-dark.sh
qownnotes.desktop
src/qownnotes-26.8.8/PBE.QOwnNotes.desktop
Decided to review 7 additional files: src/qownnotes-26.8.8/CMakeLists.txt, src/qownnotes-26.8.8/icons/download-icon.sh, src/qownnotes-26.8.8/cmake/FindBotan2.cmake, src/qownnotes-26.8.8/cmake/FindBotan3.cmake, src/qownnotes-26.8.8/icons/breeze-dark-qownnotes/copy-from-breeze-dark.sh, qownnotes.desktop, src/qownnotes-26.8.8/PBE.QOwnNotes.desktop
Reviewing additional files...
Reviewing additional files...
[0/7] Reviewing src/qownnotes-26.8.8/icons/download-icon.sh...
[0/7] Reviewing src/qownnotes-26.8.8/icons/download-icon.sh, src/qownnotes-26.8.8/CMakeLists.txt...
[0/7] Reviewing src/qownnotes-26.8.8/icons/download-icon.sh, src/qownnotes-26.8.8/CMakeLists.txt, src/qownnotes-26.8.8/cmake/FindBotan2.cmake...
LLM auditresponse for CMakeLists.txt:
<security_assessment>
<decision>SAFE</decision>
<details>
This CMakeLists.txt is a standard build configuration file for the QOwnNotes application. It sets up build options, finds required Qt modules and system libraries (libgit2, aspell, libsecret, etc.), includes bundled library sources, and defines installation rules. There are no suspicious network requests, obfuscated commands, file exfiltration, backdoors, or any other indicators of malicious behavior. All operations are typical for a CMake-based Qt project using bundled third-party libraries. No supply-chain attack indicators are present.
</details>
<evidence></evidence>
<summary>Standard CMake build file; no malicious indicators.</summary>
</security_assessment>

[1/7] Reviewing src/qownnotes-26.8.8/icons/download-icon.sh, src/qownnotes-26.8.8/cmake/FindBotan2.cmake...
+ Reviewed src/qownnotes-26.8.8/CMakeLists.txt. Status: SAFE -- Standard CMake build file; no malicious indicators.
[1/7] Reviewing src/qownnotes-26.8.8/icons/download-icon.sh, src/qownnotes-26.8.8/cmake/FindBotan2.cmake, src/qownnotes-26.8.8/cmake/FindBotan3.cmake...
LLM auditresponse for download-icon.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a development helper for QOwnNotes maintainers to copy icons from the KDE Breeze icon theme into the project's custom icon directories and update the corresponding Qt resource files (.qrc). It performs only local file operations (copying icons from a nix-shell-provided package path into the repository's `breeze-qownnotes/` and `breeze-dark-qownnotes/` directories) and edits XML resource files with `xmlstarlet`. There are no network requests, no obfuscation, no execution of downloaded content, and no manipulation of system files outside the project scope. The script is consistent with standard upstream packaging development practices.
</details>
<evidence></evidence>
<summary>Legitimate icon-copying helper script; no security issues.</summary>
</security_assessment>

[2/7] Reviewing src/qownnotes-26.8.8/cmake/FindBotan2.cmake, src/qownnotes-26.8.8/cmake/FindBotan3.cmake...
+ Reviewed src/qownnotes-26.8.8/icons/download-icon.sh. Status: SAFE -- Legitimate icon-copying helper script; no security issues.
[2/7] Reviewing src/qownnotes-26.8.8/cmake/FindBotan2.cmake, src/qownnotes-26.8.8/cmake/FindBotan3.cmake, src/qownnotes-26.8.8/icons/breeze-dark-qownnotes/copy-from-breeze-dark.sh...
LLM auditresponse for FindBotan3.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard CMake find module that locates the Botan3 library using pkg-config on Linux. It checks for an existing target, then uses `pkg_check_modules` to find the `botan-3` package and creates an alias. There are no network requests, obfuscation, file operations, or execution of untrusted code. The behavior is entirely normal for a packaging dependency discovery script.
</details>
<evidence></evidence>
<summary>Standard CMake find module, no security issues.</summary>
</security_assessment>

[2/7] Reviewing src/qownnotes-26.8.8/cmake/FindBotan2.cmake, src/qownnotes-26.8.8/cmake/FindBotan3.cmake, src/qownnotes-26.8.8/icons/breeze-dark-qownnotes/copy-from-breeze-dark.sh, qownnotes.desktop...
[3/7] Reviewing src/qownnotes-26.8.8/cmake/FindBotan2.cmake, src/qownnotes-26.8.8/icons/breeze-dark-qownnotes/copy-from-breeze-dark.sh, qownnotes.desktop...
+ Reviewed src/qownnotes-26.8.8/cmake/FindBotan3.cmake. Status: SAFE -- Standard CMake find module, no security issues.
LLM auditresponse for FindBotan2.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard CMake find module for locating the system-installed Botan2 library via pkg-config. The file performs no network requests, no file modifications, and no execution of untrusted code. It simply defines an imported target alias from the pkg-config result. The error message for Windows is a typical compatibility safeguard. There is no evidence of malicious or deviant behavior.
</details>
<evidence></evidence>
<summary>Standard CMake find module, no security issues.</summary>
</security_assessment>

[3/7] Reviewing src/qownnotes-26.8.8/cmake/FindBotan2.cmake, src/qownnotes-26.8.8/icons/breeze-dark-qownnotes/copy-from-breeze-dark.sh, qownnotes.desktop, src/qownnotes-26.8.8/PBE.QOwnNotes.desktop...
[4/7] Reviewing src/qownnotes-26.8.8/icons/breeze-dark-qownnotes/copy-from-breeze-dark.sh, qownnotes.desktop, src/qownnotes-26.8.8/PBE.QOwnNotes.desktop...
+ Reviewed src/qownnotes-26.8.8/cmake/FindBotan2.cmake. Status: SAFE -- Standard CMake find module, no security issues.
LLM auditresponse for PBE.QOwnNotes.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Freedesktop.org `.desktop` file for the QOwnNotes application. It defines the application name, categories, icon, and several desktop actions (`NewNote`, `ShowTodoList`, `SendClipboardAsText`). All `Exec` lines invoke the application's own binary with command-line arguments that correspond to built-in features of QOwnNotes. There are no network requests, obfuscated code, file operations, or any deviation from legitimate desktop integration. No security concerns are present in this file.</details>
<evidence></evidence>
<summary>Standard desktop entry file, no security issues.</summary>
</security_assessment>

[5/7] Reviewing src/qownnotes-26.8.8/icons/breeze-dark-qownnotes/copy-from-breeze-dark.sh, qownnotes.desktop...
+ Reviewed src/qownnotes-26.8.8/PBE.QOwnNotes.desktop. Status: SAFE -- Standard desktop entry file, no security issues.
LLM auditresponse for copy-from-breeze-dark.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a straightforward maintainer helper that copies SVG icons from the system's breeze-dark icon theme into the project's local dark icon directory. It uses only standard shell commands (`find`, `basename`, `cp`, `exit`) and does not perform any network requests, execute untrusted code, or modify system files outside the project tree. The hardcoded path `/run/current-system/sw/share/icons/breeze-dark/actions/16/` is specific to NixOS and is not a standard Arch Linux path, but this is a portability consideration, not evidence of malicious activity. The script is part of the upstream source and intended for developer use, not for automatic execution during package build or installation.
</details>
<evidence></evidence>
<summary>Helper script for copying icons; no malicious behavior.</summary>
</security_assessment>

[6/7] Reviewing qownnotes.desktop...
+ Reviewed src/qownnotes-26.8.8/icons/breeze-dark-qownnotes/copy-from-breeze-dark.sh. Status: SAFE -- Helper script for copying icons; no malicious behavior.
LLM auditresponse for qownnotes.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Freedesktop.org `.desktop` file. It contains only metadata for the application launcher: name, comment, executable path, icon, category, and flags. There is no executable code, no network requests, no file operations, no obfuscation, and no deviation from standard packaging practices. The file is safe.
</details>
<evidence></evidence>
<summary>Standard desktop entry file, no security issues.</summary>
</security_assessment>

[7/7] Reviewing ...
+ Reviewed qownnotes.desktop. Status: SAFE -- Standard desktop entry file, no security issues.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
(Skipped 1 file: qownnotes-26.8.8.tar.xz)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 32,830
  Completion Tokens: 5,018
  Total Tokens: 37,848
  Total Cost: $0.002461
  Execution Time: 85.94 seconds

Final Status: SAFE


No issues found.


Audit Skips:

qownnotes-26.8.8.tar.xz: [SKIPPED] Skipping binary file: qownnotes-26.8.8.tar.xz
