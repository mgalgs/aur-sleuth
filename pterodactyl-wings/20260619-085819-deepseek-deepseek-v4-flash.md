---
package: pterodactyl-wings
pkgver: 1.13.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 11c93a0c95e2166961e3664fea6b5a63827ded10
prompt_tokens: 57131
completion_tokens: 8120
total_tokens: 65251
cost: 0.00660339
execution_time: 123.89
files_reviewed: 12
files_skipped: 0
date: 2026-06-19T08:58:19Z
file_verdicts:
  - file: pterodactyl-wings.service
    status: safe
    summary: Standard systemd service file, no issues.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR package, no signs of malicious code.
  - file: src/wings-1.13.0/remote/http.go
    status: safe
    summary: Standard HTTP client, no malicious behavior.
  - file: src/wings-1.13.0/environment/docker.go
    status: safe
    summary: Standard Docker network management code for Pterodactyl Wings.
  - file: src/wings-1.13.0/remote/servers.go
    status: safe
    summary: Standard upstream application code; no malicious behavior detected.
  - file: src/wings-1.13.0/environment/settings.go
    status: safe
    summary: Legitimate Go code for container resource management.
  - file: src/wings-1.13.0/config/config_docker.go
    status: safe
    summary: Standard Go configuration structs, no malicious behavior found.
  - file: src/wings-1.13.0/Makefile
    status: safe
    summary: Standard build Makefile with no malicious indicators.
  - file: src/wings-1.13.0/config/config.go
    status: safe
    summary: Clean upstream configuration code, no malicious indicators.
  - file: src/wings-1.13.0/cmd/diagnostics.go
    status: safe
    summary: Legitimate diagnostic tool from upstream, no malicious behavior.
  - file: src/wings-1.13.0/cmd/configure.go
    status: safe
    summary: Standard configuration fetcher; no malicious behavior found.
  - file: src/wings-1.13.0/cmd/root.go
    status: safe
    summary: No malicious behavior; standard application source code.
---

Cloning https://aur.archlinux.org/pterodactyl-wings.git to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-oldxf1lq...
Cloned repository to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-oldxf1lq
Analyzing pterodactyl-wings AUR package (working in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-oldxf1lq) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable assignments and function definitions. No `pkgver()` function is present, and the global/top-level scope consists solely of setting metadata and defining the `source` array. The `source` uses HTTPS URLs from the official upstream repository (`github.com/pterodactyl/wings`) with pinned SHA-256 checksums (not `SKIP`). There are no commands, command substitutions, or function calls that would execute when the PKGBUILD is sourced. The `build()` and `package()` functions are defined but are not executed during the `--nobuild`/`--noprepare` commands. Therefore, fetching sources and sourcing the PKGBUILD for this gate is safe from malicious behavior.
</details>
<summary>No malicious code in PKGBUILD global scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- No malicious code in PKGBUILD global scope.[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, pterodactyl-wings.service...
LLM auditresponse for pterodactyl-wings.service:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard systemd unit file for the Pterodactyl Wings daemon. It defines dependencies on docker.service, runs as root, and executes `/usr/bin/wings`. There are no suspicious commands, network requests, obfuscation, or unexpected operations. The configuration is typical for a service of this nature. No security concerns detected.
</details>
<summary>Standard systemd service file, no issues.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed pterodactyl-wings.service. Status: SAFE -- Standard systemd service file, no issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a straightforward Arch packaging script for the Pterodactyl Wings daemon. It downloads the source code from the official GitHub repository using a pinned version tag and verifies it with a valid SHA256 checksum. The build process uses standard Go tooling, and the install steps copy the binary and a systemd service file into the package directory. There are no obfuscated commands, unexpected network requests, or execution of untrusted code. The only anomaly is a typo in the `install -d 640` command for `/etc/pterodactyl` — setting a non-executable permission (640) on a directory, which would prevent entering it. This is a packaging bug (likely should be `755` or `750`), not evidence of a supply-chain attack. It may cause runtime issues for the application but does not exfiltrate data or introduce a backdoor. No genuinely malicious behavior is present.
</details>
<summary>Standard AUR package, no signs of malicious code.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR package, no signs of malicious code.
Reviewed all required files.
Deciding which files to review next...
Note: 156 files available for selection; offering the 50 highest-priority to the model. 81 lower-priority file(s) were not offered.
LLM response for file selection:
src/wings-1.13.0/Makefile
src/wings-1.13.0/cmd/configure.go
src/wings-1.13.0/cmd/diagnostics.go
src/wings-1.13.0/cmd/root.go
src/wings-1.13.0/config/config.go
src/wings-1.13.0/config/config_docker.go
src/wings-1.13.0/environment/docker.go
src/wings-1.13.0/remote/http.go
src/wings-1.13.0/remote/servers.go
src/wings-1.13.0/environment/settings.go
Decided to review 10 additional files: src/wings-1.13.0/Makefile, src/wings-1.13.0/cmd/configure.go, src/wings-1.13.0/cmd/diagnostics.go, src/wings-1.13.0/cmd/root.go, src/wings-1.13.0/config/config.go, src/wings-1.13.0/config/config_docker.go, src/wings-1.13.0/environment/docker.go, src/wings-1.13.0/remote/http.go, src/wings-1.13.0/remote/servers.go, src/wings-1.13.0/environment/settings.go
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/wings-1.13.0/cmd/configure.go...
[0/10] Reviewing src/wings-1.13.0/cmd/configure.go, src/wings-1.13.0/Makefile...
[0/10] Reviewing src/wings-1.13.0/cmd/configure.go, src/wings-1.13.0/Makefile, src/wings-1.13.0/cmd/diagnostics.go...
[0/10] Reviewing src/wings-1.13.0/cmd/configure.go, src/wings-1.13.0/Makefile, src/wings-1.13.0/cmd/diagnostics.go, src/wings-1.13.0/cmd/root.go...
[0/10] Reviewing src/wings-1.13.0/cmd/configure.go, src/wings-1.13.0/Makefile, src/wings-1.13.0/cmd/diagnostics.go, src/wings-1.13.0/cmd/root.go, src/wings-1.13.0/config/config.go...
[0/10] Reviewing src/wings-1.13.0/cmd/configure.go, src/wings-1.13.0/Makefile, src/wings-1.13.0/cmd/diagnostics.go, src/wings-1.13.0/cmd/root.go, src/wings-1.13.0/config/config.go, src/wings-1.13.0/config/config_docker.go...
[0/10] Reviewing src/wings-1.13.0/cmd/configure.go, src/wings-1.13.0/Makefile, src/wings-1.13.0/cmd/diagnostics.go, src/wings-1.13.0/cmd/root.go, src/wings-1.13.0/config/config.go, src/wings-1.13.0/config/config_docker.go, src/wings-1.13.0/remote/http.go...
[0/10] Reviewing src/wings-1.13.0/cmd/configure.go, src/wings-1.13.0/Makefile, src/wings-1.13.0/cmd/diagnostics.go, src/wings-1.13.0/cmd/root.go, src/wings-1.13.0/config/config.go, src/wings-1.13.0/config/config_docker.go, src/wings-1.13.0/remote/http.go, src/wings-1.13.0/environment/docker.go...
[0/10] Reviewing src/wings-1.13.0/cmd/configure.go, src/wings-1.13.0/Makefile, src/wings-1.13.0/cmd/diagnostics.go, src/wings-1.13.0/cmd/root.go, src/wings-1.13.0/config/config.go, src/wings-1.13.0/config/config_docker.go, src/wings-1.13.0/remote/http.go, src/wings-1.13.0/environment/docker.go, src/wings-1.13.0/remote/servers.go...
[0/10] Reviewing src/wings-1.13.0/cmd/configure.go, src/wings-1.13.0/Makefile, src/wings-1.13.0/cmd/diagnostics.go, src/wings-1.13.0/cmd/root.go, src/wings-1.13.0/config/config.go, src/wings-1.13.0/config/config_docker.go, src/wings-1.13.0/remote/http.go, src/wings-1.13.0/environment/docker.go, src/wings-1.13.0/remote/servers.go, src/wings-1.13.0/environment/settings.go...
LLM auditresponse for http.go:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard HTTP client implementation for communicating with the Pterodactyl Panel API. It constructs authenticated requests using bearer tokens, handles retries with exponential backoff, and provides helper methods for parsing responses. There is no obfuscated code, no execution of arbitrary commands, no network requests to unexpected destinations, and no attempts to exfiltrate data or modify system files. The code follows conventional Go HTTP client patterns and is consistent with the stated purpose of the package.
</details>
<summary>Standard HTTP client, no malicious behavior.</summary>
</security_assessment>

[1/10] Reviewing src/wings-1.13.0/cmd/configure.go, src/wings-1.13.0/Makefile, src/wings-1.13.0/cmd/diagnostics.go, src/wings-1.13.0/cmd/root.go, src/wings-1.13.0/config/config.go, src/wings-1.13.0/config/config_docker.go, src/wings-1.13.0/environment/docker.go, src/wings-1.13.0/remote/servers.go, src/wings-1.13.0/environment/settings.go...
+ Reviewed src/wings-1.13.0/remote/http.go. Status: SAFE -- Standard HTTP client, no malicious behavior.
LLM auditresponse for docker.go:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `docker.go` is a standard Go source file for the Pterodactyl Wings application. It provides functionality to create and manage a Docker network for containerized game servers. The code uses the official Docker client library and performs network creation, inspection, and configuration updates. There are no unusual network requests, obfuscated commands, or attempts to exfiltrate data. All operations are consistent with the application's stated purpose of managing Docker environments. No evidence of a supply-chain attack or malicious injection was found.
</details>
<summary>Standard Docker network management code for Pterodactyl Wings.</summary>
</security_assessment>

[2/10] Reviewing src/wings-1.13.0/cmd/configure.go, src/wings-1.13.0/Makefile, src/wings-1.13.0/cmd/diagnostics.go, src/wings-1.13.0/cmd/root.go, src/wings-1.13.0/config/config.go, src/wings-1.13.0/config/config_docker.go, src/wings-1.13.0/remote/servers.go, src/wings-1.13.0/environment/settings.go...
+ Reviewed src/wings-1.13.0/environment/docker.go. Status: SAFE -- Standard Docker network management code for Pterodactyl Wings.
LLM auditresponse for servers.go:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `servers.go` is a standard Go source file from the Pterodactyl Wings application. It implements HTTP client methods for communicating with the Panel API (e.g., fetching server configurations, resetting server states, SFTP credential validation, backup upload URLs, and activity logging). All network requests are made to the Panel's API endpoints via the `client` struct's methods (`Get`, `Post`). There is no obfuscated code, no execution of external scripts or binaries, no exfiltration of data to unexpected hosts, and no tampering with system files. The operations are consistent with the application's stated purpose: managing game servers. No supply-chain attack indicators are present.
</details>
<summary>
Standard upstream application code; no malicious behavior detected.</summary>
</security_assessment>

[3/10] Reviewing src/wings-1.13.0/cmd/configure.go, src/wings-1.13.0/Makefile, src/wings-1.13.0/cmd/diagnostics.go, src/wings-1.13.0/cmd/root.go, src/wings-1.13.0/config/config.go, src/wings-1.13.0/config/config_docker.go, src/wings-1.13.0/environment/settings.go...
+ Reviewed src/wings-1.13.0/remote/servers.go. Status: SAFE -- Standard upstream application code; no malicious behavior detected.
LLM auditresponse for settings.go:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is part of the Pterodactyl Wings daemon and contains standard Go code for managing Docker container resource limits, mounts, and environment variables. The code is well-structured and uses typical libraries (`docker`, `apex/log`, `math`, `os`, `strconv`). There are no suspicious network requests, obfuscation, base64 decoding, or unusual file operations. The `blkioWeightSupported()` function checks for cgroup files, which is normal for container resource management. The `Variables.Get()` function safely handles type conversion without exposing any vulnerability. No signs of supply-chain attack or malicious behavior.
</details>
<summary>
Legitimate Go code for container resource management.</summary>
</security_assessment>

[4/10] Reviewing src/wings-1.13.0/cmd/configure.go, src/wings-1.13.0/Makefile, src/wings-1.13.0/cmd/diagnostics.go, src/wings-1.13.0/cmd/root.go, src/wings-1.13.0/config/config.go, src/wings-1.13.0/config/config_docker.go...
+ Reviewed src/wings-1.13.0/environment/settings.go. Status: SAFE -- Legitimate Go code for container resource management.
LLM auditresponse for config_docker.go:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `config_docker.go` defines Go structs and methods for Docker network and registry configuration in the Pterodactyl Wings daemon. It imports `encoding/base64` and `encoding/json`, both used legitimately—`base64.URLEncoding.EncodeToString` encodes registry credentials for Docker authentication, a standard practice. No obfuscated code, external network calls, file operations, or system modifications are present. The logic is limited to configuration parsing, multiplier selection, and log config helpers. This is normal upstream application code for a game server management daemon, not a supply-chain attack.
</details>
<summary>
Standard Go configuration structs, no malicious behavior found.</summary>
</security_assessment>

[5/10] Reviewing src/wings-1.13.0/cmd/configure.go, src/wings-1.13.0/Makefile, src/wings-1.13.0/cmd/diagnostics.go, src/wings-1.13.0/cmd/root.go, src/wings-1.13.0/config/config.go...
+ Reviewed src/wings-1.13.0/config/config_docker.go. Status: SAFE -- Standard Go configuration structs, no malicious behavior found.
LLM auditresponse for Makefile:
<security_assessment>
<decision>SAFE</decision>
<details>
The Makefile is a standard build file for the pterodactyl-wings Go project. It contains targets for building (`build`), debugging (`debug`, `rmdebug`), and cross-compilation (`cross-build`). No signs of obfuscation, encoded commands, unexpected network requests (e.g., `curl`, `wget`), or exfiltration are present. The `--ignore-certificate-errors` flag in debug targets is a debugging convenience and does not represent a supply-chain attack. The `rmdebug` target uses `dlv` for remote debugging, which is a developer tool, not malicious. All commands are consistent with normal project development workflows. There is no evidence of injected malicious code.
</details>
<summary>
Standard build Makefile with no malicious indicators.</summary>
</security_assessment>

[6/10] Reviewing src/wings-1.13.0/cmd/configure.go, src/wings-1.13.0/cmd/diagnostics.go, src/wings-1.13.0/cmd/root.go, src/wings-1.13.0/config/config.go...
+ Reviewed src/wings-1.13.0/Makefile. Status: SAFE -- Standard build Makefile with no malicious indicators.
LLM auditresponse for config.go:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard configuration management module for the Pterodactyl Wings daemon. It defines configuration structures, reads/writes YAML configuration files, manages system directories, creates a system user (`pterodactyl`) via `useradd`/`adduser`, configures log rotation, and sets the timezone. All operations are within the expected scope of the upstream application: creating the daemon's runtime environment, reading tokens from environment variables or files, and writing logrotate configuration to `/etc/logrotate.d/wings`. There are no suspicious network requests, obfuscated commands, encoded payloads, downloads from unexpected sources, or other indicators of a supply-chain attack. The `Expand` function that reads file paths prefixed with `file://` is a legitimate feature for loading credentials via systemd `LoadCredential` and is not malicious. The code is consistent with the published Pterodactyl Wings source.
</details>
<summary>Clean upstream configuration code, no malicious indicators.</summary>
</security_assessment>

[7/10] Reviewing src/wings-1.13.0/cmd/configure.go, src/wings-1.13.0/cmd/diagnostics.go, src/wings-1.13.0/cmd/root.go...
+ Reviewed src/wings-1.13.0/config/config.go. Status: SAFE -- Clean upstream configuration code, no malicious indicators.
LLM auditresponse for diagnostics.go:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a legitimate upstream diagnostic command for the Pterodactyl Wings daemon. It collects system info, Docker status, configuration, and logs, then optionally uploads the report to a hastebin-like server (default `https://ptero.co`). The code uses standard Go libraries, runs `docker ps` and `tail` via `exec.Command` (with separate arguments, no injection), and prompts the user for consent before including sensitive endpoints and before uploading. The `uploadToHastebin` function posts data to the user-configurable URL over plain HTTP/HTTPS, but the destination is the project's own service; there is no obfuscation, no execution of downloaded content, and no exfiltration of unrelated system files (SSH keys, etc.). The redaction logic properly removes endpoints if the user declines inclusion. Overall, the behavior is consistent with a normal diagnostic tool and does not contain evidence of a supply-chain attack.
</details>
<summary>Legitimate diagnostic tool from upstream, no malicious behavior.</summary>
</security_assessment>

[8/10] Reviewing src/wings-1.13.0/cmd/configure.go, src/wings-1.13.0/cmd/root.go...
+ Reviewed src/wings-1.13.0/cmd/diagnostics.go. Status: SAFE -- Legitimate diagnostic tool from upstream, no malicious behavior.
LLM auditresponse for configure.go:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is the upstream `configure` subcommand for Pterodactyl Wings. It fetches the daemon's configuration from a Pterodactyl Panel using an API token, then writes it to disk. The code is standard for this kind of CLI tool: it accepts a panel URL, token, and node ID (via flags or interactive prompts), constructs an HTTP GET request to `api/application/nodes/{node}/configuration`, and saves the JSON response. There is no obfuscation, no unexpected network requests, no execution of downloaded code, and no exfiltration of local data. The `--allow-insecure` flag disables TLS verification &mdash; this is a standard development/testing option (not a supply-chain attack), though it may be noted as a security consideration for production use.
</details>
<summary>Standard configuration fetcher; no malicious behavior found.</summary>
</security_assessment>

[9/10] Reviewing src/wings-1.13.0/cmd/root.go...
+ Reviewed src/wings-1.13.0/cmd/configure.go. Status: SAFE -- Standard configuration fetcher; no malicious behavior found.
LLM auditresponse for root.go:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `root.go` is the main entry point for the Pterodactyl Wings server application, part of the Pterodactyl game server management ecosystem. It performs standard server initialization: loading configuration from disk, setting up logging (including log rotation), ensuring required directories and system user exist, configuring Docker, initializing a database, loading server managers, and starting HTTP/S (with optional automatic TLS via Let&#39;s Encrypt) and SFTP servers. All operations are consistent with the application&#39;s stated purpose of managing game servers and communicating with the Pterodactyl Panel. No obfuscated code, unexpected network calls, or execution of externally downloaded scripts is present. The only user-configurable network destinations are to the panel (for API communication) and to Let&#39;s Encrypt (if auto-TLS is enabled), both of which are expected. There is no evidence of data exfiltration, backdoors, or supply-chain attack injection.
</details>
<summary>
No malicious behavior; standard application source code.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/wings-1.13.0/cmd/root.go. Status: SAFE -- No malicious behavior; standard application source code.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 57,131
  Completion Tokens: 8,120
  Total Tokens: 65,251
  Total Cost: $0.006603
  Execution Time: 123.89 seconds
Full audit report can be found in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-pterodactyl-wings.txt
Final Status: SAFE


No issues found.
