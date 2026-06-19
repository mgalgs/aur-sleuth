---
package: mousehop
pkgver: 0.14.2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 65e0c3f98e3e15c2f2b5d512e37cace17814cac6
prompt_tokens: 42509
completion_tokens: 7393
total_tokens: 49902
cost: 0.00515655
execution_time: 91.2
files_reviewed: 11
files_skipped: 1
date: 2026-06-19T07:37:37Z
file_verdicts:
  - file: mousehop-0.14.2.tar.gz
    status: skipped
    summary: "Skipping binary file: mousehop-0.14.2.tar.gz"
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD, pinned source, no malicious indicators.
  - file: src/mousehop-0.14.2/config.toml
    status: safe
    summary: Static config file, no executable or dangerous content.
  - file: src/mousehop-0.14.2/Cargo.toml
    status: safe
    summary: Standard Rust workspace configuration, no security issues.
  - file: src/mousehop-0.14.2/mousehop/com.mousehop.Mousehop.desktop
    status: safe
    summary: Standard desktop file, no security concerns.
  - file: src/mousehop-0.14.2/mousehop-gtk/build.rs
    status: safe
    summary: Standard build script for GLib resources, no issues.
  - file: src/mousehop-0.14.2/service/mousehop.service
    status: safe
    summary: Standard service unit, no security concerns.
  - file: src/mousehop-0.14.2/input-capture/src/clipboard.rs
    status: safe
    summary: Legitimate clipboard monitoring code with no malicious behavior.
  - file: src/mousehop-0.14.2/build-aux/com.mousehop.Mousehop.yml
    status: safe
    summary: Standard Flatpak manifest; no malicious content detected.
  - file: src/mousehop-0.14.2/input-emulation/src/xdg_desktop_portal.rs
    status: safe
    summary: Standard input emulation code via XDG portal, no threats.
  - file: src/mousehop-0.14.2/packaging/aur-bin/PKGBUILD
    status: safe
    summary: Standard prebuilt binary AUR package, no malicious code.
  - file: src/mousehop-0.14.2/input-capture/src/desktop_entries.rs
    status: safe
    summary: Standard desktop file parser with no malicious behavior.
---

Cloning https://aur.archlinux.org/mousehop.git to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-d6pke8md...
Cloned repository to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-d6pke8md
Analyzing mousehop AUR package (working in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-d6pke8md) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard Rust-based package that fetches a tagged release tarball from its official GitHub repository. The global/top-level scope contains only variable assignments and array definitions—no dangerous commands, command substitutions, or function calls that execute during sourcing. The `source` array references a pinned version tarball with a fixed SHA-256 checksum, ensuring integrity. No `pkgver()` function is present, so nothing executes there. The `prepare()`, `build()`, and `package()` functions are not invoked by `makepkg --nobuild --nodeps --noprepare` or `makepkg --printsrcinfo`, and their contents are standard packaging operations. There is no evidence of obfuscated code, network exfiltration, or execution of untrusted payloads.
</details>
<summary>Safe PKGBUILD with standard source fetch and no malicious content.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- Safe PKGBUILD with standard source fetch and no malicious content.[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing mousehop-0.14.2.tar.gz...
[0/2] Reviewing mousehop-0.14.2.tar.gz, PKGBUILD...
[1/2] Reviewing PKGBUILD...
! Reviewed mousehop-0.14.2.tar.gz. Status: SKIPPED -- Skipping binary file: mousehop-0.14.2.tar.gz
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard, well-structured build definition for a Rust-based AUR package. It downloads the source from the official GitHub repository (`https://github.com/jondkinney/mousehop`) at a specific tag (`v0.14.2`) with a pinned SHA-256 checksum. The build process uses `cargo fetch --locked` and `cargo build --frozen`, which are standard for reproducible Rust builds. The `package()` function installs only the expected files: the compiled binary, a desktop file, an SVG icon, and license/notice files. There are no suspicious network requests (only the pinned source download and cargo fetching from the standard crates.io registry), no obfuscated code, no dangerous commands (eval, base64, curl, wget), and no modifications to system configuration beyond placing files in their standard directories. All dependencies are legitimate system libraries. This file exhibits no signs of malicious or supply-chain attack activity.
</details>
<summary>Standard PKGBUILD, pinned source, no malicious indicators.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD, pinned source, no malicious indicators.
Reviewed all required files.
Deciding which files to review next...
Note: 145 files available for selection; offering the 50 highest-priority to the model. 56 lower-priority file(s) were not offered.
LLM response for file selection:
src/mousehop-0.14.2/mousehop-gtk/build.rs
src/mousehop-0.14.2/mousehop/com.mousehop.Mousehop.desktop
src/mousehop-0.14.2/service/mousehop.service
src/mousehop-0.14.2/packaging/aur-bin/PKGBUILD
src/mousehop-0.14.2/Cargo.toml
src/mousehop-0.14.2/config.toml
src/mousehop-0.14.2/build-aux/com.mousehop.Mousehop.yml
src/mousehop-0.14.2/input-capture/src/clipboard.rs
src/mousehop-0.14.2/input-capture/src/desktop_entries.rs
src/mousehop-0.14.2/input-emulation/src/xdg_desktop_portal.rs
Decided to review 10 additional files: src/mousehop-0.14.2/mousehop-gtk/build.rs, src/mousehop-0.14.2/mousehop/com.mousehop.Mousehop.desktop, src/mousehop-0.14.2/service/mousehop.service, src/mousehop-0.14.2/packaging/aur-bin/PKGBUILD, src/mousehop-0.14.2/Cargo.toml, src/mousehop-0.14.2/config.toml, src/mousehop-0.14.2/build-aux/com.mousehop.Mousehop.yml, src/mousehop-0.14.2/input-capture/src/clipboard.rs, src/mousehop-0.14.2/input-capture/src/desktop_entries.rs, src/mousehop-0.14.2/input-emulation/src/xdg_desktop_portal.rs
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/mousehop-0.14.2/mousehop-gtk/build.rs...
[0/10] Reviewing src/mousehop-0.14.2/mousehop-gtk/build.rs, src/mousehop-0.14.2/mousehop/com.mousehop.Mousehop.desktop...
[0/10] Reviewing src/mousehop-0.14.2/mousehop-gtk/build.rs, src/mousehop-0.14.2/mousehop/com.mousehop.Mousehop.desktop, src/mousehop-0.14.2/service/mousehop.service...
[0/10] Reviewing src/mousehop-0.14.2/mousehop-gtk/build.rs, src/mousehop-0.14.2/mousehop/com.mousehop.Mousehop.desktop, src/mousehop-0.14.2/service/mousehop.service, src/mousehop-0.14.2/packaging/aur-bin/PKGBUILD...
[0/10] Reviewing src/mousehop-0.14.2/mousehop-gtk/build.rs, src/mousehop-0.14.2/mousehop/com.mousehop.Mousehop.desktop, src/mousehop-0.14.2/service/mousehop.service, src/mousehop-0.14.2/packaging/aur-bin/PKGBUILD, src/mousehop-0.14.2/Cargo.toml...
[0/10] Reviewing src/mousehop-0.14.2/mousehop-gtk/build.rs, src/mousehop-0.14.2/mousehop/com.mousehop.Mousehop.desktop, src/mousehop-0.14.2/service/mousehop.service, src/mousehop-0.14.2/packaging/aur-bin/PKGBUILD, src/mousehop-0.14.2/Cargo.toml, src/mousehop-0.14.2/build-aux/com.mousehop.Mousehop.yml...
[0/10] Reviewing src/mousehop-0.14.2/mousehop-gtk/build.rs, src/mousehop-0.14.2/mousehop/com.mousehop.Mousehop.desktop, src/mousehop-0.14.2/service/mousehop.service, src/mousehop-0.14.2/packaging/aur-bin/PKGBUILD, src/mousehop-0.14.2/Cargo.toml, src/mousehop-0.14.2/build-aux/com.mousehop.Mousehop.yml, src/mousehop-0.14.2/input-capture/src/clipboard.rs...
[0/10] Reviewing src/mousehop-0.14.2/mousehop-gtk/build.rs, src/mousehop-0.14.2/mousehop/com.mousehop.Mousehop.desktop, src/mousehop-0.14.2/service/mousehop.service, src/mousehop-0.14.2/packaging/aur-bin/PKGBUILD, src/mousehop-0.14.2/Cargo.toml, src/mousehop-0.14.2/build-aux/com.mousehop.Mousehop.yml, src/mousehop-0.14.2/input-capture/src/clipboard.rs, src/mousehop-0.14.2/config.toml...
[0/10] Reviewing src/mousehop-0.14.2/mousehop-gtk/build.rs, src/mousehop-0.14.2/mousehop/com.mousehop.Mousehop.desktop, src/mousehop-0.14.2/service/mousehop.service, src/mousehop-0.14.2/packaging/aur-bin/PKGBUILD, src/mousehop-0.14.2/Cargo.toml, src/mousehop-0.14.2/build-aux/com.mousehop.Mousehop.yml, src/mousehop-0.14.2/input-capture/src/clipboard.rs, src/mousehop-0.14.2/config.toml, src/mousehop-0.14.2/input-capture/src/desktop_entries.rs...
[0/10] Reviewing src/mousehop-0.14.2/mousehop-gtk/build.rs, src/mousehop-0.14.2/mousehop/com.mousehop.Mousehop.desktop, src/mousehop-0.14.2/service/mousehop.service, src/mousehop-0.14.2/packaging/aur-bin/PKGBUILD, src/mousehop-0.14.2/Cargo.toml, src/mousehop-0.14.2/build-aux/com.mousehop.Mousehop.yml, src/mousehop-0.14.2/input-capture/src/clipboard.rs, src/mousehop-0.14.2/config.toml, src/mousehop-0.14.2/input-capture/src/desktop_entries.rs, src/mousehop-0.14.2/input-emulation/src/xdg_desktop_portal.rs...
LLM auditresponse for config.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a static configuration file for the mousehop application. It defines release bind keys, an optional port, authorized TLS certificate fingerprints, and client definitions with positions, hostnames, IPs, and port settings. No executable code, obfuscated content, network requests, or system modifications are present. The file contains only plain configuration data and poses no security risk.
</details>
<summary>Static config file, no executable or dangerous content.</summary>
</security_assessment>

[1/10] Reviewing src/mousehop-0.14.2/mousehop-gtk/build.rs, src/mousehop-0.14.2/mousehop/com.mousehop.Mousehop.desktop, src/mousehop-0.14.2/service/mousehop.service, src/mousehop-0.14.2/packaging/aur-bin/PKGBUILD, src/mousehop-0.14.2/Cargo.toml, src/mousehop-0.14.2/build-aux/com.mousehop.Mousehop.yml, src/mousehop-0.14.2/input-capture/src/clipboard.rs, src/mousehop-0.14.2/input-capture/src/desktop_entries.rs, src/mousehop-0.14.2/input-emulation/src/xdg_desktop_portal.rs...
+ Reviewed src/mousehop-0.14.2/config.toml. Status: SAFE -- Static config file, no executable or dangerous content.
LLM auditresponse for Cargo.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Rust workspace `Cargo.toml` file. It declares workspace members, internal path dependencies, and release profile optimizations. There are no network requests, obfuscated code, dangerous commands, or any behavior that deviates from normal packaging practices. The file is purely declarative and contains no executable logic.
</details>
<summary>Standard Rust workspace configuration, no security issues.</summary>
</security_assessment>

[2/10] Reviewing src/mousehop-0.14.2/mousehop-gtk/build.rs, src/mousehop-0.14.2/mousehop/com.mousehop.Mousehop.desktop, src/mousehop-0.14.2/service/mousehop.service, src/mousehop-0.14.2/packaging/aur-bin/PKGBUILD, src/mousehop-0.14.2/build-aux/com.mousehop.Mousehop.yml, src/mousehop-0.14.2/input-capture/src/clipboard.rs, src/mousehop-0.14.2/input-capture/src/desktop_entries.rs, src/mousehop-0.14.2/input-emulation/src/xdg_desktop_portal.rs...
+ Reviewed src/mousehop-0.14.2/Cargo.toml. Status: SAFE -- Standard Rust workspace configuration, no security issues.
LLM auditresponse for com.mousehop.Mousehop.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.desktop` file for the GNOME/XDG desktop entry specification. It defines the application name, icon, executable path (`mousehop`), and localized comments. No obfuscation, dangerous commands, network requests, or unusual file operations are present. The content is entirely appropriate for a desktop entry that launches a legitimate LAN mouse/keyboard sharing application. No security issues found.
</details>
<summary>Standard desktop file, no security concerns.</summary>
</security_assessment>

[3/10] Reviewing src/mousehop-0.14.2/mousehop-gtk/build.rs, src/mousehop-0.14.2/service/mousehop.service, src/mousehop-0.14.2/packaging/aur-bin/PKGBUILD, src/mousehop-0.14.2/build-aux/com.mousehop.Mousehop.yml, src/mousehop-0.14.2/input-capture/src/clipboard.rs, src/mousehop-0.14.2/input-capture/src/desktop_entries.rs, src/mousehop-0.14.2/input-emulation/src/xdg_desktop_portal.rs...
+ Reviewed src/mousehop-0.14.2/mousehop/com.mousehop.Mousehop.desktop. Status: SAFE -- Standard desktop file, no security concerns.
LLM auditresponse for build.rs:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Rust build script (`build.rs`) that compiles GLib resources using `glib_build_tools::compile_resources`. It only references local resource files under the `resources/` directory. There are no network requests, no execution of external code, no obfuscation, and no suspicious system modifications. This is typical for a GTK/GNOME application built with Rust.
</details>
<summary>Standard build script for GLib resources, no issues.</summary>
</security_assessment>

[4/10] Reviewing src/mousehop-0.14.2/service/mousehop.service, src/mousehop-0.14.2/packaging/aur-bin/PKGBUILD, src/mousehop-0.14.2/build-aux/com.mousehop.Mousehop.yml, src/mousehop-0.14.2/input-capture/src/clipboard.rs, src/mousehop-0.14.2/input-capture/src/desktop_entries.rs, src/mousehop-0.14.2/input-emulation/src/xdg_desktop_portal.rs...
+ Reviewed src/mousehop-0.14.2/mousehop-gtk/build.rs. Status: SAFE -- Standard build script for GLib resources, no issues.
LLM auditresponse for mousehop.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit file that defines how the mousehop daemon should be managed. It contains only generic systemd directives: `ExecStart` pointing to `/usr/bin/mousehop daemon`, `Restart=on-failure`, and dependency on `graphical-session.target`. There are no network requests, no file operations, no obfuscated code, and no commands that could lead to a supply-chain attack. The file is innocuous and follows normal packaging practices.
</details>
<summary>Standard service unit, no security concerns.</summary>
</security_assessment>

[5/10] Reviewing src/mousehop-0.14.2/packaging/aur-bin/PKGBUILD, src/mousehop-0.14.2/build-aux/com.mousehop.Mousehop.yml, src/mousehop-0.14.2/input-capture/src/clipboard.rs, src/mousehop-0.14.2/input-capture/src/desktop_entries.rs, src/mousehop-0.14.2/input-emulation/src/xdg_desktop_portal.rs...
+ Reviewed src/mousehop-0.14.2/service/mousehop.service. Status: SAFE -- Standard service unit, no security concerns.
LLM auditresponse for clipboard.rs:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Rust clipboard monitoring module for the mousehop application. It polls the system clipboard (via the `arboard` crate) and emits events when content changes, with suppression logic for macOS concealed pasteboard types (password manager convention) and an app‑suppression list. All network, filesystem, and code‑execution primitives are absent — the file uses only well‑known Rust crates (`arboard`, `tokio`, `objc2`, `std`). The macOS clipboard pre‑check (`pasteboard_change_count_advanced`) and the `PollDecision` classifier are standard polling optimizations with no hidden behavior. The suppression list is an `Arc&lt;Mutex&lt;HashSet&gt;&gt;` that another part of the service mutates; that is a normal architecture for runtime configuration, not a backdoor. No data is exfiltrated, no code is downloaded or executed, and the file contains no obfuscation or encoded commands. It is legitimate upstream application code for a clipboard‑aware productivity tool.
</details>
<summary>Legitimate clipboard monitoring code with no malicious behavior.</summary>
</security_assessment>

[6/10] Reviewing src/mousehop-0.14.2/packaging/aur-bin/PKGBUILD, src/mousehop-0.14.2/build-aux/com.mousehop.Mousehop.yml, src/mousehop-0.14.2/input-capture/src/desktop_entries.rs, src/mousehop-0.14.2/input-emulation/src/xdg_desktop_portal.rs...
+ Reviewed src/mousehop-0.14.2/input-capture/src/clipboard.rs. Status: SAFE -- Legitimate clipboard monitoring code with no malicious behavior.
LLM auditresponse for com.mousehop.Mousehop.yml:
<security_assessment>
<decision>SAFE</decision>
<details>
The manifest is a standard Flatpak build configuration for the `com.mousehop.Mousehop` application. All `build-commands` are typical for a Rust-based project: `cargo fetch`, `cargo build`, and `install` for binaries, icons, desktop file, and AppStream metadata. The `finish-args` grant appropriate sandbox permissions (Wayland, X11, DRI, session bus, network for UDP relay, IPC for XSHM, and restricted filesystem access to ~/.config/mousehop/) and portal access (Clipboard, Notifications) that align with the application’s stated purpose as a software KVM. No obfuscated code, unexpected network requests (build-time network is only for `cargo fetch`), or commands that deviate from normal packaging practices are present. The `source: dir` with `path: ..` is a common Flatpak layout and does not introduce malicious behaviour.
</details>
<summary>Standard Flatpak manifest; no malicious content detected.</summary>
</security_assessment>

[7/10] Reviewing src/mousehop-0.14.2/packaging/aur-bin/PKGBUILD, src/mousehop-0.14.2/input-capture/src/desktop_entries.rs, src/mousehop-0.14.2/input-emulation/src/xdg_desktop_portal.rs...
+ Reviewed src/mousehop-0.14.2/build-aux/com.mousehop.Mousehop.yml. Status: SAFE -- Standard Flatpak manifest; no malicious content detected.
LLM auditresponse for xdg_desktop_portal.rs:
<security_assessment>
<decision>SAFE</decision>
<details>
This file implements input emulation through the XDG RemoteDesktop portal using the `ashpd` crate. It creates a portal session, selects keyboard and mouse devices, and forwards input events (motion, buttons, scroll, keys) to the portal. The code is straightforward, uses standard API calls, and includes proper session cleanup. There are no suspicious network requests, obfuscated code, dangerous commands, or any operations that deviate from the application&#x27;s stated purpose of input emulation. This is normal upstream application code, not a supply-chain attack.
</details>
<summary>Standard input emulation code via XDG portal, no threats.</summary>
</security_assessment>

[8/10] Reviewing src/mousehop-0.14.2/packaging/aur-bin/PKGBUILD, src/mousehop-0.14.2/input-capture/src/desktop_entries.rs...
+ Reviewed src/mousehop-0.14.2/input-emulation/src/xdg_desktop_portal.rs. Status: SAFE -- Standard input emulation code via XDG portal, no threats.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard AUR package that fetches prebuilt binaries from the project's own GitHub releases. It downloads tarballs from `https://github.com/jondkinney/mousehop/releases/download/...` — the project's upstream, not an external or suspicious source. The `package()` function extracts and installs the binary, desktop file, icon, and license files into standard system directories. There are no dangerous commands like `eval`, `curl | bash`, or obfuscated code. The placeholder SHA256 sums (all zeros) are a known CI workflow concern but are not malicious — they are intended to be replaced by `updpkgsums` during a normal release process. No evidence of supply-chain attack or malicious intent.
</details>
<summary>
Standard prebuilt binary AUR package, no malicious code.
</summary>
</security_assessment>

[9/10] Reviewing src/mousehop-0.14.2/input-capture/src/desktop_entries.rs...
+ Reviewed src/mousehop-0.14.2/packaging/aur-bin/PKGBUILD. Status: SAFE -- Standard prebuilt binary AUR package, no malicious code.
LLM auditresponse for desktop_entries.rs:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Rust application module for parsing freedesktop `.desktop` files and resolving application icons from the filesystem. All operations are read-only file system accesses to standard XDG-compliant paths (`~/.local/share/applications`, `/usr/share/applications`, icon theme directories). There are no network requests, no code execution, no obfuscated content, and no data exfiltration. The only environment variables read are `XDG_DATA_HOME`, `HOME`, and `XDG_DATA_DIRS` — standard XDG Base Directory spec paths that any GUI application would use. The module performs exactly the function its documentation describes: building an app-to-icon lookup for a suppression-list picker UI.
</details>
<summary>Standard desktop file parser with no malicious behavior.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/mousehop-0.14.2/input-capture/src/desktop_entries.rs. Status: SAFE -- Standard desktop file parser with no malicious behavior.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
(Skipped 1 file: mousehop-0.14.2.tar.gz)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 42,509
  Completion Tokens: 7,393
  Total Tokens: 49,902
  Total Cost: $0.005157
  Execution Time: 91.20 seconds
Full audit report can be found in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-mousehop.txt
Final Status: SAFE


No issues found.


Audit Skips:

/home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-d6pke8md/mousehop-0.14.2.tar.gz: [SKIPPED] Skipping binary file: mousehop-0.14.2.tar.gz
