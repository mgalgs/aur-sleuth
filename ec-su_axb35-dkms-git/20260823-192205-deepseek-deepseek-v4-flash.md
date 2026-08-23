---
package: ec-su_axb35-dkms-git
pkgver: r32.f62c2c2
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 4fdfd87aaec54365f5eb3ea9cd4b5b3cd402f1d8
prompt_tokens: 51045
completion_tokens: 7432
total_tokens: 58477
cost: 0.00322031374
execution_time: 77.85
files_reviewed: 12
files_skipped: 0
files_unauditable: 3
unpinned_sources: 0
date: 2026-08-23T19:22:04Z
file_verdicts:
  - file: ec-su_axb35.conf
    status: safe
    summary: A benign DKMS configuration file listing module names.
  - file: PKGBUILD
    status: safe
    summary: Standard DKMS package, no malicious code found.
  - file: src/ec-su_axb35/Makefile
    status: safe
    summary: Standard kernel module Makefile, no malicious content.
  - file: src/ec-su_axb35/Kbuild
    status: safe
    summary: Standard kernel module build file.
  - file: dkms.conf
    status: safe
    summary: Standard DKMS config; no security issues.
  - file: src/ec-su_axb35/hwmon/ec-su_axb35-hwmon.c
    status: safe
    summary: Standard kernel hwmon driver; no malicious behavior.
  - file: src/ec-su_axb35/contrib/ubuntu/01_setup_dkms_mok.sh
    status: safe
    summary: Standard DKMS/MOK setup script, no malicious behavior.
  - file: src/ec-su_axb35/src/ec_su_axb35.c
    status: safe
    summary: Legitimate kernel driver; no malicious code.
  - file: src/ec-su_axb35/python-gui/ec-fan-control.desktop
    status: safe
    summary: Standard desktop entry; no security issues.
  - file: src/ec-su_axb35/python-gui/ec-su_axb35-linux-gui.py
    status: safe
    summary: Legitimate fan control GUI, no malicious behavior found.
  - file: src/ec-su_axb35/scripts/info.sh
    status: safe
    summary: Safe hardware monitoring script for kernel driver.
  - file: src/ec-su_axb35/contrib/ubuntu/02_install_ec_axb35_dkms.sh
    status: safe
    summary: Legitimate DKMS kernel module installation script, no malice.
---

Cloning https://aur.archlinux.org/ec-su_axb35-dkms-git.git...
Cloned ec-su_axb35-dkms-git
Analyzing ec-su_axb35-dkms-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only defines variables, a source array, SHA-256 sums, dependency declarations, and helper functions. The only code executed during `makepkg --nobuild --nodeps --noprepare` and `--printsrcinfo` is the global scope (assignments) and the `pkgver()` function, which runs standard `git describe` and `git rev-list` commands inside the cloned repository. No network requests beyond the declared upstream Git source, no obfuscated code, no dangerous operations like `eval`, `curl`, or `wget`. The `prepare()`, `build()`, and `package()` functions are not executed at this stage and contain only legitimate packaging operations (sed, cp, install). No supply‑chain attack vectors are present in the evaluated scope.
</details>
<evidence></evidence>
<summary>Safe to fetch sources and parse this PKGBUILD.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe to fetch sources and parse this PKGBUILD.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, ec-su_axb35.conf...
LLM auditresponse for ec-su_axb35.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `ec-su_axb35.conf` contains two lines listing module names (`ec_su_axb35` and `ec_su_axb35_hwmon`). This is a standard configuration file for DKMS (Dynamic Kernel Module Support) packages, used to specify which kernel modules to build and install. There is no code execution, no network activity, no obfuscation, and no deviation from expected packaging practices. The content is entirely benign and consistent with the package's purpose.
</details>
<evidence>
</evidence>
<summary>A benign DKMS configuration file listing module names.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed ec-su_axb35.conf. Status: SAFE -- A benign DKMS configuration file listing module names.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a VCS kernel module package. It clones the upstream GitHub repository, applies necessary build fixes (renaming files, adjusting shebangs, patching desktop file), and installs the module source, scripts, and GUI. There is no evidence of malicious behavior such as network requests to unexpected hosts, obfuscated commands, exfiltration, or backdoors. The SKIP checksum for the git source is standard for VCS packages. All operations are confined to the expected build and install directories.
</details>
<evidence>
</evidence>
<summary>Standard DKMS package, no malicious code found.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard DKMS package, no malicious code found.
Reviewed all required files.
Deciding which files to review next...
Note: 3 compiled/archived file(s) cannot be audited as text and were not reviewed (ec-su_axb35/objects/pack/pack-bcc289e0ccd7150f1eae5eeb6009bf9d208e92c0.pack, ec-su_axb35/objects/pack/pack-bcc289e0ccd7150f1eae5eeb6009bf9d208e92c0.rev, ec-su_axb35/objects/pack/pack-bcc289e0ccd7150f1eae5eeb6009bf9d208e92c0.idx). For a package that ships prebuilt binaries, the audit covers the packaging, not the payload.
LLM response for file selection:
src/ec-su_axb35/Makefile
dkms.conf
src/ec-su_axb35/Kbuild
src/ec-su_axb35/src/ec_su_axb35.c
src/ec-su_axb35/hwmon/ec-su_axb35-hwmon.c
src/ec-su_axb35/contrib/ubuntu/01_setup_dkms_mok.sh
src/ec-su_axb35/contrib/ubuntu/02_install_ec_axb35_dkms.sh
src/ec-su_axb35/python-gui/ec-fan-control.desktop
src/ec-su_axb35/python-gui/ec-su_axb35-linux-gui.py
src/ec-su_axb35/scripts/info.sh
Decided to review 10 additional files: src/ec-su_axb35/Makefile, dkms.conf, src/ec-su_axb35/Kbuild, src/ec-su_axb35/src/ec_su_axb35.c, src/ec-su_axb35/hwmon/ec-su_axb35-hwmon.c, src/ec-su_axb35/contrib/ubuntu/01_setup_dkms_mok.sh, src/ec-su_axb35/contrib/ubuntu/02_install_ec_axb35_dkms.sh, src/ec-su_axb35/python-gui/ec-fan-control.desktop, src/ec-su_axb35/python-gui/ec-su_axb35-linux-gui.py, src/ec-su_axb35/scripts/info.sh
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing dkms.conf...
[0/10] Reviewing dkms.conf, src/ec-su_axb35/Makefile...
[0/10] Reviewing dkms.conf, src/ec-su_axb35/Makefile, src/ec-su_axb35/Kbuild...
LLM auditresponse for Makefile:
<security_assessment>
<decision>SAFE</decision>
<details>
This Makefile is a standard kernel module build and install script. It uses the kernel build system (`$(MAKE) -C $(KERNEL_BUILD) M=$(PWD) modules`), installs the module via `modules_install`, and copies a monitor script to `/usr/local/bin/`. There are no network requests, obfuscated code, or unusual commands. The uninstall target removes the module and monitor script using standard tools (`rm`, `depmod`). No supply-chain attack indicators are present.
</details>
<evidence></evidence>
<summary>Standard kernel module Makefile, no malicious content.</summary>
</security_assessment>

[1/10] Reviewing dkms.conf, src/ec-su_axb35/Kbuild...
+ Reviewed src/ec-su_axb35/Makefile. Status: SAFE -- Standard kernel module Makefile, no malicious content.
[1/10] Reviewing dkms.conf, src/ec-su_axb35/Kbuild, src/ec-su_axb35/src/ec_su_axb35.c...
LLM auditresponse for Kbuild:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Kbuild file for building a Linux kernel module. It specifies the object file to be compiled and the source file dependency. There is no malicious content, no network requests, no obfuscated code, and no unexpected file operations. This is entirely normal for a DKMS package.
</details>
<evidence></evidence>
<summary>Standard kernel module build file.</summary>
</security_assessment>

[2/10] Reviewing dkms.conf, src/ec-su_axb35/src/ec_su_axb35.c...
+ Reviewed src/ec-su_axb35/Kbuild. Status: SAFE -- Standard kernel module build file.
[2/10] Reviewing dkms.conf, src/ec-su_axb35/src/ec_su_axb35.c, src/ec-su_axb35/hwmon/ec-su_axb35-hwmon.c...
LLM auditresponse for dkms.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a DKMS configuration file for a kernel module package. It contains standard directives: package name, version (with a placeholder `@PKGVER@` that is typical for template expansion), build commands, module names, and installation paths. No network requests, obfuscated code, dangerous commands, or unexpected file operations are present. The configuration follows normal packaging practices for a driver module in the Arch User Repository.
</details>
<evidence></evidence>
<summary>Standard DKMS config; no security issues.</summary>
</security_assessment>

[2/10] Reviewing dkms.conf, src/ec-su_axb35/src/ec_su_axb35.c, src/ec-su_axb35/hwmon/ec-su_axb35-hwmon.c, src/ec-su_axb35/contrib/ubuntu/01_setup_dkms_mok.sh...
[3/10] Reviewing src/ec-su_axb35/src/ec_su_axb35.c, src/ec-su_axb35/hwmon/ec-su_axb35-hwmon.c, src/ec-su_axb35/contrib/ubuntu/01_setup_dkms_mok.sh...
+ Reviewed dkms.conf. Status: SAFE -- Standard DKMS config; no security issues.
LLM auditresponse for ec-su_axb35-hwmon.c:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a Linux kernel hardware monitoring (hwmon) driver for the SU-AXB35 device. It reads fan RPM and temperature values from a sysfs interface provided by another driver (`/sys/class/ec_su_axb35/`) and exposes them through the standard hwmon API. All operations are standard kernel driver practices: `filp_open`, `kernel_read`, `class_create`, `device_create`, and `hwmon_device_register_with_info`. There are no network connections, no obfuscated code, no execution of downloaded content, and no modifications to system files outside the intended device interface. The code does exactly what its description states: it bridges an existing sysfs interface to the hwmon subsystem. No supply chain attack or malicious behavior is present.
</details>
<evidence></evidence>
<summary>Standard kernel hwmon driver; no malicious behavior.</summary>
</security_assessment>

[3/10] Reviewing src/ec-su_axb35/src/ec_su_axb35.c, src/ec-su_axb35/hwmon/ec-su_axb35-hwmon.c, src/ec-su_axb35/contrib/ubuntu/01_setup_dkms_mok.sh, src/ec-su_axb35/contrib/ubuntu/02_install_ec_axb35_dkms.sh...
[4/10] Reviewing src/ec-su_axb35/src/ec_su_axb35.c, src/ec-su_axb35/contrib/ubuntu/01_setup_dkms_mok.sh, src/ec-su_axb35/contrib/ubuntu/02_install_ec_axb35_dkms.sh...
+ Reviewed src/ec-su_axb35/hwmon/ec-su_axb35-hwmon.c. Status: SAFE -- Standard kernel hwmon driver; no malicious behavior.
LLM auditresponse for 01_setup_dkms_mok.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard DKMS/MOK enrollment helper for setting up secure boot module signing. It performs the following legitimate operations: installs `dkms` and `openssl` via `apt-get`, generates a Machine Owner Key (MOK) pair using `dkms generate_mok`, and enrolls the key using `mokutil`. All commands are sourced from the official Ubuntu repositories and system tools. The script does not download any external code, does not use obfuscation, does not exfiltrate data, and does not modify system files outside its intended scope. It is a typical packaging helper script and contains no supply-chain attack indicators.
</details>
<evidence>
</evidence>
<summary>Standard DKMS/MOK setup script, no malicious behavior.</summary>
</security_assessment>

[4/10] Reviewing src/ec-su_axb35/src/ec_su_axb35.c, src/ec-su_axb35/contrib/ubuntu/01_setup_dkms_mok.sh, src/ec-su_axb35/contrib/ubuntu/02_install_ec_axb35_dkms.sh, src/ec-su_axb35/python-gui/ec-fan-control.desktop...
[5/10] Reviewing src/ec-su_axb35/src/ec_su_axb35.c, src/ec-su_axb35/contrib/ubuntu/02_install_ec_axb35_dkms.sh, src/ec-su_axb35/python-gui/ec-fan-control.desktop...
+ Reviewed src/ec-su_axb35/contrib/ubuntu/01_setup_dkms_mok.sh. Status: SAFE -- Standard DKMS/MOK setup script, no malicious behavior.
LLM auditresponse for ec_su_axb35.c:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a Linux kernel module source for an embedded controller driver (Sixunited AXB35-02). It implements sysfs interfaces to read/write fan speeds, temperature, and APU power modes via standard EC register accesses. There are no network operations, no external downloads, no obfuscated or encoded commands, and no attempts to exfiltrate data or manipulate system files outside of the driver's intended hardware control scope. The code follows normal kernel module patterns and only interacts with the hardware's embedded controller through the exported `ec_read`/`ec_write` functions. No supply-chain attack indicators are present.
</details>
<evidence></evidence>
<summary>Legitimate kernel driver; no malicious code.</summary>
</security_assessment>

[5/10] Reviewing src/ec-su_axb35/src/ec_su_axb35.c, src/ec-su_axb35/contrib/ubuntu/02_install_ec_axb35_dkms.sh, src/ec-su_axb35/python-gui/ec-fan-control.desktop, src/ec-su_axb35/python-gui/ec-su_axb35-linux-gui.py...
[6/10] Reviewing src/ec-su_axb35/contrib/ubuntu/02_install_ec_axb35_dkms.sh, src/ec-su_axb35/python-gui/ec-fan-control.desktop, src/ec-su_axb35/python-gui/ec-su_axb35-linux-gui.py...
+ Reviewed src/ec-su_axb35/src/ec_su_axb35.c. Status: SAFE -- Legitimate kernel driver; no malicious code.
LLM auditresponse for ec-fan-control.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Linux desktop entry file (.desktop) used to register a graphical application in the system menu. It contains no executable code, no network requests, no obfuscation, and no file operations beyond a simple metadata description. The `Exec` line points to a binary that is part of the same package, which is a routine packaging practice. There is no evidence of malicious behavior or supply-chain attack indicators.</details>
<evidence></evidence>
<summary>Standard desktop entry; no security issues.</summary>
</security_assessment>

[6/10] Reviewing src/ec-su_axb35/contrib/ubuntu/02_install_ec_axb35_dkms.sh, src/ec-su_axb35/python-gui/ec-fan-control.desktop, src/ec-su_axb35/python-gui/ec-su_axb35-linux-gui.py, src/ec-su_axb35/scripts/info.sh...
[7/10] Reviewing src/ec-su_axb35/contrib/ubuntu/02_install_ec_axb35_dkms.sh, src/ec-su_axb35/python-gui/ec-su_axb35-linux-gui.py, src/ec-su_axb35/scripts/info.sh...
+ Reviewed src/ec-su_axb35/python-gui/ec-fan-control.desktop. Status: SAFE -- Standard desktop entry; no security issues.
LLM auditresponse for ec-su_axb35-linux-gui.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Python/Tkinter GUI application for controlling fan speeds via the `ec_su_axb35` kernel driver. It reads and writes sysfs files under `/sys/class/ec_su_axb35/` to monitor temperatures and RPMs, set APU power modes, and configure fan modes (auto/fixed/curve). The script uses `pkexec` to re‑invoke itself with root privileges (a common pattern for hardware control tools). It saves and loads a configuration file to `/etc/ec-fan-control.json` — this is expected for a system‑wide configuration utility. There are no network operations, no `eval`/`exec` of untrusted content, no obfuscated code, and no manipulation of files outside the application’s own scope. All operations are consistent with the stated purpose of the package.
</details>
<evidence></evidence>
<summary>Legitimate fan control GUI, no malicious behavior found.</summary>
</security_assessment>

[8/10] Reviewing src/ec-su_axb35/contrib/ubuntu/02_install_ec_axb35_dkms.sh, src/ec-su_axb35/scripts/info.sh...
+ Reviewed src/ec-su_axb35/python-gui/ec-su_axb35-linux-gui.py. Status: SAFE -- Legitimate fan control GUI, no malicious behavior found.
LLM auditresponse for info.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script reads kernel sysfs attributes under `/sys/class/ec_su_axb35/` and formats them for display. It uses standard commands (`cat`, `printf`, `for` loop) and performs no network operations, file writes, code execution, or obfuscation. This is a typical informational script for a hardware driver package.
</details>
<evidence></evidence>
<summary>Safe hardware monitoring script for kernel driver.</summary>
</security_assessment>

[9/10] Reviewing src/ec-su_axb35/contrib/ubuntu/02_install_ec_axb35_dkms.sh...
+ Reviewed src/ec-su_axb35/scripts/info.sh. Status: SAFE -- Safe hardware monitoring script for kernel driver.
LLM auditresponse for 02_install_ec_axb35_dkms.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a standard post-checkout helper for installing the `ec_su_axb35` kernel module via DKMS with Secure Boot MOK signing. It copies the repository source to `/usr/src/`, writes a `dkms.conf` that signs the built module with pre-existing MOK keys, builds and installs the module, loads it, and adds it to `/etc/modules` for auto-load. All operations are within the expected scope of a DKMS-based kernel module package. There is no network download of external code, no obfuscation, no data exfiltration, and no tampering with system files outside the module's own installation path. The script contains a minor shell syntax bug (`if !mokutil` missing a space) which is a coding error but not malicious.

The use of `apt-get install` and `dkms` commands is normal system administration for package building. The MOK key and certificate paths are fixed and conventional for Ubuntu's `shim-signed` setup. No unexpected or dangerous commands (eval, base64, curl, wget) are present.
</details>
<evidence>

</evidence>
<summary>Legitimate DKMS kernel module installation script, no malice.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/ec-su_axb35/contrib/ubuntu/02_install_ec_axb35_dkms.sh. Status: SAFE -- Legitimate DKMS kernel module installation script, no malice.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 51,045
  Completion Tokens: 7,432
  Total Tokens: 58,477
  Total Cost: $0.003220
  Execution Time: 77.85 seconds

Final Status: SAFE


No issues found.
