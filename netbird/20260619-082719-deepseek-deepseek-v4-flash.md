---
package: netbird
pkgver: 0.73.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 11c93a0c95e2166961e3664fea6b5a63827ded10
prompt_tokens: 36989
completion_tokens: 8032
total_tokens: 45021
cost: 0.00477477
execution_time: 120.25
files_reviewed: 12
files_skipped: 0
date: 2026-06-19T08:27:18Z
file_verdicts:
  - file: netbird-server.service
    status: safe
    summary: Standard systemd service unit, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Clean PKGBUILD with no malicious behavior detected.
  - file: src/netbird-0.73.0/release_files/pre_remove.sh
    status: safe
    summary: Standard package removal script, no security issues.
  - file: src/netbird-0.73.0/client/ui/build/netbird.desktop
    status: safe
    summary: Standard desktop entry file with no security issues.
  - file: src/netbird-0.73.0/proxy/web/package.json
    status: safe
    summary: Standard package.json for a React/TypeScript project.
  - file: src/netbird-0.73.0/release_files/post_install.sh
    status: safe
    summary: Standard post-install script, no malicious content.
  - file: src/netbird-0.73.0/Makefile
    status: safe
    summary: Standard developer tooling Makefile; no malicious behavior.
  - file: src/netbird-0.73.0/client/proto/generate.sh
    status: safe
    summary: Standard protobuf generation script, no malicious behavior.
  - file: "src/netbird-0.73.0/release_files/systemd/netbird@.service"
    status: safe
    summary: Standard systemd service, no malicious content.
  - file: src/netbird-0.73.0/release_files/install.sh
    status: safe
    summary: Standard NetBird install script, no evidence of supply-chain attack.
  - file: src/netbird-0.73.0/proxy/web/vite.config.ts
    status: safe
    summary: Standard Vite config, no security concerns.
  - file: src/netbird-0.73.0/client/ui/build/build-ui-linux.sh
    status: safe
    summary: Standard build script, no malicious indicators.
---

Cloning https://aur.archlinux.org/netbird.git to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-5oejzvyt...
Cloned repository to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-5oejzvyt
Analyzing netbird AUR package (working in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-5oejzvyt) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD defines standard variables and arrays. The `source` array points to a tarball from the official Netbird GitHub repository with a pinned SHA-256 checksum. There are no top-level command substitutions, no `pkgver()` function, and no code that executes network requests or system commands during sourcing. The `prepare()`, `build()`, and `package()` functions contain only standard Go build and installation steps, but these are not executed by `makepkg --nobuild --nodeps --noprepare` or `makepkg --printsrcinfo`. No obfuscation, dangerous commands, or unexpected data exfiltration is present. The file is consistent with normal AUR packaging practices.
</details>
<summary>No malicious code executed at fetch/source scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- No malicious code executed at fetch/source scope.[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
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
This is a standard systemd service file for the netbird-server daemon. It defines the execution path, configuration file location, restart behavior, and a set of security‑hardening directives (sandboxing). There is no evidence of malicious or unexpected behavior; no network requests, downloads, obfuscation, or dangerous commands are present. It follows normal packaging practices for system services.
</details>
<summary>Standard systemd service unit, no malicious content.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed netbird-server.service. Status: SAFE -- Standard systemd service unit, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard Arch packaging practices for building a Go application from an official GitHub release. The source tarball is fetched from `github.com/netbirdio/netbird` with a pinned version tag and a SHA-256 checksum is provided. The build process invokes standard Go toolchain commands and does not execute any untrusted code, download additional resources from non-upstream hosts, or perform obfuscated operations. The systemd service file referenced in the source array is a local file from the AUR repository, which is typical. No indicators of supply-chain compromise, such as data exfiltration, backdoors, or unexpected network requests, are present.
</details>
<summary>
Clean PKGBUILD with no malicious behavior detected.
</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Clean PKGBUILD with no malicious behavior detected.
Reviewed all required files.
Deciding which files to review next...
Note: 1928 files available for selection; offering the 50 highest-priority to the model. 1363 lower-priority file(s) were not offered.
LLM response for file selection:
src/netbird-0.73.0/Makefile
src/netbird-0.73.0/client/proto/generate.sh
src/netbird-0.73.0/client/ui/build/build-ui-linux.sh
src/netbird-0.73.0/client/ui/build/netbird.desktop
src/netbird-0.73.0/proxy/web/package.json
src/netbird-0.73.0/proxy/web/vite.config.ts
src/netbird-0.73.0/release_files/install.sh
src/netbird-0.73.0/release_files/post_install.sh
src/netbird-0.73.0/release_files/pre_remove.sh
src/netbird-0.73.0/release_files/systemd/netbird@.service
Decided to review 10 additional files: src/netbird-0.73.0/Makefile, src/netbird-0.73.0/client/proto/generate.sh, src/netbird-0.73.0/client/ui/build/build-ui-linux.sh, src/netbird-0.73.0/client/ui/build/netbird.desktop, src/netbird-0.73.0/proxy/web/package.json, src/netbird-0.73.0/proxy/web/vite.config.ts, src/netbird-0.73.0/release_files/install.sh, src/netbird-0.73.0/release_files/post_install.sh, src/netbird-0.73.0/release_files/pre_remove.sh, src/netbird-0.73.0/release_files/systemd/netbird@.service
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/netbird-0.73.0/Makefile...
[0/10] Reviewing src/netbird-0.73.0/Makefile, src/netbird-0.73.0/client/proto/generate.sh...
[0/10] Reviewing src/netbird-0.73.0/Makefile, src/netbird-0.73.0/client/proto/generate.sh, src/netbird-0.73.0/client/ui/build/netbird.desktop...
[0/10] Reviewing src/netbird-0.73.0/Makefile, src/netbird-0.73.0/client/proto/generate.sh, src/netbird-0.73.0/client/ui/build/netbird.desktop, src/netbird-0.73.0/client/ui/build/build-ui-linux.sh...
[0/10] Reviewing src/netbird-0.73.0/Makefile, src/netbird-0.73.0/client/proto/generate.sh, src/netbird-0.73.0/client/ui/build/netbird.desktop, src/netbird-0.73.0/client/ui/build/build-ui-linux.sh, src/netbird-0.73.0/proxy/web/package.json...
[0/10] Reviewing src/netbird-0.73.0/Makefile, src/netbird-0.73.0/client/proto/generate.sh, src/netbird-0.73.0/client/ui/build/netbird.desktop, src/netbird-0.73.0/client/ui/build/build-ui-linux.sh, src/netbird-0.73.0/proxy/web/package.json, src/netbird-0.73.0/proxy/web/vite.config.ts...
[0/10] Reviewing src/netbird-0.73.0/Makefile, src/netbird-0.73.0/client/proto/generate.sh, src/netbird-0.73.0/client/ui/build/netbird.desktop, src/netbird-0.73.0/client/ui/build/build-ui-linux.sh, src/netbird-0.73.0/proxy/web/package.json, src/netbird-0.73.0/proxy/web/vite.config.ts, src/netbird-0.73.0/release_files/install.sh...
[0/10] Reviewing src/netbird-0.73.0/Makefile, src/netbird-0.73.0/client/proto/generate.sh, src/netbird-0.73.0/client/ui/build/netbird.desktop, src/netbird-0.73.0/client/ui/build/build-ui-linux.sh, src/netbird-0.73.0/proxy/web/package.json, src/netbird-0.73.0/proxy/web/vite.config.ts, src/netbird-0.73.0/release_files/install.sh, src/netbird-0.73.0/release_files/pre_remove.sh...
[0/10] Reviewing src/netbird-0.73.0/Makefile, src/netbird-0.73.0/client/proto/generate.sh, src/netbird-0.73.0/client/ui/build/netbird.desktop, src/netbird-0.73.0/client/ui/build/build-ui-linux.sh, src/netbird-0.73.0/proxy/web/package.json, src/netbird-0.73.0/proxy/web/vite.config.ts, src/netbird-0.73.0/release_files/install.sh, src/netbird-0.73.0/release_files/pre_remove.sh, src/netbird-0.73.0/release_files/post_install.sh...
[0/10] Reviewing src/netbird-0.73.0/Makefile, src/netbird-0.73.0/client/proto/generate.sh, src/netbird-0.73.0/client/ui/build/netbird.desktop, src/netbird-0.73.0/client/ui/build/build-ui-linux.sh, src/netbird-0.73.0/proxy/web/package.json, src/netbird-0.73.0/proxy/web/vite.config.ts, src/netbird-0.73.0/release_files/install.sh, src/netbird-0.73.0/release_files/pre_remove.sh, src/netbird-0.73.0/release_files/post_install.sh, src/netbird-0.73.0/release_files/systemd/netbird@.service...
LLM auditresponse for pre_remove.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard pre-uninstall script for the netbird package. It stops the systemd service, removes the service file, and executes the netbird service uninstall command. All operations are confined to the package's own service and systemd utilities. There are no network requests, no obfuscated code, and no manipulation of unrelated system files. The script performs only expected cleanup actions.
</details>
<summary>Standard package removal script, no security issues.</summary>
</security_assessment>

[1/10] Reviewing src/netbird-0.73.0/Makefile, src/netbird-0.73.0/client/proto/generate.sh, src/netbird-0.73.0/client/ui/build/netbird.desktop, src/netbird-0.73.0/client/ui/build/build-ui-linux.sh, src/netbird-0.73.0/proxy/web/package.json, src/netbird-0.73.0/proxy/web/vite.config.ts, src/netbird-0.73.0/release_files/install.sh, src/netbird-0.73.0/release_files/post_install.sh, src/netbird-0.73.0/release_files/systemd/netbird@.service...
+ Reviewed src/netbird-0.73.0/release_files/pre_remove.sh. Status: SAFE -- Standard package removal script, no security issues.
LLM auditresponse for netbird.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.desktop` file for the Netbird application. It simply defines the application's name, launcher executable path (`/usr/bin/netbird-ui`), icon, type, and categorization. There are no network requests, obfuscated code, or unexpected operations. The content conforms to the freedesktop.org Desktop Entry Specification and does not exhibit any malicious behavior.
</details>
<summary>Standard desktop entry file with no security issues.</summary>
</security_assessment>

[2/10] Reviewing src/netbird-0.73.0/Makefile, src/netbird-0.73.0/client/proto/generate.sh, src/netbird-0.73.0/client/ui/build/build-ui-linux.sh, src/netbird-0.73.0/proxy/web/package.json, src/netbird-0.73.0/proxy/web/vite.config.ts, src/netbird-0.73.0/release_files/install.sh, src/netbird-0.73.0/release_files/post_install.sh, src/netbird-0.73.0/release_files/systemd/netbird@.service...
+ Reviewed src/netbird-0.73.0/client/ui/build/netbird.desktop. Status: SAFE -- Standard desktop entry file with no security issues.
LLM auditresponse for package.json:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `package.json` for a React/TypeScript web application. It declares dependencies (React, Tailwind CSS, Vite, etc.) and devDependencies (TypeScript, ESLint, etc.) all from well-known npm packages. The scripts (`dev`, `build`, `lint`, `preview`) only launch local tooling (vite, tsc, eslint). There are no suspicious network requests, obfuscated code, or any attempt to exfiltrate data or execute arbitrary commands. The content is entirely consistent with a legitimate frontend project manifest.
</details>
<summary>Standard package.json for a React/TypeScript project.</summary>
</security_assessment>

[3/10] Reviewing src/netbird-0.73.0/Makefile, src/netbird-0.73.0/client/proto/generate.sh, src/netbird-0.73.0/client/ui/build/build-ui-linux.sh, src/netbird-0.73.0/proxy/web/vite.config.ts, src/netbird-0.73.0/release_files/install.sh, src/netbird-0.73.0/release_files/post_install.sh, src/netbird-0.73.0/release_files/systemd/netbird@.service...
+ Reviewed src/netbird-0.73.0/proxy/web/package.json. Status: SAFE -- Standard package.json for a React/TypeScript project.
LLM auditresponse for post_install.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard post-install script for a system service. It checks for systemd availability, then on clean install calls `/usr/bin/netbird service install` and `/usr/bin/netbird service start`. On upgrade, it stops the old service, removes the old unit file, and re-runs the install/start commands. There are no network requests, obfuscation, dangerous command substitutions, or unexpected file operations. All actions are within the expected scope of a service package post-installation routine.
</details>
<summary>Standard post-install script, no malicious content.</summary>
</security_assessment>

[4/10] Reviewing src/netbird-0.73.0/Makefile, src/netbird-0.73.0/client/proto/generate.sh, src/netbird-0.73.0/client/ui/build/build-ui-linux.sh, src/netbird-0.73.0/proxy/web/vite.config.ts, src/netbird-0.73.0/release_files/install.sh, src/netbird-0.73.0/release_files/systemd/netbird@.service...
+ Reviewed src/netbird-0.73.0/release_files/post_install.sh. Status: SAFE -- Standard post-install script, no malicious content.
LLM auditresponse for Makefile:
<security_assessment>
<decision>SAFE</decision>
<details>
This Makefile is a standard developer tooling configuration for a Go project. It installs `golangci-lint` from the official Go module source (`github.com/golangci/golangci-lint`) using `go install`, runs linting on changed files or the full codebase, and configures git hooks. There is no malicious behavior: no unexpected network requests (the only network activity is fetching the linter from its official upstream), no obfuscated code, no exfiltration of data, and no dangerous commands like `curl|bash` or `eval`. The commands are entirely routine for a Go project's development workflow. Even the `setup-hooks` target merely sets `core.hooksPath` and adds execute permission to a pre-push hook script; it does not execute any untrusted code nor download anything. This file poses no supply-chain risk.
</details>
<summary>Standard developer tooling Makefile; no malicious behavior.</summary>
</security_assessment>

[5/10] Reviewing src/netbird-0.73.0/client/proto/generate.sh, src/netbird-0.73.0/client/ui/build/build-ui-linux.sh, src/netbird-0.73.0/proxy/web/vite.config.ts, src/netbird-0.73.0/release_files/install.sh, src/netbird-0.73.0/release_files/systemd/netbird@.service...
+ Reviewed src/netbird-0.73.0/Makefile. Status: SAFE -- Standard developer tooling Makefile; no malicious behavior.
LLM auditresponse for generate.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard protobuf code generation helper. It installs two well-known Go protobuf tools (`protoc-gen-go` and `protoc-gen-go-grpc`) from the official Google module path using `go install` with pinned versions, then runs `protoc` to generate Go code from a `.proto` file. There is no obfuscation, no suspicious network destinations, no exfiltration, and no execution of untrusted content. The script performs only routine development tasks.
</details>
<summary>Standard protobuf generation script, no malicious behavior.</summary>
</security_assessment>

[6/10] Reviewing src/netbird-0.73.0/client/ui/build/build-ui-linux.sh, src/netbird-0.73.0/proxy/web/vite.config.ts, src/netbird-0.73.0/release_files/install.sh, src/netbird-0.73.0/release_files/systemd/netbird@.service...
+ Reviewed src/netbird-0.73.0/client/proto/generate.sh. Status: SAFE -- Standard protobuf generation script, no malicious behavior.
LLM auditresponse for netbird@.service:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard systemd service unit for the Netbird client. It defines a service that runs `/usr/bin/netbird service run` with proper logging, socket, and environment file configuration. The service includes extensive sandboxing directives (e.g., LockPersonality, MemoryDenyWriteExecute, NoNewPrivileges, PrivateTmp, ProtectSystem) which are typical security hardening measures for system services. There are no obfuscated commands, network requests, file operations, or any other suspicious content. The service file follows normal packaging and systemd practices.
</details>
<summary>Standard systemd service, no malicious content.</summary>
</security_assessment>

[7/10] Reviewing src/netbird-0.73.0/client/ui/build/build-ui-linux.sh, src/netbird-0.73.0/proxy/web/vite.config.ts, src/netbird-0.73.0/release_files/install.sh...
+ Reviewed src/netbird-0.73.0/release_files/systemd/netbird@.service. Status: SAFE -- Standard systemd service, no malicious content.
LLM auditresponse for install.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script performs standard installation operations for the NetBird VPN client: detecting the OS, downloading binaries from the project's own GitHub releases (`https://github.com/netbirdio/netbird/releases`) and its package repository (`https://pkgs.netbird.io`), adding APT/YUM repos, and managing system services. All network destinations are legitimate upstream hosts. The fallback DNS (`--dns-servers 8.8.8.8`) is unconventional but not malicious—it is a workaround for potential DNS resolution failures during binary download. There is no obfuscated code, no use of `eval`, no data exfiltration, and no execution of code from untrusted sources. All commands (curl, tar, unzip, apt, yum, dnf, installer) are used in expected ways for package management and binary installation. The script also safely handles environment variables like `GITHUB_TOKEN` for authenticated requests, which is a normal upstream practice.
</details>
<summary>Standard NetBird install script, no evidence of supply-chain attack.</summary>
</security_assessment>

[8/10] Reviewing src/netbird-0.73.0/client/ui/build/build-ui-linux.sh, src/netbird-0.73.0/proxy/web/vite.config.ts...
+ Reviewed src/netbird-0.73.0/release_files/install.sh. Status: SAFE -- Standard NetBird install script, no evidence of supply-chain attack.
LLM auditresponse for vite.config.ts:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Vite configuration file for a frontend application. It configures plugins (React, Tailwind CSS), sets a base URL (`/__netbird__/`), defines a path alias for `@/`, sets server/preview ports, and customizes the build output structure. There is no obfuscated code, no unexpected network requests, no system file operations, and no dangerous command execution. The configuration is consistent with normal packaging practice for a web application.
</details>
<summary>Standard Vite config, no security concerns.</summary>
</security_assessment>

[9/10] Reviewing src/netbird-0.73.0/client/ui/build/build-ui-linux.sh...
+ Reviewed src/netbird-0.73.0/proxy/web/vite.config.ts. Status: SAFE -- Standard Vite config, no security concerns.
LLM auditresponse for build-ui-linux.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a straightforward build helper for the Netbird UI on Linux. It updates package lists, removes a conflicting library (gir1.2-appindicator3-0.1) to resolve a dependency, installs the replacement `libayatana-appindicator3-dev`, and then runs `go build`. There are no suspicious network requests, no obfuscated commands, no attempts to exfiltrate data or execute untrusted code. The operations are limited to standard system package management and building the project's own Go code. The use of `sudo` is typical for user-side environment setup and does not indicate malice within the packaging context.
</details>
<summary>Standard build script, no malicious indicators.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/netbird-0.73.0/client/ui/build/build-ui-linux.sh. Status: SAFE -- Standard build script, no malicious indicators.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 36,989
  Completion Tokens: 8,032
  Total Tokens: 45,021
  Total Cost: $0.004775
  Execution Time: 120.25 seconds
Full audit report can be found in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-netbird.txt
Final Status: SAFE


No issues found.
