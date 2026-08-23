---
package: whylian-git
pkgver: 1.0.4.r1.g8c467e9
pkgrel: 6
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 65e0c3f98e3e15c2f2b5d512e37cace17814cac6
prompt_tokens: 52411
completion_tokens: 10214
total_tokens: 62625
cost: 0.00655551
execution_time: 124.44
files_reviewed: 12
files_skipped: 0
date: 2026-06-19T07:33:15Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Clean, standard Rust AUR PKGBUILD with no malicious indicators.
  - file: whylian.install
    status: safe
    summary: "Standard install script: no malicious behavior detected."
  - file: src/whylian/docker/build.sh
    status: safe
    summary: Standard Docker build helper script, no security issues.
  - file: src/whylian/crates/lianli-devices/build.rs
    status: safe
    summary: Standard Rust build script for vendored C++ library.
  - file: src/whylian/packaging/systemd/lianli-daemon.service
    status: safe
    summary: Standard systemd service file, no security issues.
  - file: src/whylian/install.sh
    status: safe
    summary: No malicious content; safe wrapper script.
  - file: src/whylian/packaging/desktop/com.sgtaziz.lianlilinux.desktop
    status: safe
    summary: Standard .desktop file; no malicious content.
  - file: src/whylian/crates/lianli-daemon/src/openrgb_server.rs
    status: safe
    summary: Normal OpenRGB server implementation; no malicious code.
  - file: src/whylian/crates/lianli-devices/src/crypto.rs
    status: safe
    summary: Standard device protocol code; no malicious indicators.
  - file: src/whylian/packaging/archlinux/lianli-linux.install
    status: safe
    summary: A standard install script with no malicious indicators.
  - file: src/whylian/packaging/PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no malicious indicators.
  - file: src/whylian/crates/lianli-daemon/src/ipc_server.rs
    status: safe
    summary: Standard IPC server code; no evidence of malicious behavior.
---

Cloning https://aur.archlinux.org/whylian-git.git to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-81w35t82...
Cloned repository to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-81w35t82
Analyzing whylian-git AUR package (working in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-81w35t82) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The top-level scope and `pkgver()` function contain only standard variable assignments, array definitions, and benign git metadata commands (`git describe`, `git rev-list`, `git rev-parse`). No code in these scopes performs network requests to untrusted hosts, downloads payloads, executes decoded/obfuscated commands, or exfiltrates data. The `source` array points to the package's own upstream GitHub repository over `git+https`, which is expected for a VCS package. `sha256sums` set to `SKIP` is standard for git sources. The `prepare()`, `build()`, and `package()` functions are not executed during the `--nobuild --nodeps --noprepare` or `--printsrcinfo` commands, so any code in them is out of scope for this gate. Running the two specified commands is safe.
</details>
<summary>
No malicious code executes during source fetch or pkgver.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- No malicious code executes during source fetch or pkgver.[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, whylian.install...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a Rust-based git package. The `source` fetches the upstream repository via git, which is expected. The `sha256sums` are set to `SKIP`, which is normal for VCS sources. The build uses `cargo build --frozen` with a locked fetch, ensuring reproducibility. The `package()` function installs only built binaries, configuration files, icons, desktop entry, and documentation from the project itself. There are no suspicious network requests (only the upstream git repo and `cargo fetch` for dependencies), no obfuscated code, no dangerous commands like `curl`, `eval`, `base64`, or unexpected file operations. The helper function `_use_distro_rust` renames `rust-toolchain.toml` to force system Rust, which is a common practice for reproducibility and not malicious. The referenced `.install` file is not provided but is a standard post-install script. No evidence of supply-chain attack or malicious intent is present.
</details>
<summary>Clean, standard Rust AUR PKGBUILD with no malicious indicators.</summary>
</security_assessment>

[1/2] Reviewing whylian.install...
+ Reviewed PKGBUILD. Status: SAFE -- Clean, standard Rust AUR PKGBUILD with no malicious indicators.
LLM auditresponse for whylian.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This install script performs standard Arch Linux packaging operations for a package that provides a systemd user service (`lianli-daemon.service`) and udev rules.  
- `pre_install()` removes a leftover template directory to prevent file conflicts — a routine cleanup.  
- `post_install()`/`post_upgrade()` reload udev rules, enable the user service globally, and restart it for any currently logged-in users (using `runuser` with D-Bus environment variables from `/run/user/`).  
- `post_upgrade()` also disables an older templated service if present — a normal migration step.  
- `post_remove()` disables the global user service.  

No obfuscation, no network requests, no downloading or execution of external code, and no exfiltration of system data. All actions are confined to the package’s own files and services. The script follows expected AUR packaging patterns and does not contain any genuinely malicious behavior.
</details>
<summary>Standard install script: no malicious behavior detected.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed whylian.install. Status: SAFE -- Standard install script: no malicious behavior detected.
Reviewed all required files.
Deciding which files to review next...
Note: 254 files available for selection; offering the 50 highest-priority to the model. 143 lower-priority file(s) were not offered.
LLM response for file selection:
src/whylian/crates/lianli-devices/build.rs
src/whylian/docker/build.sh
src/whylian/install.sh
src/whylian/packaging/PKGBUILD
src/whylian/packaging/archlinux/lianli-linux.install
src/whylian/packaging/desktop/com.sgtaziz.lianlilinux.desktop
src/whylian/packaging/systemd/lianli-daemon.service
src/whylian/crates/lianli-daemon/src/ipc_server.rs
src/whylian/crates/lianli-daemon/src/openrgb_server.rs
src/whylian/crates/lianli-devices/src/crypto.rs
Decided to review 10 additional files: src/whylian/crates/lianli-devices/build.rs, src/whylian/docker/build.sh, src/whylian/install.sh, src/whylian/packaging/PKGBUILD, src/whylian/packaging/archlinux/lianli-linux.install, src/whylian/packaging/desktop/com.sgtaziz.lianlilinux.desktop, src/whylian/packaging/systemd/lianli-daemon.service, src/whylian/crates/lianli-daemon/src/ipc_server.rs, src/whylian/crates/lianli-daemon/src/openrgb_server.rs, src/whylian/crates/lianli-devices/src/crypto.rs
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/whylian/install.sh...
[0/10] Reviewing src/whylian/install.sh, src/whylian/docker/build.sh...
[0/10] Reviewing src/whylian/install.sh, src/whylian/docker/build.sh, src/whylian/crates/lianli-devices/build.rs...
[0/10] Reviewing src/whylian/install.sh, src/whylian/docker/build.sh, src/whylian/crates/lianli-devices/build.rs, src/whylian/packaging/PKGBUILD...
[0/10] Reviewing src/whylian/install.sh, src/whylian/docker/build.sh, src/whylian/crates/lianli-devices/build.rs, src/whylian/packaging/PKGBUILD, src/whylian/packaging/archlinux/lianli-linux.install...
[0/10] Reviewing src/whylian/install.sh, src/whylian/docker/build.sh, src/whylian/crates/lianli-devices/build.rs, src/whylian/packaging/PKGBUILD, src/whylian/packaging/archlinux/lianli-linux.install, src/whylian/packaging/desktop/com.sgtaziz.lianlilinux.desktop...
[0/10] Reviewing src/whylian/install.sh, src/whylian/docker/build.sh, src/whylian/crates/lianli-devices/build.rs, src/whylian/packaging/PKGBUILD, src/whylian/packaging/archlinux/lianli-linux.install, src/whylian/packaging/desktop/com.sgtaziz.lianlilinux.desktop, src/whylian/crates/lianli-daemon/src/openrgb_server.rs...
[0/10] Reviewing src/whylian/install.sh, src/whylian/docker/build.sh, src/whylian/crates/lianli-devices/build.rs, src/whylian/packaging/PKGBUILD, src/whylian/packaging/archlinux/lianli-linux.install, src/whylian/packaging/desktop/com.sgtaziz.lianlilinux.desktop, src/whylian/crates/lianli-daemon/src/openrgb_server.rs, src/whylian/packaging/systemd/lianli-daemon.service...
[0/10] Reviewing src/whylian/install.sh, src/whylian/docker/build.sh, src/whylian/crates/lianli-devices/build.rs, src/whylian/packaging/PKGBUILD, src/whylian/packaging/archlinux/lianli-linux.install, src/whylian/packaging/desktop/com.sgtaziz.lianlilinux.desktop, src/whylian/crates/lianli-daemon/src/openrgb_server.rs, src/whylian/packaging/systemd/lianli-daemon.service, src/whylian/crates/lianli-daemon/src/ipc_server.rs...
[0/10] Reviewing src/whylian/install.sh, src/whylian/docker/build.sh, src/whylian/crates/lianli-devices/build.rs, src/whylian/packaging/PKGBUILD, src/whylian/packaging/archlinux/lianli-linux.install, src/whylian/packaging/desktop/com.sgtaziz.lianlilinux.desktop, src/whylian/crates/lianli-daemon/src/openrgb_server.rs, src/whylian/packaging/systemd/lianli-daemon.service, src/whylian/crates/lianli-daemon/src/ipc_server.rs, src/whylian/crates/lianli-devices/src/crypto.rs...
LLM auditresponse for build.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard Docker-based build helper for a Rust project. It builds a Docker image from a local Dockerfile (`docker/build.Dockerfile`), mounts the project directory and cargo cache directories, and runs the build commands supplied as arguments. There are no suspicious network requests, obfuscated code, file exfiltration, or unexpected system modifications. The use of `docker run --rm -it` with volume mounts is normal for containerized development or CI builds. The only environment variable referenced (`LIANLI_BUILDER_IMAGE`) defaults to a local image name. No supply-chain attack indicators are present.
</details>
<summary>Standard Docker build helper script, no security issues.</summary>
</security_assessment>

[1/10] Reviewing src/whylian/install.sh, src/whylian/crates/lianli-devices/build.rs, src/whylian/packaging/PKGBUILD, src/whylian/packaging/archlinux/lianli-linux.install, src/whylian/packaging/desktop/com.sgtaziz.lianlilinux.desktop, src/whylian/crates/lianli-daemon/src/openrgb_server.rs, src/whylian/packaging/systemd/lianli-daemon.service, src/whylian/crates/lianli-daemon/src/ipc_server.rs, src/whylian/crates/lianli-devices/src/crypto.rs...
+ Reviewed src/whylian/docker/build.sh. Status: SAFE -- Standard Docker build helper script, no security issues.
LLM auditresponse for build.rs:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `build.rs` script for a Rust project that compiles a vendored C++ library using `cc::Build`. It only references local paths within the project's vendor directory, sets compiler flags, optimization, and includes paths. There are no network requests, no encoded or dangerous commands, no attempts to exfiltrate data or execute arbitrary code. The `cargo:rerun-if-changed` lines are normal for build caching. No security issues found.
</details>
<summary>Standard Rust build script for vendored C++ library.</summary>
</security_assessment>

[2/10] Reviewing src/whylian/install.sh, src/whylian/packaging/PKGBUILD, src/whylian/packaging/archlinux/lianli-linux.install, src/whylian/packaging/desktop/com.sgtaziz.lianlilinux.desktop, src/whylian/crates/lianli-daemon/src/openrgb_server.rs, src/whylian/packaging/systemd/lianli-daemon.service, src/whylian/crates/lianli-daemon/src/ipc_server.rs, src/whylian/crates/lianli-devices/src/crypto.rs...
+ Reviewed src/whylian/crates/lianli-devices/build.rs. Status: SAFE -- Standard Rust build script for vendored C++ library.
LLM auditresponse for lianli-daemon.service:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard systemd service unit for running a daemon binary. There is no obfuscated code, network requests, file system modifications, or any other suspicious behavior. It follows normal packaging practices for a device daemon. No supply-chain attack indicators are present.
</details>
<summary>Standard systemd service file, no security issues.</summary>
</security_assessment>

[3/10] Reviewing src/whylian/install.sh, src/whylian/packaging/PKGBUILD, src/whylian/packaging/archlinux/lianli-linux.install, src/whylian/packaging/desktop/com.sgtaziz.lianlilinux.desktop, src/whylian/crates/lianli-daemon/src/openrgb_server.rs, src/whylian/crates/lianli-daemon/src/ipc_server.rs, src/whylian/crates/lianli-devices/src/crypto.rs...
+ Reviewed src/whylian/packaging/systemd/lianli-daemon.service. Status: SAFE -- Standard systemd service file, no security issues.
LLM auditresponse for install.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a straightforward installation wrapper. It defines a `ROOT` variable based on the location of the script, prints a disclaimer and informational messages, then executes <code>"$ROOT/scripts/install-local.sh"</code> with the provided arguments. There is no obfuscation, no network requests, no dangerous commands like <code>eval</code>, <code>curl</code>, or <code>wget</code>, and no operations that deviate from standard packaging practices. The script only delegates to a companion script within the same repository, which is a normal pattern for multi‑script installation helpers. No evidence of malicious or supply‑chain attack behavior is present in this file.
</details>
<summary>
No malicious content; safe wrapper script.</summary>
</security_assessment>

[4/10] Reviewing src/whylian/packaging/PKGBUILD, src/whylian/packaging/archlinux/lianli-linux.install, src/whylian/packaging/desktop/com.sgtaziz.lianlilinux.desktop, src/whylian/crates/lianli-daemon/src/openrgb_server.rs, src/whylian/crates/lianli-daemon/src/ipc_server.rs, src/whylian/crates/lianli-devices/src/crypto.rs...
+ Reviewed src/whylian/install.sh. Status: SAFE -- No malicious content; safe wrapper script.
LLM auditresponse for com.sgtaziz.lianlilinux.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.desktop` file used to register the application in the system's application menu. It contains only metadata: application name, comment, icon, categories, and the `Exec` line which launches the binary `lianli-gui` (a legitimate executable from the package). There are no embedded commands, network requests, obfuscation, or unexpected operations. The file conforms to the [Desktop Entry Specification](https://specifications.freedesktop.org/desktop-entry-spec/latest/) and serves purely as a launcher definition. No security concerns.
</details>
<summary>Standard .desktop file; no malicious content.</summary>
</security_assessment>

[5/10] Reviewing src/whylian/packaging/PKGBUILD, src/whylian/packaging/archlinux/lianli-linux.install, src/whylian/crates/lianli-daemon/src/openrgb_server.rs, src/whylian/crates/lianli-daemon/src/ipc_server.rs, src/whylian/crates/lianli-devices/src/crypto.rs...
+ Reviewed src/whylian/packaging/desktop/com.sgtaziz.lianlilinux.desktop. Status: SAFE -- Standard .desktop file; no malicious content.
LLM auditresponse for openrgb_server.rs:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `openrgb_server.rs` implements an OpenRGB network protocol server for controlling Lian Li RGB devices. It accepts TCP connections on a configurable port (default 6742) and responds to standard OpenRGB protocol packets to enumerate controllers, set modes, and update LED colors.  

Key analysis points:  
- **No network requests to external/untrusted hosts** – the server only listens for local connections and communicates via the OpenRGB wire format.  
- **No obfuscated code, encoded commands, or dangerous functions** (eval, curl, wget, base64). All code is straightforward Rust with proper length checks on incoming payloads.  
- **No file system modifications beyond cache refreshes** – it only interacts with the RGB controller hardware through the provided API.  
- **Bind to 0.0.0.0** is a common and expected default for service daemons; it makes the server accessible to network clients, which is the explicit purpose of an OpenRGB-compatible server.  
- **No data exfiltration**, backdoor, or credential theft. The only outbound data is the OpenRGB protocol responses containing device information (names, IDs, LED counts) which are already exposed by the hardware.  

The code is consistent with a legitimate client-server control interface for RGB lighting hardware. No evidence of supply-chain attack or injected malicious behavior.
</details>
<summary>Normal OpenRGB server implementation; no malicious code.</summary>
</security_assessment>

[6/10] Reviewing src/whylian/packaging/PKGBUILD, src/whylian/packaging/archlinux/lianli-linux.install, src/whylian/crates/lianli-daemon/src/ipc_server.rs, src/whylian/crates/lianli-devices/src/crypto.rs...
+ Reviewed src/whylian/crates/lianli-daemon/src/openrgb_server.rs. Status: SAFE -- Normal OpenRGB server implementation; no malicious code.
LLM auditresponse for crypto.rs:
<security_assessment>
<decision>SAFE</decision>
<details>
This file (`crypto.rs`) is a Rust module implementing encrypted packet headers for VID=0x1CBE LCD devices. It uses DES-CBC encryption with a hardcoded 8‑byte key (`slv3tuzx`) to build command frames. There are no network requests, no downloads from untrusted sources, no obfuscated code, and no unexpected file operations. The hardcoded key and weak cipher are upstream design choices for the device protocol — they are cryptographic weaknesses of the application itself, not evidence of a supply‑chain attack. The code is consistent with ordinary hardware communication libraries and does not attempt to exfiltrate data, install backdoors, or execute attacker‑controlled code.
</details>
<summary>Standard device protocol code; no malicious indicators.</summary>
</security_assessment>

[7/10] Reviewing src/whylian/packaging/PKGBUILD, src/whylian/packaging/archlinux/lianli-linux.install, src/whylian/crates/lianli-daemon/src/ipc_server.rs...
+ Reviewed src/whylian/crates/lianli-devices/src/crypto.rs. Status: SAFE -- Standard device protocol code; no malicious indicators.
LLM auditresponse for lianli-linux.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Arch Linux `.install` script that manages systemd user services and udev rules for the `lianli-linux` package. All operations are routine packaging practices: reloading udev rules, enabling/disabling systemd services, restarting the daemon for active users via `runuser`, and printing informational messages.  

No evidence of malicious behavior was found:  
- No network requests (no `curl`, `wget`, `git fetch`, etc.).  
- No obfuscated or encoded commands.  
- No unexpected file operations (only systemctl, udevadm, id, runuser, etc.).  
- No exfiltration of sensitive data.  
- No execution of untrusted code from external sources.  

The use of `runuser` and enumeration of `/run/user/*` is normal for restarting services for logged-in users. The `post_upgrade` migration from an old templated service to a new one is a standard maintenance task. Everything is consistent with safe packaging practices.
</details>
<summary>A standard install script with no malicious indicators.</summary>
</security_assessment>

[8/10] Reviewing src/whylian/packaging/PKGBUILD, src/whylian/crates/lianli-daemon/src/ipc_server.rs...
+ Reviewed src/whylian/packaging/archlinux/lianli-linux.install. Status: SAFE -- A standard install script with no malicious indicators.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR-VCS packaging practices. It clones the package's own upstream repository from `https://github.com/byrdltd/whyLIAN`, fetches submodules, builds with `cargo --frozen` (pinning dependency versions via `Cargo.lock`), and installs the resulting binaries, udev rules, systemd user service, desktop files, icons, templates, licenses, and documentation into standard system paths.  

There are no suspicious network requests (the only remote interactions are the `git+` source and `cargo fetch`, both targeting the project's own repository and the Rust crate registry), no obfuscated or encoded commands, no dangerous operations like `curl|bash` or `eval`, and no attempts to exfiltrate data or tamper with system files outside the package's scope. The `sha256sums='SKIP'` entry is normal and expected for VCS sources.  

The package does reference an `.install` file (`whylian.install`) that is not shown here, but the mere use of `install=` in a PKGBUILD is a standard practice; without its content there is no basis to assume malicious behavior within this file.  
</details>
<summary>Standard AUR PKGBUILD with no malicious indicators.</summary>
</security_assessment>

[9/10] Reviewing src/whylian/crates/lianli-daemon/src/ipc_server.rs...
+ Reviewed src/whylian/packaging/PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no malicious indicators.
LLM auditresponse for ipc_server.rs:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Rust IPC server implementation for a hardware daemon. It creates a Unix domain socket, listens for JSON requests, and handles configuration, RGB control, fan control, and other device management operations. All network and file operations are local (Unix socket, local config files). There is no obfuscated code, no external downloads, no execution of untrusted content, and no exfiltration of data. The socket permission is set to 0o666 to allow non-root GUI connections — this is a design choice for the application&#39;s stated purpose and not a supply-chain attack. No malicious behavior is present.
</details>
<summary>Standard IPC server code; no evidence of malicious behavior.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/whylian/crates/lianli-daemon/src/ipc_server.rs. Status: SAFE -- Standard IPC server code; no evidence of malicious behavior.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 52,411
  Completion Tokens: 10,214
  Total Tokens: 62,625
  Total Cost: $0.006556
  Execution Time: 124.44 seconds
Full audit report can be found in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-whylian-git.txt
Final Status: SAFE


No issues found.
