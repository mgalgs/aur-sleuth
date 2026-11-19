---
package: quartus-wayland
pkgver: 6.5.7
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 47168
completion_tokens: 9980
total_tokens: 57148
cost: 0.00604152
execution_time: 59.45
files_reviewed: 14
files_skipped: 0
maintainer_files: 14
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-12T16:06:49Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore, no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Standard metadata file; no security issues.
  - file: README.md
    status: safe
    summary: Documentation only, no malicious code.
  - file: configure-quartus.tcl
    status: safe
    summary: Standard configuration script, no malicious behavior
  - file: java-wayland
    status: safe
    summary: Standard launcher script, no malicious behavior.
  - file: qmegawiz-wayland.desktop
    status: safe
    summary: Standard .desktop launcher file, no security issues.
  - file: qsys-edit-wayland.desktop
    status: safe
    summary: Standard desktop file, no security issues.
  - file: PKGBUILD
    status: safe
    summary: PKGBUILD is standard, no malicious behavior.
  - file: quartus-wayland
    status: safe
    summary: Standard packaging wrapper, no malicious behavior detected.
  - file: quartus-wayland.desktop
    status: safe
    summary: Standard desktop entry file, no security issues.
  - file: install-local.sh
    status: safe
    summary: Legitimate local install script; no malicious behavior detected.
  - file: questa-hidpi.desktop
    status: safe
    summary: Standard desktop entry file, no security concerns.
  - file: questa-hidpi
    status: safe
    summary: Standard HiDPI launcher script, no malicious behavior found.
  - file: questa-hidpi.tcl
    status: safe
    summary: Legitimate HiDPI scaling script; no security concerns.
---

Materializing quartus-wayland from local mirror...
Cloning https://aur.archlinux.org/quartus-wayland.git...
Cloned quartus-wayland
Analyzing quartus-wayland AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains standard variable definitions and array assignments (pkgname, pkgver, source, sha256sums, etc.) at the global/top-level scope. There are no command substitutions, obfuscated code, or dangerous commands (eval, curl, wget, etc.) that would execute during a `makepkg --printsrcinfo` operation. The `build()` and `package()` functions are present but are not invoked by this command, so their content is out of scope. The source URLs and checksums are typical for a packaging workflow and do not introduce risk at this parsing step.
</details>
<evidence></evidence>
<summary>No malicious global code found.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious global code found.
Reviewing the 14 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/14] Reviewing .SRCINFO...
[0/14] Reviewing .SRCINFO, .gitignore...
[0/14] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` used in AUR and general packaging workflows. It lists build artifacts (`/src/`, `/pkg/`, various archives and logs) that should not be tracked by Git. There is no executable content, no network access, no system modification, and no obfuscation. The patterns are exactly what one would expect for a well-maintained AUR package repository.
</details>
<evidence></evidence>
<summary>Standard .gitignore, no security concerns.</summary>
</security_assessment>

[0/14] Reviewing .SRCINFO, .gitignore, PKGBUILD, README.md...
[1/14] Reviewing .SRCINFO, PKGBUILD, README.md...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore, no security concerns.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a metadata-only file describing package sources, dependencies, and checksums. All remote sources point to legitimate upstream locations (Qt official archive, JetBrains, Maven Central). All checksums are provided and none are set to `SKIP`. No executable code, network commands, or obfuscated content is present. This file conforms to standard AUR packaging practices and contains no indicators of malicious intent.
</details>
<evidence>
</evidence>
<summary>Standard metadata file; no security issues.</summary>
</security_assessment>

[1/14] Reviewing .SRCINFO, PKGBUILD, README.md, configure-quartus.tcl...
[2/14] Reviewing PKGBUILD, README.md, configure-quartus.tcl...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata file; no security issues.
LLM auditresponse for README.md:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a README.md providing documentation for the AUR package quartus-wayland. It describes installation steps, configuration options, and usage examples. The content consists only of markdown text and command-line snippets for routine packaging operations (`makepkg`, `yay`, etc.). There is no executable code, no encoded payloads, no obfuscated commands, and no references to downloading or running scripts from untrusted sources. The mention of a local installer script (`install-local.sh`) that downloads a Java runtime with SHA-256 verification is a standard packaging practice, not evidence of malice. The file does not contain any instructions that the security analysis should follow, and it exhibits no signs of a supply-chain attack.
</details>
<evidence></evidence>
<summary>Documentation only, no malicious code.</summary>
</security_assessment>

[2/14] Reviewing PKGBUILD, README.md, configure-quartus.tcl, install-local.sh...
[3/14] Reviewing PKGBUILD, configure-quartus.tcl, install-local.sh...
+ Reviewed README.md. Status: SAFE -- Documentation only, no malicious code.
LLM auditresponse for configure-quartus.tcl:
<security_assessment>
<decision>SAFE</decision>
<details>
This Tcl script configures Quartus to locate a Questa simulation installation. It takes a single path argument, verifies that the `vsim` executable exists at that path, then sets two Quartus user options (`EDA_TOOL_PATH_QUESTA_INTEL` and `EDA_TOOL_PATH_QUESTASIM`) to that path. The script performs no network requests, no obfuscated code, no dangerous operations (eval, base64, curl, wget), and no unexpected file modifications. It is a standard configuration helper consistent with packaging Quartus to work with an existing Questa installation.
</details>
<evidence></evidence>
<summary>Standard configuration script, no malicious behavior</summary>
</security_assessment>

[3/14] Reviewing PKGBUILD, configure-quartus.tcl, install-local.sh, java-wayland...
[4/14] Reviewing PKGBUILD, install-local.sh, java-wayland...
+ Reviewed configure-quartus.tcl. Status: SAFE -- Standard configuration script, no malicious behavior
LLM auditresponse for java-wayland:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard launcher wrapper for Java applications requiring a Wayland-capable JetBrains Runtime (JBR) and the WLToolkit. It sets environment variables from the package&#39;s expected installation paths, validates required binaries and libraries exist, and then executes the JBR&#39;s `java` binary with appropriate flags. There are no network requests, obfuscated code, unexpected file operations, or execution of untrusted content. The script follows typical AUR packaging conventions for providing a custom runtime environment. No security issues detected.
</details>
<evidence></evidence>
<summary>Standard launcher script, no malicious behavior.</summary>
</security_assessment>

[5/14] Reviewing PKGBUILD, install-local.sh...
+ Reviewed java-wayland. Status: SAFE -- Standard launcher script, no malicious behavior.
[5/14] Reviewing PKGBUILD, install-local.sh, qmegawiz-wayland.desktop...
LLM auditresponse for qmegawiz-wayland.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard freedesktop .desktop file that defines an application launcher entry. It specifies the application type, name, comment, icon path, executable command, and categories. The icon path points to a legitimate location within /opt/intelFPGA, which is the expected installation directory for Intel FPGA tools (Quartus). The Exec line runs a command called `qmegawiz-wayland`, which is presumably a wrapper script or binary provided by the quartus-wayland package. There are no network requests, encoded commands, or any other suspicious operations. The file contains only static metadata and poses no security risk.
</details>
<evidence></evidence>
<summary>Standard .desktop launcher file, no security issues.</summary>
</security_assessment>

[5/14] Reviewing PKGBUILD, install-local.sh, qmegawiz-wayland.desktop, qsys-edit-wayland.desktop...
[6/14] Reviewing PKGBUILD, install-local.sh, qsys-edit-wayland.desktop...
+ Reviewed qmegawiz-wayland.desktop. Status: SAFE -- Standard .desktop launcher file, no security issues.
LLM auditresponse for qsys-edit-wayland.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.desktop` file for the Quartus Platform Designer (Wayland) package. It declares a desktop entry with metadata (Name, Comment, Icon, Exec, etc.) pointing to the `qsys-edit-wayland` binary. There are no suspicious network requests, obfuscated code, file operations, or other malicious behaviors. The file follows normal packaging conventions for a desktop launcher.
</details>
<evidence>
</evidence>
<summary>Standard desktop file, no security issues.</summary>
</security_assessment>

[6/14] Reviewing PKGBUILD, install-local.sh, qsys-edit-wayland.desktop, quartus-wayland...
[7/14] Reviewing PKGBUILD, install-local.sh, quartus-wayland...
+ Reviewed qsys-edit-wayland.desktop. Status: SAFE -- Standard desktop file, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices: it fetches source code from official upstream locations (Qt archive, JetBrains, Maven Central) with pinned checksums, builds Qt Wayland from source, and installs only the necessary runtime files along with helper scripts. There are no obfuscated commands, unexpected network requests, or attempts to execute downloaded code during the build or package steps. The only potential concern is that the package includes several local scripts (e.g., install-local.sh) which are not analyzed here, but the PKGBUILD itself does not execute them during installation—they are only placed on disk for the user to run manually. No evidence of supply-chain attack was found in this file.
</details>
<evidence></evidence>
<summary>PKGBUILD is standard, no malicious behavior.</summary>
</security_assessment>

[8/14] Reviewing install-local.sh, quartus-wayland...
+ Reviewed PKGBUILD. Status: SAFE -- PKGBUILD is standard, no malicious behavior.
[8/14] Reviewing install-local.sh, quartus-wayland, quartus-wayland.desktop...
LLM auditresponse for quartus-wayland:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard wrapper for running Intel Quartus tools under Wayland with a custom Qt6 runtime. It sources a user configuration file, locates the necessary Qt6 Wayland plugins, sets environment variables (QT_QPA_PLATFORM, LD_LIBRARY_PATH, LD_PRELOAD, etc.), and then execs the appropriate Quartus executable. All operations are confined to the package's own directories and user configuration. There are no network requests, obfuscated code, or unexpected system modifications. The use of LD_PRELOAD to load the system libstdc++ is a common compatibility measure and not malicious. The script does not exfiltrate data or execute untrusted code from external sources. It is a routine packaging wrapper with no evidence of a supply-chain attack.
</details>
<evidence>
</evidence>
<summary>Standard packaging wrapper, no malicious behavior detected.</summary>
</security_assessment>

[8/14] Reviewing install-local.sh, quartus-wayland, quartus-wayland.desktop, questa-hidpi...
[9/14] Reviewing install-local.sh, quartus-wayland.desktop, questa-hidpi...
+ Reviewed quartus-wayland. Status: SAFE -- Standard packaging wrapper, no malicious behavior detected.
LLM auditresponse for quartus-wayland.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Linux desktop entry for launching Quartus Prime Lite with Wayland support. It defines application metadata and three launch actions: the main IDE, MegaWizard, and Platform Designer. All Exec lines reference local executables (`quartus-wayland`, `qmegawiz-wayland`, `qsys-edit-wayland`) which are expected to be provided by the package itself. No network requests, obfuscation, dangerous commands, or system modifications are present. The content is perfectly normal for a .desktop file and contains no malicious behavior.
</details>
<evidence></evidence>
<summary>Standard desktop entry file, no security issues.</summary>
</security_assessment>

[9/14] Reviewing install-local.sh, quartus-wayland.desktop, questa-hidpi, questa-hidpi.desktop...
[10/14] Reviewing install-local.sh, questa-hidpi, questa-hidpi.desktop...
+ Reviewed quartus-wayland.desktop. Status: SAFE -- Standard desktop entry file, no security issues.
LLM auditresponse for install-local.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a well-structured, self-contained installation script for the `quartus-wayland` package.  
It downloads only from official sources (JetBrains CDN, Maven Central) with pinned SHA‑256 checksums,  
extracts a Java runtime, copies Qt/Wayland libraries, and sets up desktop entries and simulator  
configuration.  
All file operations and system modifications are within the package&#39;s stated purpose: enabling  
Intel Quartus and Questa to run under Wayland with proper HiDPI support.  
No obfuscated code, suspicious network requests, or exfiltration of local data is present.  
The script uses standard shell practices (`set -euo pipefail`, parameter expansion) and Python  
here‑docs for desktop‑entry rewriting and simulator‑hook injection — both of which are  
routine packaging tasks that serve the application&#39;s functionality.  
There is no evidence of a supply‑chain attack or malicious intent.
</details>
<evidence>
</evidence>
<summary>
Legitimate local install script; no malicious behavior detected.
</summary>
</security_assessment>

[11/14] Reviewing questa-hidpi, questa-hidpi.desktop...
+ Reviewed install-local.sh. Status: SAFE -- Legitimate local install script; no malicious behavior detected.
[11/14] Reviewing questa-hidpi, questa-hidpi.desktop, questa-hidpi.tcl...
LLM auditresponse for questa-hidpi.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Linux desktop entry file that defines a shortcut for the "Questa FPGA (HiDPI)" application. It specifies the application type, name, comment, icon path, and the executable command "questa-hidpi". There is no suspicious code, network requests, obfuscation, or system modification. The icon path references a legitimate location under /opt/intelFPGA, which is typical for Intel FPGA tools installed on a system. No evidence of supply-chain attack or malicious intent.
</details>
<evidence></evidence>
<summary>Standard desktop entry file, no security concerns.</summary>
</security_assessment>

[12/14] Reviewing questa-hidpi, questa-hidpi.tcl...
+ Reviewed questa-hidpi.desktop. Status: SAFE -- Standard desktop entry file, no security concerns.
LLM auditresponse for questa-hidpi:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard launcher for the Questa simulator with HiDPI support via **gamescope** and the **niri** Wayland compositor. It sources an optional user config file, checks that the required simulator binary and gamescope are present, queries the compositor for the current display resolution and scale using `niri msg --json outputs`, and then launches the simulator inside a gamescope window that applies integer scaling. The Python code embedded for querying niri is straightforward—it uses `subprocess.check_output` to invoke niri and parses the JSON—and is not obfuscated. The script makes no outbound network requests, does not download or execute code from remote hosts, and performs no data exfiltration. All environment variables set (e.g., `LD_LIBRARY_PATH`, `QT_PLUGIN_PATH` unset, `QUESTA_HIDPI_SCALE`) serve the stated purpose of running the Intel Questa tool under a scaled Wayland environment. There is no evidence of injected malicious code; the operations are consistent with the package’s intended functionality.
</details>
<evidence></evidence>
<summary>Standard HiDPI launcher script, no malicious behavior found.</summary>
</security_assessment>

[13/14] Reviewing questa-hidpi.tcl...
+ Reviewed questa-hidpi. Status: SAFE -- Standard HiDPI launcher script, no malicious behavior found.
LLM auditresponse for questa-hidpi.tcl:
<security_assessment>
<decision>SAFE</decision>
<details>
The script provides HiDPI scaling support for the Questa application using Tk scaling, font configuration, and image zooming. It reads a scale factor from an environment variable and adjusts the DPI and font sizes. The image operations use Tk's built-in `-zoom` option to enlarge small bitmap assets. The script also sets up a trace on the `::image` Tcl command to automatically scale newly created images. All operations are confined to Tk GUI resources and no network requests, file writes, or system modifications are performed. There is no obfuscation or hidden code. The modifications to `PrefMain(user_hook)` and the trace are necessary for the intended HiDPI functionality.
</details>
<evidence></evidence>
<summary>Legitimate HiDPI scaling script; no security concerns.</summary>
</security_assessment>

[14/14] Reviewing ...
+ Reviewed questa-hidpi.tcl. Status: SAFE -- Legitimate HiDPI scaling script; no security concerns.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 47,168
  Completion Tokens: 9,980
  Total Tokens: 57,148
  Total Cost: $0.006042
  Execution Time: 59.45 seconds

Final Status: SAFE


No issues found.
