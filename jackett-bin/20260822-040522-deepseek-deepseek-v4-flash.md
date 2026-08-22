---
package: jackett-bin
pkgver: 0.24.2434
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 09f2e477a21d918155ca5fbfdf5bc833f8a3f124
prompt_tokens: 17754
completion_tokens: 3928
total_tokens: 21682
cost: 0.00193253060
execution_time: 67.12
files_reviewed: 5
files_skipped: 0
files_unauditable: 360
unpinned_sources: 0
date: 2026-08-22T04:05:22Z
file_verdicts:
  - file: jackett.tmpfiles
    status: safe
    summary: Standard tmpfiles config for Jackett, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Clean, standard PKGBUILD with verified upstream sources.
  - file: jackett.service
    status: safe
    summary: Standard systemd service file, no security issues.
  - file: src/Jackett/jackett_launcher.sh
    status: safe
    summary: Standard launcher wrapper for Jackett; no malicious behavior detected.
  - file: src/Jackett/install_service_systemd.sh
    status: safe
    summary: Standard service install script, no malicious behavior.
---

Cloning https://aur.archlinux.org/jackett-bin.git...
Cloned jackett-bin
Analyzing jackett-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD defines sources from the official Jackett GitHub releases using static version tags. The global/top-level scope only contains variable assignments with no command substitutions or function calls that could execute code. There is no `pkgver()` function. The `source` arrays use standard HTTPS downloads with pinned checksums. No code execution occurs when sourcing this PKGBUILD or running `makepkg --printsrcinfo` / `makepkg --nobuild --nodeps --noprepare`.
</details>
<summary>No global or pkgver() execution risks.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No global or pkgver() execution risks.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, jackett.tmpfiles...
LLM auditresponse for jackett.tmpfiles:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard systemd tmpfiles.d configuration for the Jackett package. It creates a state directory (`/var/lib/jackett`), ensures correct permissions and ownership on that directory and the application directory (`/usr/lib/jackett`), and sets up a symlink for the log file (`/var/log/jackett.log` → `/var/lib/jackett/log.txt`). There are no network requests, encoded/obfuscated commands, file exfiltration, or unexpected system modifications. The file is consistent with routine packaging practices for daemons that need persistent state.
</details>
<summary>Standard tmpfiles config for Jackett, no security issues.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed jackett.tmpfiles. Status: SAFE -- Standard tmpfiles config for Jackett, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard, unmodified packaging of the official Jackett binaries from the project's GitHub releases. All sources are downloaded over HTTPS from the upstream repository, and each source tarball has a pinned SHA-256 checksum for verification. The `package()` function only copies the prebuilt binaries and supporting configuration files (systemd service, sysusers, tmpfiles) into the package directory. No `prepare()`, `build()`, or other functions are defined, and no dangerous commands (`curl`, `eval`, base64 decoding, etc.) are present. There are no signs of obfuscation, unexpected network requests, or attacks on the local system. The file follows normal AUR packaging practices and contains no malicious code.
</details>
<summary>
Clean, standard PKGBUILD with verified upstream sources.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Clean, standard PKGBUILD with verified upstream sources.
Reviewed all required files.
Deciding which files to review next...
Note: 360 compiled/archived file(s) cannot be audited as text and were not reviewed (Jackett.Binaries.LinuxAMDx64-0.24.2434.tar.gz, src/Jackett/Microsoft.Extensions.Primitives.dll, src/Jackett/Microsoft.Extensions.Logging.Debug.dll and 357 more). For a package that ships prebuilt binaries, the audit covers the packaging, not the payload.
Note: 589 files available for selection; offering the 50 highest-priority to the model. 539 lower-priority file(s) were not offered.
LLM response for file selection:
jackett.service
src/Jackett/install_service_systemd.sh
src/Jackett/jackett_launcher.sh
Decided to review 3 additional files: jackett.service, src/Jackett/install_service_systemd.sh, src/Jackett/jackett_launcher.sh
Reviewing additional files...
Reviewing additional files...
[0/3] Reviewing jackett.service...
[0/3] Reviewing jackett.service, src/Jackett/install_service_systemd.sh...
[0/3] Reviewing jackett.service, src/Jackett/install_service_systemd.sh, src/Jackett/jackett_launcher.sh...
LLM auditresponse for jackett.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard systemd service unit for the Jackett daemon. It defines the service to run after network.target, run as a dedicated unprivileged user/group, with a configured environment and logging. The `ExecStart` runs the jackett binary with flags that disable restart, updates, and set a data folder. There are no unexpected commands, network requests, obfuscation, or file operations. The service is well-structured and follows typical packaging conventions for a daemon.
</details>
<summary>Standard systemd service file, no security issues.</summary>
</security_assessment>

[1/3] Reviewing src/Jackett/install_service_systemd.sh, src/Jackett/jackett_launcher.sh...
+ Reviewed jackett.service. Status: SAFE -- Standard systemd service file, no security issues.
LLM auditresponse for jackett_launcher.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a straightforward launcher script for the Jackett application. It determines its own directory, runs the Jackett binary with `--NoRestart` and any passed arguments, then waits for the `JackettUpdater` process owned by the current user to finish before exiting. All commands used (`dirname`, `readlink`, `whoami`, `pgrep`, `sleep`) are standard shell utilities with no suspicious or obfuscated operations. There are no network requests, file system manipulations outside the application's own scope, or any execution of untrusted content. The script serves only to properly handle Jackett's automatic update mechanism and does not introduce any supply-chain risk.
</details>
<summary>Standard launcher wrapper for Jackett; no malicious behavior detected.</summary>
</security_assessment>

[2/3] Reviewing src/Jackett/install_service_systemd.sh...
+ Reviewed src/Jackett/jackett_launcher.sh. Status: SAFE -- Standard launcher wrapper for Jackett; no malicious behavior detected.
LLM auditresponse for install_service_systemd.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a standard installation helper for setting up Jackett as a systemd service. It performs only expected operations: checking for root, stopping any existing service, verifying the Jackett binary exists and is not owned by root, writing a systemd unit file to `/etc/systemd/system/jackett.service`, and then reloading systemd, enabling, and starting the service. There are no network requests, no obfuscated code, no downloads, and no unexpected file modifications. The use of `DOTNET_EnableDiagnostics=0` is a normal .NET configuration setting and not suspicious. The script is consistent with typical AUR packaging practices for installing a service.
</details>
<summary>Standard service install script, no malicious behavior.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed src/Jackett/install_service_systemd.sh. Status: SAFE -- Standard service install script, no malicious behavior.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 17,754
  Completion Tokens: 3,928
  Total Tokens: 21,682
  Total Cost: $0.001933
  Execution Time: 67.12 seconds

Final Status: SAFE


No issues found.
