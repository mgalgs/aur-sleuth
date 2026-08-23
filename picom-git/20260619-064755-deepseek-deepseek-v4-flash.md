---
package: picom-git
pkgver: 2855_12.197.g6d676824_2026.06.02
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: acb581ea93550b3e3c1cc21ab934cd361e1d5603
prompt_tokens: 81213
completion_tokens: 8641
total_tokens: 89854
cost: 0.00886455
execution_time: 151.27
files_reviewed: 11
files_skipped: 0
date: 2026-06-19T06:47:55Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard AUR git PKGBUILD, no malicious content.
  - file: src/picom/meson_options.txt
    status: safe
    summary: Standard Meson build options file, no security issues.
  - file: src/picom/meson/install.sh
    status: safe
    summary: Standard backward-compatibility symlink script, no security issues.
  - file: src/picom/include/meson.build
    status: safe
    summary: Standard meson.build file, no security issues.
  - file: src/picom/src/backend/gl/shaders.c
    status: safe
    summary: Standard OpenGL shader source code for picom compositor.
  - file: src/picom/src/backend/backend.c
    status: safe
    summary: No security issues; standard application source code.
  - file: src/picom/src/backend/gl/glx.c
    status: safe
    summary: Legitimate upstream GLX compositor code; no malicious behavior.
  - file: src/picom/src/backend/driver.c
    status: safe
    summary: Legitimate upstream driver detection, no malicious code.
  - file: src/picom/src/dbus.c
    status: safe
    summary: Standard D-Bus interface code, no malicious behavior.
  - file: src/picom/src/config.c
    status: safe
    summary: No malicious behavior detected; standard configuration code.
  - file: src/picom/src/options.c
    status: safe
    summary: Standard C option parser; no malicious behavior found.
---

Cloning https://aur.archlinux.org/picom-git.git to /tmp/aur-sleuth/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-kf3rsckb...
Cloned repository to /tmp/aur-sleuth/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-kf3rsckb
Analyzing picom-git AUR package (working in /tmp/aur-sleuth/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-kf3rsckb) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains standard elements: a git source from the official upstream repository (https://github.com/yshui/picom.git), standard metadata, and a `pkgver()` function that runs benign git commands (describe, rev-list, log) to produce a version string. There are no top-level command substitutions, no downloads from unexpected hosts, no obfuscated code, and no operations that could exfiltrate data or execute untrusted payloads when sourcing the PKGBUILD or fetching sources. The `prepare()` and `build()` functions are not executed during the requested `makepkg` commands, so any content there is out of scope for this gate.
</details>
<summary>Standard AUR PKGBUILD, no malicious code in sourced scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- Standard AUR PKGBUILD, no malicious code in sourced scope.[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/1] Reviewing PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR PKGBUILD for the `picom-git` package. It clones the upstream repository from `https://github.com/yshui/picom.git` (the official project source) with a tracked branch (`next`). All build and packaging steps use the expected build system (meson/ninja) and install files only into `$pkgdir`. There are no obfuscated commands, no unexpected network requests, no execution of downloaded scripts, and no manipulation of files outside the package scope. The `SKIP` checksum is standard for VCS sources. The `pkgver()` function uses standard git commands to generate a version string from the cloned repository; it does not fetch additional code or execute untrusted content. No supply-chain attack indicators are present.
</details>
<summary>Standard AUR git PKGBUILD, no malicious content.</summary>
</security_assessment>

[1/1] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR git PKGBUILD, no malicious content.
Reviewed all required files.
Deciding which files to review next...
Note: 208 files available for selection; offering the 50 highest-priority to the model. 143 lower-priority file(s) were not offered.
LLM response for file selection:
src/picom/meson/install.sh
src/picom/meson_options.txt
src/picom/include/meson.build
src/picom/src/config.c
src/picom/src/options.c
src/picom/src/dbus.c
src/picom/src/backend/backend.c
src/picom/src/backend/driver.c
src/picom/src/backend/gl/shaders.c
src/picom/src/backend/gl/glx.c
Decided to review 10 additional files: src/picom/meson/install.sh, src/picom/meson_options.txt, src/picom/include/meson.build, src/picom/src/config.c, src/picom/src/options.c, src/picom/src/dbus.c, src/picom/src/backend/backend.c, src/picom/src/backend/driver.c, src/picom/src/backend/gl/shaders.c, src/picom/src/backend/gl/glx.c
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/picom/meson/install.sh...
[0/10] Reviewing src/picom/meson/install.sh, src/picom/meson_options.txt...
[0/10] Reviewing src/picom/meson/install.sh, src/picom/meson_options.txt, src/picom/src/config.c...
[0/10] Reviewing src/picom/meson/install.sh, src/picom/meson_options.txt, src/picom/src/config.c, src/picom/include/meson.build...
[0/10] Reviewing src/picom/meson/install.sh, src/picom/meson_options.txt, src/picom/src/config.c, src/picom/include/meson.build, src/picom/src/options.c...
[0/10] Reviewing src/picom/meson/install.sh, src/picom/meson_options.txt, src/picom/src/config.c, src/picom/include/meson.build, src/picom/src/options.c, src/picom/src/dbus.c...
[0/10] Reviewing src/picom/meson/install.sh, src/picom/meson_options.txt, src/picom/src/config.c, src/picom/include/meson.build, src/picom/src/options.c, src/picom/src/dbus.c, src/picom/src/backend/backend.c...
[0/10] Reviewing src/picom/meson/install.sh, src/picom/meson_options.txt, src/picom/src/config.c, src/picom/include/meson.build, src/picom/src/options.c, src/picom/src/dbus.c, src/picom/src/backend/backend.c, src/picom/src/backend/driver.c...
[0/10] Reviewing src/picom/meson/install.sh, src/picom/meson_options.txt, src/picom/src/config.c, src/picom/include/meson.build, src/picom/src/options.c, src/picom/src/dbus.c, src/picom/src/backend/backend.c, src/picom/src/backend/driver.c, src/picom/src/backend/gl/shaders.c...
[0/10] Reviewing src/picom/meson/install.sh, src/picom/meson_options.txt, src/picom/src/config.c, src/picom/include/meson.build, src/picom/src/options.c, src/picom/src/dbus.c, src/picom/src/backend/backend.c, src/picom/src/backend/driver.c, src/picom/src/backend/gl/shaders.c, src/picom/src/backend/gl/glx.c...
LLM auditresponse for meson_options.txt:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `meson_options.txt` is a standard Meson build configuration file that defines build-time options for the picom compositor. It contains only option declarations with types, default values, and descriptions. There is no executable code, no network requests, no obfuscation, and no deviation from normal packaging or build system practice. All options are related to features of the picom application itself (OpenGL, D-Bus, regex, documentation, tests, etc.). No security concerns exist.
</details>
<summary>Standard Meson build options file, no security issues.</summary>
</security_assessment>

[1/10] Reviewing src/picom/meson/install.sh, src/picom/src/config.c, src/picom/include/meson.build, src/picom/src/options.c, src/picom/src/dbus.c, src/picom/src/backend/backend.c, src/picom/src/backend/driver.c, src/picom/src/backend/gl/shaders.c, src/picom/src/backend/gl/glx.c...
+ Reviewed src/picom/meson_options.txt. Status: SAFE -- Standard Meson build options file, no security issues.
LLM auditresponse for install.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard post-install helper that creates symlinks for backward compatibility with the old compton name. It only operates within the installation prefix, uses `ln -s` with no external network access or dangerous commands, and contains no encoded or obfuscated content. There is no evidence of any malicious intent or supply-chain attack.
</details>
<summary>Standard backward-compatibility symlink script, no security issues.</summary>
</security_assessment>

[2/10] Reviewing src/picom/src/config.c, src/picom/include/meson.build, src/picom/src/options.c, src/picom/src/dbus.c, src/picom/src/backend/backend.c, src/picom/src/backend/driver.c, src/picom/src/backend/gl/shaders.c, src/picom/src/backend/gl/glx.c...
+ Reviewed src/picom/meson/install.sh. Status: SAFE -- Standard backward-compatibility symlink script, no security issues.
LLM auditresponse for meson.build:
<security_assessment>
<decision>SAFE</decision>
<details>
This `meson.build` file is a standard Meson build system entry point. It contains a copyright comment and a single `subdir('picom')` directive, which includes another build file from the `picom` subdirectory. There is no code that performs network requests, executes arbitrary commands, or performs any file operations beyond what is typical for a build system. No obfuscation, encoded content, or suspicious behavior is present. This file is consistent with normal packaging and build practices for the picom project.
</details>
<summary>Standard meson.build file, no security issues.</summary>
</security_assessment>

[3/10] Reviewing src/picom/src/config.c, src/picom/src/options.c, src/picom/src/dbus.c, src/picom/src/backend/backend.c, src/picom/src/backend/driver.c, src/picom/src/backend/gl/shaders.c, src/picom/src/backend/gl/glx.c...
+ Reviewed src/picom/include/meson.build. Status: SAFE -- Standard meson.build file, no security issues.
LLM auditresponse for shaders.c:
<security_assessment>
<decision>SAFE</decision>
<details>
This file contains GLSL shader source code embedded as C string literals for use by the picom compositor. The shaders implement standard graphics operations: texture copying, blending with masking, dithering, window corner rounding, color inversion, brightness limiting, and noise-based coordinate perturbation. All code is exactly what you would expect from the upstream picom project — no network operations, file system access, obfuscated strings, or any behavior outside the application's stated rendering purpose. No evidence of injected or malicious code.
</details>
<summary>Standard OpenGL shader source code for picom compositor.</summary>
</security_assessment>

[4/10] Reviewing src/picom/src/config.c, src/picom/src/options.c, src/picom/src/dbus.c, src/picom/src/backend/backend.c, src/picom/src/backend/driver.c, src/picom/src/backend/gl/glx.c...
+ Reviewed src/picom/src/backend/gl/shaders.c. Status: SAFE -- Standard OpenGL shader source code for picom compositor.
LLM auditresponse for backend.c:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard C source file from the picom compositor project. It implements backend registration (using a hash table) and execution of rendering commands (blit, copy area, blur). There are no network requests, no obfuscated code, no dangerous system calls outside the expected scope of a compositor, and no evidence of injected malicious behavior. The code is consistent with the upstream application's purpose and contains no supply-chain attack indicators.
</details>
<summary>No security issues; standard application source code.</summary>
</security_assessment>

[5/10] Reviewing src/picom/src/config.c, src/picom/src/options.c, src/picom/src/dbus.c, src/picom/src/backend/driver.c, src/picom/src/backend/gl/glx.c...
+ Reviewed src/picom/src/backend/backend.c. Status: SAFE -- No security issues; standard application source code.
LLM auditresponse for glx.c:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is standard upstream source code for the GLX backend of the picom compositor. It performs only expected OpenGL/GLX operations (e.g., creating contexts, binding pixmaps to textures, buffer swaps, FBConfig queries) and contains no network requests, encoded payloads, file exfiltration, command execution, or any other behavior characteristic of a supply‑chain attack. The code is unremarkable and consistent with its stated purpose.
</details>
<summary>Legitimate upstream GLX compositor code; no malicious behavior.</summary>
</security_assessment>

[6/10] Reviewing src/picom/src/config.c, src/picom/src/options.c, src/picom/src/dbus.c, src/picom/src/backend/driver.c...
+ Reviewed src/picom/src/backend/gl/glx.c. Status: SAFE -- Legitimate upstream GLX compositor code; no malicious behavior.
LLM auditresponse for driver.c:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard C source file from the picom compositor project. It contains functions to detect graphics drivers via X11 RANDR provider information and apply driver-specific workarounds (e.g., enabling XSync fences for NVIDIA). There are no network requests, obfuscated code, file system modifications, or any behavior outside the application's stated purpose. This is legitimate upstream application logic, not a supply-chain attack.
</details>
<summary>Legitimate upstream driver detection, no malicious code.</summary>
</security_assessment>

[7/10] Reviewing src/picom/src/config.c, src/picom/src/options.c, src/picom/src/dbus.c...
+ Reviewed src/picom/src/backend/driver.c. Status: SAFE -- Legitimate upstream driver detection, no malicious code.
LLM auditresponse for dbus.c:
<security_assessment>
<decision>SAFE</decision>
<details>
This file (`dbus.c`) is a standard D-Bus integration module for the picom X compositor. It registers D-Bus objects, handles method calls (introspect, list windows, get/set options, etc.), and emits signals on window events. All operations are confined to the compositor's intended functionality: reading window state, modifying compositor options, and interacting with the session event loop. There are no network requests, obfuscated code, or any commands that exfiltrate data or execute untrusted payloads. The code uses the libdbus library correctly and follows normal event loop integration patterns. No supply-chain attack indicators are present.
</details>
<summary>Standard D-Bus interface code, no malicious behavior.</summary>
</security_assessment>

[8/10] Reviewing src/picom/src/config.c, src/picom/src/options.c...
+ Reviewed src/picom/src/dbus.c. Status: SAFE -- Standard D-Bus interface code, no malicious behavior.
LLM auditresponse for config.c:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `config.c` is part of the upstream picom compositor source code. It implements configuration parsing, including XDG path handling, blur kernel parsing, debug option parsing, and plugin loading via `dlopen`. All operations are standard for a compositor and do not exfiltrate data, download or execute code from unexpected sources, or exhibit obfuscation. The environment variable usage (e.g., `XDG_CONFIG_HOME`, `PICOM_DEBUG`) is for user-controlled configuration, not for data theft. The `dlopen` call for plugins is normal functionality. No evidence of supply-chain attack or malicious injection is present.
</details>
<summary>No malicious behavior detected; standard configuration code.</summary>
</security_assessment>

[9/10] Reviewing src/picom/src/options.c...
+ Reviewed src/picom/src/config.c. Status: SAFE -- No malicious behavior detected; standard configuration code.
LLM auditresponse for options.c:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard C source file from the picom project that handles command-line option parsing, configuration defaults, and help text generation. It contains no network requests, no system command execution, no obfuscated or encoded payloads, and no attempts to exfiltrate data. All operations are limited to processing command-line arguments and initializing the program's option structure. The use of `load_plugin` in `get_early_config` is part of the application's intended functionality—plugins are loaded at the user's direction, not injected by this file. There is no evidence of malicious code or supply-chain tampering.
</details>
<summary>Standard C option parser; no malicious behavior found.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/picom/src/options.c. Status: SAFE -- Standard C option parser; no malicious behavior found.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 81,213
  Completion Tokens: 8,641
  Total Tokens: 89,854
  Total Cost: $0.008865
  Execution Time: 151.27 seconds
Full audit report can be found in /tmp/aur-sleuth/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-picom-git.txt
Final Status: SAFE


No issues found.
