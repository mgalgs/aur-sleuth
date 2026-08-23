---
package: netbird
pkgver: 0.77.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: fe97f45c52ce35303ffaaa9e3aab59c432e69008
prompt_tokens: 44675
completion_tokens: 8307
total_tokens: 52982
cost: 0.00299458054
execution_time: 131.89
files_reviewed: 12
files_skipped: 0
files_unauditable: 9
unpinned_sources: 0
date: 2026-08-23T18:06:01Z
file_verdicts:
  - file: netbird-server.service
    status: safe
    summary: Standard systemd service unit, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD for netbird, no security issues.
  - file: src/netbird-0.77.1/Makefile
    status: safe
    summary: Standard Makefile, no security issues.
  - file: src/netbird-0.77.1/release_files/post_install.sh
    status: safe
    summary: A standard post-install service script, no malicious content.
  - file: src/netbird-0.77.1/release_files/pre_remove.sh
    status: safe
    summary: Standard service uninstall script, no malicious behavior.
  - file: src/netbird-0.77.1/client/proto/generate.sh
    status: safe
    summary: Standard protobuf generation script, no malicious behavior.
  - file: src/netbird-0.77.1/client/netbird-entrypoint.sh
    status: safe
    summary: Standard entrypoint script, no malicious behavior detected.
  - file: src/netbird-0.77.1/client/ui/build/linux/netbird-ui.desktop
    status: safe
    summary: Standard desktop file, no security issues.
  - file: src/netbird-0.77.1/release_files/install.sh
    status: safe
    summary: Upstream installer; no malicious indicators.
  - file: "src/netbird-0.77.1/release_files/systemd/netbird@.service"
    status: safe
    summary: Standard systemd service file, no issues.
  - file: src/netbird-0.77.1/client/ui/frontend/package.json
    status: safe
    summary: Standard package.json, no malicious indicators found.
  - file: src/netbird-0.77.1/infrastructure_files/configure.sh
    status: safe
    summary: Standard self-hosted configuration script, no malicious indicators.
---

Cloning https://aur.archlinux.org/netbird.git...
Cloned netbird
Analyzing netbird AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's top-level scope and `pkgver()` function (which is not defined here) do not execute any commands. The `source` array contains only a tarball from the official upstream GitHub repository and a local systemd service file, both with valid checksums. No dangerous commands (eval, curl|bash, base64 decoding, etc.) are present at the global level. Fetching and extracting the archive and sourcing the PKGBUILD for metadata extraction (`makepkg --printsrcinfo`) are standard operations that pose no security risk. Any potentially suspicious code in `prepare()`, `build()`, or `package()` functions is not executed by the two commands in scope, as `--nobuild` and `--noprepare` prevent those functions from running.
</details>
<evidence></evidence>
<summary>Safe: No malicious code in global scope or pkgver()</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe: No malicious code in global scope or pkgver()
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
This is a standard systemd service unit file for the netbird-server application. It defines the service execution with appropriate sandboxing options (ProtectHome, ProtectSystem, NoNewPrivileges, etc.) and standard restart behavior. There are no network requests, obfuscated commands, file operations beyond what systemd normally handles, or any other indicators of malicious activity. The file follows normal packaging conventions for a server service.
</details>
<evidence>
</evidence>
<summary>Standard systemd service unit, no security issues.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed netbird-server.service. Status: SAFE -- Standard systemd service unit, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Arch packaging practices. It fetches source code from the official GitHub repository with a pinned version (v0.77.1) and a SHA256 checksum, which is provided and not skipped. The build process uses Go tooling (`go build`, `go mod download`) in a standard manner, without any obfuscated commands, suspicious network requests, or unexpected file operations. The package functions install binaries, licenses, systemd service files, and shell completions into the expected `$pkgdir` paths. There are no uses of `eval`, `base64`, `curl`, `wget`, or other potentially dangerous constructs. No evidence of malicious or supply-chain attack behavior was found.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD for netbird, no security issues.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD for netbird, no security issues.
Reviewed all required files.
Deciding which files to review next...
Note: 9 compiled/archived file(s) cannot be audited as text and were not reviewed (netbird-0.77.1.tar.gz, src/netbird-0.77.1/client/internal/ebpf/ebpf/bpf_bpfeb.o, src/netbird-0.77.1/client/internal/ebpf/ebpf/bpf_bpfel.o and 6 more). For a package that ships prebuilt binaries, the audit covers the packaging, not the payload.
Note: 2537 files available for selection; offering the 50 highest-priority to the model. 1856 lower-priority file(s) were not offered.
LLM response for file selection:
src/netbird-0.77.1/Makefile
src/netbird-0.77.1/release_files/post_install.sh
src/netbird-0.77.1/release_files/pre_remove.sh
src/netbird-0.77.1/release_files/install.sh
src/netbird-0.77.1/client/ui/frontend/package.json
src/netbird-0.77.1/client/proto/generate.sh
src/netbird-0.77.1/client/netbird-entrypoint.sh
src/netbird-0.77.1/client/ui/build/linux/netbird-ui.desktop
src/netbird-0.77.1/release_files/systemd/netbird@.service
src/netbird-0.77.1/infrastructure_files/configure.sh
Decided to review 10 additional files: src/netbird-0.77.1/Makefile, src/netbird-0.77.1/release_files/post_install.sh, src/netbird-0.77.1/release_files/pre_remove.sh, src/netbird-0.77.1/release_files/install.sh, src/netbird-0.77.1/client/ui/frontend/package.json, src/netbird-0.77.1/client/proto/generate.sh, src/netbird-0.77.1/client/netbird-entrypoint.sh, src/netbird-0.77.1/client/ui/build/linux/netbird-ui.desktop, src/netbird-0.77.1/release_files/systemd/netbird@.service, src/netbird-0.77.1/infrastructure_files/configure.sh
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/netbird-0.77.1/release_files/post_install.sh...
[0/10] Reviewing src/netbird-0.77.1/release_files/post_install.sh, src/netbird-0.77.1/Makefile...
[0/10] Reviewing src/netbird-0.77.1/release_files/post_install.sh, src/netbird-0.77.1/Makefile, src/netbird-0.77.1/release_files/pre_remove.sh...
LLM auditresponse for Makefile:
<security_assessment>
<decision>SAFE</decision>
<details>
The Makefile is a standard build configuration for a Go project. It defines targets for linting (using golangci-lint from its official source), unit and privileged testing, and setting up git hooks. There are no suspicious network requests, obfuscated code, or unexpected system modifications. All commands are typical for a developer workflow and do not exhibit any malicious behavior.
</details>
<evidence></evidence>
<summary>Standard Makefile, no security issues.</summary>
</security_assessment>

[1/10] Reviewing src/netbird-0.77.1/release_files/post_install.sh, src/netbird-0.77.1/release_files/pre_remove.sh...
+ Reviewed src/netbird-0.77.1/Makefile. Status: SAFE -- Standard Makefile, no security issues.
[1/10] Reviewing src/netbird-0.77.1/release_files/post_install.sh, src/netbird-0.77.1/release_files/pre_remove.sh, src/netbird-0.77.1/release_files/install.sh...
LLM auditresponse for post_install.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a standard post-installation handler for a systemd-managed service. It checks for systemctl availability, then on clean install it runs `netbird service install` and `netbird service start`; on upgrade it stops the service, removes the old unit file, re-runs install and start. All commands reference the package's own binary (`/usr/bin/netbird`) and standard system utilities (`systemctl`, `rm`). There are no network requests, no obfuscated or encoded commands, no unexpected file operations outside the package's own service files, and no backdoor or exfiltration indicators. This is typical packaging practice.
</details>
<evidence>
</evidence>
<summary>A standard post-install service script, no malicious content.</summary>
</security_assessment>

[2/10] Reviewing src/netbird-0.77.1/release_files/pre_remove.sh, src/netbird-0.77.1/release_files/install.sh...
+ Reviewed src/netbird-0.77.1/release_files/post_install.sh. Status: SAFE -- A standard post-install service script, no malicious content.
[2/10] Reviewing src/netbird-0.77.1/release_files/pre_remove.sh, src/netbird-0.77.1/release_files/install.sh, src/netbird-0.77.1/client/ui/frontend/package.json...
LLM auditresponse for pre_remove.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard pre-removal script for a systemd-managed service. It checks for systemctl availability, stops the netbird service, removes its systemd unit file, reloads the daemon, and runs the application's own uninstall command. All operations are confined to the package's own service management and the system service manager. There is no network activity, no obfuscation, no data exfiltration, and no execution of untrusted code from external sources. The script follows normal packaging practices for a systemd-integrated package.
</details>
<evidence></evidence>
<summary>Standard service uninstall script, no malicious behavior.</summary>
</security_assessment>

[2/10] Reviewing src/netbird-0.77.1/release_files/pre_remove.sh, src/netbird-0.77.1/release_files/install.sh, src/netbird-0.77.1/client/ui/frontend/package.json, src/netbird-0.77.1/client/proto/generate.sh...
[3/10] Reviewing src/netbird-0.77.1/release_files/install.sh, src/netbird-0.77.1/client/ui/frontend/package.json, src/netbird-0.77.1/client/proto/generate.sh...
+ Reviewed src/netbird-0.77.1/release_files/pre_remove.sh. Status: SAFE -- Standard service uninstall script, no malicious behavior.
LLM auditresponse for generate.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard protobuf code generation helper. It installs specific pinned versions of protoc plugins via `go install` and runs `protoc` to generate Go stubs from a `.proto` file. There are no network requests to unexpected hosts, no obfuscated commands, no data exfiltration, and no system modifications outside the expected build artifacts. The script only operates within the project's own source tree and uses explicit version pinning for the Go tools, which is good practice. No supply-chain attack indicators are present.
</details>
<evidence/>
<summary>Standard protobuf generation script, no malicious behavior.</summary>
</security_assessment>

[3/10] Reviewing src/netbird-0.77.1/release_files/install.sh, src/netbird-0.77.1/client/ui/frontend/package.json, src/netbird-0.77.1/client/proto/generate.sh, src/netbird-0.77.1/client/netbird-entrypoint.sh...
[4/10] Reviewing src/netbird-0.77.1/release_files/install.sh, src/netbird-0.77.1/client/ui/frontend/package.json, src/netbird-0.77.1/client/netbird-entrypoint.sh...
+ Reviewed src/netbird-0.77.1/client/proto/generate.sh. Status: SAFE -- Standard protobuf generation script, no malicious behavior.
LLM auditresponse for netbird-entrypoint.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a standard Docker entrypoint for the NetBird daemon. It starts the `netbird service run` process in the background, waits for the daemon to become responsive via `netbird status --check live`, and then calls `netbird up` to establish a connection. The script handles graceful shutdown with signal traps and waits for child processes. There are no network requests, no code downloads, no obfuscation, no exfiltration, and no unexpected file operations. All commands use the packaged `netbird` binary. The behavior is exactly what a legitimate NetBird entrypoint should do.
</details>
<evidence>
</evidence>
<summary>Standard entrypoint script, no malicious behavior detected.</summary>
</security_assessment>

[5/10] Reviewing src/netbird-0.77.1/release_files/install.sh, src/netbird-0.77.1/client/ui/frontend/package.json...
+ Reviewed src/netbird-0.77.1/client/netbird-entrypoint.sh. Status: SAFE -- Standard entrypoint script, no malicious behavior detected.
[5/10] Reviewing src/netbird-0.77.1/release_files/install.sh, src/netbird-0.77.1/client/ui/frontend/package.json, src/netbird-0.77.1/client/ui/build/linux/netbird-ui.desktop...
LLM auditresponse for netbird-ui.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Linux desktop entry file for the netbird-ui application. It contains no executable code, network requests, or obfuscated content. The `Exec` line sets an environment variable (`WEBKIT_DISABLE_DMABUF_RENDERER=1`) to work around a WebKit rendering issue, which is a common and legitimate practice. All fields are normal for an application launcher.
</details>
<evidence>
</evidence>
<summary>Standard desktop file, no security issues.</summary>
</security_assessment>

[5/10] Reviewing src/netbird-0.77.1/release_files/install.sh, src/netbird-0.77.1/client/ui/frontend/package.json, src/netbird-0.77.1/client/ui/build/linux/netbird-ui.desktop, src/netbird-0.77.1/release_files/systemd/netbird@.service...
[6/10] Reviewing src/netbird-0.77.1/release_files/install.sh, src/netbird-0.77.1/client/ui/frontend/package.json, src/netbird-0.77.1/release_files/systemd/netbird@.service...
+ Reviewed src/netbird-0.77.1/client/ui/build/linux/netbird-ui.desktop. Status: SAFE -- Standard desktop file, no security issues.
LLM auditresponse for install.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is the official NetBird upstream installer script. It downloads NetBird binaries and packages exclusively from the project's own domains (pkgs.netbird.io, github.com/netbirdio/netbird). The script handles installation via package managers (apt, dnf, yum, rpm-ostree, brew, pkg) or via direct binary download for unsupported distributions. There is no obfuscated code, no data exfiltration, no reverse shells, and no downloads from unexpected or unrelated hosts. The only slightly unusual detail is a fallback `curl` invocation with `--dns-servers 8.8.8.8`, which is a benign workaround for DNS resolution failures and does not alter the download URL. The script performs standard system operations: creating directories, moving files, adding package repositories, and loading a TUN kernel module (expected for a VPN client). No genuinely malicious behavior is present.
</details>
<evidence></evidence>
<summary>Upstream installer; no malicious indicators.</summary>
</security_assessment>

[6/10] Reviewing src/netbird-0.77.1/release_files/install.sh, src/netbird-0.77.1/client/ui/frontend/package.json, src/netbird-0.77.1/release_files/systemd/netbird@.service, src/netbird-0.77.1/infrastructure_files/configure.sh...
[7/10] Reviewing src/netbird-0.77.1/client/ui/frontend/package.json, src/netbird-0.77.1/release_files/systemd/netbird@.service, src/netbird-0.77.1/infrastructure_files/configure.sh...
+ Reviewed src/netbird-0.77.1/release_files/install.sh. Status: SAFE -- Upstream installer; no malicious indicators.
LLM auditresponse for netbird@.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit file for the Netbird VPN client. It defines the service behavior, including execution path, environment file, logging, and a comprehensive set of sandboxing restrictions (e.g., `NoNewPrivileges`, `ProtectHome`, `ProtectSystem`). The `ProtectKernelModules=no` is expected because Netbird may need to load the WireGuard kernel module. There are no suspicious commands, network requests, or obfuscated operations. The service file follows standard packaging practices and contains no signs of supply-chain compromise.
</details>
<evidence></evidence>
<summary>Standard systemd service file, no issues.</summary>
</security_assessment>

[8/10] Reviewing src/netbird-0.77.1/client/ui/frontend/package.json, src/netbird-0.77.1/infrastructure_files/configure.sh...
+ Reviewed src/netbird-0.77.1/release_files/systemd/netbird@.service. Status: SAFE -- Standard systemd service file, no issues.
LLM auditresponse for package.json:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `package.json` for the NetBird UI frontend (a Wails + React application). All scripts are conventional development/build commands (Vite, TypeScript, linting, formatting) and a Wails binding generator. The dependency list consists of well-known libraries (Radix UI, React, Framer Motion, Vite, etc.). The use of `&quot;latest&quot;` for `@wailsio/runtime` is a reproducibility concern but not a supply-chain attack. No suspicious network requests, obfuscated code, or unexpected system modifications are present.
</details>
<evidence>

</evidence>
<summary>Standard package.json, no malicious indicators found.</summary>
</security_assessment>

[9/10] Reviewing src/netbird-0.77.1/infrastructure_files/configure.sh...
+ Reviewed src/netbird-0.77.1/client/ui/frontend/package.json. Status: SAFE -- Standard package.json, no malicious indicators found.
LLM auditresponse for configure.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard configuration helper for the Netbird self-hosted deployment. It performs routine operations: verifying required tools (curl, jq, envsubst), sourcing environment files, validating configuration inputs, generating random secrets (TURN password, relay auth secret) using `openssl rand`, and fetching the OIDC configuration from a user-specified endpoint using `curl`. It also optionally discovers the server's public IP from jsonip.com for TURN configuration. All network requests are to services explicitly configured by the user (the OIDC endpoint) or a legitimate IP discovery service (jsonip.com). There are no obfuscated commands, data exfiltration attempts, backdoors, or downloads of executable code from untrusted sources. The script's behavior is entirely consistent with the stated purpose of configuring a self-hosted Netbird instance.
</details>
<evidence></evidence>
<summary>Standard self-hosted configuration script, no malicious indicators.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/netbird-0.77.1/infrastructure_files/configure.sh. Status: SAFE -- Standard self-hosted configuration script, no malicious indicators.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 44,675
  Completion Tokens: 8,307
  Total Tokens: 52,982
  Total Cost: $0.002995
  Execution Time: 131.89 seconds

Final Status: SAFE


No issues found.
