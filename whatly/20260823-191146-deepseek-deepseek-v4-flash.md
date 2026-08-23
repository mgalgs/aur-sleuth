---
package: whatly
pkgver: 7.3.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 4fdfd87aaec54365f5eb3ea9cd4b5b3cd402f1d8
prompt_tokens: 21501
completion_tokens: 6293
total_tokens: 27794
cost: 0.00166549082
execution_time: 178.2
files_reviewed: 6
files_skipped: 0
files_unauditable: 12
unpinned_sources: 0
date: 2026-08-23T19:11:46Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no malicious indicators.
  - file: src/whatly/dist/linux/net.shakaran.whatly.desktop
    status: safe
    summary: Standard desktop entry; no security issues.
  - file: src/libnotify-qt/cmake/QtPathFinder.cmake
    status: safe
    summary: Standard Qt CMake helper, no security issues.
  - file: src/libnotify-qt/CMakeLists.txt
    status: safe
    summary: Standard CMake build file, no security issues.
  - file: src/whatly/src/icons/app/resize.sh
    status: safe
    summary: Standard image resizing script; no security issues.
  - file: src/whatly/src/icons/app/notification_resize.sh
    status: safe
    summary: Benign icon generation script, no malicious behavior.
---

Cloning https://aur.archlinux.org/whatly.git...
Cloned whatly
Analyzing whatly AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only defines variables and function bodies at the top level. No command substitution, backtick execution, or other dangerous top-level code is present. The source array uses standard `git+https://` URLs from GitHub, which is normal for AUR packages. The `sha256sums` are set to `SKIP`, which is expected for VCS sources. Since `pkgver()` is not defined, no additional code runs during sourcing. The `prepare()`, `build()`, and `package()` functions are defined but will not be executed due to the `--nobuild --nodeps --noprepare` flags. Fetching the sources via `git clone` is safe; no payload execution or data exfiltration risks are introduced during this phase.
</details>
<evidence></evidence>
<summary>Safe: no malicious top-level code; standard git sources.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe: no malicious top-level code; standard git sources.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/1] Reviewing PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a VCS-based package. The use of `SKIP` checksums is expected for git sources. The `prepare()` function initializes the `libnotify-qt` submodule and configures its URL to point to the local checkout fetched from a second source array entry, which is a legitimate technique to handle missing submodules in release tarballs. All operations (cmake, submodule update, install) are confined to the package build directory and use trusted upstream repositories. No obfuscated code, dangerous commands, or unexpected network activity is present.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with no malicious indicators.</summary>
</security_assessment>

[1/1] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no malicious indicators.
Reviewed all required files.
Deciding which files to review next...
Note: 12 compiled/archived file(s) cannot be audited as text and were not reviewed (src/whatly/docs/whatly-promo.mp4, src/whatly/packaging/gentoo/net-im/whatly/metadata.xml, src/whatly/packaging/gentoo/net-im/whatly/whatly-7.3.1.ebuild and 9 more). For a package that ships prebuilt binaries, the audit covers the packaging, not the payload.
Note: 459 files available for selection; offering the 50 highest-priority to the model. 371 lower-priority file(s) were not offered.
LLM response for file selection:
src/libnotify-qt/CMakeLists.txt
src/libnotify-qt/cmake/QtPathFinder.cmake
src/whatly/dist/linux/net.shakaran.whatly.desktop
src/whatly/src/icons/app/notification_resize.sh
src/whatly/src/icons/app/resize.sh
Decided to review 5 additional files: src/libnotify-qt/CMakeLists.txt, src/libnotify-qt/cmake/QtPathFinder.cmake, src/whatly/dist/linux/net.shakaran.whatly.desktop, src/whatly/src/icons/app/notification_resize.sh, src/whatly/src/icons/app/resize.sh
Reviewing additional files...
Reviewing additional files...
[0/5] Reviewing src/libnotify-qt/CMakeLists.txt...
[0/5] Reviewing src/libnotify-qt/CMakeLists.txt, src/libnotify-qt/cmake/QtPathFinder.cmake...
[0/5] Reviewing src/libnotify-qt/CMakeLists.txt, src/libnotify-qt/cmake/QtPathFinder.cmake, src/whatly/dist/linux/net.shakaran.whatly.desktop...
LLM auditresponse for net.shakaran.whatly.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.desktop` file for the Whatly Qt WhatsApp Web client. It defines the application's metadata, icon, executable commands, categories, MIME type handlers, and desktop actions (New Chat, Settings, Theme, Lock, About). All `Exec` lines invoke the `whatly` binary with expected flags (`-n`, `-t`, `-s`, `-l`, `-i`). No suspicious network requests, obfuscated code, file operations, or system modifications are present. The file follows normal packaging practices and does not contain any indicators of a supply-chain attack.
</details>
<evidence></evidence>
<summary>Standard desktop entry; no security issues.</summary>
</security_assessment>

[1/5] Reviewing src/libnotify-qt/CMakeLists.txt, src/libnotify-qt/cmake/QtPathFinder.cmake...
+ Reviewed src/whatly/dist/linux/net.shakaran.whatly.desktop. Status: SAFE -- Standard desktop entry; no security issues.
[1/5] Reviewing src/libnotify-qt/CMakeLists.txt, src/libnotify-qt/cmake/QtPathFinder.cmake, src/whatly/src/icons/app/notification_resize.sh...
LLM auditresponse for QtPathFinder.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard CMake module for discovering Qt installation paths. It uses `find_package` and `execute_process` with legitimate Qt tools (`qmake -query` and `qtpaths --query`) to retrieve paths. There is no network activity, no obfuscated code, no unusual encoding, no dangerous commands (`eval`, `base64`, `curl`, `wget`), and no tampering with system files. The function `qt_path_find` is a helper for querying Qt variables, typical for CMake-based Qt projects. Nothing in this file indicates a supply-chain attack or malicious intent.
</details>
<evidence></evidence>
<summary>Standard Qt CMake helper, no security issues.</summary>
</security_assessment>

[1/5] Reviewing src/libnotify-qt/CMakeLists.txt, src/libnotify-qt/cmake/QtPathFinder.cmake, src/whatly/src/icons/app/notification_resize.sh, src/whatly/src/icons/app/resize.sh...
[2/5] Reviewing src/libnotify-qt/CMakeLists.txt, src/whatly/src/icons/app/notification_resize.sh, src/whatly/src/icons/app/resize.sh...
+ Reviewed src/libnotify-qt/cmake/QtPathFinder.cmake. Status: SAFE -- Standard Qt CMake helper, no security issues.
LLM auditresponse for CMakeLists.txt:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard CMakeLists.txt for a Qt library binding (libnotify-qt). It uses conventional CMake commands (project, find_package, add_subdirectory, option, foreach) and includes only standard packaging modules (ECM, GNUInstallDirs, etc.). There are no suspicious network requests, obfuscated code, dangerous command execution, or unexpected file operations. The homepage URL points to the project's own GitHub repository. All operations are consistent with normal build system configuration.
</details>
<evidence></evidence>
<summary>Standard CMake build file, no security issues.</summary>
</security_assessment>

[3/5] Reviewing src/whatly/src/icons/app/notification_resize.sh, src/whatly/src/icons/app/resize.sh...
+ Reviewed src/libnotify-qt/CMakeLists.txt. Status: SAFE -- Standard CMake build file, no security issues.
LLM auditresponse for resize.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a standard ImageMagick wrapper for batch-resizing images into multiple output sizes. It takes user input interactively (source, destination, signature, gravity) and uses `convert`, `identify`, and `python -c` for simple arithmetic. There are no network requests, no obfuscated commands, no execution of externally fetched content, and no operations outside of image processing on the user's specified files. The script is part of the package's icon generation workflow and matches its stated purpose. No malicious or supply-chain attack indicators are present.
</details>
<evidence>
</evidence>
<summary>Standard image resizing script; no security issues.</summary>
</security_assessment>

[4/5] Reviewing src/whatly/src/icons/app/notification_resize.sh...
+ Reviewed src/whatly/src/icons/app/resize.sh. Status: SAFE -- Standard image resizing script; no security issues.
LLM auditresponse for notification_resize.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a straightforward ImageMagick-based icon generation utility. It takes an image file, calculates overlay dimensions using `bc`, and generates notification icons numbered 1–9 and a plus sign for 10. All commands (`identify`, `convert`, `bc`, `echo`, `cat`) are standard tools with no network access, data exfiltration, or execution of untrusted code. The SVG overlay is generated inline and is composed entirely of geometry variables derived from the input image. There are no obfuscated strings, encoded payloads, or suspicious file operations beyond writing the generated icons to the current directory with predictable filenames. The script serves only its stated purpose and contains no evidence of a supply-chain attack.
</details>
<evidence></evidence>
<summary>Benign icon generation script, no malicious behavior.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed src/whatly/src/icons/app/notification_resize.sh. Status: SAFE -- Benign icon generation script, no malicious behavior.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 21,501
  Completion Tokens: 6,293
  Total Tokens: 27,794
  Total Cost: $0.001665
  Execution Time: 178.20 seconds

Final Status: SAFE


No issues found.
