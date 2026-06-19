---
package: pterodactyl-panel
pkgver: 1.13.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 11c93a0c95e2166961e3664fea6b5a63827ded10
prompt_tokens: 39207
completion_tokens: 7878
total_tokens: 47085
cost: 0.00494667
execution_time: 156.99
files_reviewed: 12
files_skipped: 0
date: 2026-06-19T08:51:30Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD, no security issues.
  - file: pterodactyl-scheduler.timer
    status: safe
    summary: Standard systemd timer unit, no security issues.
  - file: src/app/Console/Commands/Overrides/UpCommand.php
    status: safe
    summary: Standard override to enforce migrations before up command.
  - file: pterodactyl-scheduler.service
    status: safe
    summary: Standard service unit file, no security issues.
  - file: pterodactyl-queue.service
    status: safe
    summary: Standard systemd unit for a Laravel queue worker.
  - file: src/app/Console/Commands/Overrides/KeyGenerateCommand.php
    status: safe
    summary: Safe override adding key overwrite warning.
  - file: src/app/Console/Commands/Overrides/SeedCommand.php
    status: safe
    summary: "Safe: standard Laravel seed command guard."
  - file: src/app/Console/Commands/Environment/EmailSettingsCommand.php
    status: safe
    summary: Legitimate mail configuration command, no malicious behavior.
  - file: src/app/Console/Commands/UpgradeCommand.php
    status: safe
    summary: Safe - standard Pterodactyl panel upgrade command
  - file: src/app/Console/Commands/Environment/AppSettingsCommand.php
    status: safe
    summary: Legitimate configuration command, no malicious behavior.
  - file: src/app/Console/Commands/Environment/Addons/RunHooksCommand.php
    status: safe
    summary: Legitimate addon hook runner with proper input validation.
  - file: src/app/Console/Commands/Environment/DatabaseSettingsCommand.php
    status: safe
    summary: Legitimate database configuration command, no malicious code.
---

Cloning https://aur.archlinux.org/pterodactyl-panel.git to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-f4ovqaq9...
Cloned repository to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-f4ovqaq9
Analyzing pterodactyl-panel AUR package (working in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-f4ovqaq9) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD only defines standard variables (pkgname, pkgver, source, etc.) and does not contain any executable code in its global scope or in `pkgver()` (which is not defined; pkgver is a literal string). The `source` array fetches the application's own tarball from the upstream GitHub releases (`https://github.com/pterodactyl/panel/releases/download/v$pkgver/panel.tar.gz`), which is standard and safe. The other source entries are local filenames with no URL, so no downloads. The `noextract` array prevents automatic extraction of the tarball during the source fetch step, so no archive processing occurs. No top-level eval, curl, or other dangerous commands are present. The `build()` and `package()` functions (which contain manual extraction and file manipulation) are not executed during these commands due to `--nobuild` and `--noprepare` flags. Therefore, running `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo` does not execute any malicious or unexpected code.
</details>
<summary>No malicious code in scope; sourcing is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- No malicious code in scope; sourcing is safe.[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, pterodactyl-scheduler.timer...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a PHP web application. It downloads a specific versioned release tarball from the official GitHub repository (`github.com/pterodactyl/panel`) with fixed checksums (b2sums). The build process runs `composer install` to fetch vendor dependencies—this is expected for PHP packages and does not constitute a supply-chain attack. The `package()` function installs files into standard system directories (`/usr/share/webapps/pterodactyl`, systemd services, etc.) with proper permissions and symlinks to configuration and data directories under `/etc` and `/var`. There are no suspicious network requests, obfuscated code, backdoors, or attempts to exfiltrate data. The script does not follow any untrusted instructions; it only performs routine packaging operations. No evidence of malicious or dangerous behavior was found.
</details>
<summary>Standard AUR PKGBUILD, no security issues.</summary>
</security_assessment>

[1/2] Reviewing pterodactyl-scheduler.timer...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD, no security issues.
LLM auditresponse for pterodactyl-scheduler.timer:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd timer unit configuration file. It defines a timer that triggers every minute (using `OnCalendar=*-*-* *:*:00`) and is installed to `timers.target`. There is no executable code, no network requests, no obfuscation, no file operations, and no references to external resources. The content is purely declarative and follows expected packaging practices for a timer service. No signs of malicious activity or supply-chain attack are present.
</details>
<summary>Standard systemd timer unit, no security issues.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed pterodactyl-scheduler.timer. Status: SAFE -- Standard systemd timer unit, no security issues.
Reviewed all required files.
Deciding which files to review next...
Note: 1338 files available for selection; offering the 50 highest-priority to the model. 1191 lower-priority file(s) were not offered.
LLM response for file selection:
pterodactyl-queue.service
pterodactyl-scheduler.service
src/app/Console/Commands/Environment/Addons/RunHooksCommand.php
src/app/Console/Commands/Environment/AppSettingsCommand.php
src/app/Console/Commands/Environment/DatabaseSettingsCommand.php
src/app/Console/Commands/Environment/EmailSettingsCommand.php
src/app/Console/Commands/Overrides/KeyGenerateCommand.php
src/app/Console/Commands/Overrides/SeedCommand.php
src/app/Console/Commands/Overrides/UpCommand.php
src/app/Console/Commands/UpgradeCommand.php
Decided to review 10 additional files: pterodactyl-queue.service, pterodactyl-scheduler.service, src/app/Console/Commands/Environment/Addons/RunHooksCommand.php, src/app/Console/Commands/Environment/AppSettingsCommand.php, src/app/Console/Commands/Environment/DatabaseSettingsCommand.php, src/app/Console/Commands/Environment/EmailSettingsCommand.php, src/app/Console/Commands/Overrides/KeyGenerateCommand.php, src/app/Console/Commands/Overrides/SeedCommand.php, src/app/Console/Commands/Overrides/UpCommand.php, src/app/Console/Commands/UpgradeCommand.php
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing pterodactyl-queue.service...
[0/10] Reviewing pterodactyl-queue.service, pterodactyl-scheduler.service...
[0/10] Reviewing pterodactyl-queue.service, pterodactyl-scheduler.service, src/app/Console/Commands/Environment/Addons/RunHooksCommand.php...
[0/10] Reviewing pterodactyl-queue.service, pterodactyl-scheduler.service, src/app/Console/Commands/Environment/Addons/RunHooksCommand.php, src/app/Console/Commands/Environment/AppSettingsCommand.php...
[0/10] Reviewing pterodactyl-queue.service, pterodactyl-scheduler.service, src/app/Console/Commands/Environment/Addons/RunHooksCommand.php, src/app/Console/Commands/Environment/AppSettingsCommand.php, src/app/Console/Commands/Environment/EmailSettingsCommand.php...
[0/10] Reviewing pterodactyl-queue.service, pterodactyl-scheduler.service, src/app/Console/Commands/Environment/Addons/RunHooksCommand.php, src/app/Console/Commands/Environment/AppSettingsCommand.php, src/app/Console/Commands/Environment/EmailSettingsCommand.php, src/app/Console/Commands/Overrides/KeyGenerateCommand.php...
[0/10] Reviewing pterodactyl-queue.service, pterodactyl-scheduler.service, src/app/Console/Commands/Environment/Addons/RunHooksCommand.php, src/app/Console/Commands/Environment/AppSettingsCommand.php, src/app/Console/Commands/Environment/EmailSettingsCommand.php, src/app/Console/Commands/Overrides/KeyGenerateCommand.php, src/app/Console/Commands/Environment/DatabaseSettingsCommand.php...
[0/10] Reviewing pterodactyl-queue.service, pterodactyl-scheduler.service, src/app/Console/Commands/Environment/Addons/RunHooksCommand.php, src/app/Console/Commands/Environment/AppSettingsCommand.php, src/app/Console/Commands/Environment/EmailSettingsCommand.php, src/app/Console/Commands/Overrides/KeyGenerateCommand.php, src/app/Console/Commands/Environment/DatabaseSettingsCommand.php, src/app/Console/Commands/UpgradeCommand.php...
[0/10] Reviewing pterodactyl-queue.service, pterodactyl-scheduler.service, src/app/Console/Commands/Environment/Addons/RunHooksCommand.php, src/app/Console/Commands/Environment/AppSettingsCommand.php, src/app/Console/Commands/Environment/EmailSettingsCommand.php, src/app/Console/Commands/Overrides/KeyGenerateCommand.php, src/app/Console/Commands/Environment/DatabaseSettingsCommand.php, src/app/Console/Commands/UpgradeCommand.php, src/app/Console/Commands/Overrides/UpCommand.php...
[0/10] Reviewing pterodactyl-queue.service, pterodactyl-scheduler.service, src/app/Console/Commands/Environment/Addons/RunHooksCommand.php, src/app/Console/Commands/Environment/AppSettingsCommand.php, src/app/Console/Commands/Environment/EmailSettingsCommand.php, src/app/Console/Commands/Overrides/KeyGenerateCommand.php, src/app/Console/Commands/Environment/DatabaseSettingsCommand.php, src/app/Console/Commands/UpgradeCommand.php, src/app/Console/Commands/Overrides/UpCommand.php, src/app/Console/Commands/Overrides/SeedCommand.php...
LLM auditresponse for UpCommand.php:
<security_assessment>
<decision>SAFE</decision>
<details>
This file extends Laravel's `UpCommand` to require database migrations before the application can be brought out of maintenance mode. It only checks migration status and calls the parent `handle()` method. No obfuscation, network requests, file operations, or any other suspicious behavior is present. The code is consistent with standard packaging and application functionality.
</details>
<summary>Standard override to enforce migrations before up command.</summary>
</security_assessment>

[1/10] Reviewing pterodactyl-queue.service, pterodactyl-scheduler.service, src/app/Console/Commands/Environment/Addons/RunHooksCommand.php, src/app/Console/Commands/Environment/AppSettingsCommand.php, src/app/Console/Commands/Environment/EmailSettingsCommand.php, src/app/Console/Commands/Overrides/KeyGenerateCommand.php, src/app/Console/Commands/Environment/DatabaseSettingsCommand.php, src/app/Console/Commands/UpgradeCommand.php, src/app/Console/Commands/Overrides/SeedCommand.php...
+ Reviewed src/app/Console/Commands/Overrides/UpCommand.php. Status: SAFE -- Standard override to enforce migrations before up command.
LLM auditresponse for pterodactyl-scheduler.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit file for running the Pterodactyl panel's scheduled tasks via Laravel's artisan command. It specifies a description, the user to run as (http), the exec command to run PHP with the artisan scheduler, and the target. There are no network requests, obfuscated commands, suspicious file operations, or any indication of malicious behavior. It follows typical packaging practices for a web application scheduler service.
</details>
<summary>Standard service unit file, no security issues.</summary>
</security_assessment>

[2/10] Reviewing pterodactyl-queue.service, src/app/Console/Commands/Environment/Addons/RunHooksCommand.php, src/app/Console/Commands/Environment/AppSettingsCommand.php, src/app/Console/Commands/Environment/EmailSettingsCommand.php, src/app/Console/Commands/Overrides/KeyGenerateCommand.php, src/app/Console/Commands/Environment/DatabaseSettingsCommand.php, src/app/Console/Commands/UpgradeCommand.php, src/app/Console/Commands/Overrides/SeedCommand.php...
+ Reviewed pterodactyl-scheduler.service. Status: SAFE -- Standard service unit file, no security issues.
LLM auditresponse for pterodactyl-queue.service:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard systemd service unit for the Pterodactyl panel. It runs a PHP Artisan queue worker with common options (`--queue=high,standard,low --sleep=3 --tries=3`). The service executes only the official `/usr/bin/php` binary and the expected `artisan` script within the package&#x27;s installation path. No network requests, obfuscation, or unauthorized file operations are present. The restart limits and user assignment follow standard packaging practices.
</details>
<summary>Standard systemd unit for a Laravel queue worker.</summary>
</security_assessment>

[3/10] Reviewing src/app/Console/Commands/Environment/Addons/RunHooksCommand.php, src/app/Console/Commands/Environment/AppSettingsCommand.php, src/app/Console/Commands/Environment/EmailSettingsCommand.php, src/app/Console/Commands/Overrides/KeyGenerateCommand.php, src/app/Console/Commands/Environment/DatabaseSettingsCommand.php, src/app/Console/Commands/UpgradeCommand.php, src/app/Console/Commands/Overrides/SeedCommand.php...
+ Reviewed pterodactyl-queue.service. Status: SAFE -- Standard systemd unit for a Laravel queue worker.
LLM auditresponse for KeyGenerateCommand.php:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is an override of Laravel's `KeyGenerateCommand` that adds interactive warnings and confirmations before overwriting an existing application encryption key. The behavior is purely cosmetic and safety-oriented: it checks if `app.key` is already set and, if running interactively, warns the user about potential data loss and requires two confirmations before proceeding. The actual key generation is delegated to the parent class (`parent::handle()`). There is no obfuscation, no unexpected network requests, no file operations outside the intended scope, and no other suspicious or malicious behavior. This is standard good practice for an application that uses encrypted data.
</details>
<summary>
Safe override adding key overwrite warning.</summary>
</security_assessment>

[4/10] Reviewing src/app/Console/Commands/Environment/Addons/RunHooksCommand.php, src/app/Console/Commands/Environment/AppSettingsCommand.php, src/app/Console/Commands/Environment/EmailSettingsCommand.php, src/app/Console/Commands/Environment/DatabaseSettingsCommand.php, src/app/Console/Commands/UpgradeCommand.php, src/app/Console/Commands/Overrides/SeedCommand.php...
+ Reviewed src/app/Console/Commands/Overrides/KeyGenerateCommand.php. Status: SAFE -- Safe override adding key overwrite warning.
LLM auditresponse for SeedCommand.php:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a legitimate override of Laravel's seed command that enforces database migrations to be completed before seeding. It uses the `RequiresDatabaseMigrations` trait and calls `hasCompletedMigrations()` to check migration status, then either shows a warning or delegates to the parent `handle()` method. No suspicious network requests, obfuscated code, unexpected file operations, or other supply-chain attack indicators are present. This is normal upstream application functionality.
</details>
<summary>Safe: standard Laravel seed command guard.</summary>
</security_assessment>

[5/10] Reviewing src/app/Console/Commands/Environment/Addons/RunHooksCommand.php, src/app/Console/Commands/Environment/AppSettingsCommand.php, src/app/Console/Commands/Environment/EmailSettingsCommand.php, src/app/Console/Commands/Environment/DatabaseSettingsCommand.php, src/app/Console/Commands/UpgradeCommand.php...
+ Reviewed src/app/Console/Commands/Overrides/SeedCommand.php. Status: SAFE -- Safe: standard Laravel seed command guard.
LLM auditresponse for EmailSettingsCommand.php:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Laravel Artisan command for configuring email settings in the Pterodactyl Panel. It uses the framework's built-in command helpers (`choice`, `ask`, `secret`) to interactively set environment variables for various mail drivers (SMTP, Mailgun, Mandrill, Postmark). There are no network requests, no obfuscated code, no eval or dangerous shell commands, and no attempts to access or exfiltrate sensitive system data outside of the application's own configuration scope. The code follows normal Laravel/Pterodactyl packaging patterns and does not contain any supply-chain attack indicators.
</details>
<summary>
Legitimate mail configuration command, no malicious behavior.</summary>
</security_assessment>

[6/10] Reviewing src/app/Console/Commands/Environment/Addons/RunHooksCommand.php, src/app/Console/Commands/Environment/AppSettingsCommand.php, src/app/Console/Commands/Environment/DatabaseSettingsCommand.php, src/app/Console/Commands/UpgradeCommand.php...
+ Reviewed src/app/Console/Commands/Environment/EmailSettingsCommand.php. Status: SAFE -- Legitimate mail configuration command, no malicious behavior.
LLM auditresponse for UpgradeCommand.php:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is an unmodified upstream command class from the Pterodactyl Panel itself. It implements a self-upgrade process that downloads the latest release archive from the official GitHub repository (`github.com/pterodactyl/panel/releases`), extracts it, and runs standard Laravel migration and maintenance commands. 

The code does not contain any obfuscated payloads, exfiltration attempts, unexpected network destinations, or malicious operations outside the scope of a legitimate application upgrade. The use of `curl | tar -xzv` and shell-based `chown` commands is consistent with the application's own documented upgrade workflow. While the lack of checksum verification and potential shell injection in user-supplied parameters are hygiene weaknesses, they do not constitute a supply-chain attack inserted into the AUR package. The file behaves exactly as intended by the upstream project.
</details>
<summary>Safe - standard Pterodactyl panel upgrade command</summary>
</security_assessment>

[7/10] Reviewing src/app/Console/Commands/Environment/Addons/RunHooksCommand.php, src/app/Console/Commands/Environment/AppSettingsCommand.php, src/app/Console/Commands/Environment/DatabaseSettingsCommand.php...
+ Reviewed src/app/Console/Commands/UpgradeCommand.php. Status: SAFE -- Safe - standard Pterodactyl panel upgrade command
LLM auditresponse for AppSettingsCommand.php:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `AppSettingsCommand.php` is a standard Laravel Artisan command from the Pterodactyl Panel project. It interacts with the user to configure environment variables (app URL, cache/session/queue drivers, Redis settings, etc.) and writes them to `.env` using the `EnvironmentWriterTrait`. There is no obfuscated code, no suspicious network requests, no execution of untrusted remote content, and no exfiltration of sensitive data. The telemetry option mentioned is an upstream feature, not an injected supply-chain attack. The code performs only expected operations for a configuration command in a PHP application.
</details>
<summary>Legitimate configuration command, no malicious behavior.</summary>
</security_assessment>

[8/10] Reviewing src/app/Console/Commands/Environment/Addons/RunHooksCommand.php, src/app/Console/Commands/Environment/DatabaseSettingsCommand.php...
+ Reviewed src/app/Console/Commands/Environment/AppSettingsCommand.php. Status: SAFE -- Legitimate configuration command, no malicious behavior.
LLM auditresponse for RunHooksCommand.php:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Laravel console command that executes addon lifecycle hook scripts. The code is clear and contains no obfuscation, suspicious network requests, or unexpected system modifications. Key security controls are present:

- The hook event name is validated with a strict regex `[a-z0-9-]+`, preventing path traversal.
- Only executable files matching the `addons/*/hooks/{event}` glob are run, limiting execution to a controlled directory.
- Scripts are executed via Laravel's `Process` facade as a single argument (not a shell command), avoiding shell injection.
- Interactive confirmation is required before execution when the terminal is interactive.
- The command only runs hooks if the `addons.hooks_enabled` config is true.

This is legitimate application functionality designed to allow addons to run lifecycle scripts. There is no evidence of injected malicious code, data exfiltration, backdoors, or anything beyond the stated purpose of executing addon hook scripts.
</details>
<summary>Legitimate addon hook runner with proper input validation.</summary>
</security_assessment>

[9/10] Reviewing src/app/Console/Commands/Environment/DatabaseSettingsCommand.php...
+ Reviewed src/app/Console/Commands/Environment/Addons/RunHooksCommand.php. Status: SAFE -- Legitimate addon hook runner with proper input validation.
LLM auditresponse for DatabaseSettingsCommand.php:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Laravel console command for interactively configuring the Pterodactyl Panel's database connection settings. It prompts the user for database host, port, name, username, and password, optionally tests the connection by dynamically creating a temporary MySQL connection via Laravel's database manager, and then writes the provided values to the environment file using the `EnvironmentWriterTrait`. There is no obfuscated code, no suspicious network requests (the only connection is to the user-specified MySQL server for validation), no execution of external scripts, and no exfiltration of data. The code is entirely consistent with the expected functionality of a database configuration command for a web application. All operations serve the application's stated purpose.
</details>
<summary>Legitimate database configuration command, no malicious code.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/app/Console/Commands/Environment/DatabaseSettingsCommand.php. Status: SAFE -- Legitimate database configuration command, no malicious code.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 39,207
  Completion Tokens: 7,878
  Total Tokens: 47,085
  Total Cost: $0.004947
  Execution Time: 156.99 seconds
Full audit report can be found in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-pterodactyl-panel.txt
Final Status: SAFE


No issues found.
