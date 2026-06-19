---
package: woeusb-ng
pkgver: 0.2.12
pkgrel: 4
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 04f91022df66399cc45c448ff8c0391dcf3e1054
prompt_tokens: 54130
completion_tokens: 7869
total_tokens: 61999
cost: 0.00628812
execution_time: 72.74
files_reviewed: 12
files_skipped: 0
date: 2026-06-19T07:57:30Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with pinned sources and no suspicious behavior.
  - file: pr134.patch
    status: safe
    summary: Routine Python regex deprecation fix; no security threat.
  - file: src/WoeUSB-ng-0.2.12/WoeUSB/miscellaneous.py
    status: safe
    summary: Standard i18n setup, no security issues.
  - file: src/WoeUSB-ng-0.2.12/development.patch
    status: safe
    summary: Patch adds GUI script, no security concerns.
  - file: src/WoeUSB-ng-0.2.12/WoeUSB/__init__.py
    status: safe
    summary: Standard package init file, no malicious content.
  - file: src/WoeUSB-ng-0.2.12/setup.py
    status: safe
    summary: Standard packaging script, no malicious content.
  - file: src/WoeUSB-ng-0.2.12/WoeUSB/list_devices.py
    status: safe
    summary: Standard device enumeration script, no malicious behavior.
  - file: src/WoeUSB-ng-0.2.12/WoeUSB/gui.py
    status: safe
    summary: Standard GUI wrapper, no malicious behavior found.
  - file: src/WoeUSB-ng-0.2.12/WoeUSB/core.py
    status: safe
    summary: Legitimate application code; no malicious behavior.
  - file: src/WoeUSB-ng-0.2.12/WoeUSB/workaround.py
    status: safe
    summary: Standard bootable USB creation helpers, no malicious behavior.
  - file: pr79.patch
    status: safe
    summary: Standard packaging update, no security concerns.
  - file: src/WoeUSB-ng-0.2.12/WoeUSB/utils.py
    status: safe
    summary: Legitimate utility functions for WoeUSB; no supply-chain attack indicators.
---

Cloning https://aur.archlinux.org/woeusb-ng.git to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-75ay1flz...
Cloned repository to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-75ay1flz
Analyzing woeusb-ng AUR package (working in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-75ay1flz) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable assignments and function definitions. The top-level scope does not execute any code that could be harmful; `pkgver` is a static string, not a function. The `source` array fetches a tarball from the official GitHub repository and includes two local patch files; no suspicious network destinations or downloads. All functions (`prepare`, `build`, `package`) are not executed by the requested commands (`--noprepare` and `--nobuild`). There is no obfuscated or encoded content, no exfiltration attempts, and no unexpected system modifications in the scope that will be executed. The presence of hardcoded SHA-256 checksums (no SKIP) further reduces risk.</details>
<summary>Safe: Top-level code is benign; no execution risk from fetch/source commands.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- Safe: Top-level code is benign; no execution risk from fetch/source commands.[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, pr134.patch...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices. It downloads the official upstream source tarball from GitHub with a pinned version and valid checksum. Two patches from the AUR are included with verified checksums. The build process uses standard Python packaging tools (`python -m build --wheel --no-isolation` and `python -m installer`). Installation copies a desktop file and a polkit policy file, which are expected for this application. There is no obfuscated code, no suspicious network calls, no execution of untrusted content, and no exfiltration or backdoor mechanisms. All operations are within the scope of normal packaging.
</details>
<summary>
Standard PKGBUILD with pinned sources and no suspicious behavior.</summary>
</security_assessment>

[1/2] Reviewing pr134.patch...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with pinned sources and no suspicious behavior.
LLM auditresponse for pr134.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch fixes a Python deprecation warning by converting a non-raw string regex pattern (`"^MinServer=7[0-9]{3}\.[0-9]"`) to a raw string (`r"^MinServer=7[0-9]{3}\.[0-9]"`). The change is a routine upstream maintenance fix to comply with Python 3.12+ requirements, where `\.` is no longer a valid escape sequence. There is no malicious content: no obfuscated code, no network requests, no file exfiltration, no execution of arbitrary commands. The patch only modifies a single line in a Python source file, and the diff is consistent with standard best practices.
</details>
<summary>
Routine Python regex deprecation fix; no security threat.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed pr134.patch. Status: SAFE -- Routine Python regex deprecation fix; no security threat.
Reviewed all required files.
Deciding which files to review next...
LLM response for file selection:
pr79.patch
src/WoeUSB-ng-0.2.12/development.patch
src/WoeUSB-ng-0.2.12/setup.py
src/WoeUSB-ng-0.2.12/WoeUSB/__init__.py
src/WoeUSB-ng-0.2.12/WoeUSB/core.py
src/WoeUSB-ng-0.2.12/WoeUSB/gui.py
src/WoeUSB-ng-0.2.12/WoeUSB/list_devices.py
src/WoeUSB-ng-0.2.12/WoeUSB/miscellaneous.py
src/WoeUSB-ng-0.2.12/WoeUSB/utils.py
src/WoeUSB-ng-0.2.12/WoeUSB/workaround.py
Decided to review 10 additional files: pr79.patch, src/WoeUSB-ng-0.2.12/development.patch, src/WoeUSB-ng-0.2.12/setup.py, src/WoeUSB-ng-0.2.12/WoeUSB/__init__.py, src/WoeUSB-ng-0.2.12/WoeUSB/core.py, src/WoeUSB-ng-0.2.12/WoeUSB/gui.py, src/WoeUSB-ng-0.2.12/WoeUSB/list_devices.py, src/WoeUSB-ng-0.2.12/WoeUSB/miscellaneous.py, src/WoeUSB-ng-0.2.12/WoeUSB/utils.py, src/WoeUSB-ng-0.2.12/WoeUSB/workaround.py
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing pr79.patch...
[0/10] Reviewing pr79.patch, src/WoeUSB-ng-0.2.12/setup.py...
[0/10] Reviewing pr79.patch, src/WoeUSB-ng-0.2.12/setup.py, src/WoeUSB-ng-0.2.12/development.patch...
[0/10] Reviewing pr79.patch, src/WoeUSB-ng-0.2.12/setup.py, src/WoeUSB-ng-0.2.12/development.patch, src/WoeUSB-ng-0.2.12/WoeUSB/core.py...
[0/10] Reviewing pr79.patch, src/WoeUSB-ng-0.2.12/setup.py, src/WoeUSB-ng-0.2.12/development.patch, src/WoeUSB-ng-0.2.12/WoeUSB/core.py, src/WoeUSB-ng-0.2.12/WoeUSB/__init__.py...
[0/10] Reviewing pr79.patch, src/WoeUSB-ng-0.2.12/setup.py, src/WoeUSB-ng-0.2.12/development.patch, src/WoeUSB-ng-0.2.12/WoeUSB/core.py, src/WoeUSB-ng-0.2.12/WoeUSB/__init__.py, src/WoeUSB-ng-0.2.12/WoeUSB/gui.py...
[0/10] Reviewing pr79.patch, src/WoeUSB-ng-0.2.12/setup.py, src/WoeUSB-ng-0.2.12/development.patch, src/WoeUSB-ng-0.2.12/WoeUSB/core.py, src/WoeUSB-ng-0.2.12/WoeUSB/__init__.py, src/WoeUSB-ng-0.2.12/WoeUSB/gui.py, src/WoeUSB-ng-0.2.12/WoeUSB/list_devices.py...
[0/10] Reviewing pr79.patch, src/WoeUSB-ng-0.2.12/setup.py, src/WoeUSB-ng-0.2.12/development.patch, src/WoeUSB-ng-0.2.12/WoeUSB/core.py, src/WoeUSB-ng-0.2.12/WoeUSB/__init__.py, src/WoeUSB-ng-0.2.12/WoeUSB/gui.py, src/WoeUSB-ng-0.2.12/WoeUSB/list_devices.py, src/WoeUSB-ng-0.2.12/WoeUSB/miscellaneous.py...
[0/10] Reviewing pr79.patch, src/WoeUSB-ng-0.2.12/setup.py, src/WoeUSB-ng-0.2.12/development.patch, src/WoeUSB-ng-0.2.12/WoeUSB/core.py, src/WoeUSB-ng-0.2.12/WoeUSB/__init__.py, src/WoeUSB-ng-0.2.12/WoeUSB/gui.py, src/WoeUSB-ng-0.2.12/WoeUSB/list_devices.py, src/WoeUSB-ng-0.2.12/WoeUSB/miscellaneous.py, src/WoeUSB-ng-0.2.12/WoeUSB/utils.py...
[0/10] Reviewing pr79.patch, src/WoeUSB-ng-0.2.12/setup.py, src/WoeUSB-ng-0.2.12/development.patch, src/WoeUSB-ng-0.2.12/WoeUSB/core.py, src/WoeUSB-ng-0.2.12/WoeUSB/__init__.py, src/WoeUSB-ng-0.2.12/WoeUSB/gui.py, src/WoeUSB-ng-0.2.12/WoeUSB/list_devices.py, src/WoeUSB-ng-0.2.12/WoeUSB/miscellaneous.py, src/WoeUSB-ng-0.2.12/WoeUSB/utils.py, src/WoeUSB-ng-0.2.12/WoeUSB/workaround.py...
LLM auditresponse for miscellaneous.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The file contains standard Python code for internationalization (i18n) using gettext. It imports `gettext`, `locale`, and `os`, defines a version string, and sets up translation based on the system locale. There is no network activity, obfuscation, file manipulation outside the application's own locale directory, or any other malicious behavior. This is a normal packaging practice for providing localized messages.
</details>
<summary>Standard i18n setup, no security issues.</summary>
</security_assessment>

[1/10] Reviewing pr79.patch, src/WoeUSB-ng-0.2.12/setup.py, src/WoeUSB-ng-0.2.12/development.patch, src/WoeUSB-ng-0.2.12/WoeUSB/core.py, src/WoeUSB-ng-0.2.12/WoeUSB/__init__.py, src/WoeUSB-ng-0.2.12/WoeUSB/gui.py, src/WoeUSB-ng-0.2.12/WoeUSB/list_devices.py, src/WoeUSB-ng-0.2.12/WoeUSB/utils.py, src/WoeUSB-ng-0.2.12/WoeUSB/workaround.py...
+ Reviewed src/WoeUSB-ng-0.2.12/WoeUSB/miscellaneous.py. Status: SAFE -- Standard i18n setup, no security issues.
LLM auditresponse for development.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch file merely adds a GUI script (`woeusbgui`) to the `scripts` list in `setup.py`. It contains no obfuscated code, network requests, file operations, or any other suspicious behavior. The change is consistent with standard packaging practices for adding a command-line entry point.
</details>
<summary>Patch adds GUI script, no security concerns.</summary>
</security_assessment>

[2/10] Reviewing pr79.patch, src/WoeUSB-ng-0.2.12/setup.py, src/WoeUSB-ng-0.2.12/WoeUSB/core.py, src/WoeUSB-ng-0.2.12/WoeUSB/__init__.py, src/WoeUSB-ng-0.2.12/WoeUSB/gui.py, src/WoeUSB-ng-0.2.12/WoeUSB/list_devices.py, src/WoeUSB-ng-0.2.12/WoeUSB/utils.py, src/WoeUSB-ng-0.2.12/WoeUSB/workaround.py...
+ Reviewed src/WoeUSB-ng-0.2.12/development.patch. Status: SAFE -- Patch adds GUI script, no security concerns.
LLM auditresponse for __init__.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Python package `__init__.py` that simply imports submodules (`core`, `list_devices`, `utils`, `workaround`, `miscellaneous`) from the `WoeUSB` package. There is no obfuscated code, no network requests, no file operations, and no execution of external commands. The content is entirely benign and follows normal packaging conventions for a Python library.
</details>
<summary>Standard package init file, no malicious content.</summary>
</security_assessment>

[3/10] Reviewing pr79.patch, src/WoeUSB-ng-0.2.12/setup.py, src/WoeUSB-ng-0.2.12/WoeUSB/core.py, src/WoeUSB-ng-0.2.12/WoeUSB/gui.py, src/WoeUSB-ng-0.2.12/WoeUSB/list_devices.py, src/WoeUSB-ng-0.2.12/WoeUSB/utils.py, src/WoeUSB-ng-0.2.12/WoeUSB/workaround.py...
+ Reviewed src/WoeUSB-ng-0.2.12/WoeUSB/__init__.py. Status: SAFE -- Standard package init file, no malicious content.
LLM auditresponse for setup.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This `setup.py` is a standard Python packaging script for the WoeUSB-ng project. It uses setuptools and defines custom `install` and `develop` commands. The `post_install` function copies application files (`woeusbgui`, polkit policy, icon, desktop entry) into system directories (`/usr/local/bin`, `/usr/share/polkit-1/actions`, `/usr/share/icons`, `/usr/share/applications`). These are legitimate installation steps for a GUI application that requires elevated privileges. There are no network requests, no downloads, no execution of external code, no exfiltration of data, and no obfuscation. The hardcoded path `/usr/local/bin/woeusbgui` is a convenience choice, not a security issue. The file is consistent with expected packaging behavior and contains no malicious elements.
</details>
<summary>Standard packaging script, no malicious content.</summary>
</security_assessment>

[4/10] Reviewing pr79.patch, src/WoeUSB-ng-0.2.12/WoeUSB/core.py, src/WoeUSB-ng-0.2.12/WoeUSB/gui.py, src/WoeUSB-ng-0.2.12/WoeUSB/list_devices.py, src/WoeUSB-ng-0.2.12/WoeUSB/utils.py, src/WoeUSB-ng-0.2.12/WoeUSB/workaround.py...
+ Reviewed src/WoeUSB-ng-0.2.12/setup.py. Status: SAFE -- Standard packaging script, no malicious content.
LLM auditresponse for list_devices.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a straightforward utility that enumerates block devices (USB drives and DVD drives) using standard system tools like `lsblk`, `find`, and sysfs files. It reads device properties (removable status, writability, model, capacity) and returns a formatted list. There are no network requests, obfuscated code, or execution of untrusted content. All operations are typical for detecting removable storage. No evidence of exfiltration, backdoors, or unexpected system modifications.
</details>
<summary>Standard device enumeration script, no malicious behavior.</summary>
</security_assessment>

[5/10] Reviewing pr79.patch, src/WoeUSB-ng-0.2.12/WoeUSB/core.py, src/WoeUSB-ng-0.2.12/WoeUSB/gui.py, src/WoeUSB-ng-0.2.12/WoeUSB/utils.py, src/WoeUSB-ng-0.2.12/WoeUSB/workaround.py...
+ Reviewed src/WoeUSB-ng-0.2.12/WoeUSB/list_devices.py. Status: SAFE -- Standard device enumeration script, no malicious behavior.
LLM auditresponse for gui.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `gui.py` is a standard wxPython-based graphical user interface for the WoeUSB-ng Windows USB installer tool. It provides typical UI elements for selecting a source (ISO or DVD), a target USB device, and configuration options (boot flag, filesystem, skip grub). The install process is launched in a separate thread that calls core functions (`core.init`, `core.main`, `core.cleanup`) from the same package. There are no suspicious network requests, no obfuscated code, no use of dangerous commands like `eval`, `base64`, `curl`, or `wget`, and no exfiltration of system data. The file only uses standard Python libraries and its own package modules. The warning message before installation is a normal user confirmation. No supply-chain attack indicators are present; this is purely upstream application code.
</details>
<summary>Standard GUI wrapper, no malicious behavior found.</summary>
</security_assessment>

[6/10] Reviewing pr79.patch, src/WoeUSB-ng-0.2.12/WoeUSB/core.py, src/WoeUSB-ng-0.2.12/WoeUSB/utils.py, src/WoeUSB-ng-0.2.12/WoeUSB/workaround.py...
+ Reviewed src/WoeUSB-ng-0.2.12/WoeUSB/gui.py. Status: SAFE -- Standard GUI wrapper, no malicious behavior found.
LLM auditresponse for core.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `core.py` is the main application logic for WoeUSB-ng, a tool to create bootable Windows USB drives. It performs expected system operations: partitioning, formatting, mounting, copying files, and installing GRUB. The only network download is `urllib.request.urlretrieve` of `uefi-ntfs.img` from `https://github.com/pbatard/rufus/raw/master/res/uefi/uefi-ntfs.img` — this is a legitimate, project-required component for UEFI NTFS support, not an injection. All subprocess calls (`wipefs`, `parted`, `mount`, `grub-install`, etc.) are standard for the utility’s purpose. There is no obfuscation, data exfiltration, backdoor, or unrelated network activity. The code is consistent with its stated functionality.
</details>
<summary>Legitimate application code; no malicious behavior.</summary>
</security_assessment>

[7/10] Reviewing pr79.patch, src/WoeUSB-ng-0.2.12/WoeUSB/utils.py, src/WoeUSB-ng-0.2.12/WoeUSB/workaround.py...
+ Reviewed src/WoeUSB-ng-0.2.12/WoeUSB/core.py. Status: SAFE -- Legitimate application code; no malicious behavior.
LLM auditresponse for workaround.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `workaround.py` is a helper module for the `woeusb-ng` package, which creates bootable Windows USB drives. It contains three functions:

- `make_system_realize_partition_table_changed`: Calls `blockdev --rereadpt` – a standard Linux command to re-read the partition table after modifications.
- `buggy_motherboards_that_ignore_disks_without_boot_flag_toggled`: Calls `parted` to set the boot flag on the first partition – a routine operation for making a disk bootable.
- `support_windows_7_uefi_boot`: Uses `grep`, `find`, `7z` to extract the EFI bootloader (`bootmgfw.efi`) from a Windows installation image (`install.wim`) and writes it to the target filesystem. This is expected functionality for creating UEFI-bootable Windows media.

All subprocess invocations use `shell=False` (default), avoiding shell injection. No network requests, obfuscated code, file exfiltration, or execution of attacker-controlled content are present. The operations are directly related to the package's stated purpose. No evidence of a supply-chain attack.
</details>
<summary>
Standard bootable USB creation helpers, no malicious behavior.</summary>
</security_assessment>

[8/10] Reviewing pr79.patch, src/WoeUSB-ng-0.2.12/WoeUSB/utils.py...
+ Reviewed src/WoeUSB-ng-0.2.12/WoeUSB/workaround.py. Status: SAFE -- Standard bootable USB creation helpers, no malicious behavior.
LLM auditresponse for pr79.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard patch file for the WoeUSB-ng package that restructures the project layout (moving sources to `src/`, adding `pyproject.toml`, `setup.cfg`, and updating `setup.py`). There is no malicious or obfuscated code, no network requests, no data exfiltration, and no unexpected system modifications. The changes are consistent with normal Python packaging practices and do not introduce any security threats.
</details>
<summary>Standard packaging update, no security concerns.</summary>
</security_assessment>

[9/10] Reviewing src/WoeUSB-ng-0.2.12/WoeUSB/utils.py...
+ Reviewed pr79.patch. Status: SAFE -- Standard packaging update, no security concerns.
LLM auditresponse for utils.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `utils.py` contains standard utility functions for the WoeUSB application. There is no obfuscated code, no network requests to unexpected hosts, no base64-encoded payloads, and no execution of downloaded code. System modifications are limited to writing a polkit policy file (`/usr/share/polkit-1/actions/com.github.woeusb.woeusb-ng.policy`) via `update_policy_to_allow_for_running_gui_as_root`, which is a normal part of integrating a GUI application with `pkexec`. All external commands (`mount`, `umount`, `wipefs`, `lsblk`, `blockdev`, `df`, `parted`, `7z`, `mkdosfs`, `mkntfs`, `grub-install`, `awk`) are standard system tools appropriate for the application's functionality. No malicious or suspicious behavior is present.
</details>
<summary>
Legitimate utility functions for WoeUSB; no supply-chain attack indicators.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/WoeUSB-ng-0.2.12/WoeUSB/utils.py. Status: SAFE -- Legitimate utility functions for WoeUSB; no supply-chain attack indicators.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 54,130
  Completion Tokens: 7,869
  Total Tokens: 61,999
  Total Cost: $0.006288
  Execution Time: 72.74 seconds
Full audit report can be found in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-woeusb-ng.txt
Final Status: SAFE


No issues found.
