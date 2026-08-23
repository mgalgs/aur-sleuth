---
package: token2-fido-bridge
pkgver: 0.1.2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3aa684c47f9b6bac5667ff3cee413c3a000b1b0d
prompt_tokens: 37238
completion_tokens: 8294
total_tokens: 45532
cost: 0.00293136396
execution_time: 115.6
files_reviewed: 12
files_skipped: 1
files_unauditable: 0
unpinned_sources: 0
date: 2026-08-23T03:31:39Z
file_verdicts:
  - file: token2-fido-bridge-0.1.2.tar.gz
    status: skipped
    summary: "Skipping binary file: token2-fido-bridge-0.1.2.tar.gz"
  - file: token2-fido-bridge.install
    status: safe
    summary: Standard post-install informational messages; no malicious code.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with pinned source and checksum; no malicious indicators.
  - file: src/token2-fido-bridge-0.1.2/build.sh
    status: safe
    summary: Standard CMake build script, no suspicious content.
  - file: src/token2-fido-bridge-0.1.2/packaging/token2-fido-bridge.service
    status: safe
    summary: Standard systemd service file, no malicious content.
  - file: src/token2-fido-bridge-0.1.2/CMakeLists.txt
    status: safe
    summary: Standard CMake build file; no malicious content detected.
  - file: src/token2-fido-bridge-0.1.2/packaging/uhid.conf
    status: safe
    summary: Simple kernel module configuration, no security issues.
  - file: src/token2-fido-bridge-0.1.2/packaging/70-token2-fido-bridge.rules
    status: safe
    summary: Standard udev rules for device access; no malicious content.
  - file: src/token2-fido-bridge-0.1.2/install.sh
    status: safe
    summary: Standard installer, no malicious behavior detected.
  - file: src/token2-fido-bridge-0.1.2/src/main.cpp
    status: safe
    summary: Standard application source; no security issues.
  - file: src/token2-fido-bridge-0.1.2/src/pcsc_manager.hpp
    status: safe
    summary: Standard PC/SC manager header, no malicious content.
  - file: src/token2-fido-bridge-0.1.2/src/ctap_hid_device.hpp
    status: safe
    summary: Standard CTAP-HID implementation; no malicious activity found.
  - file: src/token2-fido-bridge-0.1.2/src/uhid_device.hpp
    status: safe
    summary: Standard uhid wrapper, no malicious behavior found.
---

Cloning https://aur.archlinux.org/token2-fido-bridge.git...
Cloned token2-fido-bridge
Analyzing token2-fido-bridge AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD defines a standard package with a pinned SHA-256 checksum from the upstream GitHub repository. There is no `pkgver()` function or any top-level code execution beyond variable assignments. The `source` array fetches a tarball from the project's own GitHub releases, which is expected. No dangerous commands (curl, wget, eval, etc.) appear outside of `build()`/`package()`, which are not executed during the `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo` steps. The `.install` file reference is only used during package installation, not during source fetching or PKGBUILD sourcing. No obfuscated code, network exfiltration, or unexpected operations are present.
</details>
<summary>Standard PKGBUILD with pinned source; no execution risks during source fetch.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Standard PKGBUILD with pinned source; no execution risks during source fetch.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/3] Reviewing PKGBUILD...
[0/3] Reviewing PKGBUILD, token2-fido-bridge.install...
[0/3] Reviewing PKGBUILD, token2-fido-bridge.install, token2-fido-bridge-0.1.2.tar.gz...
[1/3] Reviewing PKGBUILD, token2-fido-bridge.install...
! Reviewed token2-fido-bridge-0.1.2.tar.gz. Status: SKIPPED -- Skipping binary file: token2-fido-bridge-0.1.2.tar.gz
LLM auditresponse for token2-fido-bridge.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Arch Linux install script (`post_install`) that only prints informational messages to the user. It contains no network requests, file operations, encoded commands, or any other suspicious behavior. The output advises the user on how to enable the systemd service and notes about dependencies (pcscd, ccid). This is ordinary packaging practice with no security concerns.
</details>
<summary>Standard post-install informational messages; no malicious code.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed token2-fido-bridge.install. Status: SAFE -- Standard post-install informational messages; no malicious code.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is standard and follows typical Arch packaging practices. It fetches the source code from the official GitHub repository using a pinned version tag (`v0.1.2`) and validates the archive with a SHA-256 checksum. The build and package functions only invoke `cmake` and `install` for the project itself, with no suspicious network requests, obfuscation, or unexpected system modifications. There is no evidence of injected malicious code or supply-chain attack indicators. The referenced `install` script is not provided here, but its mere presence is not suspicious.
</details>
<summary>
Standard PKGBUILD with pinned source and checksum; no malicious indicators.
</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with pinned source and checksum; no malicious indicators.
Reviewed all required files.
Deciding which files to review next...
LLM response for file selection:
src/token2-fido-bridge-0.1.2/CMakeLists.txt
src/token2-fido-bridge-0.1.2/build.sh
src/token2-fido-bridge-0.1.2/install.sh
src/token2-fido-bridge-0.1.2/packaging/token2-fido-bridge.service
src/token2-fido-bridge-0.1.2/packaging/70-token2-fido-bridge.rules
src/token2-fido-bridge-0.1.2/packaging/uhid.conf
src/token2-fido-bridge-0.1.2/src/main.cpp
src/token2-fido-bridge-0.1.2/src/ctap_hid_device.hpp
src/token2-fido-bridge-0.1.2/src/pcsc_manager.hpp
src/token2-fido-bridge-0.1.2/src/uhid_device.hpp
Decided to review 10 additional files: src/token2-fido-bridge-0.1.2/CMakeLists.txt, src/token2-fido-bridge-0.1.2/build.sh, src/token2-fido-bridge-0.1.2/install.sh, src/token2-fido-bridge-0.1.2/packaging/token2-fido-bridge.service, src/token2-fido-bridge-0.1.2/packaging/70-token2-fido-bridge.rules, src/token2-fido-bridge-0.1.2/packaging/uhid.conf, src/token2-fido-bridge-0.1.2/src/main.cpp, src/token2-fido-bridge-0.1.2/src/ctap_hid_device.hpp, src/token2-fido-bridge-0.1.2/src/pcsc_manager.hpp, src/token2-fido-bridge-0.1.2/src/uhid_device.hpp
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/token2-fido-bridge-0.1.2/CMakeLists.txt...
[0/10] Reviewing src/token2-fido-bridge-0.1.2/CMakeLists.txt, src/token2-fido-bridge-0.1.2/install.sh...
[0/10] Reviewing src/token2-fido-bridge-0.1.2/CMakeLists.txt, src/token2-fido-bridge-0.1.2/install.sh, src/token2-fido-bridge-0.1.2/build.sh...
LLM auditresponse for build.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script performs a standard CMake-based build process. It runs cmake to configure the project and then builds it using all available CPU cores. There are no network requests, no dangerous command substitutions, no obfuscation, and no file operations outside the build directory. This is a typical, benign build helper script.
</details>
<summary>Standard CMake build script, no suspicious content.</summary>
</security_assessment>

[0/10] Reviewing src/token2-fido-bridge-0.1.2/CMakeLists.txt, src/token2-fido-bridge-0.1.2/install.sh, src/token2-fido-bridge-0.1.2/build.sh, src/token2-fido-bridge-0.1.2/packaging/token2-fido-bridge.service...
[1/10] Reviewing src/token2-fido-bridge-0.1.2/CMakeLists.txt, src/token2-fido-bridge-0.1.2/install.sh, src/token2-fido-bridge-0.1.2/packaging/token2-fido-bridge.service...
+ Reviewed src/token2-fido-bridge-0.1.2/build.sh. Status: SAFE -- Standard CMake build script, no suspicious content.
LLM auditresponse for token2-fido-bridge.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This systemd service file is a standard unit configuration for the `token2-fido-bridge` application. It sets up a service that runs after `pcscd.service`, loads the `uhid` kernel module via modprobe, and starts the daemon as root. Running as root is required for accessing `/dev/uhid` and PC/SC resources. There is no obfuscated code, suspicious network requests, or unexpected system modifications. The content is consistent with legitimate packaging for this type of hardware bridge service.
</details>
<summary>Standard systemd service file, no malicious content.</summary>
</security_assessment>

[1/10] Reviewing src/token2-fido-bridge-0.1.2/CMakeLists.txt, src/token2-fido-bridge-0.1.2/install.sh, src/token2-fido-bridge-0.1.2/packaging/token2-fido-bridge.service, src/token2-fido-bridge-0.1.2/packaging/70-token2-fido-bridge.rules...
[2/10] Reviewing src/token2-fido-bridge-0.1.2/CMakeLists.txt, src/token2-fido-bridge-0.1.2/install.sh, src/token2-fido-bridge-0.1.2/packaging/70-token2-fido-bridge.rules...
+ Reviewed src/token2-fido-bridge-0.1.2/packaging/token2-fido-bridge.service. Status: SAFE -- Standard systemd service file, no malicious content.
LLM auditresponse for CMakeLists.txt:
<security_assessment>
<decision>SAFE</decision>
<details>
The CMakeLists.txt is a standard CMake build file for compiling a C++ binary that interfaces with PC/SC (smart card) libraries. It defines compilation options, links against `libpcsclite`, and installs the resulting binary alongside essential system configuration files (systemd service, udev rules, kernel module loading config). No network requests, encoded payloads, file exfiltration, or untrusted command execution are present. The static linking of C++ runtimes is a routine portability choice. The configuration for default USB VID/PID is harmless and expected for a USB HID device bridge. All operations are confined to standard packaging and installation behavior.
</details>
<summary>
Standard CMake build file; no malicious content detected.
</summary>
</security_assessment>

[2/10] Reviewing src/token2-fido-bridge-0.1.2/CMakeLists.txt, src/token2-fido-bridge-0.1.2/install.sh, src/token2-fido-bridge-0.1.2/packaging/70-token2-fido-bridge.rules, src/token2-fido-bridge-0.1.2/packaging/uhid.conf...
[3/10] Reviewing src/token2-fido-bridge-0.1.2/install.sh, src/token2-fido-bridge-0.1.2/packaging/70-token2-fido-bridge.rules, src/token2-fido-bridge-0.1.2/packaging/uhid.conf...
+ Reviewed src/token2-fido-bridge-0.1.2/CMakeLists.txt. Status: SAFE -- Standard CMake build file; no malicious content detected.
LLM auditresponse for uhid.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `uhid.conf` contains only the string "uhid" followed by a newline. This is a standard configuration file used to load the `uhid` kernel module (User-space HID) at boot, typically placed in `/etc/modules-load.d/`. There is no executable code, no network requests, no obfuscation, and no suspicious behavior. It is consistent with the package's purpose of providing FIDO/U2F functionality, which often requires the `uhid` module for user-space HID device access.
</details>
<summary>Simple kernel module configuration, no security issues.</summary>
</security_assessment>

[3/10] Reviewing src/token2-fido-bridge-0.1.2/install.sh, src/token2-fido-bridge-0.1.2/packaging/70-token2-fido-bridge.rules, src/token2-fido-bridge-0.1.2/packaging/uhid.conf, src/token2-fido-bridge-0.1.2/src/main.cpp...
[4/10] Reviewing src/token2-fido-bridge-0.1.2/install.sh, src/token2-fido-bridge-0.1.2/packaging/70-token2-fido-bridge.rules, src/token2-fido-bridge-0.1.2/src/main.cpp...
+ Reviewed src/token2-fido-bridge-0.1.2/packaging/uhid.conf. Status: SAFE -- Simple kernel module configuration, no security issues.
LLM auditresponse for 70-token2-fido-bridge.rules:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard udev rules file for the token2-fido-bridge package. It adds systemd tagging for the `/dev/uhid` device and assigns `snap_firefox_firefox`, `snap_firefox_geckodriver`, and `uaccess` tags to a specific hidraw device matching the bridge's virtual UHID FIDO device (vendor 349E, product 0001). The comments explain the need for these rules due to snap confinement and the lack of USB parent attributes. No instructions, network requests, or obfuscated code are present. The rules are purely for device access permissions and pose no security threat.
</details>
<summary>
Standard udev rules for device access; no malicious content.</summary>
</security_assessment>

[4/10] Reviewing src/token2-fido-bridge-0.1.2/install.sh, src/token2-fido-bridge-0.1.2/packaging/70-token2-fido-bridge.rules, src/token2-fido-bridge-0.1.2/src/main.cpp, src/token2-fido-bridge-0.1.2/src/ctap_hid_device.hpp...
[5/10] Reviewing src/token2-fido-bridge-0.1.2/install.sh, src/token2-fido-bridge-0.1.2/src/main.cpp, src/token2-fido-bridge-0.1.2/src/ctap_hid_device.hpp...
+ Reviewed src/token2-fido-bridge-0.1.2/packaging/70-token2-fido-bridge.rules. Status: SAFE -- Standard udev rules for device access; no malicious content.
LLM auditresponse for install.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a conventional installer that either downloads a prebuilt package from a user-supplied `BASE_URL` (empty by default, so no download occurs unless the user sets it) or builds from source. All operations are standard for installing a system service: detecting the package manager, installing dependencies, compiling via cmake, enabling and starting the systemd unit, and reloading udev rules. There is no obfuscated code, no exfiltration of data, no unexpected network connections to unrelated hosts, and no attempt to bypass the user's trust boundaries beyond the typical lack of checksum verification on downloaded packages (which is a trust/hygiene choice, not a supply-chain attack). The script does not download or execute anything from non-standard or hidden sources; the only download path is the `BASE_URL` variable, which is under the user's control and defaults to off.
</details>
<summary>Standard installer, no malicious behavior detected.</summary>
</security_assessment>

[6/10] Reviewing src/token2-fido-bridge-0.1.2/src/main.cpp, src/token2-fido-bridge-0.1.2/src/ctap_hid_device.hpp...
+ Reviewed src/token2-fido-bridge-0.1.2/install.sh. Status: SAFE -- Standard installer, no malicious behavior detected.
[6/10] Reviewing src/token2-fido-bridge-0.1.2/src/main.cpp, src/token2-fido-bridge-0.1.2/src/ctap_hid_device.hpp, src/token2-fido-bridge-0.1.2/src/pcsc_manager.hpp...
LLM auditresponse for main.cpp:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard C++ source file for the token2-fido-bridge application. It creates a virtual UHID FIDO device and runs a CTAP-HID event loop. It reads configuration from command-line arguments and environment variables, which is normal for such tools. There is no obfuscation, no network requests, no unexpected file operations, and no execution of external code. All includes are standard library headers or project headers. The code is straightforward and consistent with the package's stated purpose. No evidence of supply-chain attack or malicious behavior.
</details>
<summary>Standard application source; no security issues.</summary>
</security_assessment>

[6/10] Reviewing src/token2-fido-bridge-0.1.2/src/main.cpp, src/token2-fido-bridge-0.1.2/src/ctap_hid_device.hpp, src/token2-fido-bridge-0.1.2/src/pcsc_manager.hpp, src/token2-fido-bridge-0.1.2/src/uhid_device.hpp...
[7/10] Reviewing src/token2-fido-bridge-0.1.2/src/ctap_hid_device.hpp, src/token2-fido-bridge-0.1.2/src/pcsc_manager.hpp, src/token2-fido-bridge-0.1.2/src/uhid_device.hpp...
+ Reviewed src/token2-fido-bridge-0.1.2/src/main.cpp. Status: SAFE -- Standard application source; no security issues.
LLM auditresponse for pcsc_manager.hpp:
<security_assessment>
<decision>SAFE</decision>
<details>
This header file implements a standard PC/SC context manager for a FIDO2 bridge application. It uses the normal Windows smart card API (`SCardEstablishContext`, `SCardListReaders`, `SCardConnect`, etc.) to enumerate and connect to smart card readers. There is no obfuscation, no network requests, no execution of external code, and no file system operations beyond what is required for smart card communication. The code follows common RAII and error‑handling patterns. It contains no evidence of injection, backdoors, or data exfiltration. This is typical upstream application code and does not pose a supply‑chain risk.
</details>
<summary>Standard PC/SC manager header, no malicious content.</summary>
</security_assessment>

[8/10] Reviewing src/token2-fido-bridge-0.1.2/src/ctap_hid_device.hpp, src/token2-fido-bridge-0.1.2/src/uhid_device.hpp...
+ Reviewed src/token2-fido-bridge-0.1.2/src/pcsc_manager.hpp. Status: SAFE -- Standard PC/SC manager header, no malicious content.
LLM auditresponse for ctap_hid_device.hpp:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `ctap_hid_device.hpp` implements a CTAP-HID transport state machine for a FIDO2 bridge. It communicates only with local PC/SC smart card readers and a user-space HID device; no network operations, file system manipulation, or data exfiltration are present. Code is straightforward C++ with no obfuscation, encoded commands, or suspicious function calls. All operations are standard for the package's stated purpose (bridging USB HID tokens to PC/SC). No evidence of a supply‑chain attack or malicious injection was found.
</details>
<summary>Standard CTAP-HID implementation; no malicious activity found.</summary>
</security_assessment>

[9/10] Reviewing src/token2-fido-bridge-0.1.2/src/uhid_device.hpp...
+ Reviewed src/token2-fido-bridge-0.1.2/src/ctap_hid_device.hpp. Status: SAFE -- Standard CTAP-HID implementation; no malicious activity found.
LLM auditresponse for uhid_device.hpp:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a lightweight C++ header wrapping the Linux uhid kernel interface to create a virtual FIDO HID device. It opens `/dev/uhid`, issues `UHID_CREATE2` with a standard FIDO report descriptor, and runs a blocking read loop to dispatch `UHID_OUTPUT` events. No network access, no obfuscated code, no unexpected system file manipulation, and no execution of external binaries. The code is consistent with the package's stated purpose of bridging FIDO2 tokens. The use of compile-time macros (`BRIDGE_DEFAULT_VID/PID`) and standard system includes is normal packaging practice.
</details>
<summary>Standard uhid wrapper, no malicious behavior found.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/token2-fido-bridge-0.1.2/src/uhid_device.hpp. Status: SAFE -- Standard uhid wrapper, no malicious behavior found.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
(Skipped 1 file: token2-fido-bridge-0.1.2.tar.gz)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 37,238
  Completion Tokens: 8,294
  Total Tokens: 45,532
  Total Cost: $0.002931
  Execution Time: 115.60 seconds

Final Status: SAFE


No issues found.


Audit Skips:

/data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-831yw_wv/token2-fido-bridge-0.1.2.tar.gz: [SKIPPED] Skipping binary file: token2-fido-bridge-0.1.2.tar.gz
