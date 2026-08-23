---
package: jackett-bin
pkgver: 0.24.2440
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3aa684c47f9b6bac5667ff3cee413c3a000b1b0d
prompt_tokens: 19677
completion_tokens: 3585
total_tokens: 23262
cost: 0.00142450182
execution_time: 90.79
files_reviewed: 6
files_skipped: 0
files_unauditable: 360
unpinned_sources: 0
date: 2026-08-23T03:54:22Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD, no malicious content found.
  - file: jackett.tmpfiles
    status: safe
    summary: Standard tmpfiles configuration for a daemon; no malicious content.
  - file: src/Jackett/jackett_launcher.sh
    status: safe
    summary: Standard launcher script; no security concerns.
  - file: jackett.service
    status: safe
    summary: Standard systemd service unit, no malicious content.
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker configuration; no security concerns.
  - file: src/Jackett/install_service_systemd.sh
    status: safe
    summary: Standard systemd service installation script, no malicious behavior.
---

Cloning https://aur.archlinux.org/jackett-bin.git...
Cloned jackett-bin
Analyzing jackett-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only defines variables, arrays, and a `package()` function. There is no `pkgver()` function (default from `pkgver` variable is used) and no top-level command substitutions, `eval`, `curl`, `wget`, or any code that executes when the file is sourced. The `source` arrays point to standard HTTPS URLs from the official Jackett GitHub releases repository. All checksums are provided and pinned to specific versions. No obfuscated or encoded commands are present. The `package()` function is NOT executed during `makepkg --nobuild --nodeps --noprepare` (only the `source` fetching and top-level sourcing occur). Therefore, running these commands is safe.
</details>
<summary>No dangerous code; safe to fetch sources.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous code; safe to fetch sources.
Downloading sources (attempt 1/3)...
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
The PKGBUILD is a standard AUR package for a prebuilt binary. It downloads the upstream release archive from the official GitHub repository (https://github.com/Jackett/Jackett) and includes SHA-256 checksums for all source files. The `package()` function simply copies the extracted binaries into the system lib directory and installs systemd service, sysusers, and tmpfiles configuration files. There is no obfuscated code, no unexpected network requests, no execution of arbitrary code, and no manipulation of files outside the application's scope. All operations are routine packaging practices.
</details>
<summary>Standard PKGBUILD, no malicious content found.</summary>
</security_assessment>

[1/2] Reviewing jackett.tmpfiles...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD, no malicious content found.
LLM auditresponse for jackett.tmpfiles:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `jackett.tmpfiles` is a standard systemd tmpfiles.d configuration file. It defines creation of a state directory (`/var/lib/jackett`), sets recursive ownership on that directory and the application directory (`/usr/lib/jackett`), and creates a symlink for the log file. All operations are normal and expected for a daemon such as Jackett. There is no embedded code, no network requests, no obfuscation, and no deviation from standard packaging practices. The file poses no supply-chain risk.
</details>
<summary>Standard tmpfiles configuration for a daemon; no malicious content.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed jackett.tmpfiles. Status: SAFE -- Standard tmpfiles configuration for a daemon; no malicious content.
Reviewed all required files.
Deciding which files to review next...
Note: 360 compiled/archived file(s) cannot be audited as text and were not reviewed (Jackett.Binaries.LinuxAMDx64-0.24.2440.tar.gz, src/Jackett/Microsoft.Extensions.Primitives.dll, src/Jackett/Microsoft.Extensions.Logging.Debug.dll and 357 more). For a package that ships prebuilt binaries, the audit covers the packaging, not the payload.
Note: 590 files available for selection; offering the 50 highest-priority to the model. 540 lower-priority file(s) were not offered.
LLM response for file selection:
jackett.service
src/Jackett/install_service_systemd.sh
src/Jackett/jackett_launcher.sh
.nvchecker.toml
Decided to review 4 additional files: jackett.service, src/Jackett/install_service_systemd.sh, src/Jackett/jackett_launcher.sh, .nvchecker.toml
Reviewing additional files...
Reviewing additional files...
[0/4] Reviewing jackett.service...
[0/4] Reviewing jackett.service, src/Jackett/install_service_systemd.sh...
[0/4] Reviewing jackett.service, src/Jackett/install_service_systemd.sh, src/Jackett/jackett_launcher.sh...
LLM auditresponse for jackett_launcher.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard launcher wrapper for the Jackett application. It resolves its own directory, launches the `jackett` binary with `--NoRestart` and any CLI arguments, and waits for the `JackettUpdater` process to finish before exiting. There are no network requests, no downloads, no obfuscated or encoded commands, no file system modifications outside the application's own scope, and no exfiltration of data. The script only serves to manage the lifecycle of the Jackett process and its updater, which is normal packaging practice. Nothing in this file indicates a supply-chain attack or malicious behavior.
</details>
<summary>Standard launcher script; no security concerns.</summary>
</security_assessment>

[0/4] Reviewing jackett.service, src/Jackett/install_service_systemd.sh, src/Jackett/jackett_launcher.sh, .nvchecker.toml...
[1/4] Reviewing jackett.service, src/Jackett/install_service_systemd.sh, .nvchecker.toml...
+ Reviewed src/Jackett/jackett_launcher.sh. Status: SAFE -- Standard launcher script; no security concerns.
LLM auditresponse for jackett.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit file for the Jackett daemon. It defines a service that runs the Jackett binary with a dedicated user/group, sets environment variables, and specifies standard options (`--NoRestart`, `--NoUpdates`, `--DataFolder`). There is no obfuscation, no network requests, no downloads, no execution of untrusted code, and no deviation from normal packaging practices. The file contains only configuration directives common to AUR service files and is not malicious.
</details>
<summary>Standard systemd service unit, no malicious content.</summary>
</security_assessment>

[2/4] Reviewing src/Jackett/install_service_systemd.sh, .nvchecker.toml...
+ Reviewed jackett.service. Status: SAFE -- Standard systemd service unit, no malicious content.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a configuration file for nvchecker, a standard tool used in AUR packaging to automatically check for new upstream versions. It specifies the package name, source type (git), the official GitHub repository URL for Jackett, a version prefix, and a regex to match version tags. There is no executable code, no network requests to unexpected hosts, no obfuscation, and no system modifications. The file is entirely benign and follows normal AUR practices.
</details>
<summary>Standard nvchecker configuration; no security concerns.</summary>
</security_assessment>

[3/4] Reviewing src/Jackett/install_service_systemd.sh...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker configuration; no security concerns.
LLM auditresponse for install_service_systemd.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard installation helper for Jackett that creates a systemd service unit, enables, and starts the service. It performs no network requests, no code downloading, no obfuscation, and no data exfiltration. All operations (checking root, stopping existing service, writing a unit file, reloading systemd, enabling/starting service) are typical for AUR post-install scripts. The only user-controlled variable is `JACKETT_USER` derived from the owner of the `./jackett` file; while this could allow a non‑root user to run the service, it is not malicious—it is a deliberate design choice to avoid running as root. No supply‑chain attack indicators are present.
</details>
<summary>Standard systemd service installation script, no malicious behavior.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed src/Jackett/install_service_systemd.sh. Status: SAFE -- Standard systemd service installation script, no malicious behavior.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 19,677
  Completion Tokens: 3,585
  Total Tokens: 23,262
  Total Cost: $0.001425
  Execution Time: 90.79 seconds

Final Status: SAFE


No issues found.
