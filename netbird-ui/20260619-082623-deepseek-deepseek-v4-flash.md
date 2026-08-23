---
package: netbird-ui
pkgver: 0.63.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 11c93a0c95e2166961e3664fea6b5a63827ded10
prompt_tokens: 37624
completion_tokens: 7661
total_tokens: 45285
cost: 0.00476514
execution_time: 74.49
files_reviewed: 11
files_skipped: 1
date: 2026-06-19T08:26:23Z
file_verdicts:
  - file: netbird-0.63.0.tar.gz
    status: skipped
    summary: "Skipping binary file: netbird-0.63.0.tar.gz"
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with pinned checksum and official source.
  - file: src/netbird-0.63.0/release_files/post_install.sh
    status: safe
    summary: Standard post-install service script; no malicious behavior.
  - file: src/netbird-0.63.0/client/ui/build/build-ui-linux.sh
    status: safe
    summary: Standard build script with no malicious content.
  - file: src/netbird-0.63.0/client/netbird-entrypoint.sh
    status: safe
    summary: Clean entrypoint script; no malicious behavior detected.
  - file: src/netbird-0.63.0/release_files/ui-post-install.sh
    status: safe
    summary: Standard post-install restart script, no malicious behavior.
  - file: src/netbird-0.63.0/client/proto/generate.sh
    status: safe
    summary: Standard protobuf generation helper; no malicious content.
  - file: src/netbird-0.63.0/release_files/pre_remove.sh
    status: safe
    summary: Standard package removal script, safe.
  - file: src/netbird-0.63.0/client/ui/build/netbird.desktop
    status: safe
    summary: Standard desktop entry file, no malicious content.
  - file: src/netbird-0.63.0/Makefile
    status: safe
    summary: Standard Makefile for Go linting and hooks.
  - file: src/netbird-0.63.0/release_files/install.sh
    status: safe
    summary: Legitimate installer for NetBird; no malicious activity.
  - file: src/netbird-0.63.0/infrastructure_files/configure.sh
    status: safe
    summary: Standard self-hosting configuration script for Netbird.
---

Cloning https://aur.archlinux.org/netbird-ui.git to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-ryu6cyib...
Cloned repository to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-ryu6cyib
Analyzing netbird-ui AUR package (working in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-ryu6cyib) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable assignments and a source definition pointing to the official upstream GitHub release tarball with a pinned sha256sum. There is no top-level code execution (no command substitution, no eval, no dangerous calls). The `pkgver()` function is not present, so no additional code runs during `makepkg --nobuild --nodeps --noprepare` or `--printsrcinfo` besides sourcing the file and fetching the source. The source URL is the project's own GitHub releases, which is the expected location for the upstream tarball. No malicious or suspicious patterns are present in the global scope.
</details>
<summary>
Standard PKGBUILD with no global code execution risk.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- Standard PKGBUILD with no global code execution risk.[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, netbird-0.63.0.tar.gz...
[1/2] Reviewing PKGBUILD...
! Reviewed netbird-0.63.0.tar.gz. Status: SKIPPED -- Skipping binary file: netbird-0.63.0.tar.gz
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices. It downloads a tarball from the official GitHub repository (`https://github.com/netbirdio/netbird`) with a pinned SHA256 checksum, builds the Go UI binary, and installs it along with a license, an icon, and a desktop entry. There are no suspicious network requests, obfuscated code, or unexpected system modifications. The source is pinned, the build flags are typical, and no unsafe commands like `curl|bash` or `eval` are present. The file contains no malicious or dangerous behavior.
</details>
<summary>Standard AUR PKGBUILD with pinned checksum and official source.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with pinned checksum and official source.
Reviewed all required files.
Deciding which files to review next...
Note: 1403 files available for selection; offering the 50 highest-priority to the model. 985 lower-priority file(s) were not offered.
LLM response for file selection:
src/netbird-0.63.0/Makefile
src/netbird-0.63.0/client/netbird-entrypoint.sh
src/netbird-0.63.0/client/proto/generate.sh
src/netbird-0.63.0/client/ui/build/build-ui-linux.sh
src/netbird-0.63.0/client/ui/build/netbird.desktop
src/netbird-0.63.0/infrastructure_files/configure.sh
src/netbird-0.63.0/release_files/post_install.sh
src/netbird-0.63.0/release_files/install.sh
src/netbird-0.63.0/release_files/pre_remove.sh
src/netbird-0.63.0/release_files/ui-post-install.sh
Decided to review 10 additional files: src/netbird-0.63.0/Makefile, src/netbird-0.63.0/client/netbird-entrypoint.sh, src/netbird-0.63.0/client/proto/generate.sh, src/netbird-0.63.0/client/ui/build/build-ui-linux.sh, src/netbird-0.63.0/client/ui/build/netbird.desktop, src/netbird-0.63.0/infrastructure_files/configure.sh, src/netbird-0.63.0/release_files/post_install.sh, src/netbird-0.63.0/release_files/install.sh, src/netbird-0.63.0/release_files/pre_remove.sh, src/netbird-0.63.0/release_files/ui-post-install.sh
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/netbird-0.63.0/client/netbird-entrypoint.sh...
[0/10] Reviewing src/netbird-0.63.0/client/netbird-entrypoint.sh, src/netbird-0.63.0/client/ui/build/build-ui-linux.sh...
[0/10] Reviewing src/netbird-0.63.0/client/netbird-entrypoint.sh, src/netbird-0.63.0/client/ui/build/build-ui-linux.sh, src/netbird-0.63.0/client/ui/build/netbird.desktop...
[0/10] Reviewing src/netbird-0.63.0/client/netbird-entrypoint.sh, src/netbird-0.63.0/client/ui/build/build-ui-linux.sh, src/netbird-0.63.0/client/ui/build/netbird.desktop, src/netbird-0.63.0/Makefile...
[0/10] Reviewing src/netbird-0.63.0/client/netbird-entrypoint.sh, src/netbird-0.63.0/client/ui/build/build-ui-linux.sh, src/netbird-0.63.0/client/ui/build/netbird.desktop, src/netbird-0.63.0/Makefile, src/netbird-0.63.0/infrastructure_files/configure.sh...
[0/10] Reviewing src/netbird-0.63.0/client/netbird-entrypoint.sh, src/netbird-0.63.0/client/ui/build/build-ui-linux.sh, src/netbird-0.63.0/client/ui/build/netbird.desktop, src/netbird-0.63.0/Makefile, src/netbird-0.63.0/infrastructure_files/configure.sh, src/netbird-0.63.0/client/proto/generate.sh...
[0/10] Reviewing src/netbird-0.63.0/client/netbird-entrypoint.sh, src/netbird-0.63.0/client/ui/build/build-ui-linux.sh, src/netbird-0.63.0/client/ui/build/netbird.desktop, src/netbird-0.63.0/Makefile, src/netbird-0.63.0/infrastructure_files/configure.sh, src/netbird-0.63.0/client/proto/generate.sh, src/netbird-0.63.0/release_files/post_install.sh...
[0/10] Reviewing src/netbird-0.63.0/client/netbird-entrypoint.sh, src/netbird-0.63.0/client/ui/build/build-ui-linux.sh, src/netbird-0.63.0/client/ui/build/netbird.desktop, src/netbird-0.63.0/Makefile, src/netbird-0.63.0/infrastructure_files/configure.sh, src/netbird-0.63.0/client/proto/generate.sh, src/netbird-0.63.0/release_files/post_install.sh, src/netbird-0.63.0/release_files/install.sh...
[0/10] Reviewing src/netbird-0.63.0/client/netbird-entrypoint.sh, src/netbird-0.63.0/client/ui/build/build-ui-linux.sh, src/netbird-0.63.0/client/ui/build/netbird.desktop, src/netbird-0.63.0/Makefile, src/netbird-0.63.0/infrastructure_files/configure.sh, src/netbird-0.63.0/client/proto/generate.sh, src/netbird-0.63.0/release_files/post_install.sh, src/netbird-0.63.0/release_files/install.sh, src/netbird-0.63.0/release_files/pre_remove.sh...
[0/10] Reviewing src/netbird-0.63.0/client/netbird-entrypoint.sh, src/netbird-0.63.0/client/ui/build/build-ui-linux.sh, src/netbird-0.63.0/client/ui/build/netbird.desktop, src/netbird-0.63.0/Makefile, src/netbird-0.63.0/infrastructure_files/configure.sh, src/netbird-0.63.0/client/proto/generate.sh, src/netbird-0.63.0/release_files/post_install.sh, src/netbird-0.63.0/release_files/install.sh, src/netbird-0.63.0/release_files/pre_remove.sh, src/netbird-0.63.0/release_files/ui-post-install.sh...
LLM auditresponse for post_install.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a standard post-installation script for the netbird service. It manages service installation, upgrade, and removal using the `/usr/bin/netbird` binary and standard `systemctl` commands. No suspicious network requests (curl, wget), obfuscation (eval, base64), or unexpected file operations are present. All actions are within the expected scope of a packaging post-install script for a system service.
</details>
<summary>Standard post-install service script; no malicious behavior.</summary>
</security_assessment>

[1/10] Reviewing src/netbird-0.63.0/client/netbird-entrypoint.sh, src/netbird-0.63.0/client/ui/build/build-ui-linux.sh, src/netbird-0.63.0/client/ui/build/netbird.desktop, src/netbird-0.63.0/Makefile, src/netbird-0.63.0/infrastructure_files/configure.sh, src/netbird-0.63.0/client/proto/generate.sh, src/netbird-0.63.0/release_files/install.sh, src/netbird-0.63.0/release_files/pre_remove.sh, src/netbird-0.63.0/release_files/ui-post-install.sh...
+ Reviewed src/netbird-0.63.0/release_files/post_install.sh. Status: SAFE -- Standard post-install service script; no malicious behavior.
LLM auditresponse for build-ui-linux.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script performs standard package management operations (apt update, remove, install) and runs `go build`. All commands are typical for a build environment. The removal and installation of indicator packages is a legitimate dependency change (switching to the Ayatana AppIndicator). There are no obfuscated commands, unexpected network requests, or attempts to exfiltrate data. The script aligns with normal packaging and build practices.
</details>
<summary>Standard build script with no malicious content.</summary>
</security_assessment>

[2/10] Reviewing src/netbird-0.63.0/client/netbird-entrypoint.sh, src/netbird-0.63.0/client/ui/build/netbird.desktop, src/netbird-0.63.0/Makefile, src/netbird-0.63.0/infrastructure_files/configure.sh, src/netbird-0.63.0/client/proto/generate.sh, src/netbird-0.63.0/release_files/install.sh, src/netbird-0.63.0/release_files/pre_remove.sh, src/netbird-0.63.0/release_files/ui-post-install.sh...
+ Reviewed src/netbird-0.63.0/client/ui/build/build-ui-linux.sh. Status: SAFE -- Standard build script with no malicious content.
LLM auditresponse for netbird-entrypoint.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a standard entrypoint for the NetBird VPN daemon. It runs the `netbird service run` command in the background, waits for the log line confirming startup, and optionally calls `netbird up` if not already logged in. All operations are limited to the package’s own declared binaries and configuration. No suspicious network requests, obfuscated code, file exfiltration, or execution of attacker-controlled content is present. Unpinned variables and SKIP checksums (if any in the PKGBUILD) are not relevant here; the script itself contains no supply-chain attack indicators.</details>
<summary>Clean entrypoint script; no malicious behavior detected.</summary>
</security_assessment>

[3/10] Reviewing src/netbird-0.63.0/client/ui/build/netbird.desktop, src/netbird-0.63.0/Makefile, src/netbird-0.63.0/infrastructure_files/configure.sh, src/netbird-0.63.0/client/proto/generate.sh, src/netbird-0.63.0/release_files/install.sh, src/netbird-0.63.0/release_files/pre_remove.sh, src/netbird-0.63.0/release_files/ui-post-install.sh...
+ Reviewed src/netbird-0.63.0/client/netbird-entrypoint.sh. Status: SAFE -- Clean entrypoint script; no malicious behavior detected.
LLM auditresponse for ui-post-install.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a standard post-install hook for restarting the netbird-ui application after an upgrade. It checks if the process is running using `pgrep`, retrieves the user ID, and restarts the process under the same user. All operations are confined to the application's own process and user context. There is no network activity, obfuscation, or access to sensitive files outside the application's scope. This is normal and expected behavior for a GUI application package.
</details>
<summary>Standard post-install restart script, no malicious behavior.</summary>
</security_assessment>

[4/10] Reviewing src/netbird-0.63.0/client/ui/build/netbird.desktop, src/netbird-0.63.0/Makefile, src/netbird-0.63.0/infrastructure_files/configure.sh, src/netbird-0.63.0/client/proto/generate.sh, src/netbird-0.63.0/release_files/install.sh, src/netbird-0.63.0/release_files/pre_remove.sh...
+ Reviewed src/netbird-0.63.0/release_files/ui-post-install.sh. Status: SAFE -- Standard post-install restart script, no malicious behavior.
LLM auditresponse for generate.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard development helper for generating Go protobuf code. It:
- Checks for the `realpath` utility.
- Installs two well-known protobuf Go tools (`protoc-gen-go` and `protoc-gen-go-grpc`) from the official Google repository at pinned versions (`v1.36.6` and `v1.1`).
- Runs `protoc` to generate code from `daemon.proto`.
- No obfuscation, no unexpected network destinations, no data exfiltration, no dangerous commands.
- The `go install` commands fetch from `google.golang.org`, which is the legitimate and expected source for these tools.
- The script matches standard AUR maintainer helper practices and poses no supply-chain risk.
</details>
<summary>Standard protobuf generation helper; no malicious content.</summary>
</security_assessment>

[5/10] Reviewing src/netbird-0.63.0/client/ui/build/netbird.desktop, src/netbird-0.63.0/Makefile, src/netbird-0.63.0/infrastructure_files/configure.sh, src/netbird-0.63.0/release_files/install.sh, src/netbird-0.63.0/release_files/pre_remove.sh...
+ Reviewed src/netbird-0.63.0/client/proto/generate.sh. Status: SAFE -- Standard protobuf generation helper; no malicious content.
LLM auditresponse for pre_remove.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a standard pre-removal script for the netbird service package. It checks for systemd, stops the service, removes the systemd unit file, runs daemon-reload, and calls `/usr/bin/netbird service uninstall`. All operations are confined to the package's own service and standard system directories. There is no obfuscation, no network activity, no data exfiltration, and no execution of untrusted code. The use of `|| true` to ignore errors is normal and not a security concern. This file follows expected AUR and packaging best practices for service management.
</details>
<summary>Standard package removal script, safe.</summary>
</security_assessment>

[6/10] Reviewing src/netbird-0.63.0/client/ui/build/netbird.desktop, src/netbird-0.63.0/Makefile, src/netbird-0.63.0/infrastructure_files/configure.sh, src/netbird-0.63.0/release_files/install.sh...
+ Reviewed src/netbird-0.63.0/release_files/pre_remove.sh. Status: SAFE -- Standard package removal script, safe.
LLM auditresponse for netbird.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Linux desktop entry file (`.desktop`) used to register the Netbird application in the system menu. It contains only `Name`, `Exec`, `Icon`, `Type`, `Terminal`, `Categories`, and `Keywords` fields. No code execution, network requests, obfuscated content, or any deviation from normal packaging practices is present. There is no security concern.
</details>
<summary>Standard desktop entry file, no malicious content.</summary>
</security_assessment>

[7/10] Reviewing src/netbird-0.63.0/Makefile, src/netbird-0.63.0/infrastructure_files/configure.sh, src/netbird-0.63.0/release_files/install.sh...
+ Reviewed src/netbird-0.63.0/client/ui/build/netbird.desktop. Status: SAFE -- Standard desktop entry file, no malicious content.
LLM auditresponse for Makefile:
<security_assessment>
<decision>SAFE</decision>
<details>
The provided Makefile is a standard development automation file for a Go project. It installs **golangci-lint** from its official GitHub repository (`github.com/golangci/golangci-lint`) using `go install`, which is a normal and expected build dependency for linting. The `setup-hooks` target configures local git hooks to run `make lint` on push—this is a common convenience for developers and does not involve any external network communication beyond what is already defined in the project's own repository. There is no obfuscated code, no suspicious downloads (e.g., `curl|bash`), no exfiltration of data, and no modification of system files outside the project scope. All operations are contained within the project's working directory and standard Go toolchain behavior, consistent with ordinary packaging practices for a development tool.
</details>
<summary>Standard Makefile for Go linting and hooks.</summary>
</security_assessment>

[8/10] Reviewing src/netbird-0.63.0/infrastructure_files/configure.sh, src/netbird-0.63.0/release_files/install.sh...
+ Reviewed src/netbird-0.63.0/Makefile. Status: SAFE -- Standard Makefile for Go linting and hooks.
LLM auditresponse for install.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is an installer script for the NetBird VPN/mesh networking tool. It downloads binaries from the project's own official GitHub releases (`https://github.com/netbirdio/netbird`) and package repositories (`https://pkgs.netbird.io/`), which are expected upstream sources. The script supports multiple package managers (apt, yum, dnf, brew, pkg) and binary installation, all standard practices.

No malicious patterns are present: no data exfiltration, no execution of code from unexpected hosts, no obfuscation, no backdoors. The script does include a fallback DNS option (`--dns-servers 8.8.8.8`) which is slightly unusual but not harmful. The overall behavior is consistent with a legitimate application installer.
</details>
<summary>Legitimate installer for NetBird; no malicious activity.</summary>
</security_assessment>

[9/10] Reviewing src/netbird-0.63.0/infrastructure_files/configure.sh...
+ Reviewed src/netbird-0.63.0/release_files/install.sh. Status: SAFE -- Legitimate installer for NetBird; no malicious activity.
LLM auditresponse for configure.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard configuration script for the Netbird self-hosting setup. It performs routine tasks: checking for required dependencies (curl, jq, envsubst), sourcing environment variables from `setup.env` and `base.setup.env`, fetching the OpenID Connect (OIDC) configuration from a user-specified endpoint (via `NETBIRD_AUTH_OIDC_CONFIGURATION_ENDPOINT`), generating random TURN passwords and relay auth secrets, and creating Docker Compose and other configuration files from templates using `envsubst`. The only external network calls are to the specified OIDC endpoint and to `https://jsonip.com` for public IP discovery (used for TURN external IP configuration). Both are legitimate for the application's purpose. There is no obfuscated code, no attempts to exfiltrate data to unexpected hosts, and no execution of untrusted code. The script is consistent with the project's self-hosting documentation and does not exhibit any signs of a supply-chain attack.
</details>
<summary>Standard self-hosting configuration script for Netbird.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/netbird-0.63.0/infrastructure_files/configure.sh. Status: SAFE -- Standard self-hosting configuration script for Netbird.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
(Skipped 1 file: netbird-0.63.0.tar.gz)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 37,624
  Completion Tokens: 7,661
  Total Tokens: 45,285
  Total Cost: $0.004765
  Execution Time: 74.49 seconds
Full audit report can be found in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-netbird-ui.txt
Final Status: SAFE


No issues found.


Audit Skips:

/home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-ryu6cyib/netbird-0.63.0.tar.gz: [SKIPPED] Skipping binary file: netbird-0.63.0.tar.gz
