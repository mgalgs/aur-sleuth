---
package: jackett-bin
pkgver: 0.24.2451
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 4fdfd87aaec54365f5eb3ea9cd4b5b3cd402f1d8
prompt_tokens: 18202
completion_tokens: 3666
total_tokens: 21868
cost: 0.00124759124
execution_time: 64.82
files_reviewed: 5
files_skipped: 0
files_unauditable: 360
unpinned_sources: 0
date: 2026-08-23T19:07:54Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Legitimate PKGBUILD with pinned sources and no suspicious behavior.
  - file: jackett.tmpfiles
    status: safe
    summary: Standard tmpfiles config for the jackett package.
  - file: jackett.service
    status: safe
    summary: Standard service file, no malicious content.
  - file: src/Jackett/jackett_launcher.sh
    status: safe
    summary: Safe wrapper script for Jackett application
  - file: src/Jackett/install_service_systemd.sh
    status: safe
    summary: Standard systemd service install script, no malicious behavior.
---

Cloning https://aur.archlinux.org/jackett-bin.git...
Cloned jackett-bin
Analyzing jackett-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is safe to run `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo` on. The global scope contains only variable definitions, arrays, and a `package()` function. No top-level command substitutions, dangerous code, or external network calls beyond the declared source URLs exist. The source URLs point to the official Jackett GitHub releases and use pinned version numbers. All checksums are provided (not SKIP). There is no `pkgver()` function, and the `prepare()`/`build()`/`package()` functions are not executed during these commands. The file follows standard Arch Linux packaging practices and contains no signs of malicious activity.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD, no risks in sourcing or fetching.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Standard PKGBUILD, no risks in sourcing or fetching.
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
The PKGBUILD downloads precompiled binaries from the official Jackett GitHub releases (https://github.com/Jackett/Jackett/releases) using pinned versions and checksums. It copies the binaries into `/usr/lib/jackett/` and installs systemd service, sysusers, and tmpfiles configuration files. No obfuscation, dangerous commands (`eval`, `curl`, `wget`, etc.), or unexpected network destinations are present. All sources are verified via SHA-256 checksums. This is a standard, clean AUR packaging practice with no signs of malicious code.
</details>
<evidence></evidence>
<summary>Legitimate PKGBUILD with pinned sources and no suspicious behavior.</summary>
</security_assessment>

[1/2] Reviewing jackett.tmpfiles...
+ Reviewed PKGBUILD. Status: SAFE -- Legitimate PKGBUILD with pinned sources and no suspicious behavior.
LLM auditresponse for jackett.tmpfiles:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a systemd tmpfiles configuration snippet. It defines benign operations: creating a directory (`/var/lib/jackett`), recursively restoring ownership/permissions on that directory and the application directory (`/usr/lib/jackett`), and creating a symbolic link for a log file. All paths and the user/group names (`jackett`) are consistent with the package's expected scope. There is no obfuscation, network access, code execution, or any other suspicious behavior.
</details>
<evidence></evidence>
<summary>Standard tmpfiles config for the jackett package.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed jackett.tmpfiles. Status: SAFE -- Standard tmpfiles config for the jackett package.
Reviewed all required files.
Deciding which files to review next...
Note: 360 compiled/archived file(s) cannot be audited as text and were not reviewed (Jackett.Binaries.LinuxAMDx64-0.24.2451.tar.gz, src/Jackett/Microsoft.Extensions.Primitives.dll, src/Jackett/Microsoft.Extensions.Logging.Debug.dll and 357 more). For a package that ships prebuilt binaries, the audit covers the packaging, not the payload.
Note: 587 files available for selection; offering the 50 highest-priority to the model. 537 lower-priority file(s) were not offered.
LLM response for file selection:
jackett.service
src/Jackett/install_service_systemd.sh
src/Jackett/jackett_launcher.sh
Decided to review 3 additional files: jackett.service, src/Jackett/install_service_systemd.sh, src/Jackett/jackett_launcher.sh
Reviewing additional files...
Reviewing additional files...
[0/3] Reviewing jackett.service...
[0/3] Reviewing jackett.service, src/Jackett/jackett_launcher.sh...
[0/3] Reviewing jackett.service, src/Jackett/jackett_launcher.sh, src/Jackett/install_service_systemd.sh...
LLM auditresponse for jackett.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit file for the Jackett daemon. It defines a user and group, sets environment variables, and executes the Jackett binary with expected flags (`--NoRestart`, `--NoUpdates`, `--DataFolder`). There are no suspicious commands, network requests, obfuscated code, or file operations outside of normal service initialization. The configuration follows conventional packaging practices for a service that runs as a dedicated user with appropriate data directories.
</details>
<evidence></evidence>
<summary>Standard service file, no malicious content.</summary>
</security_assessment>

[1/3] Reviewing src/Jackett/jackett_launcher.sh, src/Jackett/install_service_systemd.sh...
+ Reviewed jackett.service. Status: SAFE -- Standard service file, no malicious content.
LLM auditresponse for jackett_launcher.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard wrapper for the Jackett application. It launches the main binary with `--NoRestart` to prevent the application from forking, then waits for any `JackettUpdater` process owned by the same user to finish before exiting. This ensures the service manager sees the updater's completion. No network requests, foreign code execution, obfuscation, or unexpected system modifications are present. The script is consistent with normal packaging practices for background services that have self-update mechanisms.
</details>
<evidence>
</evidence>
<summary>Safe wrapper script for Jackett application</summary>
</security_assessment>

[2/3] Reviewing src/Jackett/install_service_systemd.sh...
+ Reviewed src/Jackett/jackett_launcher.sh. Status: SAFE -- Safe wrapper script for Jackett application
LLM auditresponse for install_service_systemd.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is part of the upstream Jackett binary distribution and performs standard systemd service installation. It checks for root privileges, locates the Jackett installation directory, verifies the `jackett` binary exists, ensures the owner is not root, writes a standard systemd unit file to `/etc/systemd/system/jackett.service`, reloads systemd, enables, and starts the service. There are no network requests, obfuscated code, eval, or unexpected file operations. All actions are legitimate for installing a user-facing systemd service. The script does not deviate from normal packaging or service installation practices.
</details>
<evidence></evidence>
<summary>Standard systemd service install script, no malicious behavior.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed src/Jackett/install_service_systemd.sh. Status: SAFE -- Standard systemd service install script, no malicious behavior.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 18,202
  Completion Tokens: 3,666
  Total Tokens: 21,868
  Total Cost: $0.001248
  Execution Time: 64.82 seconds

Final Status: SAFE


No issues found.
