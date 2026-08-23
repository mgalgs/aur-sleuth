---
package: zapret2
pkgver: 1.0.2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 11c93a0c95e2166961e3664fea6b5a63827ded10
prompt_tokens: 53202
completion_tokens: 9506
total_tokens: 62708
cost: 0.00649926
execution_time: 111.62
files_reviewed: 12
files_skipped: 0
date: 2026-06-19T08:44:38Z
file_verdicts:
  - file: zapret2.install
    status: safe
    summary: Standard service restart/uninstall script; no malicious behavior.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no malicious behavior detected.
  - file: src/zapret2/init.d/systemd/zapret2.service
    status: safe
    summary: Standard systemd service file, no malicious content.
  - file: src/zapret2/Makefile
    status: safe
    summary: Standard build Makefile, no malicious activity.
  - file: src/zapret2/install_prereq.sh
    status: safe
    summary: Standard prereq script, no malicious indicators.
  - file: src/zapret2/ipset/get_antifilter_allyouneed.sh
    status: safe
    summary: Standard IP list download for network filtering.
  - file: src/zapret2/install_bin.sh
    status: safe
    summary: Standard binary installation helper; no security issues found.
  - file: src/zapret2/ipset/create_ipset.sh
    status: safe
    summary: Legitimate firewall set management script, no malicious behavior.
  - file: src/zapret2/common/linux_daemons.sh
    status: safe
    summary: Legitimate daemon management script, no malicious behavior.
  - file: src/zapret2/install_easy.sh
    status: safe
    summary: Standard install script for the zapret anti-censorship tool.
  - file: src/zapret2/init.d/systemd/zapret2-list-update.service
    status: safe
    summary: Clean service unit file with no malicious indicators.
  - file: src/zapret2/common/installer.sh
    status: safe
    summary: Legitimate installer; no malicious code found.
---

Cloning https://aur.archlinux.org/zapret2.git to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-9glzv3ke...
Cloned repository to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-9glzv3ke
Analyzing zapret2 AUR package (working in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-9glzv3ke) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD defines only variables, arrays, and functions in its global scope. No top-level code execution occurs aside from variable assignments. The `pkgver()` function is not defined, so the default `${pkgver}` value is used. The `source` array specifies a git+https URL pointing to the official GitHub repository with a pinned tag (`v1.0.2`) and a SHA256 checksum. This is a standard and expected source definition for an AUR package.

There are no dangerous commands (eval, curl, wget, base64, etc.) at the global scope or inside `pkgver()`. The functions `prepare()`, `build()`, and `package()` are not executed by the specified commands (`makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo`), so any content within them is out of scope for this gate.

No evidence of exfiltration, obfuscated code, or unexpected network requests was found. The package fetches its source from the expected upstream repository, which is normal behavior.
</details>
<summary>Safe: no malicious top-level code; standard VCS source.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- Safe: no malicious top-level code; standard VCS source.[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, zapret2.install...
LLM auditresponse for zapret2.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Arch Linux `.install` script for a systemd service package (`zapret2.service`). It performs routine post-upgrade tasks: reloading the systemd daemon and restarting the service if it was active. The pre-remove handler disables and stops the service. There is no obfuscation, no network requests, no unexpected file operations, and no deviation from normal packaging conventions. No malicious behavior is present.
</details>
<summary>
Standard service restart/uninstall script; no malicious behavior.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed zapret2.install. Status: SAFE -- Standard service restart/uninstall script; no malicious behavior.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard Arch packaging practices for a VCS-based AUR package. The source is fetched from the official GitHub repository using a pinned tag (`v1.0.2`) and includes a SHA-256 checksum for the git archive, which verifies integrity at download time. No network requests, file operations, or command executions deviate from expected behavior: the `prepare()` stage renames a default config file, `build()` runs `make` on upstream source, and `package()` installs binaries, scripts, and configuration files into `$pkgdir`. There is no obfuscated code, no `eval` or `base64` usage, no unexpected downloads (e.g., `curl|bash`), and no manipulation of system files outside the package's own paths. The `sed` command in `package()` sets a user variable for the service, which is normal for systemd services running as a dedicated user. No supply-chain attack indicators are present.
</details>
<summary>Standard AUR PKGBUILD with no malicious behavior detected.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no malicious behavior detected.
Reviewed all required files.
Deciding which files to review next...
Note: 223 files available for selection; offering the 50 highest-priority to the model. 158 lower-priority file(s) were not offered.
LLM response for file selection:
src/zapret2/Makefile
src/zapret2/install_bin.sh
src/zapret2/install_prereq.sh
src/zapret2/install_easy.sh
src/zapret2/ipset/get_antifilter_allyouneed.sh
src/zapret2/ipset/create_ipset.sh
src/zapret2/common/installer.sh
src/zapret2/common/linux_daemons.sh
src/zapret2/init.d/systemd/zapret2.service
src/zapret2/init.d/systemd/zapret2-list-update.service
Decided to review 10 additional files: src/zapret2/Makefile, src/zapret2/install_bin.sh, src/zapret2/install_prereq.sh, src/zapret2/install_easy.sh, src/zapret2/ipset/get_antifilter_allyouneed.sh, src/zapret2/ipset/create_ipset.sh, src/zapret2/common/installer.sh, src/zapret2/common/linux_daemons.sh, src/zapret2/init.d/systemd/zapret2.service, src/zapret2/init.d/systemd/zapret2-list-update.service
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/zapret2/install_bin.sh...
[0/10] Reviewing src/zapret2/install_bin.sh, src/zapret2/install_prereq.sh...
[0/10] Reviewing src/zapret2/install_bin.sh, src/zapret2/install_prereq.sh, src/zapret2/Makefile...
[0/10] Reviewing src/zapret2/install_bin.sh, src/zapret2/install_prereq.sh, src/zapret2/Makefile, src/zapret2/ipset/get_antifilter_allyouneed.sh...
[0/10] Reviewing src/zapret2/install_bin.sh, src/zapret2/install_prereq.sh, src/zapret2/Makefile, src/zapret2/ipset/get_antifilter_allyouneed.sh, src/zapret2/ipset/create_ipset.sh...
[0/10] Reviewing src/zapret2/install_bin.sh, src/zapret2/install_prereq.sh, src/zapret2/Makefile, src/zapret2/ipset/get_antifilter_allyouneed.sh, src/zapret2/ipset/create_ipset.sh, src/zapret2/common/installer.sh...
[0/10] Reviewing src/zapret2/install_bin.sh, src/zapret2/install_prereq.sh, src/zapret2/Makefile, src/zapret2/ipset/get_antifilter_allyouneed.sh, src/zapret2/ipset/create_ipset.sh, src/zapret2/common/installer.sh, src/zapret2/install_easy.sh...
[0/10] Reviewing src/zapret2/install_bin.sh, src/zapret2/install_prereq.sh, src/zapret2/Makefile, src/zapret2/ipset/get_antifilter_allyouneed.sh, src/zapret2/ipset/create_ipset.sh, src/zapret2/common/installer.sh, src/zapret2/install_easy.sh, src/zapret2/common/linux_daemons.sh...
[0/10] Reviewing src/zapret2/install_bin.sh, src/zapret2/install_prereq.sh, src/zapret2/Makefile, src/zapret2/ipset/get_antifilter_allyouneed.sh, src/zapret2/ipset/create_ipset.sh, src/zapret2/common/installer.sh, src/zapret2/install_easy.sh, src/zapret2/common/linux_daemons.sh, src/zapret2/init.d/systemd/zapret2.service...
[0/10] Reviewing src/zapret2/install_bin.sh, src/zapret2/install_prereq.sh, src/zapret2/Makefile, src/zapret2/ipset/get_antifilter_allyouneed.sh, src/zapret2/ipset/create_ipset.sh, src/zapret2/common/installer.sh, src/zapret2/install_easy.sh, src/zapret2/common/linux_daemons.sh, src/zapret2/init.d/systemd/zapret2.service, src/zapret2/init.d/systemd/zapret2-list-update.service...
LLM auditresponse for zapret2.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit file for the `zapret2` package. It executes service start/stop commands using a script located at `/opt/zapret2/init.d/sysv/zapret2`. The paths are consistent with a typical AUR installation under `/opt`. There is no obfuscated code, no network requests, no unusual file operations, and no indication of malicious behavior. The file follows normal systemd unit file syntax and packaging practices.
</details>
<summary>Standard systemd service file, no malicious content.</summary>
</security_assessment>

[1/10] Reviewing src/zapret2/install_bin.sh, src/zapret2/install_prereq.sh, src/zapret2/Makefile, src/zapret2/ipset/get_antifilter_allyouneed.sh, src/zapret2/ipset/create_ipset.sh, src/zapret2/common/installer.sh, src/zapret2/install_easy.sh, src/zapret2/common/linux_daemons.sh, src/zapret2/init.d/systemd/zapret2-list-update.service...
+ Reviewed src/zapret2/init.d/systemd/zapret2.service. Status: SAFE -- Standard systemd service file, no malicious content.
LLM auditresponse for Makefile:
<security_assessment>
<decision>SAFE</decision>
<details>
This Makefile is a standard build script for compiling binaries from source subdirectories. It recursively invokes `make` in each subdirectory, moves compiled executables to a target folder, and creates symlinks. There are no network requests, no obfuscated code, no dangerous commands like `eval`, `curl`, or `wget`, and no unexpected file operations outside the build context. The `chmod -x` on source files is benign. All operations are local and serve the stated purpose of building and organizing binaries.
</details>
<summary>Standard build Makefile, no malicious activity.</summary>
</security_assessment>

[2/10] Reviewing src/zapret2/install_bin.sh, src/zapret2/install_prereq.sh, src/zapret2/ipset/get_antifilter_allyouneed.sh, src/zapret2/ipset/create_ipset.sh, src/zapret2/common/installer.sh, src/zapret2/install_easy.sh, src/zapret2/common/linux_daemons.sh, src/zapret2/init.d/systemd/zapret2-list-update.service...
+ Reviewed src/zapret2/Makefile. Status: SAFE -- Standard build Makefile, no malicious activity.
LLM auditresponse for install_prereq.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script `install_prereq.sh` is a standard prerequisite installation helper for the zapret package. It sources configuration and utility scripts from its own directory (`$ZAPRET_BASE/common/`), checks the operating system, and invokes platform-specific functions such as `check_prerequisites_openwrt` or `check_prerequisites_linux`. There are no suspicious network requests, obfuscated code, unexpected file operations, or execution of untrusted content. The file performs only the operations expected of a package&apos;s prerequisite installer, such as umask setting, path fixing, and system checks. No evidence of malicious behavior (e.g., data exfiltration, backdoors, unauthorized downloads) was found. The script is consistent with ordinary AUR packaging practices.
</details>
<summary>Standard prereq script, no malicious indicators.</summary>
</security_assessment>

[3/10] Reviewing src/zapret2/install_bin.sh, src/zapret2/ipset/get_antifilter_allyouneed.sh, src/zapret2/ipset/create_ipset.sh, src/zapret2/common/installer.sh, src/zapret2/install_easy.sh, src/zapret2/common/linux_daemons.sh, src/zapret2/init.d/systemd/zapret2-list-update.service...
+ Reviewed src/zapret2/install_prereq.sh. Status: SAFE -- Standard prereq script, no malicious indicators.
LLM auditresponse for get_antifilter_allyouneed.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script downloads a list of IP addresses from a known site (antifilter.download) and uses it to create an ipset. This is standard functionality for network filtering tools. No obfuscation, no execution of downloaded code, no exfiltration of local data. The URL is expected for the package's purpose.
</details>
<summary>Standard IP list download for network filtering.</summary>
</security_assessment>

[4/10] Reviewing src/zapret2/install_bin.sh, src/zapret2/ipset/create_ipset.sh, src/zapret2/common/installer.sh, src/zapret2/install_easy.sh, src/zapret2/common/linux_daemons.sh, src/zapret2/init.d/systemd/zapret2-list-update.service...
+ Reviewed src/zapret2/ipset/get_antifilter_allyouneed.sh. Status: SAFE -- Standard IP list download for network filtering.
LLM auditresponse for install_bin.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script `install_bin.sh` is a standard installation helper for the `zapret2` package. It detects the system architecture, selects a method to test binary compatibility (using `bash`, `zsh`, `elf`, `find`, or direct execution), and then copies or symlinks architecture-appropriate binaries from a local `binaries/` directory into the package directory. There are no network requests, no obfuscated code, no use of dangerous commands like `curl`, `wget`, `eval`, or base64 decoding. All file operations are confined to the package's own directory tree and are part of normal binary deployment. The only potential concern is that the script executes the binary `ip2net` as part of its compatibility test, but that is a legitimate upstream functionality test, not a supply-chain attack. No evidence of data exfiltration, backdoors, or malicious tampering is present.
</details>
<summary>Standard binary installation helper; no security issues found.</summary>
</security_assessment>

[5/10] Reviewing src/zapret2/ipset/create_ipset.sh, src/zapret2/common/installer.sh, src/zapret2/install_easy.sh, src/zapret2/common/linux_daemons.sh, src/zapret2/init.d/systemd/zapret2-list-update.service...
+ Reviewed src/zapret2/install_bin.sh. Status: SAFE -- Standard binary installation helper; no security issues found.
LLM auditresponse for create_ipset.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script `create_ipset.sh` is a legitimate helper for managing ipset/nftables/ipfw tables as part of the zapret DPI circumvention tool. It sources standard configuration files and uses common system utilities (ipset, nft, ipfw, awk, sed) to populate firewall sets from local IP list files. There are no network requests, no downloads from external sources, no obfuscated code, and no commands that exfiltrate data or execute attacker-controlled code. The script relies on user-controlled configuration variables (`$LISTS_RELOAD`, `$IPSET_HOOK`) that can execute arbitrary commands if set maliciously by an attacker, but this is expected configuration behavior for the application and not evidence of an injected supply-chain attack. The file is consistent with normal packaging practices.
</details>
<summary>Legitimate firewall set management script, no malicious behavior.</summary>
</security_assessment>

[6/10] Reviewing src/zapret2/common/installer.sh, src/zapret2/install_easy.sh, src/zapret2/common/linux_daemons.sh, src/zapret2/init.d/systemd/zapret2-list-update.service...
+ Reviewed src/zapret2/ipset/create_ipset.sh. Status: SAFE -- Legitimate firewall set management script, no malicious behavior.
LLM auditresponse for linux_daemons.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a shell script excerpt from the zapret2 package, containing functions to manage daemon modes for DPI bypass (nfqws). It only calls internal helper functions (`check_bad_ws_options`, `filter_apply_hostlist_target`, `do_nfqws`, `custom_runner`) with parameters derived from configuration variables. There are no network requests, no suspicious commands (eval, base64, curl, wget), no data exfiltration, and no obfuscated code. The script follows standard packaging practices for a system service daemon.
</details>
<summary>Legitimate daemon management script, no malicious behavior.</summary>
</security_assessment>

[7/10] Reviewing src/zapret2/common/installer.sh, src/zapret2/install_easy.sh, src/zapret2/init.d/systemd/zapret2-list-update.service...
+ Reviewed src/zapret2/common/linux_daemons.sh. Status: SAFE -- Legitimate daemon management script, no malicious behavior.
LLM auditresponse for install_easy.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is the installation component of the `zapret` anti-censorship tool. Its behavior aligns with the application's stated purpose: copying binaries, configuring systemd/init scripts, downloading blocklists from well-known anti-censorship providers (antifilter, antizapret, reestr), and setting up firewall rules. There is no obfuscated code, no unexpected network destinations, no data exfiltration, and no execution of code from untrusted sources. The only network activity is the download of blocklists from the project’s own upstream sources, and the script does not subvert the normal packaging workflow. The use of `exec` to relaunch after copying to the target directory is a standard installer technique, not a supply-chain attack.
</details>
<summary>Standard install script for the zapret anti-censorship tool.</summary>
</security_assessment>

[8/10] Reviewing src/zapret2/common/installer.sh, src/zapret2/init.d/systemd/zapret2-list-update.service...
+ Reviewed src/zapret2/install_easy.sh. Status: SAFE -- Standard install script for the zapret anti-censorship tool.
LLM auditresponse for zapret2-list-update.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit file. It defines a one-shot service that runs a script at `/opt/zapret2/ipset/get_config.sh`. There are no suspicious directives, no encoded or obfuscated commands, no network requests, and no indicators of supply-chain attack or malicious intent. The service configuration follows normal packaging practices for a background service.
</details>
<summary>Clean service unit file with no malicious indicators.</summary>
</security_assessment>

[9/10] Reviewing src/zapret2/common/installer.sh...
+ Reviewed src/zapret2/init.d/systemd/zapret2-list-update.service. Status: SAFE -- Clean service unit file with no malicious indicators.
LLM auditresponse for installer.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `installer.sh` is a standard installer script for the zapret2 application. It performs system detection, installs prerequisites via standard package managers, sets up cron jobs for periodic list updates, and manages systemd/OpenRC/OpenWrt services and firewall rules. All operations are consistent with the application's stated purpose of DPI circumvention. There are no obfuscated commands, unexpected network downloads (beyond package manager repositories and the application's own update mechanisms), exfiltration of local data, backdoors, or other supply-chain attack indicators. The script manipulates only its own configuration files and system services as expected.
</details>
<summary>Legitimate installer; no malicious code found.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/zapret2/common/installer.sh. Status: SAFE -- Legitimate installer; no malicious code found.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 53,202
  Completion Tokens: 9,506
  Total Tokens: 62,708
  Total Cost: $0.006499
  Execution Time: 111.62 seconds
Full audit report can be found in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-zapret2.txt
Final Status: SAFE


No issues found.
