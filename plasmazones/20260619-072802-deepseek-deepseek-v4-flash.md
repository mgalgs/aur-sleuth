---
package: plasmazones
pkgver: 3.0.17
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 65e0c3f98e3e15c2f2b5d512e37cace17814cac6
prompt_tokens: 45667
completion_tokens: 8403
total_tokens: 54070
cost: 0.00562257
execution_time: 67.42
files_reviewed: 12
files_skipped: 1
date: 2026-06-19T07:28:02Z
file_verdicts:
  - file: plasmazones-3.0.17.tar.gz
    status: skipped
    summary: "Skipping binary file: plasmazones-3.0.17.tar.gz"
  - file: plasmazones.install
    status: safe
    summary: Standard install script with cache refresh and service disable.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with no evidence of malicious behavior.
  - file: src/PlasmaZones-3.0.17/kcm/settings-windowmanagement-plasmazones.desktop
    status: safe
    summary: Standard KDE settings desktop file, no security issues.
  - file: src/PlasmaZones-3.0.17/libs/phosphor-tiles/src/builtins/applyPerWindowMinSize.js
    status: safe
    summary: Simple window size helper, no security issues.
  - file: src/PlasmaZones-3.0.17/cmake/post-install-sycoca.sh
    status: safe
    summary: Standard KDE post-install cache refresh script, no malicious behavior.
  - file: src/PlasmaZones-3.0.17/cmake/format-qml.cmake
    status: safe
    summary: Benign CMake formatting script with no malicious behavior.
  - file: src/PlasmaZones-3.0.17/libs/phosphor-tiles/src/builtins/appendGracefulDegradation.js
    status: safe
    summary: "Safe: standard tiling algorithm, no network/obfuscation/malicious code."
  - file: src/PlasmaZones-3.0.17/data/algorithms/cascade.js
    status: safe
    summary: Cascade layout algorithm, no malicious behavior found.
  - file: kbuildsycoca.hook
    status: safe
    summary: Standard pacman hook for KDE cache refresh; no security concerns.
  - file: src/PlasmaZones-3.0.17/.copr/Makefile
    status: safe
    summary: Standard COPR SRPM build Makefile; safe.
  - file: src/PlasmaZones-3.0.17/data/algorithms/bsp.js
    status: safe
    summary: Benign KWin tiling script; no malicious code.
  - file: src/PlasmaZones-3.0.17/CMakeLists.txt
    status: safe
    summary: Standard CMake build configuration, no malicious behavior.
---

Cloning https://aur.archlinux.org/plasmazones.git to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-j89v4bc4...
Cloned repository to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-j89v4bc4
Analyzing plasmazones AUR package (working in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-j89v4bc4) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains no code in the global scope or `pkgver()` that executes malicious commands. The `source` array points to a standard GitHub tarball for the package itself, with a valid SHA256 checksum. There are no `curl`, `wget`, `eval`, `base64`, or obfuscated constructs. The `build()` and `package()` functions are defined but will not be executed during `makepkg --nobuild --nodeps --noprepare` or `makepkg --printsrcinfo`. Thus, fetching the source and sourcing the PKGBUILD is safe.
</details>
<summary>Safe: no malicious top-level code or pkgver() content.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- Safe: no malicious top-level code or pkgver() content.[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/3] Reviewing PKGBUILD...
[0/3] Reviewing PKGBUILD, plasmazones.install...
[0/3] Reviewing PKGBUILD, plasmazones.install, plasmazones-3.0.17.tar.gz...
[1/3] Reviewing PKGBUILD, plasmazones.install...
! Reviewed plasmazones-3.0.17.tar.gz. Status: SKIPPED -- Skipping binary file: plasmazones-3.0.17.tar.gz
LLM auditresponse for plasmazones.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `plasmazones.install` is a standard Arch Linux package install script. It performs routine post-install, upgrade, and removal operations: refreshing icon/desktop/mime caches (`gtk-update-icon-cache`, `update-desktop-database`, `update-mime-database`, `kbuildsycoca6`), disabling a systemd user unit on removal, and printing informational messages. All commands are standard packaging practices — no network access, no downloads, no obfuscated code, no data exfiltration, and no unexpected system modifications. The script does exactly what a package maintainer would write to ensure the package integrates with the desktop environment.
</details>
<summary>Standard install script with cache refresh and service disable.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed plasmazones.install. Status: SAFE -- Standard install script with cache refresh and service disable.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard Arch Linux packaging practices for a KDE Plasma extension. The source is fetched from the project's own GitHub tag archive (`url/archive/refs/tags/v$pkgver.tar.gz`) with a pinned checksum, not `SKIP`. The build uses cmake and ninja, with no unusual commands or network requests. The only operations during `package()` are installing build artifacts, a pacman hook, a refresh script, and license files – all sourced from the upstream tarball. There is no obfuscated code, no execution of untrusted fetched content at build time, and no unexpected system modifications. The file contains no indicators of a supply-chain attack.
</details>
<summary>Standard PKGBUILD with no evidence of malicious behavior.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with no evidence of malicious behavior.
Reviewed all required files.
Deciding which files to review next...
Note: 1753 files available for selection; offering the 50 highest-priority to the model. 1395 lower-priority file(s) were not offered.
LLM response for file selection:
kbuildsycoca.hook
src/PlasmaZones-3.0.17/.copr/Makefile
src/PlasmaZones-3.0.17/CMakeLists.txt
src/PlasmaZones-3.0.17/cmake/format-qml.cmake
src/PlasmaZones-3.0.17/cmake/post-install-sycoca.sh
src/PlasmaZones-3.0.17/kcm/settings-windowmanagement-plasmazones.desktop
src/PlasmaZones-3.0.17/data/algorithms/bsp.js
src/PlasmaZones-3.0.17/libs/phosphor-tiles/src/builtins/appendGracefulDegradation.js
src/PlasmaZones-3.0.17/data/algorithms/cascade.js
src/PlasmaZones-3.0.17/libs/phosphor-tiles/src/builtins/applyPerWindowMinSize.js
Decided to review 10 additional files: kbuildsycoca.hook, src/PlasmaZones-3.0.17/.copr/Makefile, src/PlasmaZones-3.0.17/CMakeLists.txt, src/PlasmaZones-3.0.17/cmake/format-qml.cmake, src/PlasmaZones-3.0.17/cmake/post-install-sycoca.sh, src/PlasmaZones-3.0.17/kcm/settings-windowmanagement-plasmazones.desktop, src/PlasmaZones-3.0.17/data/algorithms/bsp.js, src/PlasmaZones-3.0.17/libs/phosphor-tiles/src/builtins/appendGracefulDegradation.js, src/PlasmaZones-3.0.17/data/algorithms/cascade.js, src/PlasmaZones-3.0.17/libs/phosphor-tiles/src/builtins/applyPerWindowMinSize.js
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing kbuildsycoca.hook...
[0/10] Reviewing kbuildsycoca.hook, src/PlasmaZones-3.0.17/.copr/Makefile...
[0/10] Reviewing kbuildsycoca.hook, src/PlasmaZones-3.0.17/.copr/Makefile, src/PlasmaZones-3.0.17/CMakeLists.txt...
[0/10] Reviewing kbuildsycoca.hook, src/PlasmaZones-3.0.17/.copr/Makefile, src/PlasmaZones-3.0.17/CMakeLists.txt, src/PlasmaZones-3.0.17/cmake/format-qml.cmake...
[0/10] Reviewing kbuildsycoca.hook, src/PlasmaZones-3.0.17/.copr/Makefile, src/PlasmaZones-3.0.17/CMakeLists.txt, src/PlasmaZones-3.0.17/cmake/format-qml.cmake, src/PlasmaZones-3.0.17/kcm/settings-windowmanagement-plasmazones.desktop...
[0/10] Reviewing kbuildsycoca.hook, src/PlasmaZones-3.0.17/.copr/Makefile, src/PlasmaZones-3.0.17/CMakeLists.txt, src/PlasmaZones-3.0.17/cmake/format-qml.cmake, src/PlasmaZones-3.0.17/kcm/settings-windowmanagement-plasmazones.desktop, src/PlasmaZones-3.0.17/cmake/post-install-sycoca.sh...
[0/10] Reviewing kbuildsycoca.hook, src/PlasmaZones-3.0.17/.copr/Makefile, src/PlasmaZones-3.0.17/CMakeLists.txt, src/PlasmaZones-3.0.17/cmake/format-qml.cmake, src/PlasmaZones-3.0.17/kcm/settings-windowmanagement-plasmazones.desktop, src/PlasmaZones-3.0.17/cmake/post-install-sycoca.sh, src/PlasmaZones-3.0.17/data/algorithms/bsp.js...
[0/10] Reviewing kbuildsycoca.hook, src/PlasmaZones-3.0.17/.copr/Makefile, src/PlasmaZones-3.0.17/CMakeLists.txt, src/PlasmaZones-3.0.17/cmake/format-qml.cmake, src/PlasmaZones-3.0.17/kcm/settings-windowmanagement-plasmazones.desktop, src/PlasmaZones-3.0.17/cmake/post-install-sycoca.sh, src/PlasmaZones-3.0.17/data/algorithms/bsp.js, src/PlasmaZones-3.0.17/libs/phosphor-tiles/src/builtins/appendGracefulDegradation.js...
[0/10] Reviewing kbuildsycoca.hook, src/PlasmaZones-3.0.17/.copr/Makefile, src/PlasmaZones-3.0.17/CMakeLists.txt, src/PlasmaZones-3.0.17/cmake/format-qml.cmake, src/PlasmaZones-3.0.17/kcm/settings-windowmanagement-plasmazones.desktop, src/PlasmaZones-3.0.17/cmake/post-install-sycoca.sh, src/PlasmaZones-3.0.17/data/algorithms/bsp.js, src/PlasmaZones-3.0.17/libs/phosphor-tiles/src/builtins/appendGracefulDegradation.js, src/PlasmaZones-3.0.17/data/algorithms/cascade.js...
[0/10] Reviewing kbuildsycoca.hook, src/PlasmaZones-3.0.17/.copr/Makefile, src/PlasmaZones-3.0.17/CMakeLists.txt, src/PlasmaZones-3.0.17/cmake/format-qml.cmake, src/PlasmaZones-3.0.17/kcm/settings-windowmanagement-plasmazones.desktop, src/PlasmaZones-3.0.17/cmake/post-install-sycoca.sh, src/PlasmaZones-3.0.17/data/algorithms/bsp.js, src/PlasmaZones-3.0.17/libs/phosphor-tiles/src/builtins/appendGracefulDegradation.js, src/PlasmaZones-3.0.17/data/algorithms/cascade.js, src/PlasmaZones-3.0.17/libs/phosphor-tiles/src/builtins/applyPerWindowMinSize.js...
LLM auditresponse for settings-windowmanagement-plasmazones.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard KDE System Settings desktop file that registers a settings entry for "PlasmaZones" under the "applications" category. It contains only metadata fields (Type, X-KDE-System-Settings-Category, Icon, Name, Comment) and no executable code, network requests, or any suspicious operations. There is no evidence of malicious behavior or supply-chain attack indicators.
</details>
<summary>Standard KDE settings desktop file, no security issues.</summary>
</security_assessment>

[1/10] Reviewing kbuildsycoca.hook, src/PlasmaZones-3.0.17/.copr/Makefile, src/PlasmaZones-3.0.17/CMakeLists.txt, src/PlasmaZones-3.0.17/cmake/format-qml.cmake, src/PlasmaZones-3.0.17/cmake/post-install-sycoca.sh, src/PlasmaZones-3.0.17/data/algorithms/bsp.js, src/PlasmaZones-3.0.17/libs/phosphor-tiles/src/builtins/appendGracefulDegradation.js, src/PlasmaZones-3.0.17/data/algorithms/cascade.js, src/PlasmaZones-3.0.17/libs/phosphor-tiles/src/builtins/applyPerWindowMinSize.js...
+ Reviewed src/PlasmaZones-3.0.17/kcm/settings-windowmanagement-plasmazones.desktop. Status: SAFE -- Standard KDE settings desktop file, no security issues.
LLM auditresponse for applyPerWindowMinSize.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a simple, self-contained JavaScript function that applies per-window minimum size constraints. It takes numeric width/height values, an array of minimum size objects, and an index, and returns the larger of the current size or the minimum size. There are no network requests, no obfuscation, no dangerous commands, no file operations, and no system modifications. The code is transparent and serves a straightforward purpose consistent with window management in a Plasma environment.
</details>
<summary>Simple window size helper, no security issues.</summary>
</security_assessment>

[2/10] Reviewing kbuildsycoca.hook, src/PlasmaZones-3.0.17/.copr/Makefile, src/PlasmaZones-3.0.17/CMakeLists.txt, src/PlasmaZones-3.0.17/cmake/format-qml.cmake, src/PlasmaZones-3.0.17/cmake/post-install-sycoca.sh, src/PlasmaZones-3.0.17/data/algorithms/bsp.js, src/PlasmaZones-3.0.17/libs/phosphor-tiles/src/builtins/appendGracefulDegradation.js, src/PlasmaZones-3.0.17/data/algorithms/cascade.js...
+ Reviewed src/PlasmaZones-3.0.17/libs/phosphor-tiles/src/builtins/applyPerWindowMinSize.js. Status: SAFE -- Simple window size helper, no security issues.
LLM auditresponse for post-install-sycoca.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard KDE post-install helper that refreshes the system configuration cache (`kbuildsycoca6`) after installing a KDE component (plasmoid, effect, etc.). It correctly handles the case where installation was performed via `sudo` by running the cache rebuild as the original user rather than root. No network activity, no obfuscation, no unexpected file operations. The script only performs its stated purpose and prints a user-facing note about restarting KWin. No security issues.
</details>
<summary>Standard KDE post-install cache refresh script, no malicious behavior.</summary>
</security_assessment>

[3/10] Reviewing kbuildsycoca.hook, src/PlasmaZones-3.0.17/.copr/Makefile, src/PlasmaZones-3.0.17/CMakeLists.txt, src/PlasmaZones-3.0.17/cmake/format-qml.cmake, src/PlasmaZones-3.0.17/data/algorithms/bsp.js, src/PlasmaZones-3.0.17/libs/phosphor-tiles/src/builtins/appendGracefulDegradation.js, src/PlasmaZones-3.0.17/data/algorithms/cascade.js...
+ Reviewed src/PlasmaZones-3.0.17/cmake/post-install-sycoca.sh. Status: SAFE -- Standard KDE post-install cache refresh script, no malicious behavior.
LLM auditresponse for format-qml.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard CMake helper script that runs `qmlformat -i` on a list of QML files. It correctly checks for the existence of the required variables and each file before execution, suppresses error/output to avoid build failures, and performs no network operations, no encoded or obfuscated commands, and no system modifications outside formatting the specified files. The script is fully transparent and serves only its stated purpose of automated QML formatting.
</details>
<summary>Benign CMake formatting script with no malicious behavior.</summary>
</security_assessment>

[4/10] Reviewing kbuildsycoca.hook, src/PlasmaZones-3.0.17/.copr/Makefile, src/PlasmaZones-3.0.17/CMakeLists.txt, src/PlasmaZones-3.0.17/data/algorithms/bsp.js, src/PlasmaZones-3.0.17/libs/phosphor-tiles/src/builtins/appendGracefulDegradation.js, src/PlasmaZones-3.0.17/data/algorithms/cascade.js...
+ Reviewed src/PlasmaZones-3.0.17/cmake/format-qml.cmake. Status: SAFE -- Benign CMake formatting script with no malicious behavior.
LLM auditresponse for appendGracefulDegradation.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This file implements a window tiling degradation algorithm, ported from a C++ `TilingAlgorithm` class. It is purely a layout computation function that manipulates a `zones` array of rectangles (`{x, y, width, height}`) in memory. There are no network requests (no `fetch`, `XMLHttpRequest`, `curl`, `wget`), no file or system operations, no obfuscated or encoded code, and no dangerous commands like `eval` or `exec`. The only external dependency is `PZ_MIN_ZONE_SIZE`, which is an injected constant presumably defined elsewhere in the package. The logic is straightforward: it calculates how many zones can fit in the remaining space, distributes sizes with `distributeWithGaps`, and stacks any excess zones onto the last fit zone. This is standard window management behavior, consistent with the stated purpose of a tiling algorithm for Plasma/KDE. No evidence of a supply-chain attack or malicious code injection.
</details>
<summary>
Safe: standard tiling algorithm, no network/obfuscation/malicious code.</summary>
</security_assessment>

[5/10] Reviewing kbuildsycoca.hook, src/PlasmaZones-3.0.17/.copr/Makefile, src/PlasmaZones-3.0.17/CMakeLists.txt, src/PlasmaZones-3.0.17/data/algorithms/bsp.js, src/PlasmaZones-3.0.17/data/algorithms/cascade.js...
+ Reviewed src/PlasmaZones-3.0.17/libs/phosphor-tiles/src/builtins/appendGracefulDegradation.js. Status: SAFE -- Safe: standard tiling algorithm, no network/obfuscation/malicious code.
LLM auditresponse for cascade.js:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `cascade.js` implements a cascade window tiling layout algorithm for the PlasmaZones KWin scripting extension. It contains no network requests, obfuscated code, file system manipulation, or any behavior that deviates from its stated purpose of calculating overlapping window positions. All operations are mathematical calculations on provided parameters. There are no security concerns.
</details>
<summary>Cascade layout algorithm, no malicious behavior found.</summary>
</security_assessment>

LLM auditresponse for kbuildsycoca.hook:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard pacman hook file used by Arch Linux packages to refresh the KDE system cache (sycoca) when KCM (KDE Control Module) plugins or desktop files are installed, upgraded, or removed. The hook triggers on the relevant paths under `/usr/lib/qt6/plugins/plasma/kcms/systemsettings/` and `/usr/share/applications/kcm_*.desktop`. The action is a simple call to a helper script (`/usr/share/libalpm/scripts/plasmazones-refresh-sycoca`), which is expected to invoke `kbuildsycoca6` or a similar cache regeneration tool. There is no obfuscation, network activity, file exfiltration, or any deviation from normal post-installation caching behavior. The file is entirely benign and follows standard packaging conventions for KDE Plasma components.
</details>
<summary>Standard pacman hook for KDE cache refresh; no security concerns.</summary>
</security_assessment>

[6/10] Reviewing kbuildsycoca.hook, src/PlasmaZones-3.0.17/.copr/Makefile, src/PlasmaZones-3.0.17/CMakeLists.txt, src/PlasmaZones-3.0.17/data/algorithms/bsp.js...
+ Reviewed src/PlasmaZones-3.0.17/data/algorithms/cascade.js. Status: SAFE -- Cascade layout algorithm, no malicious behavior found.
[7/10] Reviewing src/PlasmaZones-3.0.17/.copr/Makefile, src/PlasmaZones-3.0.17/CMakeLists.txt, src/PlasmaZones-3.0.17/data/algorithms/bsp.js...
+ Reviewed kbuildsycoca.hook. Status: SAFE -- Standard pacman hook for KDE cache refresh; no security concerns.
LLM auditresponse for Makefile:
<security_assessment>
<decision>SAFE</decision>
<details>
The Makefile is a standard COPR build helper that creates an SRPM from the plasmazones source. It extracts the version from CMakeLists.txt, stamps the spec, optionally runs an included changelog script, creates a tarball (excluding `.git` and `build`), and calls `rpmbuild`. All operations are local, no network requests or external downloads. There is no obfuscated code, no use of `eval`, `curl`, `wget`, or similar dangerous commands. The file performs only routine packaging tasks and does not exhibit any supply-chain attack indicators.
</details>
<summary>Standard COPR SRPM build Makefile; safe.</summary>
</security_assessment>

[8/10] Reviewing src/PlasmaZones-3.0.17/CMakeLists.txt, src/PlasmaZones-3.0.17/data/algorithms/bsp.js...
+ Reviewed src/PlasmaZones-3.0.17/.copr/Makefile. Status: SAFE -- Standard COPR SRPM build Makefile; safe.
LLM auditresponse for bsp.js:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `bsp.js` implements a Binary Space Partitioning (BSP) tiling algorithm for a window manager scripting environment (likely KWin). It defines metadata and a `calculateZones` function that builds a balanced binary tree and computes window geometries based on supplied parameters (area, window count, gaps, minimum sizes, split ratio).

No suspicious behavior is present:
- No network requests (curl, wget, fetch, XMLHttpRequest).
- No file system operations or system commands.
- No obfuscation, base64 decoding, or use of `eval`.
- No references to external hosts, data exfiltration, or injection of arbitrary code.
- The script references sandbox-injected constants (`PZ_MIN_ZONE_SIZE`, `PZ_MIN_SPLIT`, `PZ_MAX_SPLIT`, `MAX_TREE_DEPTH`), which is standard for KWin scripting environments.
- The logic is purely computational, performing tree construction, geometry calculations, and leaf collection – exactly what a tiling algorithm should do.

This is a legitimate window management script with no evidence of supply-chain attack or malicious intent. It conforms to standard packaging practices for AUR KWin script packages.
</details>
<summary>Benign KWin tiling script; no malicious code.</summary>
</security_assessment>

[9/10] Reviewing src/PlasmaZones-3.0.17/CMakeLists.txt...
+ Reviewed src/PlasmaZones-3.0.17/data/algorithms/bsp.js. Status: SAFE -- Benign KWin tiling script; no malicious code.
LLM auditresponse for CMakeLists.txt:
<security_assessment>
<decision>SAFE</decision>
<details>
This CMakeLists.txt is a standard CMake build configuration for a KDE Plasma window tiling extension. It declares dependencies (Qt6, KF6, Wayland, etc.), sets build options, and manages installation of various assets (D-Bus interfaces, layouts, shaders, icons). There are no network requests, no obfuscated code, no attempts to download or execute arbitrary scripts. The install-time cleanup of stale JSON profile files is a routine maintenance operation scoped to the package's own data directory. All operations are consistent with normal KDE/Qt packaging practices. No evidence of malicious behavior was found.
</details>
<summary>Standard CMake build configuration, no malicious behavior.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/PlasmaZones-3.0.17/CMakeLists.txt. Status: SAFE -- Standard CMake build configuration, no malicious behavior.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
(Skipped 1 file: plasmazones-3.0.17.tar.gz)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 45,667
  Completion Tokens: 8,403
  Total Tokens: 54,070
  Total Cost: $0.005623
  Execution Time: 67.42 seconds
Full audit report can be found in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-plasmazones.txt
Final Status: SAFE


No issues found.


Audit Skips:

/home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-j89v4bc4/plasmazones-3.0.17.tar.gz: [SKIPPED] Skipping binary file: plasmazones-3.0.17.tar.gz
