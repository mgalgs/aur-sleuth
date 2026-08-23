---
package: whylian
pkgver: 1.0.4
pkgrel: 4
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 65e0c3f98e3e15c2f2b5d512e37cace17814cac6
prompt_tokens: 54164
completion_tokens: 8958
total_tokens: 63122
cost: 0.00648720
execution_time: 68.27
files_reviewed: 12
files_skipped: 0
date: 2026-06-19T07:32:19Z
file_verdicts:
  - file: whylian.install
    status: safe
    summary: Standard install script, no malicious operations.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD for a Rust application; no malicious code detected.
  - file: src/whylian/packaging/desktop/com.sgtaziz.lianlilinux.desktop
    status: safe
    summary: Standard desktop entry file, no security issues.
  - file: src/whylian/docker/build.sh
    status: safe
    summary: Standard Docker build script, no security issues.
  - file: src/whylian/packaging/systemd/lianli-daemon.service
    status: safe
    summary: Standard systemd service unit, no security issues.
  - file: src/whylian/crates/lianli-daemon/src/openrgb_server.rs
    status: safe
    summary: Legitimate OpenRGB server code; no malicious behavior.
  - file: src/whylian/install.sh
    status: safe
    summary: Simple wrapper script, no security issues.
  - file: src/whylian/crates/lianli-devices/src/crypto.rs
    status: safe
    summary: No evidence of malicious code; standard device communication logic.
  - file: src/whylian/crates/lianli-daemon/src/service/media.rs
    status: safe
    summary: Routine hardware LCD management code, no malicious behavior.
  - file: src/whylian/crates/lianli-daemon/src/ipc_server.rs
    status: safe
    summary: Standard IPC server code, no malicious behavior found.
  - file: src/whylian/packaging/archlinux/lianli-linux.install
    status: safe
    summary: Standard AUR install script with no security issues.
  - file: src/whylian/crates/lianli-devices/build.rs
    status: safe
    summary: Legitimate build script; no malice detected.
---

Cloning https://aur.archlinux.org/whylian.git to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-u0a7xo1g...
Cloned repository to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-u0a7xo1g
Analyzing whylian AUR package (working in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-u0a7xo1g) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD defines a helper function `_use_distro_rust()` at global scope, but it is never called from the global scope — it is only invoked inside `prepare()`, `build()`, and `package()`, which are not executed during `makepkg --nobuild --nodeps --noprepare`. The `source` array fetches the upstream Git repository from the project’s own GitHub URL with a pinned tag, which is standard. No `pkgver()` function exists, and no dangerous top-level commands (`eval`, `base64`, `curl`, `wget`, data exfiltration, etc.) are present. The only actions during the requested commands are sourcing the PKGBUILD (which defines safe variables and functions) and `git clone` from the expected upstream — both normal and safe.
</details>
<summary>
No malicious code in global scope; sourcing and fetching are safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- No malicious code in global scope; sourcing and fetching are safe.[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, whylian.install...
LLM auditresponse for whylian.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Arch Linux `.install` script for the `whylian` package. It performs routine post‑install/upgrade/remove operations:

- Cleans up leftover files from a prior manual installation.
- Reloads udev rules and triggers device events.
- Enables a systemd user service globally and restarts it for all currently logged‑in users.
- Disables legacy service instances during upgrade.
- Prints a hardware‑risk disclaimer (text only).

All commands are legitimate system utilities (`rm`, `systemctl`, `udevadm`, `runuser`, `id`). There is **no** obfuscated code, no network requests (no `curl`, `wget`, `git pull`), no exfiltration of sensitive data, and no execution of untrusted binaries. The iteration over `/run/user/*` and use of `runuser` is a normal pattern for managing per‑user systemd services after install. Nothing in this file deviates from standard AUR packaging practices or exhibits supply‑chain attack indicators.
</details>
<summary>Standard install script, no malicious operations.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed whylian.install. Status: SAFE -- Standard install script, no malicious operations.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard AUR build recipe for the `whylian` package (Lian Li device control). It clones a tagged release (`v1.0.4`) from the project&#39;s own GitHub repository (`https://github.com/byrdltd/whyLIAN`).  
- The `_use_distro_rust()` function forces the use of system Rust instead of rustup, which is a packaging hygiene choice, not malicious.  
- `git submodule update --init --recursive` is normal for projects with submodules.  
- Build commands (`cargo build --frozen --release`) and install commands (`install -Dm755`, `cp -a`) are standard.  
- The package installs udev rules, a systemd user service, desktop files, and licensing — all expected for a hardware control application.  

No obfuscated code, unexpected network requests, data exfiltration, backdoors, or encoded payloads are present. The file follows normal AUR packaging practices and contains no suspicious deviations.
</details>
<summary>Standard AUR PKGBUILD for a Rust application; no malicious code detected.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD for a Rust application; no malicious code detected.
Reviewed all required files.
Deciding which files to review next...
Note: 254 files available for selection; offering the 50 highest-priority to the model. 143 lower-priority file(s) were not offered.
LLM response for file selection:
src/whylian/crates/lianli-devices/build.rs
src/whylian/install.sh
src/whylian/packaging/desktop/com.sgtaziz.lianlilinux.desktop
src/whylian/packaging/systemd/lianli-daemon.service
src/whylian/packaging/archlinux/lianli-linux.install
src/whylian/docker/build.sh
src/whylian/crates/lianli-daemon/src/openrgb_server.rs
src/whylian/crates/lianli-daemon/src/ipc_server.rs
src/whylian/crates/lianli-devices/src/crypto.rs
src/whylian/crates/lianli-daemon/src/service/media.rs
Decided to review 10 additional files: src/whylian/crates/lianli-devices/build.rs, src/whylian/install.sh, src/whylian/packaging/desktop/com.sgtaziz.lianlilinux.desktop, src/whylian/packaging/systemd/lianli-daemon.service, src/whylian/packaging/archlinux/lianli-linux.install, src/whylian/docker/build.sh, src/whylian/crates/lianli-daemon/src/openrgb_server.rs, src/whylian/crates/lianli-daemon/src/ipc_server.rs, src/whylian/crates/lianli-devices/src/crypto.rs, src/whylian/crates/lianli-daemon/src/service/media.rs
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/whylian/crates/lianli-devices/build.rs...
[0/10] Reviewing src/whylian/crates/lianli-devices/build.rs, src/whylian/install.sh...
[0/10] Reviewing src/whylian/crates/lianli-devices/build.rs, src/whylian/install.sh, src/whylian/packaging/desktop/com.sgtaziz.lianlilinux.desktop...
[0/10] Reviewing src/whylian/crates/lianli-devices/build.rs, src/whylian/install.sh, src/whylian/packaging/desktop/com.sgtaziz.lianlilinux.desktop, src/whylian/packaging/systemd/lianli-daemon.service...
[0/10] Reviewing src/whylian/crates/lianli-devices/build.rs, src/whylian/install.sh, src/whylian/packaging/desktop/com.sgtaziz.lianlilinux.desktop, src/whylian/packaging/systemd/lianli-daemon.service, src/whylian/packaging/archlinux/lianli-linux.install...
[0/10] Reviewing src/whylian/crates/lianli-devices/build.rs, src/whylian/install.sh, src/whylian/packaging/desktop/com.sgtaziz.lianlilinux.desktop, src/whylian/packaging/systemd/lianli-daemon.service, src/whylian/packaging/archlinux/lianli-linux.install, src/whylian/docker/build.sh...
[0/10] Reviewing src/whylian/crates/lianli-devices/build.rs, src/whylian/install.sh, src/whylian/packaging/desktop/com.sgtaziz.lianlilinux.desktop, src/whylian/packaging/systemd/lianli-daemon.service, src/whylian/packaging/archlinux/lianli-linux.install, src/whylian/docker/build.sh, src/whylian/crates/lianli-daemon/src/ipc_server.rs...
[0/10] Reviewing src/whylian/crates/lianli-devices/build.rs, src/whylian/install.sh, src/whylian/packaging/desktop/com.sgtaziz.lianlilinux.desktop, src/whylian/packaging/systemd/lianli-daemon.service, src/whylian/packaging/archlinux/lianli-linux.install, src/whylian/docker/build.sh, src/whylian/crates/lianli-daemon/src/ipc_server.rs, src/whylian/crates/lianli-daemon/src/openrgb_server.rs...
[0/10] Reviewing src/whylian/crates/lianli-devices/build.rs, src/whylian/install.sh, src/whylian/packaging/desktop/com.sgtaziz.lianlilinux.desktop, src/whylian/packaging/systemd/lianli-daemon.service, src/whylian/packaging/archlinux/lianli-linux.install, src/whylian/docker/build.sh, src/whylian/crates/lianli-daemon/src/ipc_server.rs, src/whylian/crates/lianli-daemon/src/openrgb_server.rs, src/whylian/crates/lianli-devices/src/crypto.rs...
[0/10] Reviewing src/whylian/crates/lianli-devices/build.rs, src/whylian/install.sh, src/whylian/packaging/desktop/com.sgtaziz.lianlilinux.desktop, src/whylian/packaging/systemd/lianli-daemon.service, src/whylian/packaging/archlinux/lianli-linux.install, src/whylian/docker/build.sh, src/whylian/crates/lianli-daemon/src/ipc_server.rs, src/whylian/crates/lianli-daemon/src/openrgb_server.rs, src/whylian/crates/lianli-devices/src/crypto.rs, src/whylian/crates/lianli-daemon/src/service/media.rs...
LLM auditresponse for com.sgtaziz.lianlilinux.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Linux desktop entry file. It contains no executable code, no network requests, no obfuscation, and no dangerous operations. It simply provides metadata for the application "Lian Li Linux", specifying the command to run (`lianli-gui`), icon, and categories. There is no evidence of supply-chain attack or malicious behavior.
</details>
<summary>Standard desktop entry file, no security issues.</summary>
</security_assessment>

[1/10] Reviewing src/whylian/crates/lianli-devices/build.rs, src/whylian/install.sh, src/whylian/packaging/systemd/lianli-daemon.service, src/whylian/packaging/archlinux/lianli-linux.install, src/whylian/docker/build.sh, src/whylian/crates/lianli-daemon/src/ipc_server.rs, src/whylian/crates/lianli-daemon/src/openrgb_server.rs, src/whylian/crates/lianli-devices/src/crypto.rs, src/whylian/crates/lianli-daemon/src/service/media.rs...
+ Reviewed src/whylian/packaging/desktop/com.sgtaziz.lianlilinux.desktop. Status: SAFE -- Standard desktop entry file, no security issues.
LLM auditresponse for build.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a standard Docker-based build helper for a Rust project. It builds a Docker image from a local Dockerfile (`docker/build.Dockerfile`) and runs a container with volume mounts for caching and output. There are no network requests to unexpected hosts, no obfuscated code, no dangerous commands like `eval`, `curl`, or `wget`, and no file operations outside the project directory. The script only uses `docker build` and `docker run` with the project's own Dockerfile and mounts. This is a normal packaging/build workflow and does not exhibit any malicious behavior.
</details>
<summary>Standard Docker build script, no security issues.</summary>
</security_assessment>

[2/10] Reviewing src/whylian/crates/lianli-devices/build.rs, src/whylian/install.sh, src/whylian/packaging/systemd/lianli-daemon.service, src/whylian/packaging/archlinux/lianli-linux.install, src/whylian/crates/lianli-daemon/src/ipc_server.rs, src/whylian/crates/lianli-daemon/src/openrgb_server.rs, src/whylian/crates/lianli-devices/src/crypto.rs, src/whylian/crates/lianli-daemon/src/service/media.rs...
+ Reviewed src/whylian/docker/build.sh. Status: SAFE -- Standard Docker build script, no security issues.
LLM auditresponse for lianli-daemon.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service file for a daemon called `lianli-daemon`. It defines a simple service that runs the executable `/usr/bin/lianli-daemon`, restarts on failure with a 3-second delay, and depends on network.target. There is no suspicious or malicious content: no encoded commands, no network requests beyond declaring standard service dependencies, no file operations, and no deviation from normal packaging practices for a device daemon. The file is entirely benign.
</details>
<summary>Standard systemd service unit, no security issues.</summary>
</security_assessment>

[3/10] Reviewing src/whylian/crates/lianli-devices/build.rs, src/whylian/install.sh, src/whylian/packaging/archlinux/lianli-linux.install, src/whylian/crates/lianli-daemon/src/ipc_server.rs, src/whylian/crates/lianli-daemon/src/openrgb_server.rs, src/whylian/crates/lianli-devices/src/crypto.rs, src/whylian/crates/lianli-daemon/src/service/media.rs...
+ Reviewed src/whylian/packaging/systemd/lianli-daemon.service. Status: SAFE -- Standard systemd service unit, no security issues.
LLM auditresponse for openrgb_server.rs:
<security_assessment>
<decision>SAFE</decision>
<details>
This file implements the OpenRGB SDK server, which is part of the whylian application's upstream source code. It opens a TCP listener (default port 6742) to allow OpenRGB/SignalRGB clients to control Lian Li RGB devices.  

No malicious or suspicious behavior was found. The code:
- Binds to `0.0.0.0` (expected for a network server) with no attempt to bypass security.
- Parses network packets safely, with bounds checks and error handling.
- Does not use `eval`, `curl`, `wget`, base64, obfuscation, or any system command execution.
- Does not exfiltrate data, download code, or modify system files outside its purpose.
- The source is a standard Rust file within the package; it is consistent with the application's stated functionality of exposing RGB hardware to OpenRGB.

No supply-chain attack indicators are present.
</details>
<summary>Legitimate OpenRGB server code; no malicious behavior.</summary>
</security_assessment>

[4/10] Reviewing src/whylian/crates/lianli-devices/build.rs, src/whylian/install.sh, src/whylian/packaging/archlinux/lianli-linux.install, src/whylian/crates/lianli-daemon/src/ipc_server.rs, src/whylian/crates/lianli-devices/src/crypto.rs, src/whylian/crates/lianli-daemon/src/service/media.rs...
+ Reviewed src/whylian/crates/lianli-daemon/src/openrgb_server.rs. Status: SAFE -- Legitimate OpenRGB server code; no malicious behavior.
LLM auditresponse for install.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `install.sh` is a simple wrapper script that only prints informational messages and then executes `$ROOT/scripts/install-local.sh` with the provided arguments. There is no obfuscated code, no network operations, no system modifications, and no dangerous commands like `eval`, `base64`, `curl`, or `wget`. This is a standard packaging practice for an AUR package that uses a local installation script.
</details>
<summary>Simple wrapper script, no security issues.</summary>
</security_assessment>

[5/10] Reviewing src/whylian/crates/lianli-devices/build.rs, src/whylian/packaging/archlinux/lianli-linux.install, src/whylian/crates/lianli-daemon/src/ipc_server.rs, src/whylian/crates/lianli-devices/src/crypto.rs, src/whylian/crates/lianli-daemon/src/service/media.rs...
+ Reviewed src/whylian/install.sh. Status: SAFE -- Simple wrapper script, no security issues.
LLM auditresponse for crypto.rs:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `crypto.rs` implements DES-CBC encryption for building command headers to communicate with VID=0x1CBE LCD devices (such as SLV3, TLV2, HydroShift II). All operations are limited to generating encrypted packet buffers using a hardcoded key (`slv3tuzx`), which is typical for embedded device communication. There are no network requests, file system modifications, obfuscated code, or any behavior that would indicate a supply-chain attack. The code solely serves its stated purpose of constructing command packets for hardware control.
</details>
<summary>No evidence of malicious code; standard device communication logic.</summary>
</security_assessment>

[6/10] Reviewing src/whylian/crates/lianli-devices/build.rs, src/whylian/packaging/archlinux/lianli-linux.install, src/whylian/crates/lianli-daemon/src/ipc_server.rs, src/whylian/crates/lianli-daemon/src/service/media.rs...
+ Reviewed src/whylian/crates/lianli-devices/src/crypto.rs. Status: SAFE -- No evidence of malicious code; standard device communication logic.
LLM auditresponse for media.rs:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `media.rs` is part of the whylian package (a hardware management daemon for Lian Li devices). It manages preparation of media assets (images, videos, GIFs, sensors, custom templates) for LCD displays and handles connecting to USB/HID devices. All operations are confined to the application's stated purpose: enumerating USB devices, opening HID or bulk endpoints, sending frames, and handling device hotplug. No network requests, obfuscated code, or unusual file/system operations are present. The external library calls (`lianli_*`) are expected dependencies for this hardware vendor's tools. There is no evidence of data exfiltration, code injection, or backdoor behavior. The code is standard Rust with safe patterns for device management.
</details>
<summary>Routine hardware LCD management code, no malicious behavior.</summary>
</security_assessment>

[7/10] Reviewing src/whylian/crates/lianli-devices/build.rs, src/whylian/packaging/archlinux/lianli-linux.install, src/whylian/crates/lianli-daemon/src/ipc_server.rs...
+ Reviewed src/whylian/crates/lianli-daemon/src/service/media.rs. Status: SAFE -- Routine hardware LCD management code, no malicious behavior.
LLM auditresponse for ipc_server.rs:
<security_assessment>
<decision>SAFE</decision>
<details>
This file implements a Unix domain socket IPC server for a hardware control daemon. It processes JSON requests from a GUI to read/write configuration, control RGB lighting and fans, switch display modes, and render template previews. All operations are consistent with the application's stated purpose: modifying config files under `XDG_RUNTIME_DIR` or user-provided paths, sending events to the daemon's main loop, and interacting with hardware via the `RgbController`. There is no obfuscated code, no network requests to external hosts, no execution of downloaded content, and no exfiltration of system data. The world-writable socket permission (`0o666`) is a standard trade-off for non-root GUI access but is not malicious in itself. The base64 encoding is used solely for returning rendered JPEG previews to the GUI. No supply-chain attack indicators are present.
</details>
<summary>Standard IPC server code, no malicious behavior found.</summary>
</security_assessment>

[8/10] Reviewing src/whylian/crates/lianli-devices/build.rs, src/whylian/packaging/archlinux/lianli-linux.install...
+ Reviewed src/whylian/crates/lianli-daemon/src/ipc_server.rs. Status: SAFE -- Standard IPC server code, no malicious behavior found.
LLM auditresponse for lianli-linux.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.install` script used by Arch Linux packages to perform post-install/post-upgrade/post-remove actions. It performs expected maintenance tasks: reloading udev rules, globally enabling a systemd user service (`lianli-daemon.service`), and restarting that service for all currently active users. The iteration over `/run/user/*` directories to restart the user service for every logged-in user is a common and necessary pattern for user services—it does not access or exfiltrate any data. All commands (`systemctl`, `udevadm`, `runuser`, `env`) are used in their intended, non-malicious functional context. No obfuscation, no unexpected network requests, no execution of untrusted code, and no manipulation of files outside the package's own scope.
</details>
<summary>Standard AUR install script with no security issues.</summary>
</security_assessment>

[9/10] Reviewing src/whylian/crates/lianli-devices/build.rs...
+ Reviewed src/whylian/packaging/archlinux/lianli-linux.install. Status: SAFE -- Standard AUR install script with no security issues.
LLM auditresponse for build.rs:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Rust `build.rs` script that compiles a vendored C++ library (tinyuz) for wireless RGB compression. It uses the `cc::Build` crate to compile C++ source files from within the `../../vendor` directory, sets compiler flags, and specifies include paths. There are no network requests, no downloads of external code, no obfuscated or encoded commands, no execution of untrusted downloaded content, and no file operations outside of the normal build process. The behavior is entirely consistent with legitimate package building. No evidence of supply chain attack or malicious code injection is present.
</details>
<summary>Legitimate build script; no malice detected.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/whylian/crates/lianli-devices/build.rs. Status: SAFE -- Legitimate build script; no malice detected.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 54,164
  Completion Tokens: 8,958
  Total Tokens: 63,122
  Total Cost: $0.006487
  Execution Time: 68.27 seconds
Full audit report can be found in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-whylian.txt
Final Status: SAFE


No issues found.
