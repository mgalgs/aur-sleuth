---
package: orbbec-openni2
pkgver: 2.3.0.86
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 42357
completion_tokens: 7206
total_tokens: 49563
cost: 0.00510921
execution_time: 25.68
files_reviewed: 9
files_skipped: 0
maintainer_files: 9
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-15T04:14:35Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard gitignore, no malicious content.
  - file: SimpleViewerXCB
    status: safe
    summary: Safe transitional workaround for OpenCV Wayland bug.
  - file: astra-pro-uvc.patch
    status: safe
    summary: Udev rule addition for new hardware device
  - file: cmake-system-libs.patch
    status: safe
    summary: Patch uses system libraries; no malicious content.
  - file: libopenni2.pc
    status: safe
    summary: Standard pkg-config file, no security concerns.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD, no malicious code found.
  - file: udev-uaccess.patch
    status: safe
    summary: Standard udev patch, no security issues.
  - file: opencv5-port.patch
    status: safe
    summary: Legitimate OpenCV API porting patch, no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no malicious content detected.
---

Materializing orbbec-openni2 from local mirror...
Materialized orbbec-openni2
Analyzing orbbec-openni2 AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only top-level variable assignments, array definitions, and a function definition (`_archmap`). No command substitutions, backticks, `eval`, or direct execution of external commands occur at the global scope. The function is only invoked inside `prepare()`, `build()`, and `package()`, which are not executed during `makepkg --printsrcinfo`. There is no risk of malicious code running during the sourcing step.
</details>
<evidence>
</evidence>
<summary>No dangerous top-level code in PKGBUILD.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code in PKGBUILD.
Reviewing the 9 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/9] Reviewing .SRCINFO...
[0/9] Reviewing .SRCINFO, .gitignore...
[0/9] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `.gitignore` is a standard Git configuration file used to exclude build artifacts and temporary files from version control. The patterns listed (`*.zst`, `pkg/`, `src/`, `*.deb`, `*.zip`) are all normal entries for an Arch User Repository package, preventing generated package files and build directories from being committed. There is no executable code, network access, obfuscation, or any behavior that deviates from ordinary packaging practices. No security issues are present.
</details>
<evidence>
</evidence>
<summary>Standard gitignore, no malicious content.</summary>
</security_assessment>

[1/9] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard gitignore, no malicious content.
[1/9] Reviewing .SRCINFO, PKGBUILD, SimpleViewerXCB...
LLM auditresponse for SimpleViewerXCB:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a straightforward transitional workaround for an upstream OpenCV bug related to window sizing under Wayland. It conditionally sets the `QT_QPA_PLATFORM` environment variable to `xcb` when both `WAYLAND_DISPLAY` and `DISPLAY` are set and `QT_QPA_PLATFORM` is not already defined. After that, it executes `/usr/bin/SimpleViewer` with any passed arguments. There are no suspicious commands, network requests, file operations, or obfuscated code. The script follows standard packaging practices for handling environment-specific issues.
</details>
<evidence></evidence>
<summary>Safe transitional workaround for OpenCV Wayland bug.</summary>
</security_assessment>

[1/9] Reviewing .SRCINFO, PKGBUILD, SimpleViewerXCB, astra-pro-uvc.patch...
[2/9] Reviewing .SRCINFO, PKGBUILD, astra-pro-uvc.patch...
+ Reviewed SimpleViewerXCB. Status: SAFE -- Safe transitional workaround for OpenCV Wayland bug.
LLM auditresponse for astra-pro-uvc.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a simple patch file that adds a new udev rule for an Orbbec Astra Pro UVC camera (product ID 0x0501, vendor ID 0x2bc5). The patch modifies the existing `rules/orbbec-usb.rules` file by appending a single line that sets permissions, assigns the `uaccess` tag, and creates a symlink for the new device. This is a standard and expected change in a package that provides USB device support for Orbbec depth cameras. There is no obfuscated code, no network activity, no file manipulation outside of the intended udev configuration, and no deviation from ordinary packaging practices. The change is consistent with the package's stated purpose of enabling hardware access for Orbbec devices.
</details>
<evidence></evidence>
<summary>Udev rule addition for new hardware device</summary>
</security_assessment>

[2/9] Reviewing .SRCINFO, PKGBUILD, astra-pro-uvc.patch, cmake-system-libs.patch...
[3/9] Reviewing .SRCINFO, PKGBUILD, cmake-system-libs.patch...
+ Reviewed astra-pro-uvc.patch. Status: SAFE -- Udev rule addition for new hardware device
LLM auditresponse for cmake-system-libs.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard patch file that adapts the upstream build system to use system libraries instead of bundled third-party dependencies. The changes remove hardcoded paths to bundled OpenCV, GL, and OpenNI2 libraries and replace them with `find_package` calls and system library links (e.g., `uvc`, `OpenCV`). Removing the forced `CMAKE_BUILD_TYPE Release` and using system include/library paths is typical packaging practice for Arch Linux. No evidence of malicious behavior such as network requests, obfuscated code, or backdoors is present.
</details>
<evidence></evidence>
<summary>Patch uses system libraries; no malicious content.</summary>
</security_assessment>

[3/9] Reviewing .SRCINFO, PKGBUILD, cmake-system-libs.patch, libopenni2.pc...
[4/9] Reviewing .SRCINFO, PKGBUILD, libopenni2.pc...
+ Reviewed cmake-system-libs.patch. Status: SAFE -- Patch uses system libraries; no malicious content.
LLM auditresponse for libopenni2.pc:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard pkg-config (.pc) file used to provide compiler and linker flags for the Orbbec OpenNI2 SDK. It contains only variable definitions and metadata fields (Name, Description, Version, Cflags, Libs). There are no executable commands, network operations, obfuscated content, or references to external resources beyond the standard system paths (/usr, /usr/lib, /usr/include/openni2). No evidence of malicious or unexpected behavior is present.
</details>
<evidence></evidence>
<summary>Standard pkg-config file, no security concerns.</summary>
</security_assessment>

[4/9] Reviewing .SRCINFO, PKGBUILD, libopenni2.pc, opencv5-port.patch...
[5/9] Reviewing .SRCINFO, PKGBUILD, opencv5-port.patch...
+ Reviewed libopenni2.pc. Status: SAFE -- Standard pkg-config file, no security concerns.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices. All source files are obtained from the official upstream GitHub release, with pinned checksums provided. No unexpected network requests, obfuscated code, or dangerous commands (eval, curl, etc.) are present. The package simply downloads a prebuilt SDK, applies patches, builds sample programs, and installs files into $pkgdir. The extraction of a .rar file from the aarch64 zip is documented and originates from the upstream archive; it does not execute untrusted code. No evidence of supply chain attack was found.
</details>
<evidence>
</evidence>
<summary>
Standard PKGBUILD, no malicious code found.
</summary>
</security_assessment>

[5/9] Reviewing .SRCINFO, PKGBUILD, opencv5-port.patch, udev-uaccess.patch...
[6/9] Reviewing .SRCINFO, opencv5-port.patch, udev-uaccess.patch...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD, no malicious code found.
LLM auditresponse for udev-uaccess.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard udev rules patch for Orbbec depth cameras. It changes device permissions from `MODE:=&quot;0666&quot;` (world-writable) with `OWNER=root GROUP=video` to `MODE=&quot;0660&quot;` (more restrictive) with `TAG+=&quot;uaccess&quot;` (using systemd's ACL-based local user access mechanism). This is a routine packaging adjustment aligning with modern udev best practices. No network requests, obfuscated code, data exfiltration, or unexpected operations are present.
</details>
<evidence></evidence>
<summary>Standard udev patch, no security issues.</summary>
</security_assessment>

[7/9] Reviewing .SRCINFO, opencv5-port.patch...
+ Reviewed udev-uaccess.patch. Status: SAFE -- Standard udev patch, no security issues.
LLM auditresponse for opencv5-port.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch file updates OpenCV sample code from the old C API (IplImage, cvInitFont, cvPutText) to the modern C++ API (cv::Mat, cv::putText, cv::LINE_AA). No network requests, obfuscated code, unexpected file operations, or system modifications are introduced. The changes are purely mechanical code substitutions for OpenCV version compatibility and pose no security risk. Unpinned sources are not relevant here as this is a patch, not a source fetch.
</details>
<evidence></evidence>
<summary>Legitimate OpenCV API porting patch, no security issues.</summary>
</security_assessment>

[8/9] Reviewing .SRCINFO...
+ Reviewed opencv5-port.patch. Status: SAFE -- Legitimate OpenCV API porting patch, no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.SRCINFO` metadata file automatically generated by `makepkg` from a `PKGBUILD`. It declaratively describes the package metadata, dependencies, architecture-specific sources, and integrity checksums.

The `source_*` fields point to Orbbec's official GitHub releases for the OpenNI SDK binary distributions. The corresponding `sha256sums_*` fields provide integrity verification for these downloads. The local `source` fields list patch files and supplementary packaging files, whose checksums are also provided. There are no executable commands, obfuscated strings, or requests to download from unexpected or third-party hosts. The file behaves strictly as a declarative packaging metadata file without any malicious payloads.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata, no malicious content detected.</summary>
</security_assessment>

[9/9] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no malicious content detected.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 42,357
  Completion Tokens: 7,206
  Total Tokens: 49,563
  Total Cost: $0.005109
  Execution Time: 25.68 seconds

Final Status: SAFE


No issues found.
