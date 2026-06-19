---
package: woeusb-ng
pkgver: 0.2.12
pkgrel: 4
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 11c93a0c95e2166961e3664fea6b5a63827ded10
prompt_tokens: 50008
completion_tokens: 8400
total_tokens: 58408
cost: 0.00601272
execution_time: 105.16
files_reviewed: 12
files_skipped: 0
date: 2026-06-19T10:41:37Z
file_verdicts:
  - file: pr134.patch
    status: safe
    summary: Patch fixes Python regex deprecation warning, no security issue.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with pinned sources. No malicious code found.
  - file: src/WoeUSB-ng-0.2.12/WoeUSB/woeusbgui
    status: safe
    summary: Standard GUI launcher with privilege escalation, no malicious code.
  - file: src/WoeUSB-ng-0.2.12/WoeUSB/list_devices.py
    status: safe
    summary: Benign device enumeration script; no security issues.
  - file: src/WoeUSB-ng-0.2.12/development.patch
    status: safe
    summary: Benign patch adding a GUI script entry.
  - file: src/WoeUSB-ng-0.2.12/WoeUSB/workaround.py
    status: safe
    summary: Standard workaround functions for WoeUSB-ng, no malicious code.
  - file: src/WoeUSB-ng-0.2.12/WoeUSB/core.py
    status: safe
    summary: Clean implementation of WoeUSB core; no malicious behavior.
  - file: pr79.patch
    status: safe
    summary: Legitimate packaging refactor; no malicious behavior.
  - file: src/WoeUSB-ng-0.2.12/setup.py
    status: safe
    summary: Standard post-install script; no malicious indicators.
  - file: src/WoeUSB-ng-0.2.12/WoeUSB/woeusb
    status: safe
    summary: Standard Python entry point, no security issues.
  - file: src/WoeUSB-ng-0.2.12/WoeUSB/utils.py
    status: safe
    summary: Standard utility module for WoeUSB; no malicious behavior detected.
  - file: src/WoeUSB-ng-0.2.12/miscellaneous/WoeUSB-ng.desktop
    status: safe
    summary: Standard desktop entry file; no malicious content.
---

Cloning https://aur.archlinux.org/woeusb-ng.git to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-hlooe4ng...
Cloned repository to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-hlooe4ng
Analyzing woeusb-ng AUR package (working in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-hlooe4ng) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only top-level variable declarations and function definitions (`prepare()`, `build()`, `package()`). There is no code in the global scope or in a `pkgver()` function that executes commands, downloads additional resources, or exfiltrates data. The source array points to a standard GitHub release tarball and two local patch files, all with explicit SHA-256 checksums. No suspicious URLs, encoded payloads, or dynamic command execution are present. Running `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo` will only fetch the declared sources and source the PKGBUILD, which is benign.
</details>
<summary>No malicious code in sourcing or source fetching.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- No malicious code in sourcing or source fetching.[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, pr134.patch...
LLM auditresponse for pr134.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a simple patch that changes a regular expression in a Python file from a non-raw string to a raw string (`r"..."`). The original string `"^MinServer=7[0-9]{3}\.[0-9]"` uses `\.` which is not a valid escape sequence in Python 3.12+, causing a deprecation warning. The fix adds a raw string prefix to correctly express the literal dot. This is a routine code hygiene update for future Python compatibility and contains no malicious behavior, network access, obfuscation, or system modifications. It serves only the stated purpose of fixing a warning.
</details>
<summary>
Patch fixes Python regex deprecation warning, no security issue.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed pr134.patch. Status: SAFE -- Patch fixes Python regex deprecation warning, no security issue.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard packaging practices for an AUR package. The source is fetched from the official GitHub release tarball with a pinned version and SHA-256 checksums. Two patches (pr79.patch and pr134.patch) are also pinned with checksums. There is no use of dangerous commands, obfuscated code, or unexpected network requests. The build and install steps are typical `python -m build` and `python -m installer`. The only file operations besides the Python wheel installation are copying a `.desktop` file and a polkit policy file, which are standard for this application. No evidence of supply-chain attack or malicious behavior.
</details>
<summary>Standard AUR PKGBUILD with pinned sources. No malicious code found.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with pinned sources. No malicious code found.
Reviewed all required files.
Deciding which files to review next...
LLM response for file selection:
pr79.patch
src/WoeUSB-ng-0.2.12/setup.py
src/WoeUSB-ng-0.2.12/WoeUSB/woeusb
src/WoeUSB-ng-0.2.12/WoeUSB/woeusbgui
src/WoeUSB-ng-0.2.12/WoeUSB/core.py
src/WoeUSB-ng-0.2.12/WoeUSB/workaround.py
src/WoeUSB-ng-0.2.12/WoeUSB/list_devices.py
src/WoeUSB-ng-0.2.12/WoeUSB/utils.py
src/WoeUSB-ng-0.2.12/development.patch
src/WoeUSB-ng-0.2.12/miscellaneous/WoeUSB-ng.desktop
Decided to review 10 additional files: pr79.patch, src/WoeUSB-ng-0.2.12/setup.py, src/WoeUSB-ng-0.2.12/WoeUSB/woeusb, src/WoeUSB-ng-0.2.12/WoeUSB/woeusbgui, src/WoeUSB-ng-0.2.12/WoeUSB/core.py, src/WoeUSB-ng-0.2.12/WoeUSB/workaround.py, src/WoeUSB-ng-0.2.12/WoeUSB/list_devices.py, src/WoeUSB-ng-0.2.12/WoeUSB/utils.py, src/WoeUSB-ng-0.2.12/development.patch, src/WoeUSB-ng-0.2.12/miscellaneous/WoeUSB-ng.desktop
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/WoeUSB-ng-0.2.12/setup.py...
[0/10] Reviewing src/WoeUSB-ng-0.2.12/setup.py, pr79.patch...
[0/10] Reviewing src/WoeUSB-ng-0.2.12/setup.py, pr79.patch, src/WoeUSB-ng-0.2.12/WoeUSB/woeusb...
[0/10] Reviewing src/WoeUSB-ng-0.2.12/setup.py, pr79.patch, src/WoeUSB-ng-0.2.12/WoeUSB/woeusb, src/WoeUSB-ng-0.2.12/WoeUSB/woeusbgui...
[0/10] Reviewing src/WoeUSB-ng-0.2.12/setup.py, pr79.patch, src/WoeUSB-ng-0.2.12/WoeUSB/woeusb, src/WoeUSB-ng-0.2.12/WoeUSB/woeusbgui, src/WoeUSB-ng-0.2.12/WoeUSB/core.py...
[0/10] Reviewing src/WoeUSB-ng-0.2.12/setup.py, pr79.patch, src/WoeUSB-ng-0.2.12/WoeUSB/woeusb, src/WoeUSB-ng-0.2.12/WoeUSB/woeusbgui, src/WoeUSB-ng-0.2.12/WoeUSB/core.py, src/WoeUSB-ng-0.2.12/WoeUSB/workaround.py...
[0/10] Reviewing src/WoeUSB-ng-0.2.12/setup.py, pr79.patch, src/WoeUSB-ng-0.2.12/WoeUSB/woeusb, src/WoeUSB-ng-0.2.12/WoeUSB/woeusbgui, src/WoeUSB-ng-0.2.12/WoeUSB/core.py, src/WoeUSB-ng-0.2.12/WoeUSB/workaround.py, src/WoeUSB-ng-0.2.12/WoeUSB/list_devices.py...
[0/10] Reviewing src/WoeUSB-ng-0.2.12/setup.py, pr79.patch, src/WoeUSB-ng-0.2.12/WoeUSB/woeusb, src/WoeUSB-ng-0.2.12/WoeUSB/woeusbgui, src/WoeUSB-ng-0.2.12/WoeUSB/core.py, src/WoeUSB-ng-0.2.12/WoeUSB/workaround.py, src/WoeUSB-ng-0.2.12/WoeUSB/list_devices.py, src/WoeUSB-ng-0.2.12/WoeUSB/utils.py...
[0/10] Reviewing src/WoeUSB-ng-0.2.12/setup.py, pr79.patch, src/WoeUSB-ng-0.2.12/WoeUSB/woeusb, src/WoeUSB-ng-0.2.12/WoeUSB/woeusbgui, src/WoeUSB-ng-0.2.12/WoeUSB/core.py, src/WoeUSB-ng-0.2.12/WoeUSB/workaround.py, src/WoeUSB-ng-0.2.12/WoeUSB/list_devices.py, src/WoeUSB-ng-0.2.12/WoeUSB/utils.py, src/WoeUSB-ng-0.2.12/development.patch...
[0/10] Reviewing src/WoeUSB-ng-0.2.12/setup.py, pr79.patch, src/WoeUSB-ng-0.2.12/WoeUSB/woeusb, src/WoeUSB-ng-0.2.12/WoeUSB/woeusbgui, src/WoeUSB-ng-0.2.12/WoeUSB/core.py, src/WoeUSB-ng-0.2.12/WoeUSB/workaround.py, src/WoeUSB-ng-0.2.12/WoeUSB/list_devices.py, src/WoeUSB-ng-0.2.12/WoeUSB/utils.py, src/WoeUSB-ng-0.2.12/development.patch, src/WoeUSB-ng-0.2.12/miscellaneous/WoeUSB-ng.desktop...
LLM auditresponse for woeusbgui:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard launcher for the WoeUSB-ng GUI. It checks if running as root; if not, it re‑executes via `pkexec` to obtain privileges needed for writing to USB drives. When run as root, it imports the GUI module and runs it. There is no unusual network activity, encoded commands, or file operations outside the normal packaging workflow. The use of `pkexec` and `os.path.realpath` is legitimate for privilege escalation in a tool that requires root access. No supply‑chain attack indicators are present.
</details>
<summary>Standard GUI launcher with privilege escalation, no malicious code.</summary>
</security_assessment>

[1/10] Reviewing src/WoeUSB-ng-0.2.12/setup.py, pr79.patch, src/WoeUSB-ng-0.2.12/WoeUSB/woeusb, src/WoeUSB-ng-0.2.12/WoeUSB/core.py, src/WoeUSB-ng-0.2.12/WoeUSB/workaround.py, src/WoeUSB-ng-0.2.12/WoeUSB/list_devices.py, src/WoeUSB-ng-0.2.12/WoeUSB/utils.py, src/WoeUSB-ng-0.2.12/development.patch, src/WoeUSB-ng-0.2.12/miscellaneous/WoeUSB-ng.desktop...
+ Reviewed src/WoeUSB-ng-0.2.12/WoeUSB/woeusbgui. Status: SAFE -- Standard GUI launcher with privilege escalation, no malicious code.
LLM auditresponse for list_devices.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The script `list_devices.py` is a straightforward utility that enumerates USB and DVD block devices by querying `lsblk` and files under `/sys/block`. It performs no network operations, no code execution beyond standard system utilities (`lsblk`, `find`), and no obfuscated or encoded commands. All file operations are limited to reading the kernel's device properties (removable status, read-only flag, model). This is normal and expected behavior for a device-list helper in a bootable USB creation tool like `woeusb-ng`. There is no evidence of supply-chain attack, exfiltration, backdoor, or any other malicious activity.
</details>
<summary>Benign device enumeration script; no security issues.</summary>
</security_assessment>

[2/10] Reviewing src/WoeUSB-ng-0.2.12/setup.py, pr79.patch, src/WoeUSB-ng-0.2.12/WoeUSB/woeusb, src/WoeUSB-ng-0.2.12/WoeUSB/core.py, src/WoeUSB-ng-0.2.12/WoeUSB/workaround.py, src/WoeUSB-ng-0.2.12/WoeUSB/utils.py, src/WoeUSB-ng-0.2.12/development.patch, src/WoeUSB-ng-0.2.12/miscellaneous/WoeUSB-ng.desktop...
+ Reviewed src/WoeUSB-ng-0.2.12/WoeUSB/list_devices.py. Status: SAFE -- Benign device enumeration script; no security issues.
LLM auditresponse for development.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard patch file that modifies `setup.py` to add an additional script entry (`WoeUSB/woeusbgui`) to the package's `scripts` list. The change is consistent with adding a GUI interface for the woeusb application. There is no obfuscation, no suspicious network or file operations, and no deviation from normal packaging practices. The patch is a routine development change.
</details>
<summary>Benign patch adding a GUI script entry.</summary>
</security_assessment>

[3/10] Reviewing src/WoeUSB-ng-0.2.12/setup.py, pr79.patch, src/WoeUSB-ng-0.2.12/WoeUSB/woeusb, src/WoeUSB-ng-0.2.12/WoeUSB/core.py, src/WoeUSB-ng-0.2.12/WoeUSB/workaround.py, src/WoeUSB-ng-0.2.12/WoeUSB/utils.py, src/WoeUSB-ng-0.2.12/miscellaneous/WoeUSB-ng.desktop...
+ Reviewed src/WoeUSB-ng-0.2.12/development.patch. Status: SAFE -- Benign patch adding a GUI script entry.
LLM auditresponse for workaround.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `workaround.py` contains three functions that are standard workarounds for creating bootable Windows USB media using WoeUSB-ng.  
- `make_system_realize_partition_table_changed` calls `blockdev --rereadpt` to inform the kernel of partition changes.  
- `buggy_motherboards_that_ignore_disks_without_boot_flag_toggled` uses `parted` to set the boot flag on the first partition.  
- `support_windows_7_uefi_boot` extracts the EFI bootloader `bootmgfw.efi` from the source `install.wim` using `7z` and writes it to the target mount point; this is a legitimate upstream workaround for Windows 7 UEFI boot support.

All commands operate solely on provided device/mountpoint paths (no hardcoded paths outside the package's scope). There are no network requests, no obfuscated code, no unexpected file operations, and no behavior that qualifies as a supply‑chain attack. The code follows standard packaging practices for a utility that modifies USB storage devices.
</details>
<summary>Standard workaround functions for WoeUSB-ng, no malicious code.</summary>
</security_assessment>

[4/10] Reviewing src/WoeUSB-ng-0.2.12/setup.py, pr79.patch, src/WoeUSB-ng-0.2.12/WoeUSB/woeusb, src/WoeUSB-ng-0.2.12/WoeUSB/core.py, src/WoeUSB-ng-0.2.12/WoeUSB/utils.py, src/WoeUSB-ng-0.2.12/miscellaneous/WoeUSB-ng.desktop...
+ Reviewed src/WoeUSB-ng-0.2.12/WoeUSB/workaround.py. Status: SAFE -- Standard workaround functions for WoeUSB-ng, no malicious code.
LLM auditresponse for core.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `core.py` is the main module of WoeUSB, a tool for creating bootable Windows USB drives. All network operations are limited to downloading a legitimate UEFI:NTFS support image from the official rufus GitHub repository (`https://github.com/pbatard/rufus/raw/master/res/uefi/uefi-ntfs.img`), which is an expected component for the application's functionality. There is no obfuscated code, no eval or base64 decoding, no data exfiltration, and no execution of untrusted downloaded content beyond the stated purpose. System calls (wipefs, parted, mkfs, grub-install, mount) are standard for partition manipulation and bootloader installation, all of which are required for the tool's operation. The code is clean and matches the project's documented behavior.
</details>
<summary>Clean implementation of WoeUSB core; no malicious behavior.</summary>
</security_assessment>

[5/10] Reviewing src/WoeUSB-ng-0.2.12/setup.py, pr79.patch, src/WoeUSB-ng-0.2.12/WoeUSB/woeusb, src/WoeUSB-ng-0.2.12/WoeUSB/utils.py, src/WoeUSB-ng-0.2.12/miscellaneous/WoeUSB-ng.desktop...
+ Reviewed src/WoeUSB-ng-0.2.12/WoeUSB/core.py. Status: SAFE -- Clean implementation of WoeUSB core; no malicious behavior.
LLM auditresponse for pr79.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch is a legitimate refactoring of the WoeUSB-ng packaging to follow modern Python packaging standards. It moves source files into a `src/` layout, adds `pyproject.toml` and `setup.cfg`, and replaces a hardcoded `post_install()` function in `setup.py` with standard `data_files` entries. No suspicious network requests, obfuscated code, unexpected system modifications, or backdoors are introduced. The changes are consistent with the project's own upstream development and pose no supply-chain security risk.
</details>
<summary>Legitimate packaging refactor; no malicious behavior.</summary>
</security_assessment>

[6/10] Reviewing src/WoeUSB-ng-0.2.12/setup.py, src/WoeUSB-ng-0.2.12/WoeUSB/woeusb, src/WoeUSB-ng-0.2.12/WoeUSB/utils.py, src/WoeUSB-ng-0.2.12/miscellaneous/WoeUSB-ng.desktop...
+ Reviewed pr79.patch. Status: SAFE -- Legitimate packaging refactor; no malicious behavior.
LLM auditresponse for setup.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `setup.py` file for the WoeUSB-ng package. It performs post‑install actions such as copying the GUI binary, a PolKit policy, an icon, and a desktop file to system directories, and sets appropriate permissions. All file operations are from the package’s own source tree to expected system locations (e.g., `/usr/local/bin`, `/usr/share/polkit-1/actions`, `/usr/share/applications`). There are no network requests, no downloads from external sources, no obfuscated or encoded commands, and no attempted data exfiltration. The script does exactly what the package is meant to do: install its own files into the system. No evidence of a supply‑chain attack or malicious behavior.
</details>
<summary>
Standard post-install script; no malicious indicators.
</summary>
</security_assessment>

[7/10] Reviewing src/WoeUSB-ng-0.2.12/WoeUSB/woeusb, src/WoeUSB-ng-0.2.12/WoeUSB/utils.py, src/WoeUSB-ng-0.2.12/miscellaneous/WoeUSB-ng.desktop...
+ Reviewed src/WoeUSB-ng-0.2.12/setup.py. Status: SAFE -- Standard post-install script; no malicious indicators.
LLM auditresponse for woeusb:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `woeusb` is a minimal Python entry point script that imports `WoeUSB.core` and calls the `run()` function. There is no suspicious code, no network requests, no obfuscation, no dangerous commands like `eval`, `curl`, `wget`, or any file system manipulations outside the application's scope. It is a standard packaging pattern for a Python application. No evidence of malicious or dangerous behavior.
</details>
<summary>Standard Python entry point, no security issues.</summary>
</security_assessment>

[8/10] Reviewing src/WoeUSB-ng-0.2.12/WoeUSB/utils.py, src/WoeUSB-ng-0.2.12/miscellaneous/WoeUSB-ng.desktop...
+ Reviewed src/WoeUSB-ng-0.2.12/WoeUSB/woeusb. Status: SAFE -- Standard Python entry point, no security issues.
LLM auditresponse for utils.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `utils.py` is a standard utility module for the WoeUSB application. It contains functions for checking runtime dependencies (e.g., mount, umount, mkfs, grub-install), validating parameters, determining target devices, checking for busy mounts, and verifying filesystem compatibility. Subprocess calls use common system tools (`mount`, `lsblk`, `df`, `parted`, etc.) which are expected for a USB writing tool. The `update_policy_to_allow_for_running_gui_as_root` function generates a polkit policy XML and writes it to `/usr/share/polkit-1/actions/com.github.woeusb.woeusb-ng.policy` – this is a normal packaging step to allow the GUI to run with elevated privileges. No obfuscated code, suspicious network requests, or data exfiltration is present. The file behaves consistently with its stated purpose and does not exhibit signs of a supply-chain attack.
</details>
<summary>Standard utility module for WoeUSB; no malicious behavior detected.</summary>
</security_assessment>

[9/10] Reviewing src/WoeUSB-ng-0.2.12/miscellaneous/WoeUSB-ng.desktop...
+ Reviewed src/WoeUSB-ng-0.2.12/WoeUSB/utils.py. Status: SAFE -- Standard utility module for WoeUSB; no malicious behavior detected.
LLM auditresponse for WoeUSB-ng.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.desktop` file for the WoeUSB-ng application. It contains only typical entries: application name, executable (`woeusbgui`), icon path, terminal flag, type, and categories. There is no obfuscated code, network requests, file operations, or any behavior that deviates from normal packaging of a graphical application launcher. The shebang `#!/usr/bin/env xdg-open` is a common convention to allow the file to be opened with `xdg-open` if executed directly, which is not a security concern.
</details>
<summary>Standard desktop entry file; no malicious content.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/WoeUSB-ng-0.2.12/miscellaneous/WoeUSB-ng.desktop. Status: SAFE -- Standard desktop entry file; no malicious content.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 50,008
  Completion Tokens: 8,400
  Total Tokens: 58,408
  Total Cost: $0.006013
  Execution Time: 105.16 seconds
Full audit report can be found in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-woeusb-ng.txt
Final Status: SAFE


No issues found.
