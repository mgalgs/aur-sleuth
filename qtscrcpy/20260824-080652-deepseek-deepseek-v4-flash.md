---
package: qtscrcpy
pkgver: 4.1.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 56580919ea5cd225cb34031d0932798021e4a0d8
prompt_tokens: 31245
completion_tokens: 7733
total_tokens: 38978
cost: 0.0026812114
execution_time: 174.32
files_reviewed: 7
files_skipped: 0
files_unauditable: 67
unpinned_sources: 0
date: 2026-08-24T08:06:51Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no malicious indicators.
  - file: src/qtscrcpy/QtScrcpy/sndcpy/sndcpy.sh
    status: safe
    summary: Standard ADB helper script for sndcpy audio forwarding.
  - file: src/qtscrcpy/CMakeLists.txt
    status: safe
    summary: Simple CMake config, no security concerns.
  - file: src/qtscrcpy/backup/myconfig.sh
    status: safe
    summary: Standard FFmpeg build configuration, no malicious content.
  - file: src/qtscrcpy/QtScrcpy/util/config.cpp
    status: safe
    summary: Standard config file, no malicious code.
  - file: src/qtscrcpy/QtScrcpy/main.cpp
    status: safe
    summary: Standard Qt application entry point, no malicious behavior.
  - file: src/qtscrcpy/ci/generate-version.py
    status: safe
    summary: "Safe: Normal version generation from git tags"
---

Cloning https://aur.archlinux.org/qtscrcpy.git...
Cloned qtscrcpy
Analyzing qtscrcpy AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable definitions and array declarations at the top level. No command substitutions, function calls, or code execution occurs outside of `prepare()`, `build()`, or `package()`, which are not run by `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo`. The source array uses git+https URLs pointing to the project's official repositories; a `SKIP` checksum on the second (VCS) source is normal. There is no malicious code present that would execute during sourcing or source fetching.</details>
<evidence></evidence>
<summary>No malicious code at top level; sourcing and fetch are safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code at top level; sourcing and fetch are safe.
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
The PKGBUILD follows standard Arch packaging practices for a VCS-based project with a tagged release and an unpinned submodule source. The `prepare()` function initializes and updates the submodule using a local path override, which is a common pattern to avoid network fetching at build time. The `sed` commands adjust hardcoded paths to point to system locations (`/usr/bin/adb`, `/usr/lib/qtscrcpy/...`), which is normal downstream patching. The `build()` and `package()` functions use CMake and install files from the built output directory. The wrapper script and desktop file are generated as plain text. There are no suspicious network requests, obfuscated commands, or unexpected file operations. The `sha256sums` array contains one valid hash and one `SKIP` for the VCS submodule source, which is acceptable for AUR packages and not evidence of malice.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with no malicious indicators.</summary>
</security_assessment>

[1/1] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no malicious indicators.
Reviewed all required files.
Deciding which files to review next...
Note: 67 compiled/archived file(s) cannot be audited as text and were not reviewed (src/qtscrcpy/QtScrcpy/res/QtScrcpy.icns, src/qtscrcpy/QtScrcpy/res/i18n/en_US.qm, src/qtscrcpy/QtScrcpy/res/i18n/ja_JP.qm and 64 more). For a package that ships prebuilt binaries, the audit covers the packaging, not the payload.
Note: 310 files available for selection; offering the 50 highest-priority to the model. 229 lower-priority file(s) were not offered.
LLM response for file selection:
src/qtscrcpy/CMakeLists.txt
src/qtscrcpy/QtScrcpy/sndcpy/sndcpy.sh
src/qtscrcpy/backup/myconfig.sh
src/qtscrcpy/QtScrcpy/main.cpp
src/qtscrcpy/QtScrcpy/util/config.cpp
src/qtscrcpy/ci/generate-version.py
Decided to review 6 additional files: src/qtscrcpy/CMakeLists.txt, src/qtscrcpy/QtScrcpy/sndcpy/sndcpy.sh, src/qtscrcpy/backup/myconfig.sh, src/qtscrcpy/QtScrcpy/main.cpp, src/qtscrcpy/QtScrcpy/util/config.cpp, src/qtscrcpy/ci/generate-version.py
Reviewing additional files...
Reviewing additional files...
[0/6] Reviewing src/qtscrcpy/QtScrcpy/sndcpy/sndcpy.sh...
[0/6] Reviewing src/qtscrcpy/QtScrcpy/sndcpy/sndcpy.sh, src/qtscrcpy/CMakeLists.txt...
[0/6] Reviewing src/qtscrcpy/QtScrcpy/sndcpy/sndcpy.sh, src/qtscrcpy/CMakeLists.txt, src/qtscrcpy/backup/myconfig.sh...
LLM auditresponse for sndcpy.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard helper for the sndcpy tool, which forwards Android device audio over ADB. It uses `adb` (via a relative path, which is expected in the package context) to install an APK, set permissions, forward a port, and start an activity. No network requests beyond ADB communication, no obfuscated code, no unexpected system modifications, and no data exfiltration. The script behaves exactly as described for its intended purpose.
</details>
<evidence></evidence>
<summary>Standard ADB helper script for sndcpy audio forwarding.</summary>
</security_assessment>

[0/6] Reviewing src/qtscrcpy/QtScrcpy/sndcpy/sndcpy.sh, src/qtscrcpy/CMakeLists.txt, src/qtscrcpy/backup/myconfig.sh, src/qtscrcpy/QtScrcpy/main.cpp...
[1/6] Reviewing src/qtscrcpy/CMakeLists.txt, src/qtscrcpy/backup/myconfig.sh, src/qtscrcpy/QtScrcpy/main.cpp...
+ Reviewed src/qtscrcpy/QtScrcpy/sndcpy/sndcpy.sh. Status: SAFE -- Standard ADB helper script for sndcpy audio forwarding.
LLM auditresponse for CMakeLists.txt:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a minimal CMake configuration file that simply sets the minimum CMake version, declares a project, and adds a subdirectory. There are no network requests, obfuscated code, dangerous operations, or any deviations from standard packaging practices. The subdirectory `QtScrcpy` is the package's own upstream source, so including it here is expected. No security issues are present.
</details>
<evidence></evidence>
<summary>Simple CMake config, no security concerns.</summary>
</security_assessment>

[2/6] Reviewing src/qtscrcpy/backup/myconfig.sh, src/qtscrcpy/QtScrcpy/main.cpp...
+ Reviewed src/qtscrcpy/CMakeLists.txt. Status: SAFE -- Simple CMake config, no security concerns.
[2/6] Reviewing src/qtscrcpy/backup/myconfig.sh, src/qtscrcpy/QtScrcpy/main.cpp, src/qtscrcpy/QtScrcpy/util/config.cpp...
LLM auditresponse for myconfig.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This file contains a standard FFmpeg configure command used to build a minimal FFmpeg library for the qtscrcpy application. It disables all components by default and then selectively enables only the H.264 decoder, parser, demuxer, mp4 muxer, and file protocol. There are no network requests, obfuscated code, file operations outside the build directory, or any other indicators of malicious behavior. This is a typical packaging script that customizes FFmpeg for the application's needs.
</details>
<evidence></evidence>
<summary>Standard FFmpeg build configuration, no malicious content.</summary>
</security_assessment>

[3/6] Reviewing src/qtscrcpy/QtScrcpy/main.cpp, src/qtscrcpy/QtScrcpy/util/config.cpp...
+ Reviewed src/qtscrcpy/backup/myconfig.sh. Status: SAFE -- Standard FFmpeg build configuration, no malicious content.
[3/6] Reviewing src/qtscrcpy/QtScrcpy/main.cpp, src/qtscrcpy/QtScrcpy/util/config.cpp, src/qtscrcpy/ci/generate-version.py...
LLM auditresponse for config.cpp:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `config.cpp` is a standard configuration handler for the QtScrcpy application. It reads and writes settings using `QSettings` to INI files in a local config directory. There are no network requests, no obfuscated code, no command execution, and no external downloads. The file only manages application-specific configuration keys such as language, window position, ADB path, server path, and IP/port history for ADB over TCP connections. The use of `QTSCRCPY_CONFIG_PATH` environment variable for config path override is normal. No malicious or suspicious behavior is present.
</details>
<evidence></evidence>
<summary>Standard config file, no malicious code.</summary>
</security_assessment>

[4/6] Reviewing src/qtscrcpy/QtScrcpy/main.cpp, src/qtscrcpy/ci/generate-version.py...
+ Reviewed src/qtscrcpy/QtScrcpy/util/config.cpp. Status: SAFE -- Standard config file, no malicious code.
LLM auditresponse for main.cpp:
<security_assessment>
<decision>SAFE</decision>
<details>
This is the standard `main.cpp` entry point for the QtScrcpy application. It performs normal startup tasks: setting environment paths for ADB, server, keymap, and configuration; configuring OpenGL attributes; loading stylesheets and translations; and starting the Qt event loop. The environment variables point to relative paths within the build tree and are conditionally set only if not already present (Linux checks with `qgetenv`), which is standard behavior. The logging output contains informational messages linking to the project's GitHub repository and related third-party projects; these are harmless string constants printed via `qInfo()` and do not initiate any network requests. No obfuscation, encoded commands, network downloads, file exfiltration, or backdoors are present. The code is consistent with ordinary Qt application packaging and does not exhibit any supply-chain attack indicators.
</details>
<evidence></evidence>
<summary>Standard Qt application entry point, no malicious behavior.</summary>
</security_assessment>

[5/6] Reviewing src/qtscrcpy/ci/generate-version.py...
+ Reviewed src/qtscrcpy/QtScrcpy/main.cpp. Status: SAFE -- Standard Qt application entry point, no malicious behavior.
LLM auditresponse for generate-version.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard version-generation utility that retrieves the latest Git tag and writes it to a file (`appversion`). It uses `os.popen` to run `git rev-list` and `git describe`; the command arguments are constructed from the output of the first command (a commit hash), which is a hex string and not user-controlled, so shell injection is not a realistic threat. The script does not perform any network requests, execute fetched code, use obfuscation, or modify files outside the project’s own build artifacts. It is part of the upstream QtScrcpy CI pipeline and has no indicators of supply-chain compromise.
</details>
<evidence></evidence>
<summary>Safe: Normal version generation from git tags</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed src/qtscrcpy/ci/generate-version.py. Status: SAFE -- Safe: Normal version generation from git tags
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 31,245
  Completion Tokens: 7,733
  Total Tokens: 38,978
  Total Cost: $0.002681
  Execution Time: 174.32 seconds

Final Status: SAFE


No issues found.
