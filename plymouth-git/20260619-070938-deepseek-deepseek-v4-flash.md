---
package: plymouth-git
pkgver: 26.134.222.r6.g96f5c010
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 50d1962556b029d6cfb20315d43ba8cf7fe537a9
prompt_tokens: 71603
completion_tokens: 7792
total_tokens: 79395
cost: 0.00784683
execution_time: 45.28
files_reviewed: 13
files_skipped: 0
date: 2026-06-19T07:09:38Z
file_verdicts:
  - file: plymouth.install
    status: safe
    summary: Standard upgrade warning message; no malicious behavior detected.
  - file: 50-plymouth.conf
    status: safe
    summary: Standard tmpfiles config for plymouth initramfs hook integration.
  - file: PKGBUILD
    status: safe
    summary: Standard VCS PKGBUILD; no malicious code detected.
  - file: plymouthd.conf.patch
    status: safe
    summary: Simple config patch; no malicious behavior.
  - file: src/plymouth/themes/spinner/spinner.plymouth.desktop
    status: safe
    summary: Standard Plymouth theme configuration; no security issues.
  - file: src/plymouth/src/plugins/splash/script/generate_script_string_header.py
    status: safe
    summary: Benign utility script; no security issues found.
  - file: src/plymouth/src/libply-splash-core/ply-renderer.c
    status: safe
    summary: Standard Plymouth renderer source code, no malicious behavior detected.
  - file: src/plymouth/src/libply-splash-core/ply-boot-splash.c
    status: safe
    summary: Upstream Plymouth source file, standard boot splash code
  - file: src/plymouth/scripts/keymap-render.py
    status: safe
    summary: Build helper, no suspicious activity found.
  - file: src/plymouth/src/libply-splash-core/ply-device-manager.c
    status: safe
    summary: Legitimate upstream Plymouth device manager source, no security issues.
  - file: src/plymouth/scripts/generate-version.sh
    status: safe
    summary: "Safe: benign version derivation using git metadata."
  - file: src/plymouth/src/client/plymouth.c
    status: safe
    summary: Legitimate upstream C source, no malicious code found.
  - file: src/plymouth/src/libply-splash-core/ply-kmsg-reader.c
    status: safe
    summary: Standard Plymouth kernel message reader code; no malicious behavior detected.
---

Cloning https://aur.archlinux.org/plymouth-git.git to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-ad60kt1i...
Cloned repository to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-ad60kt1i
Analyzing plymouth-git AUR package (working in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-ad60kt1i) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD sources the upstream git repository from the official freedesktop.org GitLab (git+https://gitlab.freedesktop.org/plymouth/plymouth.git) and several local files with fixed checksums. The `pkgver()` function runs `git describe --long` on the cloned repo, which is a standard operation. No top-level command substitutions, obfuscated code, or unexpected network requests are present. The `prepare()`, `build()`, `check()`, and `package()` functions contain commands that are out of scope for this gate (they are not executed by `makepkg --nobuild --nodeps --noprepare` or `--printsrcinfo`). Therefore, fetching the sources and sourcing the PKGBUILD is safe.
</details>
<summary>Standard AUR PKGBUILD with upstream git source, no immediate threat.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- Standard AUR PKGBUILD with upstream git source, no immediate threat.[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/3] Reviewing PKGBUILD...
[0/3] Reviewing PKGBUILD, plymouth.install...
[0/3] Reviewing PKGBUILD, plymouth.install, 50-plymouth.conf...
LLM auditresponse for plymouth.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `plymouth.install` contains a single `post_upgrade()` function that uses `vercmp` to check the previous version and prints a warning message to the user about removed hooks and service files. There is no obfuscated code, no network requests, no file operations beyond standard output, and no commands that could execute arbitrary code or exfiltrate data. The script only performs a version comparison and echoes a plain-text informational message. This is standard Arch packaging practice for managing user expectations during upgrades.
</details>
<summary>Standard upgrade warning message; no malicious behavior detected.</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, 50-plymouth.conf...
+ Reviewed plymouth.install. Status: SAFE -- Standard upgrade warning message; no malicious behavior detected.
LLM auditresponse for 50-plymouth.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard tmpfiles.d configuration snippet for the plymouth package. The line `w+ /run/initramfs/mkinitcpio-shutdown.conf - - - - HOOKS+=(plymouth-shutdown)` adds a plymouth hook to the initramfs shutdown configuration, which is a normal and expected operation for integrating plymouth with the system's boot process. There is no evidence of malicious behavior such as data exfiltration, code execution, or unexpected network activity.
</details>
<summary>Standard tmpfiles config for plymouth initramfs hook integration.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed 50-plymouth.conf. Status: SAFE -- Standard tmpfiles config for plymouth initramfs hook integration.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a VCS (git) package. The source is fetched from the official upstream repository (freedesktop.org GitLab), which is expected. All checksums for non-git sources are provided. The `prepare()` contains benign modifications: replacing `dracut -f` with `mkinitcpio -P` (Arch-specific initramfs tool), applying a configuration patch, and adjusting font names from Cantarell to Adwaita Sans — all routine and transparent. The `build()` uses `arch-meson` and `meson compile`, standard for Arch. The `package()` installs files, mkinitcpio hooks, tmpfiles.conf, and a converted logo. There are no network requests at build time beyond the initial `git clone` from the source array, no obfuscated code, no `eval`, no suspicious file operations outside the package scope, and no attempts to exfiltrate data or download/execute untrusted code. Everything is consistent with maintaining a functional graphical boot splash package on Arch Linux.
</details>
<summary>
Standard VCS PKGBUILD; no malicious code detected.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard VCS PKGBUILD; no malicious code detected.
Reviewed all required files.
Deciding which files to review next...
Note: 304 files available for selection; offering the 50 highest-priority to the model. 205 lower-priority file(s) were not offered.
LLM response for file selection:
plymouthd.conf.patch
src/plymouth/src/plugins/splash/script/generate_script_string_header.py
src/plymouth/scripts/generate-version.sh
src/plymouth/scripts/keymap-render.py
src/plymouth/src/client/plymouth.c
src/plymouth/src/libply-splash-core/ply-boot-splash.c
src/plymouth/src/libply-splash-core/ply-device-manager.c
src/plymouth/src/libply-splash-core/ply-renderer.c
src/plymouth/src/libply-splash-core/ply-kmsg-reader.c
src/plymouth/themes/spinner/spinner.plymouth.desktop
Decided to review 10 additional files: plymouthd.conf.patch, src/plymouth/src/plugins/splash/script/generate_script_string_header.py, src/plymouth/scripts/generate-version.sh, src/plymouth/scripts/keymap-render.py, src/plymouth/src/client/plymouth.c, src/plymouth/src/libply-splash-core/ply-boot-splash.c, src/plymouth/src/libply-splash-core/ply-device-manager.c, src/plymouth/src/libply-splash-core/ply-renderer.c, src/plymouth/src/libply-splash-core/ply-kmsg-reader.c, src/plymouth/themes/spinner/spinner.plymouth.desktop
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing plymouthd.conf.patch...
[0/10] Reviewing plymouthd.conf.patch, src/plymouth/scripts/generate-version.sh...
[0/10] Reviewing plymouthd.conf.patch, src/plymouth/scripts/generate-version.sh, src/plymouth/src/plugins/splash/script/generate_script_string_header.py...
[0/10] Reviewing plymouthd.conf.patch, src/plymouth/scripts/generate-version.sh, src/plymouth/src/plugins/splash/script/generate_script_string_header.py, src/plymouth/src/client/plymouth.c...
[0/10] Reviewing plymouthd.conf.patch, src/plymouth/scripts/generate-version.sh, src/plymouth/src/plugins/splash/script/generate_script_string_header.py, src/plymouth/src/client/plymouth.c, src/plymouth/scripts/keymap-render.py...
[0/10] Reviewing plymouthd.conf.patch, src/plymouth/scripts/generate-version.sh, src/plymouth/src/plugins/splash/script/generate_script_string_header.py, src/plymouth/src/client/plymouth.c, src/plymouth/scripts/keymap-render.py, src/plymouth/src/libply-splash-core/ply-boot-splash.c...
[0/10] Reviewing plymouthd.conf.patch, src/plymouth/scripts/generate-version.sh, src/plymouth/src/plugins/splash/script/generate_script_string_header.py, src/plymouth/src/client/plymouth.c, src/plymouth/scripts/keymap-render.py, src/plymouth/src/libply-splash-core/ply-boot-splash.c, src/plymouth/src/libply-splash-core/ply-device-manager.c...
[0/10] Reviewing plymouthd.conf.patch, src/plymouth/scripts/generate-version.sh, src/plymouth/src/plugins/splash/script/generate_script_string_header.py, src/plymouth/src/client/plymouth.c, src/plymouth/scripts/keymap-render.py, src/plymouth/src/libply-splash-core/ply-boot-splash.c, src/plymouth/src/libply-splash-core/ply-device-manager.c, src/plymouth/src/libply-splash-core/ply-renderer.c...
[0/10] Reviewing plymouthd.conf.patch, src/plymouth/scripts/generate-version.sh, src/plymouth/src/plugins/splash/script/generate_script_string_header.py, src/plymouth/src/client/plymouth.c, src/plymouth/scripts/keymap-render.py, src/plymouth/src/libply-splash-core/ply-boot-splash.c, src/plymouth/src/libply-splash-core/ply-device-manager.c, src/plymouth/src/libply-splash-core/ply-renderer.c, src/plymouth/src/libply-splash-core/ply-kmsg-reader.c...
[0/10] Reviewing plymouthd.conf.patch, src/plymouth/scripts/generate-version.sh, src/plymouth/src/plugins/splash/script/generate_script_string_header.py, src/plymouth/src/client/plymouth.c, src/plymouth/scripts/keymap-render.py, src/plymouth/src/libply-splash-core/ply-boot-splash.c, src/plymouth/src/libply-splash-core/ply-device-manager.c, src/plymouth/src/libply-splash-core/ply-renderer.c, src/plymouth/src/libply-splash-core/ply-kmsg-reader.c, src/plymouth/themes/spinner/spinner.plymouth.desktop...
LLM auditresponse for plymouthd.conf.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
The patch modifies a Plymouth configuration file (`plymouthd.conf`) to uncomment the `[Daemon]` section and set the `Theme` to `bgrt`. This is a standard configuration change that affects the boot splash theme. There is no obfuscated code, network requests, file exfiltration, or any behavior outside of normal packaging practices. The change is straightforward and aligns with the purpose of the package.
</details>
<summary>Simple config patch; no malicious behavior.</summary>
</security_assessment>

[1/10] Reviewing src/plymouth/scripts/generate-version.sh, src/plymouth/src/plugins/splash/script/generate_script_string_header.py, src/plymouth/src/client/plymouth.c, src/plymouth/scripts/keymap-render.py, src/plymouth/src/libply-splash-core/ply-boot-splash.c, src/plymouth/src/libply-splash-core/ply-device-manager.c, src/plymouth/src/libply-splash-core/ply-renderer.c, src/plymouth/src/libply-splash-core/ply-kmsg-reader.c, src/plymouth/themes/spinner/spinner.plymouth.desktop...
+ Reviewed plymouthd.conf.patch. Status: SAFE -- Simple config patch; no malicious behavior.
LLM auditresponse for spinner.plymouth.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a Plymouth theme configuration file (`.plymouth.desktop`). It contains only textual key-value pairs defining visual settings (colors, alignment, transitions) and status messages for various boot phases (updates, system upgrade, firmware upgrade, system reset). There is no executable code, no network requests, no file operations, no obfuscation, and no deviations from standard packaging practices. The content is benign and serves its intended purpose of configuring a boot splash theme.
</details>
<summary>Standard Plymouth theme configuration; no security issues.</summary>
</security_assessment>

[2/10] Reviewing src/plymouth/scripts/generate-version.sh, src/plymouth/src/plugins/splash/script/generate_script_string_header.py, src/plymouth/src/client/plymouth.c, src/plymouth/scripts/keymap-render.py, src/plymouth/src/libply-splash-core/ply-boot-splash.c, src/plymouth/src/libply-splash-core/ply-device-manager.c, src/plymouth/src/libply-splash-core/ply-renderer.c, src/plymouth/src/libply-splash-core/ply-kmsg-reader.c...
+ Reviewed src/plymouth/themes/spinner/spinner.plymouth.desktop. Status: SAFE -- Standard Plymouth theme configuration; no security issues.
LLM auditresponse for generate_script_string_header.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This Python script is a utility to convert a text file into a C string literal for embedding in a compiled program. It reads a file, escapes backslashes and double quotes, and outputs C code lines. There is no network access, no obfuscation, no execution of external commands, and no data exfiltration. The script does exactly what it is documented to do and poses no security risk. It is a standard build-time helper.
</details>
<summary>Benign utility script; no security issues found.</summary>
</security_assessment>

[3/10] Reviewing src/plymouth/scripts/generate-version.sh, src/plymouth/src/client/plymouth.c, src/plymouth/scripts/keymap-render.py, src/plymouth/src/libply-splash-core/ply-boot-splash.c, src/plymouth/src/libply-splash-core/ply-device-manager.c, src/plymouth/src/libply-splash-core/ply-renderer.c, src/plymouth/src/libply-splash-core/ply-kmsg-reader.c...
+ Reviewed src/plymouth/src/plugins/splash/script/generate_script_string_header.py. Status: SAFE -- Benign utility script; no security issues found.
LLM auditresponse for ply-renderer.c:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `ply-renderer.c` is part of the standard plymouth boot splash project. It contains a renderer abstraction layer that loads renderer plugins from predefined paths (e.g., `PLYMOUTH_PLUGIN_PATH &quot;renderers/x11.so&quot;`). There are no network requests, no obfuscated code, no suspicious file operations, and no attempts to exfiltrate or tamper with system data. The code follows typical C library patterns for loading shared modules, opening devices, and handling input. All operations are within the expected scope of a display manager's renderer component. No supply-chain attack indicators are present.
</details>
<summary>
Standard Plymouth renderer source code, no malicious behavior detected.</summary>
</security_assessment>

[4/10] Reviewing src/plymouth/scripts/generate-version.sh, src/plymouth/src/client/plymouth.c, src/plymouth/scripts/keymap-render.py, src/plymouth/src/libply-splash-core/ply-boot-splash.c, src/plymouth/src/libply-splash-core/ply-device-manager.c, src/plymouth/src/libply-splash-core/ply-kmsg-reader.c...
+ Reviewed src/plymouth/src/libply-splash-core/ply-renderer.c. Status: SAFE -- Standard Plymouth renderer source code, no malicious behavior detected.
LLM auditresponse for ply-boot-splash.c:
<security_assessment>
<decision>SAFE</decision>
<details>
This is an upstream source file from the Plymouth project (ply-boot-splash.c). It implements the boot splash screen management logic including plugin loading, display management, progress updates, and keyboard handling. There is no obfuscated code, no unexpected network requests, no execution of untrusted content, no data exfiltration, and no backdoors. The file follows standard C development practices with GNU GPL licensing and proper assertions. All operations (loading plugins from a configured plugin directory, managing pixel/text displays, attaching to event loops) are standard functionality for a boot splash system. The code is consistent with ordinary packaging and upstream development, not a supply-chain attack.
</details>
<summary>Upstream Plymouth source file, standard boot splash code</summary>
</security_assessment>

[5/10] Reviewing src/plymouth/scripts/generate-version.sh, src/plymouth/src/client/plymouth.c, src/plymouth/scripts/keymap-render.py, src/plymouth/src/libply-splash-core/ply-device-manager.c, src/plymouth/src/libply-splash-core/ply-kmsg-reader.c...
+ Reviewed src/plymouth/src/libply-splash-core/ply-boot-splash.c. Status: SAFE -- Upstream Plymouth source file, standard boot splash code
LLM auditresponse for keymap-render.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a build-time helper for the plymouth project that generates a keymap icon image and a C header file containing keymap metadata. It reads the system's XKB layout descriptions from `/usr/share/X11/xkb/rules/evdev.xml` and retrieves the list of available keymaps via `localectl list-keymaps`. It then renders the keymap names as a composite image using Cairo and prints a C header to stdout. There are no network requests, no execution of external code obtained from the internet, no obfuscation, and no attempts to modify system files outside the build process. All file operations are limited to reading a system XML file and writing a PNG output file. This is standard upstream packaging functionality and poses no supply-chain risk.
</details>
<summary>Build helper, no suspicious activity found.</summary>
</security_assessment>

[6/10] Reviewing src/plymouth/scripts/generate-version.sh, src/plymouth/src/client/plymouth.c, src/plymouth/src/libply-splash-core/ply-device-manager.c, src/plymouth/src/libply-splash-core/ply-kmsg-reader.c...
+ Reviewed src/plymouth/scripts/keymap-render.py. Status: SAFE -- Build helper, no suspicious activity found.
LLM auditresponse for ply-device-manager.c:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is the main source code for the Plymouth device manager, responsible for detecting and managing display and input hardware (DRM, framebuffer, keyboards) via udev and sysfs. All operations—reading `/sys/class/tty/console/active`, parsing `/etc/vconsole.conf`, creating renderers and pixel displays, watching udev events—are standard for a boot-time splash system. There is no obfuscated code, no unexpected network requests, no data exfiltration, no backdoors, and no deviation from the stated purpose of the Plymouth project. The code follows typical Linux device management patterns and is not malicious.
</details>
<summary>
Legitimate upstream Plymouth device manager source, no security issues.</summary>
</security_assessment>

[7/10] Reviewing src/plymouth/scripts/generate-version.sh, src/plymouth/src/client/plymouth.c, src/plymouth/src/libply-splash-core/ply-kmsg-reader.c...
+ Reviewed src/plymouth/src/libply-splash-core/ply-device-manager.c. Status: SAFE -- Legitimate upstream Plymouth device manager source, no security issues.
LLM auditresponse for generate-version.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard version-generation helper for a VCS package (plymouth-git). It performs no network operations (no curl/wget), no obfuscated code, and no unusual file operations. It only uses `git` commands to inspect the local checkout and derives a version string from tags and commit timestamps. The temporary stderr redirections are a normal pattern to silence non-critical errors. The script does not fetch, download, or execute any external content, nor does it modify any system files or exfiltrate data. Everything is confined to the package build directory and the git repository.
</details>
<summary>Safe: benign version derivation using git metadata.</summary>
</security_assessment>

[8/10] Reviewing src/plymouth/src/client/plymouth.c, src/plymouth/src/libply-splash-core/ply-kmsg-reader.c...
+ Reviewed src/plymouth/scripts/generate-version.sh. Status: SAFE -- Safe: benign version derivation using git metadata.
LLM auditresponse for plymouth.c:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is `plymouth.c`, the main source of the Plymouth boot splash client. It is a legitimate upstream source file. It contains standard C code: event loops, command parsing, boot daemon communication via ply-boot-client. The only external command execution is via `execvp` in `answer_via_command`, which runs commands specified by the user or system configuration for password handling (e.g., decrypting a disk). This is expected functionality for a password-prompting tool and is not malicious. There are no obfuscated strings, network downloads, or data exfiltration. The file matches the official Plymouth project source and contains no injected malicious code.
</details>
<summary>
Legitimate upstream C source, no malicious code found.</summary>
</security_assessment>

[9/10] Reviewing src/plymouth/src/libply-splash-core/ply-kmsg-reader.c...
+ Reviewed src/plymouth/src/client/plymouth.c. Status: SAFE -- Legitimate upstream C source, no malicious code found.
LLM auditresponse for ply-kmsg-reader.c:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard component of the Plymouth boot splash system. It reads kernel log messages from `/dev/kmsg`, parses them, and formats them for terminal display with ANSI color codes. The code uses standard C library functions (open, read, strtok_r, asprintf, calloc, etc.) and does not perform any network requests, execute shell commands, decode obfuscated blobs, or access files outside of its expected scope (/dev/kmsg). No signs of exfiltration, backdoors, or supply-chain injection are present. The hex-unmangling logic is a standard kernel log facility for decoding escape sequences, not obfuscation intended to hide malicious activity.
</details>
<summary>Standard Plymouth kernel message reader code; no malicious behavior detected.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/plymouth/src/libply-splash-core/ply-kmsg-reader.c. Status: SAFE -- Standard Plymouth kernel message reader code; no malicious behavior detected.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 71,603
  Completion Tokens: 7,792
  Total Tokens: 79,395
  Total Cost: $0.007847
  Execution Time: 45.28 seconds
Full audit report can be found in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-plymouth-git.txt
Final Status: SAFE


No issues found.
