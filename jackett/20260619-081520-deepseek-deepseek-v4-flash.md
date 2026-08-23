---
package: jackett
pkgver: 0.24.2079
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 11c93a0c95e2166961e3664fea6b5a63827ded10
prompt_tokens: 57404
completion_tokens: 10278
total_tokens: 67682
cost: 0.00701640
execution_time: 107.77
files_reviewed: 12
files_skipped: 0
date: 2026-06-19T08:15:20Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD; no signs of malicious injection.
  - file: jackett.tmpfiles
    status: safe
    summary: Standard tmpfiles, no malicious content.
  - file: jackett.service
    status: safe
    summary: Standard systemd service unit with no malicious content.
  - file: src/Jackett-0.24.2079/src/Jackett.Common/Content/common.js
    status: safe
    summary: Standard URL parameter parser, no security issues.
  - file: src/Jackett-0.24.2079/uninstall_service_systemd.sh
    status: safe
    summary: Standard uninstall script, no suspicious activities.
  - file: src/Jackett-0.24.2079/src/Jackett.Common/Content/libs/api.js
    status: safe
    summary: Standard API client; no malicious behavior found.
  - file: src/Jackett-0.24.2079/src/Jackett.Common/Content/custom.js
    status: safe
    summary: Clean frontend UI code with no malicious behavior.
  - file: .nvchecker.toml
    status: safe
    summary: Standard version checker config for upstream repo.
  - file: src/Jackett-0.24.2079/install_service_systemd_mono.sh
    status: safe
    summary: Standard service installation script, no malicious content.
  - file: src/Jackett-0.24.2079/install_service_systemd.sh
    status: safe
    summary: Standard systemd service installer, no security issues.
  - file: src/Jackett-0.24.2079/jackett_launcher.sh
    status: safe
    summary: Legitimate launcher script; no malicious activity detected.
  - file: src/Jackett-0.24.2079/src/Jackett.Common/Definitions/1337x.yml
    status: safe
    summary: Static YAML config with no malicious content.
---

Cloning https://aur.archlinux.org/jackett.git to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-or4zlmz5...
Cloned repository to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-or4zlmz5
Analyzing jackett AUR package (working in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-or4zlmz5) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is standard. The `source` array references an upstream GitHub tarball and three plain text configuration files. All entries have pinned checksums. There is no `pkgver()` function, and the top-level scope contains only variable assignments and array definitions. No code executes during `makepkg` sourcing that would fetch or run untrusted payloads. The `build()` and `package()` functions (which contain the build logic) are not invoked with `--nobuild --noprepare`. No suspicious network requests, obfuscated commands, or exfiltration mechanisms are present.
</details>
<summary>Standard PKGBUILD, no dangerous top-level code</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- Standard PKGBUILD, no dangerous top-level code[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, jackett.tmpfiles...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard Arch Linux packaging practices for a .NET application. It downloads the source tarball from the official Jackett GitHub repository with a pinned version and SHA256 checksums. The build process uses `dotnet publish` in a controlled manner (`--no-self-contained`, `-c Release`) and then copies the output into the package directory. The additional files (systemd service, sysusers, tmpfiles) are legitimate configuration files for running the service. There is no obfuscated code, no unexpected network requests, no execution of downloaded content outside of the upstream build system, and no attempts to exfiltrate data or manipulate system files outside the package scope. All operations are normal for this type of package.
</details>
<summary>Standard PKGBUILD; no signs of malicious injection.</summary>
</security_assessment>

[1/2] Reviewing jackett.tmpfiles...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD; no signs of malicious injection.
LLM auditresponse for jackett.tmpfiles:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd tmpfiles configuration file for the jackett package. It creates a state directory with appropriate ownership/permissions, ensures recursive ownership, and creates a symlink for the log file. No network requests, obfuscation, or command execution are present. This is expected packaging behavior and poses no supply-chain risk.
</details>
<summary>Standard tmpfiles, no malicious content.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed jackett.tmpfiles. Status: SAFE -- Standard tmpfiles, no malicious content.
Reviewed all required files.
Deciding which files to review next...
Note: 937 files available for selection; offering the 50 highest-priority to the model. 883 lower-priority file(s) were not offered.
LLM response for file selection:
jackett.service
src/Jackett-0.24.2079/install_service_systemd.sh
src/Jackett-0.24.2079/install_service_systemd_mono.sh
src/Jackett-0.24.2079/jackett_launcher.sh
src/Jackett-0.24.2079/uninstall_service_systemd.sh
.nvchecker.toml
src/Jackett-0.24.2079/src/Jackett.Common/Definitions/1337x.yml
src/Jackett-0.24.2079/src/Jackett.Common/Content/common.js
src/Jackett-0.24.2079/src/Jackett.Common/Content/libs/api.js
src/Jackett-0.24.2079/src/Jackett.Common/Content/custom.js
Decided to review 10 additional files: jackett.service, src/Jackett-0.24.2079/install_service_systemd.sh, src/Jackett-0.24.2079/install_service_systemd_mono.sh, src/Jackett-0.24.2079/jackett_launcher.sh, src/Jackett-0.24.2079/uninstall_service_systemd.sh, .nvchecker.toml, src/Jackett-0.24.2079/src/Jackett.Common/Definitions/1337x.yml, src/Jackett-0.24.2079/src/Jackett.Common/Content/common.js, src/Jackett-0.24.2079/src/Jackett.Common/Content/libs/api.js, src/Jackett-0.24.2079/src/Jackett.Common/Content/custom.js
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/Jackett-0.24.2079/install_service_systemd.sh...
[0/10] Reviewing src/Jackett-0.24.2079/install_service_systemd.sh, jackett.service...
[0/10] Reviewing src/Jackett-0.24.2079/install_service_systemd.sh, jackett.service, src/Jackett-0.24.2079/install_service_systemd_mono.sh...
[0/10] Reviewing src/Jackett-0.24.2079/install_service_systemd.sh, jackett.service, src/Jackett-0.24.2079/install_service_systemd_mono.sh, src/Jackett-0.24.2079/jackett_launcher.sh...
[0/10] Reviewing src/Jackett-0.24.2079/install_service_systemd.sh, jackett.service, src/Jackett-0.24.2079/install_service_systemd_mono.sh, src/Jackett-0.24.2079/jackett_launcher.sh, src/Jackett-0.24.2079/uninstall_service_systemd.sh...
[0/10] Reviewing src/Jackett-0.24.2079/install_service_systemd.sh, jackett.service, src/Jackett-0.24.2079/install_service_systemd_mono.sh, src/Jackett-0.24.2079/jackett_launcher.sh, src/Jackett-0.24.2079/uninstall_service_systemd.sh, .nvchecker.toml...
[0/10] Reviewing src/Jackett-0.24.2079/install_service_systemd.sh, jackett.service, src/Jackett-0.24.2079/install_service_systemd_mono.sh, src/Jackett-0.24.2079/jackett_launcher.sh, src/Jackett-0.24.2079/uninstall_service_systemd.sh, .nvchecker.toml, src/Jackett-0.24.2079/src/Jackett.Common/Content/libs/api.js...
[0/10] Reviewing src/Jackett-0.24.2079/install_service_systemd.sh, jackett.service, src/Jackett-0.24.2079/install_service_systemd_mono.sh, src/Jackett-0.24.2079/jackett_launcher.sh, src/Jackett-0.24.2079/uninstall_service_systemd.sh, .nvchecker.toml, src/Jackett-0.24.2079/src/Jackett.Common/Content/libs/api.js, src/Jackett-0.24.2079/src/Jackett.Common/Content/common.js...
[0/10] Reviewing src/Jackett-0.24.2079/install_service_systemd.sh, jackett.service, src/Jackett-0.24.2079/install_service_systemd_mono.sh, src/Jackett-0.24.2079/jackett_launcher.sh, src/Jackett-0.24.2079/uninstall_service_systemd.sh, .nvchecker.toml, src/Jackett-0.24.2079/src/Jackett.Common/Content/libs/api.js, src/Jackett-0.24.2079/src/Jackett.Common/Content/common.js, src/Jackett-0.24.2079/src/Jackett.Common/Definitions/1337x.yml...
[0/10] Reviewing src/Jackett-0.24.2079/install_service_systemd.sh, jackett.service, src/Jackett-0.24.2079/install_service_systemd_mono.sh, src/Jackett-0.24.2079/jackett_launcher.sh, src/Jackett-0.24.2079/uninstall_service_systemd.sh, .nvchecker.toml, src/Jackett-0.24.2079/src/Jackett.Common/Content/libs/api.js, src/Jackett-0.24.2079/src/Jackett.Common/Content/common.js, src/Jackett-0.24.2079/src/Jackett.Common/Definitions/1337x.yml, src/Jackett-0.24.2079/src/Jackett.Common/Content/custom.js...
LLM auditresponse for jackett.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit file for the Jackett daemon. It defines a service that runs the Jackett binary with reduced privileges and various security hardening options (e.g., `NoNewPrivileges=true`, `ProtectSystem=full`, `PrivateTmp=true`). No malicious content is present: there are no unexpected network requests, no obfuscated or encoded commands, no attempts to exfiltrate data, and no modifications to system files outside the application's scope. The file follows normal packaging practices for a system service.
</details>
<summary>Standard systemd service unit with no malicious content.</summary>
</security_assessment>

[1/10] Reviewing src/Jackett-0.24.2079/install_service_systemd.sh, src/Jackett-0.24.2079/install_service_systemd_mono.sh, src/Jackett-0.24.2079/jackett_launcher.sh, src/Jackett-0.24.2079/uninstall_service_systemd.sh, .nvchecker.toml, src/Jackett-0.24.2079/src/Jackett.Common/Content/libs/api.js, src/Jackett-0.24.2079/src/Jackett.Common/Content/common.js, src/Jackett-0.24.2079/src/Jackett.Common/Definitions/1337x.yml, src/Jackett-0.24.2079/src/Jackett.Common/Content/custom.js...
+ Reviewed jackett.service. Status: SAFE -- Standard systemd service unit with no malicious content.
LLM auditresponse for common.js:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `common.js` contains a single function `getUrlParams` that parses URL query parameters. This is a standard, innocuous utility function commonly found in web applications. There is no evidence of malicious behavior: no network requests, no obfuscated code, no file system access, and no execution of external commands. The code is entirely client-side and does not interact with system resources or exfiltrate data. It is consistent with normal packaging of a web-based application.
</details>
<summary>Standard URL parameter parser, no security issues.</summary>
</security_assessment>

[2/10] Reviewing src/Jackett-0.24.2079/install_service_systemd.sh, src/Jackett-0.24.2079/install_service_systemd_mono.sh, src/Jackett-0.24.2079/jackett_launcher.sh, src/Jackett-0.24.2079/uninstall_service_systemd.sh, .nvchecker.toml, src/Jackett-0.24.2079/src/Jackett.Common/Content/libs/api.js, src/Jackett-0.24.2079/src/Jackett.Common/Definitions/1337x.yml, src/Jackett-0.24.2079/src/Jackett.Common/Content/custom.js...
+ Reviewed src/Jackett-0.24.2079/src/Jackett.Common/Content/common.js. Status: SAFE -- Standard URL parameter parser, no security issues.
LLM auditresponse for uninstall_service_systemd.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script performs a standard uninstallation routine for a Jackett systemd service: it stops and disables the service, removes the unit file, reloads systemd, and deletes the installation directories. There are no network requests, obfuscated commands, or unexpected file operations—only cleanup of the package's own installed files. The script also enforces root privileges, which is expected for system-level changes. No evidence of malicious or dangerous behavior was found.
</details>
<summary>Standard uninstall script, no suspicious activities.</summary>
</security_assessment>

[3/10] Reviewing src/Jackett-0.24.2079/install_service_systemd.sh, src/Jackett-0.24.2079/install_service_systemd_mono.sh, src/Jackett-0.24.2079/jackett_launcher.sh, .nvchecker.toml, src/Jackett-0.24.2079/src/Jackett.Common/Content/libs/api.js, src/Jackett-0.24.2079/src/Jackett.Common/Definitions/1337x.yml, src/Jackett-0.24.2079/src/Jackett.Common/Content/custom.js...
+ Reviewed src/Jackett-0.24.2079/uninstall_service_systemd.sh. Status: SAFE -- Standard uninstall script, no suspicious activities.
LLM auditresponse for api.js:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `api.js` is a standard JavaScript API client for the Jackett application. It defines methods to communicate with a local Jackett server via HTTP (GET, POST, DELETE) using jQuery. All operations are limited to the `/api` endpoint and its subpaths. There is no obfuscated code, no encoded commands, no system calls, no file operations, and no data exfiltration to external hosts. The API key is stored locally and passed in requests, which is expected behavior for a web frontend interacting with its own backend. No supply-chain attack indicators are present.
</details>
<summary>Standard API client; no malicious behavior found.</summary>
</security_assessment>

[4/10] Reviewing src/Jackett-0.24.2079/install_service_systemd.sh, src/Jackett-0.24.2079/install_service_systemd_mono.sh, src/Jackett-0.24.2079/jackett_launcher.sh, .nvchecker.toml, src/Jackett-0.24.2079/src/Jackett.Common/Definitions/1337x.yml, src/Jackett-0.24.2079/src/Jackett.Common/Content/custom.js...
+ Reviewed src/Jackett-0.24.2079/src/Jackett.Common/Content/libs/api.js. Status: SAFE -- Standard API client; no malicious behavior found.
LLM auditresponse for custom.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard JavaScript UI file for the Jackett application. It contains frontend logic for managing indexers, searching releases, and updating server settings through AJAX calls to the local Jackett API (via the `api` object). All network requests are directed to the Jackett server itself (e.g., `api.getServerConfig`, `api.getAllIndexers`, `api.testIndexer`), which is expected application behavior. There is no obfuscated code, no suspicious `eval`, `curl`, `wget`, `base64` decoding, or any attempt to exfiltrate data to external hosts. The use of `localStorage` for saving search presets is benign. The GitHub issue links and external site links (IMDB, etc.) are normal functionality for a torrent indexer search tool. No evidence of a supply-chain attack or malicious injection was found.
</details>
<summary>Clean frontend UI code with no malicious behavior.</summary>
</security_assessment>

[5/10] Reviewing src/Jackett-0.24.2079/install_service_systemd.sh, src/Jackett-0.24.2079/install_service_systemd_mono.sh, src/Jackett-0.24.2079/jackett_launcher.sh, .nvchecker.toml, src/Jackett-0.24.2079/src/Jackett.Common/Definitions/1337x.yml...
+ Reviewed src/Jackett-0.24.2079/src/Jackett.Common/Content/custom.js. Status: SAFE -- Clean frontend UI code with no malicious behavior.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a configuration file for `nvchecker`, a utility used to monitor upstream releases for new versions. The file specifies that the source for the `jackett` package is a Git repository (`https://github.com/Jackett/Jackett`) and defines how to parse version tags. There are no commands, downloads, or obfuscated operations. This is standard packaging infrastructure and poses no supply-chain risk.
</details>
<summary>Standard version checker config for upstream repo.</summary>
</security_assessment>

[6/10] Reviewing src/Jackett-0.24.2079/install_service_systemd.sh, src/Jackett-0.24.2079/install_service_systemd_mono.sh, src/Jackett-0.24.2079/jackett_launcher.sh, src/Jackett-0.24.2079/src/Jackett.Common/Definitions/1337x.yml...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard version checker config for upstream repo.
LLM auditresponse for install_service_systemd_mono.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard installation helper for the Jackett application. It performs expected operations: checking for root privileges, stopping any running Jackett service, verifying the presence of the application binary (`JackettConsole.exe`), ensuring the owner is non-root, checking that Mono is installed, writing a systemd service unit file to `/etc/systemd/system/`, and then reloading, enabling, and starting the service.

No obfuscated code, network requests, external downloads, or dangerous command usage (e.g., `eval`, `curl\|bash`, base64 decoding) is present. The script does not deviate from the intended packaging workflow—it sets up the application to run as a system service using the upstream-provided binary. There is no evidence of injected malicious behavior or supply-chain attack.
</details>
<summary>Standard service installation script, no malicious content.</summary>
</security_assessment>

[7/10] Reviewing src/Jackett-0.24.2079/install_service_systemd.sh, src/Jackett-0.24.2079/jackett_launcher.sh, src/Jackett-0.24.2079/src/Jackett.Common/Definitions/1337x.yml...
+ Reviewed src/Jackett-0.24.2079/install_service_systemd_mono.sh. Status: SAFE -- Standard service installation script, no malicious content.
LLM auditresponse for install_service_systemd.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service installation script for Jackett. It runs as root, checks for the required files and ownership, writes a unit file to `/etc/systemd/system/`, and enables/starts the service. There are no obfuscated commands, network requests, unexpected file operations, or attempts to exfiltrate data. The inclusion of `DOTNET_EnableDiagnostics=0` is a routine .NET environment variable. All operations are within the expected scope of installing a daemon service. The script follows ordinary packaging practices and contains no malicious code.
</details>
<summary>Standard systemd service installer, no security issues.</summary>
</security_assessment>

[8/10] Reviewing src/Jackett-0.24.2079/jackett_launcher.sh, src/Jackett-0.24.2079/src/Jackett.Common/Definitions/1337x.yml...
+ Reviewed src/Jackett-0.24.2079/install_service_systemd.sh. Status: SAFE -- Standard systemd service installer, no security issues.
LLM auditresponse for jackett_launcher.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a straightforward launcher for the Jackett application. It resolves its own directory, runs the `jackett` binary with `--NoRestart` and any provided CLI arguments, then waits for a `JackettUpdater` process to finish before exiting. There are no external network requests, obfuscated code, dangerous commands (e.g., `curl`, `wget`, `eval`), or file operations outside the package's own scope. The `pgrep` and `sleep` are used to synchronize with an expected updater process, which is consistent with the application's intended behavior. No supply‑chain attack indicators are present.
</details>
<summary>Legitimate launcher script; no malicious activity detected.</summary>
</security_assessment>

[9/10] Reviewing src/Jackett-0.24.2079/src/Jackett.Common/Definitions/1337x.yml...
+ Reviewed src/Jackett-0.24.2079/jackett_launcher.sh. Status: SAFE -- Legitimate launcher script; no malicious activity detected.
LLM auditresponse for 1337x.yml:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a static YAML configuration file for a Jackett indexer (Torznab) for 1337x. It contains no executable code, no obfuscated commands, no network requests initiated by the file itself, and no attempts to exfiltrate data or modify system files. The file defines search paths, selectors, filters, categories, and settings—all standard for a Torznab indexer definition. The listed links are simply the upstream domain names for the 1337x website, which is expected for a torrent indexer. There is no evidence of any supply-chain attack or malicious behavior. The file is purely declarative and conforms to normal packaging and configuration practices.
</details>
<summary>Static YAML config with no malicious content.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/Jackett-0.24.2079/src/Jackett.Common/Definitions/1337x.yml. Status: SAFE -- Static YAML config with no malicious content.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 57,404
  Completion Tokens: 10,278
  Total Tokens: 67,682
  Total Cost: $0.007016
  Execution Time: 107.77 seconds
Full audit report can be found in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-jackett.txt
Final Status: SAFE


No issues found.
