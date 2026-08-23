---
package: netbird
pkgver: 0.77.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 4fdfd87aaec54365f5eb3ea9cd4b5b3cd402f1d8
prompt_tokens: 41180
completion_tokens: 8670
total_tokens: 49850
cost: 0.00285928720
execution_time: 317.95
files_reviewed: 12
files_skipped: 0
files_unauditable: 9
unpinned_sources: 0
date: 2026-08-23T19:05:34Z
file_verdicts:
  - file: netbird-server.service
    status: safe
    summary: Standard systemd service unit with no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD, no malicious content found.
  - file: src/netbird-0.77.1/Makefile
    status: safe
    summary: Standard Go project Makefile, no malicious behavior.
  - file: src/netbird-0.77.1/client/ui/build/linux/appimage/build.sh
    status: safe
    summary: Standard AppImage build script using official linuxdeploy tool.
  - file: src/netbird-0.77.1/client/proto/generate.sh
    status: safe
    summary: Standard protobuf generation script, no malicious content.
  - file: src/netbird-0.77.1/client/netbird-entrypoint.sh
    status: safe
    summary: Benign daemon entrypoint, no supply-chain risk.
  - file: src/netbird-0.77.1/client/ui/frontend/vite.config.ts
    status: safe
    summary: Standard Vite config, no security issues.
  - file: src/netbird-0.77.1/release_files/post_install.sh
    status: safe
    summary: Standard service post-install script; no security issues.
  - file: src/netbird-0.77.1/release_files/pre_remove.sh
    status: safe
    summary: Standard pre-removal script, no security issues.
  - file: "src/netbird-0.77.1/release_files/systemd/netbird@.service"
    status: safe
    summary: Standard systemd service file with no malicious content.
  - file: src/netbird-0.77.1/client/ui/frontend/package.json
    status: safe
    summary: Standard frontend package.json, no malicious content.
  - file: src/netbird-0.77.1/release_files/install.sh
    status: safe
    summary: Official NetBird installer; all downloads from official sources; no malicious behavior.
---

Cloning https://aur.archlinux.org/netbird.git...
Cloned netbird
Analyzing netbird AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard Arch package definition for the netbird software. It defines source URLs pointing to the official GitHub release tarball and a systemd service file, both with valid SHA-256 checksums. No code is executed in the global scope or `pkgver()` (which is absent). The `prepare()`, `build()`, `package()`, and `check()` functions only run during later stages and are not triggered by the requested commands. Fetching and extracting the sources is the intended purpose, and there is no evidence of malicious behavior such as exfiltration, backdoors, or unauthorized downloads at the sourcing stage.
</details>
<evidence></evidence>
<summary>PKGBUILD is safe for source fetching and sourcing.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- PKGBUILD is safe for source fetching and sourcing.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, netbird-server.service...
LLM auditresponse for netbird-server.service:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard systemd service unit for the Netbird server. It defines the service binary, restart behavior, and sandboxing options. No suspicious commands, encoded content, or unexpected network operations are present. The sandboxing directives (ProtectHome, ProtectSystem, NoNewPrivileges, etc.) are standard hardening measures. There is no evidence of obfuscation, backdoors, or supply-chain attack indicators.
</details>
<evidence></evidence>
<summary>Standard systemd service unit with no malicious content.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed netbird-server.service. Status: SAFE -- Standard systemd service unit with no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard Arch packaging practices. It downloads a specific version-tagged tarball from the official GitHub repository with a hardcoded sha256 checksum. The build process uses `go mod download` and `go build` with appropriate flags. No suspicious network requests, obfuscated commands, or unexpected file operations are present. The package is split into two subpackages (client and server) with standard file installations and shell completions. The checksums are properly pinned, and there are no signs of supply-chain attack indicators such as eval, base64-encoded payloads, or downloads from untrusted sources.
</details>
<evidence>
</evidence>
<summary>Standard PKGBUILD, no malicious content found.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD, no malicious content found.
Reviewed all required files.
Deciding which files to review next...
Note: 9 compiled/archived file(s) cannot be audited as text and were not reviewed (netbird-0.77.1.tar.gz, src/netbird-0.77.1/client/internal/ebpf/ebpf/bpf_bpfeb.o, src/netbird-0.77.1/client/internal/ebpf/ebpf/bpf_bpfel.o and 6 more). For a package that ships prebuilt binaries, the audit covers the packaging, not the payload.
Note: 2537 files available for selection; offering the 50 highest-priority to the model. 1856 lower-priority file(s) were not offered.
LLM response for file selection:
src/netbird-0.77.1/Makefile
src/netbird-0.77.1/client/netbird-entrypoint.sh
src/netbird-0.77.1/client/proto/generate.sh
src/netbird-0.77.1/client/ui/build/linux/appimage/build.sh
src/netbird-0.77.1/client/ui/frontend/package.json
src/netbird-0.77.1/client/ui/frontend/vite.config.ts
src/netbird-0.77.1/release_files/post_install.sh
src/netbird-0.77.1/release_files/pre_remove.sh
src/netbird-0.77.1/release_files/install.sh
src/netbird-0.77.1/release_files/systemd/netbird@.service
Decided to review 10 additional files: src/netbird-0.77.1/Makefile, src/netbird-0.77.1/client/netbird-entrypoint.sh, src/netbird-0.77.1/client/proto/generate.sh, src/netbird-0.77.1/client/ui/build/linux/appimage/build.sh, src/netbird-0.77.1/client/ui/frontend/package.json, src/netbird-0.77.1/client/ui/frontend/vite.config.ts, src/netbird-0.77.1/release_files/post_install.sh, src/netbird-0.77.1/release_files/pre_remove.sh, src/netbird-0.77.1/release_files/install.sh, src/netbird-0.77.1/release_files/systemd/netbird@.service
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/netbird-0.77.1/Makefile...
[0/10] Reviewing src/netbird-0.77.1/Makefile, src/netbird-0.77.1/client/netbird-entrypoint.sh...
[0/10] Reviewing src/netbird-0.77.1/Makefile, src/netbird-0.77.1/client/netbird-entrypoint.sh, src/netbird-0.77.1/client/proto/generate.sh...
LLM auditresponse for Makefile:
<security_assessment>
<decision>SAFE</decision>
<details>
The Makefile is a standard Go project build file. It includes targets for linting (using golangci-lint installed via `go install` from the official GitHub repository), running unit tests, and setting up git hooks. There are no malicious actions: network requests are limited to fetching the official linter, no exfiltration, no obfuscated commands, and no unexpected system modifications. The `chmod +x .githooks/pre-push` is normal for enabling a local git hook that runs linting. All operations are within standard packaging and development practices for Go projects.
</details>
<evidence></evidence>
<summary>Standard Go project Makefile, no malicious behavior.</summary>
</security_assessment>

[1/10] Reviewing src/netbird-0.77.1/client/netbird-entrypoint.sh, src/netbird-0.77.1/client/proto/generate.sh...
+ Reviewed src/netbird-0.77.1/Makefile. Status: SAFE -- Standard Go project Makefile, no malicious behavior.
[1/10] Reviewing src/netbird-0.77.1/client/netbird-entrypoint.sh, src/netbird-0.77.1/client/proto/generate.sh, src/netbird-0.77.1/client/ui/build/linux/appimage/build.sh...
LLM auditresponse for build.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This build script is a standard AppImage packaging script from the upstream Wails project. It downloads the official linuxdeploy tool from GitHub (linuxdeploy/linuxdeploy) and uses it to bundle the application into an AppImage. The download destination is the project's own official GitHub releases; the tool is executed only to perform the AppImage creation, not to install backdoors or exfiltrate data. The script does not contain any obfuscated code, unexpected network requests, or operations outside the scope of building an AppImage. The use of the `continuous` tag is a reproducibility concern but is a common practice for AppImage tooling and not an indication of malice.
</details>
<evidence></evidence>
<summary>Standard AppImage build script using official linuxdeploy tool.</summary>
</security_assessment>

[1/10] Reviewing src/netbird-0.77.1/client/netbird-entrypoint.sh, src/netbird-0.77.1/client/proto/generate.sh, src/netbird-0.77.1/client/ui/build/linux/appimage/build.sh, src/netbird-0.77.1/client/ui/frontend/package.json...
[2/10] Reviewing src/netbird-0.77.1/client/netbird-entrypoint.sh, src/netbird-0.77.1/client/proto/generate.sh, src/netbird-0.77.1/client/ui/frontend/package.json...
+ Reviewed src/netbird-0.77.1/client/ui/build/linux/appimage/build.sh. Status: SAFE -- Standard AppImage build script using official linuxdeploy tool.
LLM auditresponse for generate.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a standard protobuf code generator for the netbird client. It verifies that `realpath` is available, then uses `go install` to fetch trusted protoc plugins from official Go module sources (`google.golang.org/protobuf`, `google.golang.org/grpc`, `github.com/grpc-ecosystem/grpc-gateway`). Finally it runs `protoc` to generate Go code from a local `.proto` file. There are no suspicious network requests, obfuscated commands, unexpected file operations, or exfiltration. This is normal build infrastructure for a Go-based project.
</details>
<evidence></evidence>
<summary>Standard protobuf generation script, no malicious content.</summary>
</security_assessment>

[3/10] Reviewing src/netbird-0.77.1/client/netbird-entrypoint.sh, src/netbird-0.77.1/client/ui/frontend/package.json...
+ Reviewed src/netbird-0.77.1/client/proto/generate.sh. Status: SAFE -- Standard protobuf generation script, no malicious content.
[3/10] Reviewing src/netbird-0.77.1/client/netbird-entrypoint.sh, src/netbird-0.77.1/client/ui/frontend/package.json, src/netbird-0.77.1/client/ui/frontend/vite.config.ts...
LLM auditresponse for netbird-entrypoint.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a standard entrypoint for the NetBird VPN service. It starts the daemon in the background, waits for it to become responsive, and then initiates the connection via `netbird up`. All operations use the packaged `netbird` binary with no external downloads, obfuscation, or suspicious commands. Signal handling ensures clean shutdown. There is no evidence of malicious behavior or supply-chain attack indicators such as data exfiltration, code injection, or untrusted network calls. The script is typical for an AUR package entrypoint and raises no security concerns.
</details>
<evidence></evidence>
<summary>Benign daemon entrypoint, no supply-chain risk.</summary>
</security_assessment>

[3/10] Reviewing src/netbird-0.77.1/client/netbird-entrypoint.sh, src/netbird-0.77.1/client/ui/frontend/package.json, src/netbird-0.77.1/client/ui/frontend/vite.config.ts, src/netbird-0.77.1/release_files/post_install.sh...
[4/10] Reviewing src/netbird-0.77.1/client/ui/frontend/package.json, src/netbird-0.77.1/client/ui/frontend/vite.config.ts, src/netbird-0.77.1/release_files/post_install.sh...
+ Reviewed src/netbird-0.77.1/client/netbird-entrypoint.sh. Status: SAFE -- Benign daemon entrypoint, no supply-chain risk.
LLM auditresponse for vite.config.ts:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Vite configuration file for a React frontend in the Netbird client UI. It sets up path aliases, plugins (React and Wails runtime), and a dev server listening on localhost. The `fs.allow` directive includes the parent directory to serve shared i18n locale files, which is a legitimate development convenience. There is no obfuscation, no network requests, no dangerous command execution, and no exfiltration or backdoor. The configuration is consistent with normal packaging practices for a Wails+React application.
</details>
<evidence></evidence>
<summary>Standard Vite config, no security issues.</summary>
</security_assessment>

[4/10] Reviewing src/netbird-0.77.1/client/ui/frontend/package.json, src/netbird-0.77.1/client/ui/frontend/vite.config.ts, src/netbird-0.77.1/release_files/post_install.sh, src/netbird-0.77.1/release_files/pre_remove.sh...
[5/10] Reviewing src/netbird-0.77.1/client/ui/frontend/package.json, src/netbird-0.77.1/release_files/post_install.sh, src/netbird-0.77.1/release_files/pre_remove.sh...
+ Reviewed src/netbird-0.77.1/client/ui/frontend/vite.config.ts. Status: SAFE -- Standard Vite config, no security issues.
LLM auditresponse for post_install.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard post-installation script for the netbird service. It uses only systemctl and the netbird binary to install, uninstall, start, and stop the service. There are no network requests, no obfuscated code, no dangerous commands (eval, base64, curl, wget), and no file operations outside the application's own scope. The script performs typical packaging operations for a systemd-managed service. No supply-chain attack indicators are present.</details>
<evidence></evidence>
<summary>Standard service post-install script; no security issues.</summary>
</security_assessment>

[6/10] Reviewing src/netbird-0.77.1/client/ui/frontend/package.json, src/netbird-0.77.1/release_files/pre_remove.sh...
+ Reviewed src/netbird-0.77.1/release_files/post_install.sh. Status: SAFE -- Standard service post-install script; no security issues.
[6/10] Reviewing src/netbird-0.77.1/client/ui/frontend/package.json, src/netbird-0.77.1/release_files/pre_remove.sh, src/netbird-0.77.1/release_files/install.sh...
LLM auditresponse for pre_remove.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a standard pre-removal hook for a systemd-managed service. It stops the netbird service, removes its systemd unit file, triggers a daemon-reload, and invokes the application's own service uninstall command. All operations are confined to the application's own scope (its service, unit file, and binary located under /usr/bin/netbird). No network requests, obfuscated code, unexpected file modifications, or data exfiltration are present. The script performs exactly the tasks one would expect during package removal: cleanly stopping and unregistering the service. No evidence of malicious or dangerous behavior.
</details>
<evidence></evidence>
<summary>Standard pre-removal script, no security issues.</summary>
</security_assessment>

[7/10] Reviewing src/netbird-0.77.1/client/ui/frontend/package.json, src/netbird-0.77.1/release_files/install.sh...
+ Reviewed src/netbird-0.77.1/release_files/pre_remove.sh. Status: SAFE -- Standard pre-removal script, no security issues.
[7/10] Reviewing src/netbird-0.77.1/client/ui/frontend/package.json, src/netbird-0.77.1/release_files/install.sh, src/netbird-0.77.1/release_files/systemd/netbird@.service...
LLM auditresponse for netbird@.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit file for the Netbird VPN/tunneling application. It starts the Netbird daemon with appropriate logging and socket options. The file includes comprehensive security sandboxing options (LockPersonality, MemoryDenyWriteExecute, NoNewPrivileges, ProtectHome, ProtectSystem, etc.) that harden the service. The only relaxations are `ProtectKernelModules=no` and `ProtectKernelTunables=no`, which are required for loading the WireGuard kernel module – a legitimate dependency of the application. There are no suspicious commands, network requests, base64 decoding, eval, or any unexpected operations. The service follows standard packaging practices and contains no supply-chain attack indicators.
</details>
<evidence></evidence>
<summary>Standard systemd service file with no malicious content.</summary>
</security_assessment>

[8/10] Reviewing src/netbird-0.77.1/client/ui/frontend/package.json, src/netbird-0.77.1/release_files/install.sh...
+ Reviewed src/netbird-0.77.1/release_files/systemd/netbird@.service. Status: SAFE -- Standard systemd service file with no malicious content.
LLM auditresponse for package.json:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `package.json` configuration for the Netbird UI frontend. It declares npm scripts and dependencies that are typical for a React + Vite application integrated with Wails. The scripts include build, lint, format, and a `bindings` script that runs `wails3 generate bindings` — a normal part of the Wails workflow for generating TypeScript bindings from the Go backend. The `i18n:check` script runs a local Node.js script from the upstream source. No obfuscated code, suspicious network requests, or dangerous commands (eval, curl, wget, base64, etc.) are present. The dependency `@wailsio/runtime` uses the `latest` tag, which is unpinned but not malicious; it is a hygiene concern at most. All other dependencies are version-ranged and come from the official npm registry. There is no evidence of data exfiltration, backdoors, or injected malicious code.
</details>
<evidence></evidence>
<summary>Standard frontend package.json, no malicious content.</summary>
</security_assessment>

[9/10] Reviewing src/netbird-0.77.1/release_files/install.sh...
+ Reviewed src/netbird-0.77.1/client/ui/frontend/package.json. Status: SAFE -- Standard frontend package.json, no malicious content.
LLM auditresponse for install.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is the official NetBird installer shipped in the upstream release artifacts. All network operations target the project's own domains (`pkgs.netbird.io`) and its GitHub repository (`github.com/netbirdio/netbird`). It downloads release binaries and metadata solely from those official sources, sets up the project's own apt/yum repositories, and installs the application and service. There is no obfuscation, no decoding/assembly of commands, no `eval`, no `curl|bash`, and no contact with unexpected hosts.

The script does perform privileged system modifications (`mknod /dev/net/tun`, loading a kernel module, writing to `/etc/apt`, stopping netbird-ui processes), but these are all directly related to installing and running the NetBird VPN client as documented by the upstream project. The fallback `curl --dns-servers 8.8.8.8` is an unusual but benign workaround for DNS issues, and the use of `NETBIRD_RELEASE=latest` without checksum verification is a trust/hygiene choice typical of installers, not a supply-chain attack. No code exfiltrates local data, installs backdoors, or tampers with unrelated system files.
</details>
<evidence>
</evidence>
<summary>Official NetBird installer; all downloads from official sources; no malicious behavior.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/netbird-0.77.1/release_files/install.sh. Status: SAFE -- Official NetBird installer; all downloads from official sources; no malicious behavior.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 41,180
  Completion Tokens: 8,670
  Total Tokens: 49,850
  Total Cost: $0.002859
  Execution Time: 317.95 seconds

Final Status: SAFE


No issues found.
