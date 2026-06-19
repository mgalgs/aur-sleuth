---
package: mousehop-git
pkgver: 0.14.2.r2.g8161f04
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 65e0c3f98e3e15c2f2b5d512e37cace17814cac6
prompt_tokens: 47121
completion_tokens: 7859
total_tokens: 54980
cost: 0.00565551
execution_time: 65.98
files_reviewed: 11
files_skipped: 0
date: 2026-06-19T07:37:13Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD for legitimate upstream project.
  - file: src/mousehop/firewall/mousehop.xml
    status: safe
    summary: Standard firewalld service definition, no security issues.
  - file: src/mousehop/mousehop-ipc/src/connect.rs
    status: safe
    summary: Standard IPC module for local daemon communication.
  - file: src/mousehop/mousehop/com.mousehop.Mousehop.desktop
    status: safe
    summary: Standard desktop entry file, no security issues.
  - file: src/mousehop/config.toml
    status: safe
    summary: Static configuration file, no executable content.
  - file: src/mousehop/packaging/aur-bin/PKGBUILD
    status: safe
    summary: Standard PKGBUILD for prebuilt binary; no security issues found.
  - file: src/mousehop/mousehop-gtk/build.rs
    status: safe
    summary: Standard Rust build script for GLib resources.
  - file: src/mousehop/mousehop/src/capture.rs
    status: safe
    summary: Normal input capture module; no malicious code detected.
  - file: src/mousehop/service/mousehop.service
    status: safe
    summary: Standard systemd service unit, no malicious content.
  - file: src/mousehop/input-capture/src/lib.rs
    status: safe
    summary: Standard input capture library, no malicious code.
  - file: src/mousehop/build-aux/com.mousehop.Mousehop.yml
    status: safe
    summary: Standard Flatpak build manifest, no malicious content.
---

Cloning https://aur.archlinux.org/mousehop-git.git to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-hw59sjvv...
Cloned repository to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-hw59sjvv
Analyzing mousehop-git AUR package (working in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-hw59sjvv) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard VCS package for `mousehop-git`. The `source` array fetches from the project's own GitHub repository via `git+https`. The `sha256sums` is `SKIP`, which is normal for VCS sources. The `pkgver()` function uses `git describe` and `sed` to generate a version string—no dangerous commands. There are no top-level command substitutions, no unexpected network requests, and no obfuscated code. The `prepare()`, `build()`, and `package()` functions are not executed during the requested commands (`makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo`), so any content there is out of scope for this gate. No malicious behavior is present.
</details>
<summary>Standard AUR git package, no dangerous top-level code.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- Standard AUR git package, no dangerous top-level code.[/]
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
The PKGBUILD is a standard, transparent build recipe for the `mousehop-git` package. It clones the upstream repository from its official GitHub source, uses `cargo fetch --locked` to pin dependencies, and builds with `cargo build --frozen`. All operations (git clone, cargo fetch, cargo build, install commands) are normal for a Rust VCS package. There are no suspicious network requests, obfuscated code, dangerous commands, or operations outside the package's scope. The `sha256sums` are correctly set to `SKIP` for a VCS source. No evidence of malware or supply-chain attack.
</details>
<summary>Standard AUR PKGBUILD for legitimate upstream project.</summary>
</security_assessment>

[1/1] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD for legitimate upstream project.
Reviewed all required files.
Deciding which files to review next...
Note: 165 files available for selection; offering the 50 highest-priority to the model. 76 lower-priority file(s) were not offered.
LLM response for file selection:
src/mousehop/mousehop-gtk/build.rs
src/mousehop/mousehop/com.mousehop.Mousehop.desktop
src/mousehop/service/mousehop.service
src/mousehop/packaging/aur-bin/PKGBUILD
src/mousehop/build-aux/com.mousehop.Mousehop.yml
src/mousehop/config.toml
src/mousehop/firewall/mousehop.xml
src/mousehop/input-capture/src/lib.rs
src/mousehop/mousehop-ipc/src/connect.rs
src/mousehop/mousehop/src/capture.rs
Decided to review 10 additional files: src/mousehop/mousehop-gtk/build.rs, src/mousehop/mousehop/com.mousehop.Mousehop.desktop, src/mousehop/service/mousehop.service, src/mousehop/packaging/aur-bin/PKGBUILD, src/mousehop/build-aux/com.mousehop.Mousehop.yml, src/mousehop/config.toml, src/mousehop/firewall/mousehop.xml, src/mousehop/input-capture/src/lib.rs, src/mousehop/mousehop-ipc/src/connect.rs, src/mousehop/mousehop/src/capture.rs
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/mousehop/mousehop/com.mousehop.Mousehop.desktop...
[0/10] Reviewing src/mousehop/mousehop/com.mousehop.Mousehop.desktop, src/mousehop/packaging/aur-bin/PKGBUILD...
[0/10] Reviewing src/mousehop/mousehop/com.mousehop.Mousehop.desktop, src/mousehop/packaging/aur-bin/PKGBUILD, src/mousehop/service/mousehop.service...
[0/10] Reviewing src/mousehop/mousehop/com.mousehop.Mousehop.desktop, src/mousehop/packaging/aur-bin/PKGBUILD, src/mousehop/service/mousehop.service, src/mousehop/build-aux/com.mousehop.Mousehop.yml...
[0/10] Reviewing src/mousehop/mousehop/com.mousehop.Mousehop.desktop, src/mousehop/packaging/aur-bin/PKGBUILD, src/mousehop/service/mousehop.service, src/mousehop/build-aux/com.mousehop.Mousehop.yml, src/mousehop/config.toml...
[0/10] Reviewing src/mousehop/mousehop/com.mousehop.Mousehop.desktop, src/mousehop/packaging/aur-bin/PKGBUILD, src/mousehop/service/mousehop.service, src/mousehop/build-aux/com.mousehop.Mousehop.yml, src/mousehop/config.toml, src/mousehop/firewall/mousehop.xml...
[0/10] Reviewing src/mousehop/mousehop/com.mousehop.Mousehop.desktop, src/mousehop/packaging/aur-bin/PKGBUILD, src/mousehop/service/mousehop.service, src/mousehop/build-aux/com.mousehop.Mousehop.yml, src/mousehop/config.toml, src/mousehop/firewall/mousehop.xml, src/mousehop/input-capture/src/lib.rs...
[0/10] Reviewing src/mousehop/mousehop/com.mousehop.Mousehop.desktop, src/mousehop/packaging/aur-bin/PKGBUILD, src/mousehop/service/mousehop.service, src/mousehop/build-aux/com.mousehop.Mousehop.yml, src/mousehop/config.toml, src/mousehop/firewall/mousehop.xml, src/mousehop/input-capture/src/lib.rs, src/mousehop/mousehop-gtk/build.rs...
[0/10] Reviewing src/mousehop/mousehop/com.mousehop.Mousehop.desktop, src/mousehop/packaging/aur-bin/PKGBUILD, src/mousehop/service/mousehop.service, src/mousehop/build-aux/com.mousehop.Mousehop.yml, src/mousehop/config.toml, src/mousehop/firewall/mousehop.xml, src/mousehop/input-capture/src/lib.rs, src/mousehop/mousehop-gtk/build.rs, src/mousehop/mousehop-ipc/src/connect.rs...
[0/10] Reviewing src/mousehop/mousehop/com.mousehop.Mousehop.desktop, src/mousehop/packaging/aur-bin/PKGBUILD, src/mousehop/service/mousehop.service, src/mousehop/build-aux/com.mousehop.Mousehop.yml, src/mousehop/config.toml, src/mousehop/firewall/mousehop.xml, src/mousehop/input-capture/src/lib.rs, src/mousehop/mousehop-gtk/build.rs, src/mousehop/mousehop-ipc/src/connect.rs, src/mousehop/mousehop/src/capture.rs...
LLM auditresponse for mousehop.xml:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard firewalld service definition file. It defines a UDP port (4252) for the mousehop application, which provides mouse and keyboard sharing over a LAN. There is no executable code, no network requests, no obfuscation, and no suspicious operations. The file is purely declarative XML for firewall configuration.
</details>
<summary>Standard firewalld service definition, no security issues.</summary>
</security_assessment>

[1/10] Reviewing src/mousehop/mousehop/com.mousehop.Mousehop.desktop, src/mousehop/packaging/aur-bin/PKGBUILD, src/mousehop/service/mousehop.service, src/mousehop/build-aux/com.mousehop.Mousehop.yml, src/mousehop/config.toml, src/mousehop/input-capture/src/lib.rs, src/mousehop/mousehop-gtk/build.rs, src/mousehop/mousehop-ipc/src/connect.rs, src/mousehop/mousehop/src/capture.rs...
+ Reviewed src/mousehop/firewall/mousehop.xml. Status: SAFE -- Standard firewalld service definition, no security issues.
LLM auditresponse for connect.rs:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a Rust module for establishing and handling IPC (Inter-Process Communication) between the mousehop frontend and a local daemon. On Unix, it connects to a Unix domain socket (path obtained from `crate::default_socket_path()`). On Windows, it connects to `127.0.0.1:5252` — a localhost TCP address. There is no evidence of malicious behavior: no remote network connections to external hosts, no obfuscated code, no dangerous system commands (eval, base64, curl, wget), no exfiltration of local data, and no unexpected file operations. The exponential backoff for reconnection is standard practice. The code simply reads and writes JSON messages over the socket. This is expected IPC functionality for the application.
</details>
<summary>
Standard IPC module for local daemon communication.</summary>
</security_assessment>

[2/10] Reviewing src/mousehop/mousehop/com.mousehop.Mousehop.desktop, src/mousehop/packaging/aur-bin/PKGBUILD, src/mousehop/service/mousehop.service, src/mousehop/build-aux/com.mousehop.Mousehop.yml, src/mousehop/config.toml, src/mousehop/input-capture/src/lib.rs, src/mousehop/mousehop-gtk/build.rs, src/mousehop/mousehop/src/capture.rs...
+ Reviewed src/mousehop/mousehop-ipc/src/connect.rs. Status: SAFE -- Standard IPC module for local daemon communication.
LLM auditresponse for com.mousehop.Mousehop.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard .desktop file for the Mousehop application, which appears to be a mouse and keyboard sharing utility over LAN. The file contains no executable code, no network requests, no obfuscation, and no system modifications. It only defines metadata such as application name, icon, comment, and the command to run (`mousehop`). The use of `&amp;` in comments is proper XML escaping and reflects the same encoding found in standard desktop entries. There is nothing suspicious or malicious in this file.
</details>
<summary>Standard desktop entry file, no security issues.</summary>
</security_assessment>

[3/10] Reviewing src/mousehop/packaging/aur-bin/PKGBUILD, src/mousehop/service/mousehop.service, src/mousehop/build-aux/com.mousehop.Mousehop.yml, src/mousehop/config.toml, src/mousehop/input-capture/src/lib.rs, src/mousehop/mousehop-gtk/build.rs, src/mousehop/mousehop/src/capture.rs...
+ Reviewed src/mousehop/mousehop/com.mousehop.Mousehop.desktop. Status: SAFE -- Standard desktop entry file, no security issues.
LLM auditresponse for config.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a static configuration file (TOML format) for the `mousehop` application. It contains only data: key bindings, a port, an authorized TLS certificate fingerprint, and client definitions with positions, hostnames, and IP addresses. There are no commands, scripts, encoded payloads, network requests, or file operations. It does not attempt to exfiltrate data, download or execute code, or perform any system modifications. There is no evidence of malicious behavior.
</details>
<summary>Static configuration file, no executable content.</summary>
</security_assessment>

[4/10] Reviewing src/mousehop/packaging/aur-bin/PKGBUILD, src/mousehop/service/mousehop.service, src/mousehop/build-aux/com.mousehop.Mousehop.yml, src/mousehop/input-capture/src/lib.rs, src/mousehop/mousehop-gtk/build.rs, src/mousehop/mousehop/src/capture.rs...
+ Reviewed src/mousehop/config.toml. Status: SAFE -- Static configuration file, no executable content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a prebuilt binary package. All source URLs point to the official GitHub release page over HTTPS. The `package()` function only installs the binary, desktop file, icon, and license files using `install` with appropriate permissions and destinations — no unexpected or dangerous commands. The placeholder checksums (all zeros) are noted as placeholders to be replaced by CI via `updpkgsums`, which is a valid workflow. There is no evidence of exfiltration, backdoors, obfuscated code, or any behavior outside the scope of legitimate packaging.
</details>
<summary>
Standard PKGBUILD for prebuilt binary; no security issues found.</summary>
</security_assessment>

[5/10] Reviewing src/mousehop/service/mousehop.service, src/mousehop/build-aux/com.mousehop.Mousehop.yml, src/mousehop/input-capture/src/lib.rs, src/mousehop/mousehop-gtk/build.rs, src/mousehop/mousehop/src/capture.rs...
+ Reviewed src/mousehop/packaging/aur-bin/PKGBUILD. Status: SAFE -- Standard PKGBUILD for prebuilt binary; no security issues found.
LLM auditresponse for build.rs:
<security_assessment>
<decision>SAFE</decision>
<details>
The build.rs file is a standard Rust build script that compiles GLib resources using the `glib_build_tools` crate. The code calls `glib_build_tools::compile_resources` with a resource directory, an XML resource file path, and an output file name. This is a routine build step for GTK/GLib applications. There are no network requests, file exfiltration, code execution from external sources, obfuscation, or any other suspicious activity. The file performs only the expected upstream build operation and poses no security risk.
</details>
<summary>Standard Rust build script for GLib resources.</summary>
</security_assessment>

[6/10] Reviewing src/mousehop/service/mousehop.service, src/mousehop/build-aux/com.mousehop.Mousehop.yml, src/mousehop/input-capture/src/lib.rs, src/mousehop/mousehop/src/capture.rs...
+ Reviewed src/mousehop/mousehop-gtk/build.rs. Status: SAFE -- Standard Rust build script for GLib resources.
LLM auditresponse for capture.rs:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a Rust source module (`capture.rs`) from the `mousehop-git` upstream repository. It implements input capture management for a mouse/keyboard sharing application (similar to Barrier/Synergy). The code uses standard Rust patterns and libraries (`tokio`, `futures`, `input_capture`, `mousehop_proto`). Network communication is performed exclusively through the application’s own `MousehopConnection` abstraction, which is expected behavior for the stated purpose. There are no system command executions, no obfuscated or encoded payloads, no file exfiltration, and no downloads from external sources. The only operations are managing capture sessions, sending keyboard and mouse events over the application’s protocol, and handling connection state – all of which are normal for this type of application. The code is consistent with the package’s intended functionality and does not contain any injected malicious behavior.
</details>
<summary>
Normal input capture module; no malicious code detected.</summary>
</security_assessment>

[7/10] Reviewing src/mousehop/service/mousehop.service, src/mousehop/build-aux/com.mousehop.Mousehop.yml, src/mousehop/input-capture/src/lib.rs...
+ Reviewed src/mousehop/mousehop/src/capture.rs. Status: SAFE -- Normal input capture module; no malicious code detected.
LLM auditresponse for mousehop.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit file for the `mousehop-git` AUR package. It defines a service that runs `/usr/bin/mousehop daemon` as its main process with typical systemd dependencies (`graphical-session.target`) and restart behavior. There is no obfuscated code, no suspicious network requests, no dangerous command execution, no base64/hex encoding, and no indication of any supply-chain attack or malicious behavior. The file is consistent with a legitimate upstream application service definition.
</details>
<summary>Standard systemd service unit, no malicious content.</summary>
</security_assessment>

[8/10] Reviewing src/mousehop/build-aux/com.mousehop.Mousehop.yml, src/mousehop/input-capture/src/lib.rs...
+ Reviewed src/mousehop/service/mousehop.service. Status: SAFE -- Standard systemd service unit, no malicious content.
LLM auditresponse for lib.rs:
<security_assessment>
<decision>SAFE</decision>
<details>
This Rust source file defines a platform-agnostic input capture abstraction for a mouse/keyboard sharing tool (mousehop). The code includes backends for Linux (libei, layer_shell, X11), Windows, macOS, and a dummy fallback. All operations are confined to local input event processing, cursor tracking, and wall-press detection for auto-release logic. There are no network requests, no obfuscation, no encoded payloads, no attempts to read sensitive files or environment variables, and no execution of downloaded code. The code follows standard Rust packaging practices with conditional compilation and async streams. The tracker's key logging and cursor data handling are part of the intended application functionality (remote input forwarding), not hidden exfiltration. No supply-chain attack indicators are present.
</details>
<summary>Standard input capture library, no malicious code.</summary>
</security_assessment>

[9/10] Reviewing src/mousehop/build-aux/com.mousehop.Mousehop.yml...
+ Reviewed src/mousehop/input-capture/src/lib.rs. Status: SAFE -- Standard input capture library, no malicious code.
LLM auditresponse for com.mousehop.Mousehop.yml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `com.mousehop.Mousehop.yml` is a Flatpak manifest describing how to build and package the `mousehop` application.  
All operations are standard for a Rust/Cargo-based project: fetching dependencies via `cargo fetch` (requiring network access during build), compiling with `cargo build`, and installing binaries, icons, desktop files, and metainfo into the Flatpak sandbox.  
The only network access is for legitimate dependency resolution (Cargo registry).  Finish-args grant network access to the application for its intended function (software KVM relaying UDP traffic).  
No obfuscated code, unexpected downloads, data exfiltration, or system modifications outside the package scope are present.  
The `sources` entry is a local directory (`..`), indicating the source tree is provided externally — a common pattern for Flatpak manifests integrated into upstream repos.  
The manifest is benign and consistent with ordinary packaging practices.
</details>
<summary>Standard Flatpak build manifest, no malicious content.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/mousehop/build-aux/com.mousehop.Mousehop.yml. Status: SAFE -- Standard Flatpak build manifest, no malicious content.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 47,121
  Completion Tokens: 7,859
  Total Tokens: 54,980
  Total Cost: $0.005656
  Execution Time: 65.98 seconds
Full audit report can be found in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-mousehop-git.txt
Final Status: SAFE


No issues found.
