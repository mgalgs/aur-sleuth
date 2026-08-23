---
package: plymouth-git
pkgver: 26.134.222.r6.g96f5c010
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 11c93a0c95e2166961e3664fea6b5a63827ded10
prompt_tokens: 72801
completion_tokens: 7843
total_tokens: 80644
cost: 0.00796383
execution_time: 84.02
files_reviewed: 13
files_skipped: 0
date: 2026-06-19T09:54:54Z
file_verdicts:
  - file: plymouth.install
    status: safe
    summary: Standard package upgrade warning, no malicious behavior.
  - file: 50-plymouth.conf
    status: safe
    summary: Configuration adding plymouth shutdown hook to initramfs.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD, no malicious content.
  - file: src/plymouth/themes/bgrt/bgrt.plymouth.desktop
    status: safe
    summary: Declarative Plymouth theme config; no executable or malicious content.
  - file: plymouthd.conf.patch
    status: safe
    summary: Patch configures plymouth theme to bgrt.
  - file: src/plymouth/src/plugins/splash/script/generate_script_string_header.py
    status: safe
    summary: Standard build helper script; no security issues.
  - file: src/plymouth/scripts/generate-version.sh
    status: safe
    summary: Standard version generation script, no security concerns.
  - file: src/plymouth/scripts/keymap-render.py
    status: safe
    summary: Standard build script for Plymouth keymap rendering; no malicious behavior.
  - file: src/plymouth/themes/spinner/spinner.plymouth.desktop
    status: safe
    summary: Standard Plymouth theme configuration file with no security concerns.
  - file: src/plymouth/src/client/ply-boot-client.c
    status: safe
    summary: Standard Plymouth client code; no security threats.
  - file: src/plymouth/src/libply-splash-core/ply-boot-splash.c
    status: safe
    summary: Standard Plymouth source code, no malicious indicators.
  - file: src/plymouth/src/client/plymouth.c
    status: safe
    summary: Clean upstream code, no malicious indicators.
  - file: src/plymouth/src/libply-splash-core/ply-device-manager.c
    status: safe
    summary: Legitimate Plymouth device manager source; no malicious code.
---

Cloning https://aur.archlinux.org/plymouth-git.git to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-mdsy_j1c...
Cloned repository to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-mdsy_j1c
Analyzing plymouth-git AUR package (working in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-mdsy_j1c) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD fetches its source from the official upstream GitLab repository (gitlab.freedesktop.org) via a standard `git+https` URL. The `pkgver()` function runs `git describe --long` in the cloned directory, which is a benign local git command with no network or system-modifying behavior. The global scope consists only of variable assignments and an `install` reference to a separate file (not sourced during this gate). There are no `eval`, `curl`, `wget`, or other dangerous constructs in the executed scope. Checksums are properly provided for non-VCS sources, and `SKIP` for the VCS source is standard. No code in `prepare()`, `build()`, or `package()` runs during the narrow gate so it is out of scope. The file follows normal AUR packaging practices and contains no evidence of supply-chain attack within the scope of the commands being run.
</details>
<summary>Safe: only standard source fetch and pkgver.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- Safe: only standard source fetch and pkgver.[/]
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
The file is a standard .install script for Arch Linux packages, containing only a `post_upgrade()` function that displays a warning message to users upgrading from an older version. It uses `vercmp` (a built-in pacman function) and `echo` to print instructions about configuration changes. There are no network requests, no execution of downloaded code, no obfuscation, and no dangerous file operations. This is typical packaging practice for communicating breaking changes during package upgrades.
</details>
<summary>Standard package upgrade warning, no malicious behavior.</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, 50-plymouth.conf...
+ Reviewed plymouth.install. Status: SAFE -- Standard package upgrade warning, no malicious behavior.
LLM auditresponse for 50-plymouth.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a configuration snippet for an initramfs tool (mkinitcpio) that adds the `plymouth-shutdown` hook to the shutdown sequence. The `w+` syntax and the path `/run/initramfs/mkinitcpio-shutdown.conf` are consistent with a tmpfiles.d configuration or similar system configuration mechanism. The content simply enables the plymouth shutdown splash in the initramfs, which is expected functionality for the plymouth-git package. No suspicious behavior, no exfiltration, no unexpected code execution.</details>
<summary>Configuration adding plymouth shutdown hook to initramfs.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed 50-plymouth.conf. Status: SAFE -- Configuration adding plymouth shutdown hook to initramfs.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a VCS (`-git`) package. The source is fetched from the official upstream repository (`gitlab.freedesktop.org/plymouth/plymouth`) over HTTPS. All other files in the source array have valid checksums. Build steps are limited to standard Meson commands (`arch-meson`, `meson compile`, `meson test`, `meson install`) and routine Arch integration patches (replacing dracut with mkinitcpio, patching config, adjusting fonts). The only external file accessed during `build()` is `/usr/share/pixmaps/archlinux-logo-text-dark.svg` – a system-provided file from an existing Arch package – used to convert a logo for the spinner theme. There are no suspicious network requests, obfuscated code, dangerous command invocations, or any behavior that deviates from legitimate packaging. No evidence of supply-chain attack or injected malicious code.
</details>
<summary>Standard AUR PKGBUILD, no malicious content.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD, no malicious content.
Reviewed all required files.
Deciding which files to review next...
Note: 304 files available for selection; offering the 50 highest-priority to the model. 205 lower-priority file(s) were not offered.
LLM response for file selection:
plymouthd.conf.patch
src/plymouth/scripts/generate-version.sh
src/plymouth/src/plugins/splash/script/generate_script_string_header.py
src/plymouth/themes/bgrt/bgrt.plymouth.desktop
src/plymouth/themes/spinner/spinner.plymouth.desktop
src/plymouth/src/client/plymouth.c
src/plymouth/src/client/ply-boot-client.c
src/plymouth/src/libply-splash-core/ply-boot-splash.c
src/plymouth/src/libply-splash-core/ply-device-manager.c
src/plymouth/scripts/keymap-render.py
Decided to review 10 additional files: plymouthd.conf.patch, src/plymouth/scripts/generate-version.sh, src/plymouth/src/plugins/splash/script/generate_script_string_header.py, src/plymouth/themes/bgrt/bgrt.plymouth.desktop, src/plymouth/themes/spinner/spinner.plymouth.desktop, src/plymouth/src/client/plymouth.c, src/plymouth/src/client/ply-boot-client.c, src/plymouth/src/libply-splash-core/ply-boot-splash.c, src/plymouth/src/libply-splash-core/ply-device-manager.c, src/plymouth/scripts/keymap-render.py
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing plymouthd.conf.patch...
[0/10] Reviewing plymouthd.conf.patch, src/plymouth/scripts/generate-version.sh...
[0/10] Reviewing plymouthd.conf.patch, src/plymouth/scripts/generate-version.sh, src/plymouth/src/plugins/splash/script/generate_script_string_header.py...
[0/10] Reviewing plymouthd.conf.patch, src/plymouth/scripts/generate-version.sh, src/plymouth/src/plugins/splash/script/generate_script_string_header.py, src/plymouth/themes/spinner/spinner.plymouth.desktop...
[0/10] Reviewing plymouthd.conf.patch, src/plymouth/scripts/generate-version.sh, src/plymouth/src/plugins/splash/script/generate_script_string_header.py, src/plymouth/themes/spinner/spinner.plymouth.desktop, src/plymouth/themes/bgrt/bgrt.plymouth.desktop...
[0/10] Reviewing plymouthd.conf.patch, src/plymouth/scripts/generate-version.sh, src/plymouth/src/plugins/splash/script/generate_script_string_header.py, src/plymouth/themes/spinner/spinner.plymouth.desktop, src/plymouth/themes/bgrt/bgrt.plymouth.desktop, src/plymouth/src/client/plymouth.c...
[0/10] Reviewing plymouthd.conf.patch, src/plymouth/scripts/generate-version.sh, src/plymouth/src/plugins/splash/script/generate_script_string_header.py, src/plymouth/themes/spinner/spinner.plymouth.desktop, src/plymouth/themes/bgrt/bgrt.plymouth.desktop, src/plymouth/src/client/plymouth.c, src/plymouth/src/client/ply-boot-client.c...
[0/10] Reviewing plymouthd.conf.patch, src/plymouth/scripts/generate-version.sh, src/plymouth/src/plugins/splash/script/generate_script_string_header.py, src/plymouth/themes/spinner/spinner.plymouth.desktop, src/plymouth/themes/bgrt/bgrt.plymouth.desktop, src/plymouth/src/client/plymouth.c, src/plymouth/src/client/ply-boot-client.c, src/plymouth/src/libply-splash-core/ply-boot-splash.c...
[0/10] Reviewing plymouthd.conf.patch, src/plymouth/scripts/generate-version.sh, src/plymouth/src/plugins/splash/script/generate_script_string_header.py, src/plymouth/themes/spinner/spinner.plymouth.desktop, src/plymouth/themes/bgrt/bgrt.plymouth.desktop, src/plymouth/src/client/plymouth.c, src/plymouth/src/client/ply-boot-client.c, src/plymouth/src/libply-splash-core/ply-boot-splash.c, src/plymouth/src/libply-splash-core/ply-device-manager.c...
[0/10] Reviewing plymouthd.conf.patch, src/plymouth/scripts/generate-version.sh, src/plymouth/src/plugins/splash/script/generate_script_string_header.py, src/plymouth/themes/spinner/spinner.plymouth.desktop, src/plymouth/themes/bgrt/bgrt.plymouth.desktop, src/plymouth/src/client/plymouth.c, src/plymouth/src/client/ply-boot-client.c, src/plymouth/src/libply-splash-core/ply-boot-splash.c, src/plymouth/src/libply-splash-core/ply-device-manager.c, src/plymouth/scripts/keymap-render.py...
LLM auditresponse for bgrt.plymouth.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a Plymouth theme configuration (.desktop file) containing only declarative settings such as font names, color values, alignment coordinates, and boolean flags for boot/shutdown/reboot/upgrade screens. There are no executable commands, no network requests, no file operations, no obfuscation, and no mechanisms to exfiltrate data, download or execute code, or modify system files. The content is entirely passive configuration data and poses no security threat.
</details>
<summary>Declarative Plymouth theme config; no executable or malicious content.</summary>
</security_assessment>

[1/10] Reviewing plymouthd.conf.patch, src/plymouth/scripts/generate-version.sh, src/plymouth/src/plugins/splash/script/generate_script_string_header.py, src/plymouth/themes/spinner/spinner.plymouth.desktop, src/plymouth/src/client/plymouth.c, src/plymouth/src/client/ply-boot-client.c, src/plymouth/src/libply-splash-core/ply-boot-splash.c, src/plymouth/src/libply-splash-core/ply-device-manager.c, src/plymouth/scripts/keymap-render.py...
+ Reviewed src/plymouth/themes/bgrt/bgrt.plymouth.desktop. Status: SAFE -- Declarative Plymouth theme config; no executable or malicious content.
LLM auditresponse for plymouthd.conf.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a patch file that modifies the plymouth daemon configuration. It replaces the commented-out default configuration with an explicit `[Daemon]` section setting the theme to `bgrt`. There is no malicious code, no network requests, no obfuscation, and no deviation from standard packaging practices. The patch is a straightforward configuration change.
</details>
<summary>Patch configures plymouth theme to bgrt.</summary>
</security_assessment>

[2/10] Reviewing src/plymouth/scripts/generate-version.sh, src/plymouth/src/plugins/splash/script/generate_script_string_header.py, src/plymouth/themes/spinner/spinner.plymouth.desktop, src/plymouth/src/client/plymouth.c, src/plymouth/src/client/ply-boot-client.c, src/plymouth/src/libply-splash-core/ply-boot-splash.c, src/plymouth/src/libply-splash-core/ply-device-manager.c, src/plymouth/scripts/keymap-render.py...
+ Reviewed plymouthd.conf.patch. Status: SAFE -- Patch configures plymouth theme to bgrt.
LLM auditresponse for generate_script_string_header.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a build helper that reads a text file and generates a C header containing its content as a string literal. It performs basic escaping for backslashes and quotes to produce valid C source code. No network requests, system modifications, or execution of external commands occur. The behavior is purely local file I/O and text processing, which is normal for a build-time utility. There is no evidence of malicious intent.</details>
<summary>Standard build helper script; no security issues.</summary>
</security_assessment>

[3/10] Reviewing src/plymouth/scripts/generate-version.sh, src/plymouth/themes/spinner/spinner.plymouth.desktop, src/plymouth/src/client/plymouth.c, src/plymouth/src/client/ply-boot-client.c, src/plymouth/src/libply-splash-core/ply-boot-splash.c, src/plymouth/src/libply-splash-core/ply-device-manager.c, src/plymouth/scripts/keymap-render.py...
+ Reviewed src/plymouth/src/plugins/splash/script/generate_script_string_header.py. Status: SAFE -- Standard build helper script; no security issues.
LLM auditresponse for generate-version.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a version-generation helper for the plymouth project. It determines the version either from a directory name (for tarball releases) or from git metadata (commit dates, tags, commit count). All operations are local and only use standard Unix utilities (`git`, `date`, `sort`, `head`, `sed`, `basename`, `realpath`). No network access, obfuscation, or unexpected system modifications occur. This is a common and benign packaging utility script.
</details>
<summary>
Standard version generation script, no security concerns.</summary>
</security_assessment>

[4/10] Reviewing src/plymouth/themes/spinner/spinner.plymouth.desktop, src/plymouth/src/client/plymouth.c, src/plymouth/src/client/ply-boot-client.c, src/plymouth/src/libply-splash-core/ply-boot-splash.c, src/plymouth/src/libply-splash-core/ply-device-manager.c, src/plymouth/scripts/keymap-render.py...
+ Reviewed src/plymouth/scripts/generate-version.sh. Status: SAFE -- Standard version generation script, no security concerns.
LLM auditresponse for keymap-render.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The script `keymap-render.py` is a build-time utility that generates a C header file (`ply-keymap-metadata.h`) and a PNG sprite sheet for Plymouth's keymap selector. It reads a standard system XKB rules file (`/usr/share/X11/xkb/rules/evdev.xml`) and runs the system `localectl list-keymaps` command to enumerate installed keymaps. It then uses `cairo` to render the keymap names into an image and outputs the C metadata structure.

There is no network access, no obfuscation, no execution of downloaded code, and no file writes outside the expected build output. All file reads and command executions target well-known system utilities and configuration files that are part of the standard Linux desktop environment. The operations are fully consistent with the package's stated purpose (generating keymap rendering assets for Plymouth). No supply-chain attack indicators are present.
</details>
<summary>
Standard build script for Plymouth keymap rendering; no malicious behavior.</summary>
</security_assessment>

[5/10] Reviewing src/plymouth/themes/spinner/spinner.plymouth.desktop, src/plymouth/src/client/plymouth.c, src/plymouth/src/client/ply-boot-client.c, src/plymouth/src/libply-splash-core/ply-boot-splash.c, src/plymouth/src/libply-splash-core/ply-device-manager.c...
+ Reviewed src/plymouth/scripts/keymap-render.py. Status: SAFE -- Standard build script for Plymouth keymap rendering; no malicious behavior.
LLM auditresponse for spinner.plymouth.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a Plymouth theme configuration file (`.plymouth.desktop`). It contains only static key-value pairs defining theme parameters such as font, colors, alignment, and animation behavior. There is no executable code, no network operations, no file manipulation, and no obfuscated content. The `@PLYMOUTH_THEME_PATH@` variable is a standard build-time substitution used in packaging and does not introduce any security risk. The file is entirely benign and follows normal Plymouth theme packaging practices.
</details>
<summary>Standard Plymouth theme configuration file with no security concerns.</summary>
</security_assessment>

[6/10] Reviewing src/plymouth/src/client/plymouth.c, src/plymouth/src/client/ply-boot-client.c, src/plymouth/src/libply-splash-core/ply-boot-splash.c, src/plymouth/src/libply-splash-core/ply-device-manager.c...
+ Reviewed src/plymouth/themes/spinner/spinner.plymouth.desktop. Status: SAFE -- Standard Plymouth theme configuration file with no security concerns.
LLM auditresponse for ply-boot-client.c:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard C source file from the Plymouth project (Red Hat, GPL licensed). It implements a client that communicates with the Plymouth boot daemon over abstract Unix sockets. The code connects to local sockets, sends request strings, and processes incoming replies via event-loop callbacks. There is no network access to remote hosts, no downloading or execution of external code, no obfuscation, no exfiltration of data, and no dangerous commands like `eval`, `curl`, or `wget`. All operations (socket creation, reading/writing, memory allocation) are routine system-level programming. The file is consistent with its stated purpose and contains no evidence of supply-chain injection or malicious behavior.
</details>
<summary>Standard Plymouth client code; no security threats.</summary>
</security_assessment>

[7/10] Reviewing src/plymouth/src/client/plymouth.c, src/plymouth/src/libply-splash-core/ply-boot-splash.c, src/plymouth/src/libply-splash-core/ply-device-manager.c...
+ Reviewed src/plymouth/src/client/ply-boot-client.c. Status: SAFE -- Standard Plymouth client code; no security threats.
LLM auditresponse for ply-boot-splash.c:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is standard upstream Plymouth source code (`ply-boot-splash.c`). It implements boot splash screen management, including plugin loading, display management, and progress tracking. There are no indicators of malicious activity:

- No network requests (no `curl`, `wget`, or raw socket operations in the shown code—`sys/socket.h` is included but unused in this file; standard for the project).
- No obfuscated code, base64/hex encoded commands, or `eval`-like constructs.
- No exfiltration of local data (no access to `/etc/shadow`, SSH keys, or similar).
- Plugin loading via `ply_open_module` from a local path (`splash->plugin_dir`) is standard for Plymouth's architecture and not a supply-chain attack vector by itself.
- All function calls are to internal plymouth APIs or standard C library functions.
- The file is consistent with the application's stated purpose: showing a boot splash screen.

There is no evidence of injected malicious code that deviates from upstream functionality.
</details>
<summary>Standard Plymouth source code, no malicious indicators.</summary>
</security_assessment>

[8/10] Reviewing src/plymouth/src/client/plymouth.c, src/plymouth/src/libply-splash-core/ply-device-manager.c...
+ Reviewed src/plymouth/src/libply-splash-core/ply-boot-splash.c. Status: SAFE -- Standard Plymouth source code, no malicious indicators.
LLM auditresponse for plymouth.c:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `plymouth.c` is a standard source file from the upstream Plymouth project (a boot splash daemon). It contains no obfuscated code, no suspicious network requests, no unexpected file operations, and no attempt to exfiltrate data. The code uses `fork()`/`execvp()` to run external commands, but those commands are provided by the plymouth daemon or command-line arguments as part of the application's normal operation (e.g., password handling via a helper program). The copyright and authorship clearly indicate it is from Red Hat, matching the expected upstream source. There are no hidden encodings, backdoors, or deviations from standard packaging or software behavior.
</details>
<summary>Clean upstream code, no malicious indicators.</summary>
</security_assessment>

[9/10] Reviewing src/plymouth/src/libply-splash-core/ply-device-manager.c...
+ Reviewed src/plymouth/src/client/plymouth.c. Status: SAFE -- Clean upstream code, no malicious indicators.
LLM auditresponse for ply-device-manager.c:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `ply-device-manager.c` is a standard C source file from the upstream Plymouth project (boot splash and logging system for Linux). It contains no obfuscated code, no encoded commands, no network requests to unexpected hosts, no data exfiltration, and no backdoors. All operations are consistent with Plymouth's purpose: managing graphics displays, input devices, and terminals via udev, reading system configuration files (`/etc/vconsole.conf`, kernel command line, `/sys/class/tty/console/active`), and opening standard `/dev/` device nodes. The use of `open`, `read`, `asprintf`, `strdup`, and `ply_*` functions is normal for this type of system software. There is no deviation from expected packaging or source code behavior; the file is a legitimate part of the Plymouth source repository and poses no security threat as a supply-chain attack vector.
</details>
<summary>Legitimate Plymouth device manager source; no malicious code.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/plymouth/src/libply-splash-core/ply-device-manager.c. Status: SAFE -- Legitimate Plymouth device manager source; no malicious code.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 72,801
  Completion Tokens: 7,843
  Total Tokens: 80,644
  Total Cost: $0.007964
  Execution Time: 84.02 seconds
Full audit report can be found in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-plymouth-git.txt
Final Status: SAFE


No issues found.
