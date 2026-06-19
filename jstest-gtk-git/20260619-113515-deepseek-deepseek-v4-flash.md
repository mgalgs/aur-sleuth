---
package: jstest-gtk-git
pkgver: 0.1.0.r127.g92bdf8e
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 11c93a0c95e2166961e3664fea6b5a63827ded10
prompt_tokens: 51068
completion_tokens: 6353
total_tokens: 57421
cost: 0.00573966
execution_time: 49.13
files_reviewed: 12
files_skipped: 0
date: 2026-06-19T11:35:15Z
file_verdicts:
  - file: fix_datadir.patch
    status: safe
    summary: Patch adjusts data directory path for packaging.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD for a joystick tester; no malicious indicators.
  - file: jstest-gtk.desktop
    status: safe
    summary: Standard desktop entry file, no security concerns.
  - file: src/jstest-gtk/src/button_widget.cpp
    status: safe
    summary: No security issues; standard GUI source code.
  - file: src/jstest-gtk/src/axis_widget.cpp
    status: safe
    summary: Standard UI widget code, no security issues.
  - file: src/jstest-gtk/src/main.cpp
    status: safe
    summary: "Safe: standard GTKmm joystick tester; no malicious code."
  - file: src/jstest-gtk/src/joystick.cpp
    status: safe
    summary: Standard joystick driver code, no security issues.
  - file: src/jstest-gtk/src/evdev_helper.cpp
    status: safe
    summary: No malicious code found; standard input helper source.
  - file: src/jstest-gtk/CMakeLists.txt
    status: safe
    summary: Standard CMake build; no evidence of malicious behavior.
  - file: src/jstest-gtk/src/joystick_map_widget.cpp
    status: safe
    summary: Standard joystick mapping dialog code, no security issues.
  - file: src/jstest-gtk/src/remap_widget.cpp
    status: safe
    summary: Standard application source code, no security issues.
  - file: src/jstest-gtk/src/calibrate_maximum_dialog.cpp
    status: safe
    summary: Legitimate joystick calibration GUI code, no security concerns.
---

Cloning https://aur.archlinux.org/jstest-gtk-git.git to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-x8ix0cv_...
Cloned repository to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-x8ix0cv_
Analyzing jstest-gtk-git AUR package (working in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-x8ix0cv_) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard AUR package for `jstest-gtk-git`. The top-level scope only contains variable definitions and array assignments. The `pkgver()` function uses `git describe` on the cloned repository, which is normal for git-based packages. The `source` array fetches from the official GitHub repository (git+https) and includes two local files with valid checksums. No dangerous commands (curl, wget, eval, base64, etc.) are present in the executed code paths. Running `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo` will only fetch the source and evaluate the PKGBUILD without executing `prepare()`, `build()`, or `package()`. No malicious activity is observed.
</details>
<summary>Standard AUR PKGBUILD, no malicious code in executed scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- Standard AUR PKGBUILD, no malicious code in executed scope.[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, fix_datadir.patch...
LLM auditresponse for fix_datadir.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch correctly changes the `datadir` variable from a relative path (`"data/"`) to an absolute path (`"/usr/share/jstest-gtk/data/"`). This is a standard and expected modification for packaging an application to ensure it locates its data files after installation to the system. There is no malicious content, no obfuscation, no external downloads, and no system modifications beyond the intended path fix.
</details>
<summary>Patch adjusts data directory path for packaging.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed fix_datadir.patch. Status: SAFE -- Patch adjusts data directory path for packaging.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a VCS (`-git`) package. It clones the official upstream repository from GitHub, applies a fixed patch (with a verified checksum), builds with cmake and make, and installs only the expected binary, icon, desktop file, and data files. There are no obfuscated commands, no unexpected network requests (the only external source is the project's own git repo), no execution of untrusted code, and no manipulation of system files outside the package's own install path. The `sha256sums` entry for the git source is `SKIP`, which is normal and required for VCS sources. All observed behaviors are consistent with legitimate packaging.
</details>
<summary>Standard AUR PKGBUILD for a joystick tester; no malicious indicators.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD for a joystick tester; no malicious indicators.
Reviewed all required files.
Deciding which files to review next...
Note: 59 files available for selection; offering the 50 highest-priority to the model. 8 lower-priority file(s) were not offered.
LLM response for file selection:
jstest-gtk.desktop
src/jstest-gtk/CMakeLists.txt
src/jstest-gtk/src/main.cpp
src/jstest-gtk/src/evdev_helper.cpp
src/jstest-gtk/src/joystick.cpp
src/jstest-gtk/src/calibrate_maximum_dialog.cpp
src/jstest-gtk/src/remap_widget.cpp
src/jstest-gtk/src/joystick_map_widget.cpp
src/jstest-gtk/src/button_widget.cpp
src/jstest-gtk/src/axis_widget.cpp
Decided to review 10 additional files: jstest-gtk.desktop, src/jstest-gtk/CMakeLists.txt, src/jstest-gtk/src/main.cpp, src/jstest-gtk/src/evdev_helper.cpp, src/jstest-gtk/src/joystick.cpp, src/jstest-gtk/src/calibrate_maximum_dialog.cpp, src/jstest-gtk/src/remap_widget.cpp, src/jstest-gtk/src/joystick_map_widget.cpp, src/jstest-gtk/src/button_widget.cpp, src/jstest-gtk/src/axis_widget.cpp
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing jstest-gtk.desktop...
[0/10] Reviewing jstest-gtk.desktop, src/jstest-gtk/CMakeLists.txt...
[0/10] Reviewing jstest-gtk.desktop, src/jstest-gtk/CMakeLists.txt, src/jstest-gtk/src/evdev_helper.cpp...
[0/10] Reviewing jstest-gtk.desktop, src/jstest-gtk/CMakeLists.txt, src/jstest-gtk/src/evdev_helper.cpp, src/jstest-gtk/src/joystick.cpp...
[0/10] Reviewing jstest-gtk.desktop, src/jstest-gtk/CMakeLists.txt, src/jstest-gtk/src/evdev_helper.cpp, src/jstest-gtk/src/joystick.cpp, src/jstest-gtk/src/main.cpp...
[0/10] Reviewing jstest-gtk.desktop, src/jstest-gtk/CMakeLists.txt, src/jstest-gtk/src/evdev_helper.cpp, src/jstest-gtk/src/joystick.cpp, src/jstest-gtk/src/main.cpp, src/jstest-gtk/src/calibrate_maximum_dialog.cpp...
[0/10] Reviewing jstest-gtk.desktop, src/jstest-gtk/CMakeLists.txt, src/jstest-gtk/src/evdev_helper.cpp, src/jstest-gtk/src/joystick.cpp, src/jstest-gtk/src/main.cpp, src/jstest-gtk/src/calibrate_maximum_dialog.cpp, src/jstest-gtk/src/remap_widget.cpp...
[0/10] Reviewing jstest-gtk.desktop, src/jstest-gtk/CMakeLists.txt, src/jstest-gtk/src/evdev_helper.cpp, src/jstest-gtk/src/joystick.cpp, src/jstest-gtk/src/main.cpp, src/jstest-gtk/src/calibrate_maximum_dialog.cpp, src/jstest-gtk/src/remap_widget.cpp, src/jstest-gtk/src/joystick_map_widget.cpp...
[0/10] Reviewing jstest-gtk.desktop, src/jstest-gtk/CMakeLists.txt, src/jstest-gtk/src/evdev_helper.cpp, src/jstest-gtk/src/joystick.cpp, src/jstest-gtk/src/main.cpp, src/jstest-gtk/src/calibrate_maximum_dialog.cpp, src/jstest-gtk/src/remap_widget.cpp, src/jstest-gtk/src/joystick_map_widget.cpp, src/jstest-gtk/src/button_widget.cpp...
[0/10] Reviewing jstest-gtk.desktop, src/jstest-gtk/CMakeLists.txt, src/jstest-gtk/src/evdev_helper.cpp, src/jstest-gtk/src/joystick.cpp, src/jstest-gtk/src/main.cpp, src/jstest-gtk/src/calibrate_maximum_dialog.cpp, src/jstest-gtk/src/remap_widget.cpp, src/jstest-gtk/src/joystick_map_widget.cpp, src/jstest-gtk/src/button_widget.cpp, src/jstest-gtk/src/axis_widget.cpp...
LLM auditresponse for jstest-gtk.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.desktop` file for the jstest-gtk application. It contains only metadata fields (Name, Categories, Exec, Icon, etc.) and no executable code, network requests, or any suspicious operations. The file follows the freedesktop.org Desktop Entry Specification and is typical for AUR packages. No security issues are present.
</details>
<summary>Standard desktop entry file, no security concerns.</summary>
</security_assessment>

[1/10] Reviewing src/jstest-gtk/CMakeLists.txt, src/jstest-gtk/src/evdev_helper.cpp, src/jstest-gtk/src/joystick.cpp, src/jstest-gtk/src/main.cpp, src/jstest-gtk/src/calibrate_maximum_dialog.cpp, src/jstest-gtk/src/remap_widget.cpp, src/jstest-gtk/src/joystick_map_widget.cpp, src/jstest-gtk/src/button_widget.cpp, src/jstest-gtk/src/axis_widget.cpp...
+ Reviewed jstest-gtk.desktop. Status: SAFE -- Standard desktop entry file, no security concerns.
LLM auditresponse for button_widget.cpp:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `button_widget.cpp` is a standard C++ source file for a GTK drawing area used to render a button as part of a graphical joystick tester. It contains no network operations, no obfuscated or encoded code, no dangerous system commands, and no attempts to exfiltrate data or modify system files. The code is entirely routine GUI drawing logic: it sets up a Cairo context, draws a rectangle, and displays text. There is no deviation from expected upstream application functionality. No supply-chain attack indicators are present.
</details>
<summary>
No security issues; standard GUI source code.</summary>
</security_assessment>

[2/10] Reviewing src/jstest-gtk/CMakeLists.txt, src/jstest-gtk/src/evdev_helper.cpp, src/jstest-gtk/src/joystick.cpp, src/jstest-gtk/src/main.cpp, src/jstest-gtk/src/calibrate_maximum_dialog.cpp, src/jstest-gtk/src/remap_widget.cpp, src/jstest-gtk/src/joystick_map_widget.cpp, src/jstest-gtk/src/axis_widget.cpp...
+ Reviewed src/jstest-gtk/src/button_widget.cpp. Status: SAFE -- No security issues; standard GUI source code.
LLM auditresponse for axis_widget.cpp:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `axis_widget.cpp` is a standard C++ source file for a GUI widget in the joystick tester application. It implements a visual axis indicator using GTK and Cairo, with methods to set axis positions and draw the widget. There are no network operations, system modifications, obfuscated code, or any behavior beyond normal application functionality. The code is consistent with the stated purpose of the package and contains no security concerns.
</details>
<summary>Standard UI widget code, no security issues.</summary>
</security_assessment>

[3/10] Reviewing src/jstest-gtk/CMakeLists.txt, src/jstest-gtk/src/evdev_helper.cpp, src/jstest-gtk/src/joystick.cpp, src/jstest-gtk/src/main.cpp, src/jstest-gtk/src/calibrate_maximum_dialog.cpp, src/jstest-gtk/src/remap_widget.cpp, src/jstest-gtk/src/joystick_map_widget.cpp...
+ Reviewed src/jstest-gtk/src/axis_widget.cpp. Status: SAFE -- Standard UI widget code, no security issues.
LLM auditresponse for main.cpp:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `main.cpp` is a standard C++ source file for the `jstest-gtk` graphical joystick testing application. It includes typical GTKmm GUI code, command-line argument parsing (including `--help`, `--version`, `--simple`, `--datadir`), and error handling. The application opens input device files (joysticks) specified by the user, which is its intended functionality. There are no network requests, no obfuscated or encoded commands, no use of dangerous functions like `eval` or `curl`/`wget`, and no attempts to exfiltrate data, modify system files, or introduce backdoors. The code is transparent and matches upstream's stated purpose.
</details>
<summary>Safe: standard GTKmm joystick tester; no malicious code.</summary>
</security_assessment>

[4/10] Reviewing src/jstest-gtk/CMakeLists.txt, src/jstest-gtk/src/evdev_helper.cpp, src/jstest-gtk/src/joystick.cpp, src/jstest-gtk/src/calibrate_maximum_dialog.cpp, src/jstest-gtk/src/remap_widget.cpp, src/jstest-gtk/src/joystick_map_widget.cpp...
+ Reviewed src/jstest-gtk/src/main.cpp. Status: SAFE -- Safe: standard GTKmm joystick tester; no malicious code.
LLM auditresponse for joystick.cpp:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard C++ source file for the `jstest-gtk` application, part of its upstream codebase. It interacts with Linux joystick and evdev devices via standard system calls (`open`, `ioctl`, `read`). All operations are normal for a joystick testing tool: opening device files in `/dev/input/`, querying axis/button counts, reading calibration and mapping data via ioctl, and handling input events. There are no network requests, no obfuscated code, no unexpected file operations, and no attempts to modify system files outside the application's scope. The file performs no supply-chain attack indicators and is consistent with its stated purpose.
</details>
<summary>Standard joystick driver code, no security issues.</summary>
</security_assessment>

[5/10] Reviewing src/jstest-gtk/CMakeLists.txt, src/jstest-gtk/src/evdev_helper.cpp, src/jstest-gtk/src/calibrate_maximum_dialog.cpp, src/jstest-gtk/src/remap_widget.cpp, src/jstest-gtk/src/joystick_map_widget.cpp...
+ Reviewed src/jstest-gtk/src/joystick.cpp. Status: SAFE -- Standard joystick driver code, no security issues.
LLM auditresponse for evdev_helper.cpp:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a C++ source file for an input event helper library, part of the Xbox 360 USB Gamepad Userspace Driver (xboxdrv) project. It contains:

- A generic `EnumBox` template for mapping enum values to strings and back.
- Concrete enum classes (`EvDevRelEnum`, `EvDevAbsEnum`, `EvDevBtnEnum`) that statically populate mappings for the Linux input event codes (REL, ABS, KEY/BTN) from `<linux/input.h>`.
- A `Keysym2Keycode` class that opens an X11 display, retrieves the current keyboard mapping via `XGetKeyboardMapping`, and builds a KeySym-to-keycode map. This is normal behavior for an application that needs to translate X11 key symbols into evdev keycodes, used by the `xkeysym2keycode()` function.
- Conversion functions (`str2event`, `btn2str`, `abs2str`, `rel2str`) for translating between string names and numeric event type/code values.

All operations are legitimate for a utility that configures gamepad input mapping. There is no obfuscation, no network access, no execution of external programs, no file writes outside the package's install prefix, and no encoded or hidden payloads. The code is standard C++ and serves exactly the purpose stated by the project.
</details>
<summary>No malicious code found; standard input helper source.</summary>
</security_assessment>

[6/10] Reviewing src/jstest-gtk/CMakeLists.txt, src/jstest-gtk/src/calibrate_maximum_dialog.cpp, src/jstest-gtk/src/remap_widget.cpp, src/jstest-gtk/src/joystick_map_widget.cpp...
+ Reviewed src/jstest-gtk/src/evdev_helper.cpp. Status: SAFE -- No malicious code found; standard input helper source.
LLM auditresponse for CMakeLists.txt:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard CMake build file for a joystick testing application. It compiles C++ sources, links against GTKmm, sigc++, and X11, and installs the binary along with data files, icons, a desktop file, and a man page. There is no obfuscated code, no network requests beyond normal package management, and no execution of untrusted content. The use of `git describe` to determine version is routine. The file is consistent with the stated purpose of the package and contains no signs of malicious code.
</details>
<summary>Standard CMake build; no evidence of malicious behavior.</summary>
</security_assessment>

[7/10] Reviewing src/jstest-gtk/src/calibrate_maximum_dialog.cpp, src/jstest-gtk/src/remap_widget.cpp, src/jstest-gtk/src/joystick_map_widget.cpp...
+ Reviewed src/jstest-gtk/CMakeLists.txt. Status: SAFE -- Standard CMake build; no evidence of malicious behavior.
LLM auditresponse for joystick_map_widget.cpp:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `joystick_map_widget.cpp` is a standard C++ source file for a GTK+ joystick mapping dialog. It contains no network requests, encoded/obfuscated code, remote downloads, or unexpected system modifications. The code simply constructs a dialog with remap widgets for axis and button mapping, and handles user interaction (close/clear). The `add_button` calls use standard GTK stock buttons, and `signal_response` is a normal signal handler. There is no deviation from expected upstream application functionality for a joystick remapping tool. No supply chain attack indicators are present.
</details>
<summary>Standard joystick mapping dialog code, no security issues.</summary>
</security_assessment>

[8/10] Reviewing src/jstest-gtk/src/calibrate_maximum_dialog.cpp, src/jstest-gtk/src/remap_widget.cpp...
+ Reviewed src/jstest-gtk/src/joystick_map_widget.cpp. Status: SAFE -- Standard joystick mapping dialog code, no security issues.
LLM auditresponse for remap_widget.cpp:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard C++ source file from the jstest-gtk project. It implements a GTKmm widget for remapping joystick axes and buttons. The code performs only UI operations (creating a tree view, sorting entries, applying mapping to the joystick object) and does not contain any network requests, obfuscated code, file system manipulation, or execution of external commands. All operations are consistent with the stated purpose of the application: providing a graphical interface for remapping controller inputs. No indicators of a supply-chain attack or malicious behavior are present.
</details>
<summary>Standard application source code, no security issues.</summary>
</security_assessment>

[9/10] Reviewing src/jstest-gtk/src/calibrate_maximum_dialog.cpp...
+ Reviewed src/jstest-gtk/src/remap_widget.cpp. Status: SAFE -- Standard application source code, no security issues.
LLM auditresponse for calibrate_maximum_dialog.cpp:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a legitimate source code file for the jstest-gtk application – a graphical joystick calibration and testing tool. The code implements a `CalibrateMaximumDialog` that tracks joystick axis movements to compute calibration ranges and centers. All operations are local to the application's own functionality: reading joystick state, storing min/max values, and writing calibration data via the `Joystick` class. There are no network requests, no obfuscated or encoded commands, no execution of external binaries, and no tampering with system files. The code performs exactly what the application is designed to do – calibrate joystick axes – and contains no supply-chain attack indicators.
</details>
<summary>Legitimate joystick calibration GUI code, no security concerns.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/jstest-gtk/src/calibrate_maximum_dialog.cpp. Status: SAFE -- Legitimate joystick calibration GUI code, no security concerns.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 51,068
  Completion Tokens: 6,353
  Total Tokens: 57,421
  Total Cost: $0.005740
  Execution Time: 49.13 seconds
Full audit report can be found in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-jstest-gtk-git.txt
Final Status: SAFE


No issues found.
