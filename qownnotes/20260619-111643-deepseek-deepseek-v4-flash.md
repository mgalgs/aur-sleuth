---
package: qownnotes
pkgver: 26.6.7
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 11c93a0c95e2166961e3664fea6b5a63827ded10
prompt_tokens: 87758
completion_tokens: 7490
total_tokens: 95248
cost: 0.00924642
execution_time: 149.97
files_reviewed: 11
files_skipped: 1
date: 2026-06-19T11:16:43Z
file_verdicts:
  - file: qownnotes-26.6.7.tar.xz
    status: skipped
    summary: "Skipping binary file: qownnotes-26.6.7.tar.xz"
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD, no security issues found.
  - file: src/qownnotes-26.6.7/PBE.QOwnNotes.desktop
    status: safe
    summary: Standard .desktop file, no security issues.
  - file: qownnotes.desktop
    status: safe
    summary: Standard desktop entry file, no malicious content.
  - file: src/qownnotes-26.6.7/cmake/FindBotan3.cmake
    status: safe
    summary: Standard CMake find module, no malicious content.
  - file: src/qownnotes-26.6.7/cmake/FindBotan2.cmake
    status: safe
    summary: Standard CMake find-module; no security issues.
  - file: src/qownnotes-26.6.7/languages/QOwnNotes_en.ts
    status: safe
    summary: Standard Qt translation file with no security concerns.
  - file: src/qownnotes-26.6.7/languages/QOwnNotes_de.ts
    status: safe
    summary: Standard translation file; no security concerns.
  - file: src/qownnotes-26.6.7/CMakeLists.txt
    status: safe
    summary: Standard CMake build file, no malicious code.
  - file: src/qownnotes-26.6.7/icons/download-icon.sh
    status: safe
    summary: Legitimate icon-copying helper; no security concerns.
  - file: src/qownnotes-26.6.7/icons/breeze-dark-qownnotes/copy-from-breeze-dark.sh
    status: safe
    summary: Routine icon-copying script; no malicious behavior.
  - file: src/qownnotes-26.6.7/debian/qownnotes.install
    status: safe
    summary: Benign file listing; no security issues.
---

Cloning https://aur.archlinux.org/qownnotes.git to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-mqj57hj0...
Cloned repository to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-mqj57hj0
Analyzing qownnotes AUR package (working in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-mqj57hj0) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global scope contains only standard variable assignments and a single source entry pointing to an official GitHub release tarball for QOwnNotes. There are no top-level command substitutions, function calls, or obfuscated code that would execute during `makepkg --printsrcinfo` or source fetching. The `sha256sums` are pinned, providing integrity verification. No code in `prepare()`, `build()`, or `package()` is executed by the specified commands. The source URL is from the legitimate upstream project repository. No malicious behavior is present.
</details>
<summary>
Standard PKGBUILD with pinned source, no top-level execution risks.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- Standard PKGBUILD with pinned source, no top-level execution risks.[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, qownnotes-26.6.7.tar.xz...
[1/2] Reviewing PKGBUILD...
! Reviewed qownnotes-26.6.7.tar.xz. Status: SKIPPED -- Skipping binary file: qownnotes-26.6.7.tar.xz
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard Arch Linux packaging file for QOwnNotes. It downloads the source tarball from the official GitHub releases page using HTTPS, with a pinned sha256 sum for integrity verification. The build follows normal CMake procedures, and the package installs files into the system prefix using CMake&#39;s install target. There are no suspicious network requests, obfuscated commands, unexpected file operations, or any indicators of a supply chain attack. The unused `tag` variable is harmless. All operations are consistent with safe packaging practices.
</details>
<summary>Standard PKGBUILD, no security issues found.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD, no security issues found.
Reviewed all required files.
Deciding which files to review next...
Note: 1150 files available for selection; offering the 50 highest-priority to the model. 1003 lower-priority file(s) were not offered.
LLM response for file selection:
qownnotes.desktop
src/qownnotes-26.6.7/CMakeLists.txt
src/qownnotes-26.6.7/PBE.QOwnNotes.desktop
src/qownnotes-26.6.7/cmake/FindBotan2.cmake
src/qownnotes-26.6.7/cmake/FindBotan3.cmake
src/qownnotes-26.6.7/debian/qownnotes.install
src/qownnotes-26.6.7/icons/breeze-dark-qownnotes/copy-from-breeze-dark.sh
src/qownnotes-26.6.7/icons/download-icon.sh
src/qownnotes-26.6.7/languages/QOwnNotes_en.ts
src/qownnotes-26.6.7/languages/QOwnNotes_de.ts
Decided to review 10 additional files: qownnotes.desktop, src/qownnotes-26.6.7/CMakeLists.txt, src/qownnotes-26.6.7/PBE.QOwnNotes.desktop, src/qownnotes-26.6.7/cmake/FindBotan2.cmake, src/qownnotes-26.6.7/cmake/FindBotan3.cmake, src/qownnotes-26.6.7/debian/qownnotes.install, src/qownnotes-26.6.7/icons/breeze-dark-qownnotes/copy-from-breeze-dark.sh, src/qownnotes-26.6.7/icons/download-icon.sh, src/qownnotes-26.6.7/languages/QOwnNotes_en.ts, src/qownnotes-26.6.7/languages/QOwnNotes_de.ts
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing qownnotes.desktop...
[0/10] Reviewing qownnotes.desktop, src/qownnotes-26.6.7/CMakeLists.txt...
[0/10] Reviewing qownnotes.desktop, src/qownnotes-26.6.7/CMakeLists.txt, src/qownnotes-26.6.7/PBE.QOwnNotes.desktop...
[0/10] Reviewing qownnotes.desktop, src/qownnotes-26.6.7/CMakeLists.txt, src/qownnotes-26.6.7/PBE.QOwnNotes.desktop, src/qownnotes-26.6.7/cmake/FindBotan2.cmake...
[0/10] Reviewing qownnotes.desktop, src/qownnotes-26.6.7/CMakeLists.txt, src/qownnotes-26.6.7/PBE.QOwnNotes.desktop, src/qownnotes-26.6.7/cmake/FindBotan2.cmake, src/qownnotes-26.6.7/cmake/FindBotan3.cmake...
[0/10] Reviewing qownnotes.desktop, src/qownnotes-26.6.7/CMakeLists.txt, src/qownnotes-26.6.7/PBE.QOwnNotes.desktop, src/qownnotes-26.6.7/cmake/FindBotan2.cmake, src/qownnotes-26.6.7/cmake/FindBotan3.cmake, src/qownnotes-26.6.7/icons/breeze-dark-qownnotes/copy-from-breeze-dark.sh...
[0/10] Reviewing qownnotes.desktop, src/qownnotes-26.6.7/CMakeLists.txt, src/qownnotes-26.6.7/PBE.QOwnNotes.desktop, src/qownnotes-26.6.7/cmake/FindBotan2.cmake, src/qownnotes-26.6.7/cmake/FindBotan3.cmake, src/qownnotes-26.6.7/icons/breeze-dark-qownnotes/copy-from-breeze-dark.sh, src/qownnotes-26.6.7/debian/qownnotes.install...
[0/10] Reviewing qownnotes.desktop, src/qownnotes-26.6.7/CMakeLists.txt, src/qownnotes-26.6.7/PBE.QOwnNotes.desktop, src/qownnotes-26.6.7/cmake/FindBotan2.cmake, src/qownnotes-26.6.7/cmake/FindBotan3.cmake, src/qownnotes-26.6.7/icons/breeze-dark-qownnotes/copy-from-breeze-dark.sh, src/qownnotes-26.6.7/debian/qownnotes.install, src/qownnotes-26.6.7/icons/download-icon.sh...
[0/10] Reviewing qownnotes.desktop, src/qownnotes-26.6.7/CMakeLists.txt, src/qownnotes-26.6.7/PBE.QOwnNotes.desktop, src/qownnotes-26.6.7/cmake/FindBotan2.cmake, src/qownnotes-26.6.7/cmake/FindBotan3.cmake, src/qownnotes-26.6.7/icons/breeze-dark-qownnotes/copy-from-breeze-dark.sh, src/qownnotes-26.6.7/debian/qownnotes.install, src/qownnotes-26.6.7/icons/download-icon.sh, src/qownnotes-26.6.7/languages/QOwnNotes_en.ts...
[0/10] Reviewing qownnotes.desktop, src/qownnotes-26.6.7/CMakeLists.txt, src/qownnotes-26.6.7/PBE.QOwnNotes.desktop, src/qownnotes-26.6.7/cmake/FindBotan2.cmake, src/qownnotes-26.6.7/cmake/FindBotan3.cmake, src/qownnotes-26.6.7/icons/breeze-dark-qownnotes/copy-from-breeze-dark.sh, src/qownnotes-26.6.7/debian/qownnotes.install, src/qownnotes-26.6.7/icons/download-icon.sh, src/qownnotes-26.6.7/languages/QOwnNotes_en.ts, src/qownnotes-26.6.7/languages/QOwnNotes_de.ts...
LLM auditresponse for PBE.QOwnNotes.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.desktop` file for the QOwnNotes application. It defines the application's name, icon, categories, and actions for launching the program with specific command-line flags. All `Exec` entries invoke the `QOwnNotes` binary with straightforward arguments. There are no obfuscated commands, network requests, file manipulations, or any other signs of malicious behavior. The file is consistent with normal packaging practices for a Linux desktop application.
</details>
<summary>Standard .desktop file, no security issues.</summary>
</security_assessment>

[1/10] Reviewing qownnotes.desktop, src/qownnotes-26.6.7/CMakeLists.txt, src/qownnotes-26.6.7/cmake/FindBotan2.cmake, src/qownnotes-26.6.7/cmake/FindBotan3.cmake, src/qownnotes-26.6.7/icons/breeze-dark-qownnotes/copy-from-breeze-dark.sh, src/qownnotes-26.6.7/debian/qownnotes.install, src/qownnotes-26.6.7/icons/download-icon.sh, src/qownnotes-26.6.7/languages/QOwnNotes_en.ts, src/qownnotes-26.6.7/languages/QOwnNotes_de.ts...
+ Reviewed src/qownnotes-26.6.7/PBE.QOwnNotes.desktop. Status: SAFE -- Standard .desktop file, no security issues.
LLM auditresponse for qownnotes.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `qownnotes.desktop` is a standard Linux desktop entry file. It contains only metadata such as the application name, comment, executable path, icon, and categories. There are no executable commands, network requests, obfuscated code, or any other suspicious elements. This file is a normal part of packaging and poses no security risk.
</details>
<summary>Standard desktop entry file, no malicious content.</summary>
</security_assessment>

[2/10] Reviewing src/qownnotes-26.6.7/CMakeLists.txt, src/qownnotes-26.6.7/cmake/FindBotan2.cmake, src/qownnotes-26.6.7/cmake/FindBotan3.cmake, src/qownnotes-26.6.7/icons/breeze-dark-qownnotes/copy-from-breeze-dark.sh, src/qownnotes-26.6.7/debian/qownnotes.install, src/qownnotes-26.6.7/icons/download-icon.sh, src/qownnotes-26.6.7/languages/QOwnNotes_en.ts, src/qownnotes-26.6.7/languages/QOwnNotes_de.ts...
+ Reviewed qownnotes.desktop. Status: SAFE -- Standard desktop entry file, no malicious content.
LLM auditresponse for FindBotan3.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `FindBotan3.cmake` is a standard CMake find module for locating the Botan 3 library using pkg-config. It checks for MSVC/MinGW (aborting with an error on Windows), checks if the target already exists, then uses `pkg_check_modules` to locate the library via `botan-3` and creates an alias target `Botan3::Botan3`. There are no suspicious operations, no network requests beyond normal pkg-config usage, no obfuscated code, and no deviation from standard packaging or build helper practices. The file is consistent with the expected behavior of a CMake finder module for an upstream library.
</details>
<summary>Standard CMake find module, no malicious content.</summary>
</security_assessment>

[3/10] Reviewing src/qownnotes-26.6.7/CMakeLists.txt, src/qownnotes-26.6.7/cmake/FindBotan2.cmake, src/qownnotes-26.6.7/icons/breeze-dark-qownnotes/copy-from-breeze-dark.sh, src/qownnotes-26.6.7/debian/qownnotes.install, src/qownnotes-26.6.7/icons/download-icon.sh, src/qownnotes-26.6.7/languages/QOwnNotes_en.ts, src/qownnotes-26.6.7/languages/QOwnNotes_de.ts...
+ Reviewed src/qownnotes-26.6.7/cmake/FindBotan3.cmake. Status: SAFE -- Standard CMake find module, no malicious content.
LLM auditresponse for FindBotan2.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
FindBotan2.cmake is a standard CMake module for locating the Botan2 library via pkg-config. It performs no network operations, no obfuscation, no dangerous commands, and no file modifications outside the CMake build process. The only check is a fatal error on Windows (MSVC/MINGW), which is a packaging constraint. This file is consistent with normal, safe CMake practices and does not contain any supply-chain attack indicators.
</details>
<summary>Standard CMake find-module; no security issues.</summary>
</security_assessment>

[4/10] Reviewing src/qownnotes-26.6.7/CMakeLists.txt, src/qownnotes-26.6.7/icons/breeze-dark-qownnotes/copy-from-breeze-dark.sh, src/qownnotes-26.6.7/debian/qownnotes.install, src/qownnotes-26.6.7/icons/download-icon.sh, src/qownnotes-26.6.7/languages/QOwnNotes_en.ts, src/qownnotes-26.6.7/languages/QOwnNotes_de.ts...
+ Reviewed src/qownnotes-26.6.7/cmake/FindBotan2.cmake. Status: SAFE -- Standard CMake find-module; no security issues.
LLM auditresponse for QOwnNotes_en.ts:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a Qt translation file (`.ts` XML format) containing only user-visible strings for the QOwnNotes application. It contains no executable code, no shell commands, no network operations (curl/wget), no obfuscated content, and no file manipulation logic. The head and tail excerpts show only standard translation entries with source texts pointing to source code locations. There is no evidence of malicious injection. This file poses no supply-chain risk.
</details>
<summary>Standard Qt translation file with no security concerns.</summary>
</security_assessment>

[5/10] Reviewing src/qownnotes-26.6.7/CMakeLists.txt, src/qownnotes-26.6.7/icons/breeze-dark-qownnotes/copy-from-breeze-dark.sh, src/qownnotes-26.6.7/debian/qownnotes.install, src/qownnotes-26.6.7/icons/download-icon.sh, src/qownnotes-26.6.7/languages/QOwnNotes_de.ts...
+ Reviewed src/qownnotes-26.6.7/languages/QOwnNotes_en.ts. Status: SAFE -- Standard Qt translation file with no security concerns.
LLM auditresponse for QOwnNotes_de.ts:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `QOwnNotes_de.ts` is a standard Qt Linguist translation file containing XML entries that map English source strings to their German translations. The entire reviewed content consists of `<context>`, `<message>`, `<source>`, and `<translation>` elements. There are no executable commands, no network requests (curl/wget), no obfuscated code (eval/base64), no file system operations, and no deviations from expected translation file content. The file serves only to provide localized text for the QOwnNotes application's user interface.
</details>
<summary>Standard translation file; no security concerns.</summary>
</security_assessment>

[6/10] Reviewing src/qownnotes-26.6.7/CMakeLists.txt, src/qownnotes-26.6.7/icons/breeze-dark-qownnotes/copy-from-breeze-dark.sh, src/qownnotes-26.6.7/debian/qownnotes.install, src/qownnotes-26.6.7/icons/download-icon.sh...
+ Reviewed src/qownnotes-26.6.7/languages/QOwnNotes_de.ts. Status: SAFE -- Standard translation file; no security concerns.
LLM auditresponse for CMakeLists.txt:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard CMake build file for the QOwnNotes application. It configures the project with CMake options, finds required Qt components, and includes bundled libraries (Botan, Sonnet, QHotKey, QtKeychain, FakeVim, etc.) for legitimate purposes like spell checking, cryptography, keyboard shortcuts, and syntax highlighting. The file lists all source files, sets up compilation flags, links libraries, and handles installation. There are no network requests, no execution of external commands like `curl` or `wget`, no obfuscated code, and no attempts to exfiltrate data or modify system files outside the installation tree. The only external dependencies are system libraries (Qt, libgit2, Aspell) found via `find_package` and `pkg_check_modules`, which is standard practice. The use of `include(libraries/sonnet/src/plugins/hunspell/hunspell/CMakeLists.txt)` and similar `add_subdirectory` commands for bundled libraries is normal for applications that vendor dependencies. Nothing in this file deviates from expected build system behavior for a QT application.
</details>
<summary>Standard CMake build file, no malicious code.</summary>
</security_assessment>

[7/10] Reviewing src/qownnotes-26.6.7/icons/breeze-dark-qownnotes/copy-from-breeze-dark.sh, src/qownnotes-26.6.7/debian/qownnotes.install, src/qownnotes-26.6.7/icons/download-icon.sh...
+ Reviewed src/qownnotes-26.6.7/CMakeLists.txt. Status: SAFE -- Standard CMake build file, no malicious code.
LLM auditresponse for download-icon.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script `download-icon.sh` is a straightforward helper for copying icons from the system's breeze-icons package (expected to be available via Nix) into the local package directories and updating Qt resource files (`.qrc`). It performs no network operations, does not execute any untrusted code, and does not exfiltrate data. The only file operations are reading SVG icons from a trusted system location and writing them to local directories, plus editing XML resource files with `xmlstarlet` – standard packaging steps. There is no obfuscation, no dangerous commands, and no deviation from legitimate packaging tasks. Even though it runs in a Nix shell, that is merely the environment declared by the shebang; the script itself is safe.
</details>
<summary>Legitimate icon-copying helper; no security concerns.</summary>
</security_assessment>

[8/10] Reviewing src/qownnotes-26.6.7/icons/breeze-dark-qownnotes/copy-from-breeze-dark.sh, src/qownnotes-26.6.7/debian/qownnotes.install...
+ Reviewed src/qownnotes-26.6.7/icons/download-icon.sh. Status: SAFE -- Legitimate icon-copying helper; no security concerns.
LLM auditresponse for copy-from-breeze-dark.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a straightforward helper for copying SVG icons from a breeze-dark icon theme into the package's icon directory. It performs no network operations, does not execute any fetched code, and uses only standard file operations (`cd`, `find`, `basename`, `cp`). The paths are legitimate system icon paths (a NixOS-specific path is used, but the commented-out standard path indicates the script is adaptable). There is no obfuscation, no dangerous commands, and no behavior outside of its stated purpose of copying icons for the QOwnNotes package. This is a normal maintenance script and not a supply-chain attack.
</details>
<summary>Routine icon-copying script; no malicious behavior.</summary>
</security_assessment>

[9/10] Reviewing src/qownnotes-26.6.7/debian/qownnotes.install...
+ Reviewed src/qownnotes-26.6.7/icons/breeze-dark-qownnotes/copy-from-breeze-dark.sh. Status: SAFE -- Routine icon-copying script; no malicious behavior.
LLM auditresponse for qownnotes.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a plain list of source file paths and destination directories, typical of an installation manifest for a Qt application (icons, translations, desktop file, binary). It contains no shell commands, no network requests, no obfuscation, and no dynamic code execution. The content is entirely static and serves only to define which files are installed where. No evidence of supply-chain attack or malicious behavior is present.
</details>
<summary>Benign file listing; no security issues.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/qownnotes-26.6.7/debian/qownnotes.install. Status: SAFE -- Benign file listing; no security issues.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
(Skipped 1 file: qownnotes-26.6.7.tar.xz)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 87,758
  Completion Tokens: 7,490
  Total Tokens: 95,248
  Total Cost: $0.009246
  Execution Time: 149.97 seconds
Full audit report can be found in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-qownnotes.txt
Final Status: SAFE


No issues found.


Audit Skips:

/home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-mqj57hj0/qownnotes-26.6.7.tar.xz: [SKIPPED] Skipping binary file: qownnotes-26.6.7.tar.xz
