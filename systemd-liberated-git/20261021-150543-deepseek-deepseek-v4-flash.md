---
package: systemd-liberated-git
pkgver: 263.r91989
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 62097
completion_tokens: 21167
total_tokens: 83264
cost: 0.009503221
execution_time: 157.93
files_reviewed: 19
files_skipped: 2
maintainer_files: 21
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-21T15:05:42Z
file_verdicts:
  - file: 0001-Use-Arch-Linux-device-access-groups.patch
    status: skipped
    summary: "Skipping binary file: 0001-Use-Arch-Linux-device-access-groups.patch"
  - file: .SRCINFO
    status: safe
    summary: Metadata-only file, no executable or suspicious content.
  - file: .gitignore
    status: safe
    summary: Standard AUR .gitignore with no security issues.
  - file: 30-systemd-binfmt.hook
    status: safe
    summary: Legitimate systemd hook for binfmt registration.
  - file: 30-systemd-catalog.hook
    status: safe
    summary: Standard pacman hook for systemd catalog updates
  - file: 20-systemd-sysusers.hook
    status: safe
    summary: Standard systemd sysusers hook, safe
  - file: 30-systemd-daemon-reload-user.hook
    status: safe
    summary: Standard pacman hook for systemd user daemon reload.
  - file: 30-systemd-daemon-reload-system.hook
    status: safe
    summary: Normal systemd hook, no security issues.
  - file: 30-systemd-hwdb.hook
    status: safe
    summary: Standard udev hwdb hook, no security concerns.
  - file: 30-systemd-restart-marked.hook
    status: safe
    summary: Standard Pacman hook; no security issues.
  - file: 30-systemd-udev-reload.hook
    status: safe
    summary: Standard pacman hook for udev reload.
  - file: 30-systemd-tmpfiles.hook
    status: safe
    summary: Standard pacman hook, no security issues found.
  - file: 30-systemd-sysctl.hook
    status: safe
    summary: Standard alpm hook for sysctl.
  - file: arch.conf
    status: safe
    summary: Static example config, no security issues.
  - file: loader.conf
    status: safe
    summary: Standard systemd-boot configuration; no malicious content.
  - file: splash-arch.bmp
    status: skipped
    summary: "Skipping binary file: splash-arch.bmp"
  - file: 30-systemd-update.hook
    status: safe
    summary: Standard ALPM hook, no malicious indicators.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD via git, no evidence of malicious code.
  - file: systemd-user.pam
    status: safe
    summary: Standard PAM config for systemd
  - file: systemd.install
    status: safe
    summary: Standard systemd package install script.
  - file: systemd-hook
    status: safe
    summary: Routine systemd post-update hook with no malicious code.
---

Materializing systemd-liberated-git from local mirror...
Materialized systemd-liberated-git
Analyzing systemd-liberated-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD file consists entirely of variable definitions (e.g., `pkgbase`, `pkgname`, `source`, `sha512sums`) and function definitions (`pkgver`, `prepare`, `build`, `package_*`). None of the top-level statements contain command substitutions (`$()`), backticks, `eval`, `source`, `curl`, `wget`, or other immediate code execution. The file follows standard AUR packaging syntax with all potentially dangerous commands (e.g., `git clone`, `patch`, `meson`, `rm`, `install`) located inside function bodies that are not invoked by `makepkg --printsrcinfo`. Therefore, sourcing this PKGBUILD during the metadata‑parsing step does not execute any malicious code.
</details>
<evidence></evidence>
<summary>No top-level code execution occurs.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level code execution occurs.
Reviewing the 21 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/21] Reviewing .SRCINFO...
[0/21] Reviewing .SRCINFO, .gitignore...
[0/21] Reviewing .SRCINFO, .gitignore, 0001-Use-Arch-Linux-device-access-groups.patch...
[0/21] Reviewing .SRCINFO, .gitignore, 0001-Use-Arch-Linux-device-access-groups.patch, 20-systemd-sysusers.hook...
[1/21] Reviewing .SRCINFO, .gitignore, 20-systemd-sysusers.hook...
! Reviewed 0001-Use-Arch-Linux-device-access-groups.patch. Status: SKIPPED -- Skipping binary file: 0001-Use-Arch-Linux-device-access-groups.patch
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a metadata descriptor for the AUR package `systemd-liberated-git`. It contains only package metadata: name, version, architecture, dependencies, sources, and checksums. No executable code, shell commands, obfuscated content, or suspicious network operations are present. The VCS source (`git+https://github.com/Jeffrey-Sardina/systemd`) points to the package's own upstream repository, which is standard for -git packages. The `sha512sums = SKIP` for the VCS source is normal and required for VCS sources. All other source files have pinned sha512 sums. There is no evidence of supply-chain attack or malicious behavior.
</details>
<evidence></evidence>
<summary>Metadata-only file, no executable or suspicious content.</summary>
</security_assessment>

[1/21] Reviewing .SRCINFO, .gitignore, 20-systemd-sysusers.hook, 30-systemd-binfmt.hook...
[2/21] Reviewing .gitignore, 20-systemd-sysusers.hook, 30-systemd-binfmt.hook...
+ Reviewed .SRCINFO. Status: SAFE -- Metadata-only file, no executable or suspicious content.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.gitignore` file is a standard Git configuration file used to prevent specific files and directories from being tracked by version control. The entries `*.pkg.tar.zst`, `*.pkg.tar.xz`, `src/`, and `pkg/` are completely conventional for an Arch Linux AUR package repository. They ensure that built package artifacts and source/package build directories created by `makepkg` are not accidentally committed to the repository. This file contains no executable code, makes no network requests, performs no file system modifications outside of Git's ignore rules, and exhibits none of the characteristics of a supply chain attack. It is entirely benign.
</details>
<evidence></evidence>
<summary>Standard AUR .gitignore with no security issues.</summary>
</security_assessment>

[2/21] Reviewing .gitignore, 20-systemd-sysusers.hook, 30-systemd-binfmt.hook, 30-systemd-catalog.hook...
[3/21] Reviewing 20-systemd-sysusers.hook, 30-systemd-binfmt.hook, 30-systemd-catalog.hook...
+ Reviewed .gitignore. Status: SAFE -- Standard AUR .gitignore with no security issues.
LLM auditresponse for 30-systemd-binfmt.hook:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Pacman hook that registers binary formats via systemd's binfmt service whenever binfmt.d configuration files are installed or updated. It triggers on files under `/usr/lib/binfmt.d/*.conf` and executes the well-known systemd hook helper script. There is no embedded malicious behavior: no network requests, no obfuscation, no execution of untrusted code. The file conforms to normal Arch Linux packaging practices for systemd integration.
</details>
<evidence></evidence>
<summary>Legitimate systemd hook for binfmt registration.</summary>
</security_assessment>

[3/21] Reviewing 20-systemd-sysusers.hook, 30-systemd-binfmt.hook, 30-systemd-catalog.hook, 30-systemd-daemon-reload-system.hook...
[4/21] Reviewing 20-systemd-sysusers.hook, 30-systemd-catalog.hook, 30-systemd-daemon-reload-system.hook...
+ Reviewed 30-systemd-binfmt.hook. Status: SAFE -- Legitimate systemd hook for binfmt registration.
LLM auditresponse for 30-systemd-catalog.hook:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard pacman hook used by the systemd package to update the journal message catalog whenever catalog files are installed, upgraded, or removed. The hook triggers on changes to `/usr/lib/systemd/catalog/*` and executes a script at the expected systemd path `/usr/share/libalpm/scripts/systemd-hook catalog`. There is no suspicious code, external network requests, obfuscation, or data exfiltration. The content matches normal packaging practice for maintaining systemd's binary message catalog on Arch Linux.
</details>
<evidence></evidence>
<summary>Standard pacman hook for systemd catalog updates</summary>
</security_assessment>

[4/21] Reviewing 20-systemd-sysusers.hook, 30-systemd-catalog.hook, 30-systemd-daemon-reload-system.hook, 30-systemd-daemon-reload-user.hook...
[5/21] Reviewing 20-systemd-sysusers.hook, 30-systemd-daemon-reload-system.hook, 30-systemd-daemon-reload-user.hook...
+ Reviewed 30-systemd-catalog.hook. Status: SAFE -- Standard pacman hook for systemd catalog updates
LLM auditresponse for 20-systemd-sysusers.hook:
<security_assessment>
<decision>SAFE</decision>
<details>This file is a standard libalpm (pacman) hook for the `systemd-liberated-git` package. It triggers after installation or upgrade of sysusers configuration files (`usr/lib/sysusers.d/*.conf`) and executes `/usr/share/libalpm/scripts/systemd-hook sysusers` to create system user accounts. There is no obfuscation, network requests, or execution of untrusted code. The hook follows normal Arch Linux packaging conventions and does not introduce any supply-chain attack vectors.</details>
<evidence></evidence>
<summary>Standard systemd sysusers hook, safe</summary>
</security_assessment>

[5/21] Reviewing 20-systemd-sysusers.hook, 30-systemd-daemon-reload-system.hook, 30-systemd-daemon-reload-user.hook, 30-systemd-hwdb.hook...
[6/21] Reviewing 30-systemd-daemon-reload-system.hook, 30-systemd-daemon-reload-user.hook, 30-systemd-hwdb.hook...
+ Reviewed 20-systemd-sysusers.hook. Status: SAFE -- Standard systemd sysusers hook, safe
LLM auditresponse for 30-systemd-daemon-reload-user.hook:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard pacman (alpm) hook that triggers on changes to user systemd unit files under `/usr/lib/systemd/user/`. After package install, upgrade, or removal affecting those files, it runs the script `/usr/share/libalpm/scripts/systemd-hook` with the argument `daemon-reload-user` to reload the user manager configuration. This behavior is normal and expected for systemd packaging—it is not suspicious or malicious. There is no obfuscation, network access, file exfiltration, or code execution beyond the intended systemd hook script.
</details>
<evidence>
</evidence>
<summary>Standard pacman hook for systemd user daemon reload.</summary>
</security_assessment>

[6/21] Reviewing 30-systemd-daemon-reload-system.hook, 30-systemd-daemon-reload-user.hook, 30-systemd-hwdb.hook, 30-systemd-restart-marked.hook...
[7/21] Reviewing 30-systemd-daemon-reload-system.hook, 30-systemd-hwdb.hook, 30-systemd-restart-marked.hook...
+ Reviewed 30-systemd-daemon-reload-user.hook. Status: SAFE -- Standard pacman hook for systemd user daemon reload.
LLM auditresponse for 30-systemd-daemon-reload-system.hook:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard alpm hook that triggers on changes to systemd system unit files and calls `systemd-hook daemon-reload-system`, a script provided by the `systemd` package itself.  There is no suspicious code, network access, obfuscation, or deviation from normal packaging practices.  The hook is a routine part of systemd integration on Arch Linux.
</details>
<evidence>
</evidence>
<summary>Normal systemd hook, no security issues.</summary>
</security_assessment>

[7/21] Reviewing 30-systemd-daemon-reload-system.hook, 30-systemd-hwdb.hook, 30-systemd-restart-marked.hook, 30-systemd-sysctl.hook...
[8/21] Reviewing 30-systemd-hwdb.hook, 30-systemd-restart-marked.hook, 30-systemd-sysctl.hook...
+ Reviewed 30-systemd-daemon-reload-system.hook. Status: SAFE -- Normal systemd hook, no security issues.
LLM auditresponse for 30-systemd-hwdb.hook:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard libalpm hook file for the systemd package. It triggers on changes to the udev hardware database directory (`usr/lib/udev/hwdb.d/*`) and executes a system-provided script (`/usr/share/libalpm/scripts/systemd-hook hwdb`) to update the hardware database after package transactions. There is no evidence of malicious behavior: no network requests, obfuscation, unexpected file operations, or dangerous commands. The hook follows normal packaging conventions for systemd integration.
</details>
<evidence></evidence>
<summary>Standard udev hwdb hook, no security concerns.</summary>
</security_assessment>

[8/21] Reviewing 30-systemd-hwdb.hook, 30-systemd-restart-marked.hook, 30-systemd-sysctl.hook, 30-systemd-tmpfiles.hook...
[9/21] Reviewing 30-systemd-restart-marked.hook, 30-systemd-sysctl.hook, 30-systemd-tmpfiles.hook...
+ Reviewed 30-systemd-hwdb.hook. Status: SAFE -- Standard udev hwdb hook, no security concerns.
LLM auditresponse for 30-systemd-restart-marked.hook:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Pacman hook file used to restart systemd services after unit files are upgraded.  It triggers on changes to `/usr/lib/systemd/system/*` and runs a script from the same package (`/usr/share/libalpm/scripts/systemd-hook restart-marked`).  There is no network access, no obfuscated code, no unexpected commands, and no deviation from normal packaging practices.  The referenced script is part of the package itself and performs the expected task of restarting marked services.
</details>
<evidence></evidence>
<summary>Standard Pacman hook; no security issues.</summary>
</security_assessment>

[9/21] Reviewing 30-systemd-restart-marked.hook, 30-systemd-sysctl.hook, 30-systemd-tmpfiles.hook, 30-systemd-udev-reload.hook...
[10/21] Reviewing 30-systemd-sysctl.hook, 30-systemd-tmpfiles.hook, 30-systemd-udev-reload.hook...
+ Reviewed 30-systemd-restart-marked.hook. Status: SAFE -- Standard Pacman hook; no security issues.
LLM auditresponse for 30-systemd-udev-reload.hook:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Arch Linux pacman hook that triggers on changes to udev rules and executes the known systemd script `/usr/share/libalpm/scripts/systemd-hook` to reload the device manager configuration. There is no suspicious or malicious behavior; it is a routine and expected packaging component.
</details>
<evidence></evidence>
<summary>Standard pacman hook for udev reload.</summary>
</security_assessment>

[10/21] Reviewing 30-systemd-sysctl.hook, 30-systemd-tmpfiles.hook, 30-systemd-udev-reload.hook, 30-systemd-update.hook...
[11/21] Reviewing 30-systemd-sysctl.hook, 30-systemd-tmpfiles.hook, 30-systemd-update.hook...
+ Reviewed 30-systemd-udev-reload.hook. Status: SAFE -- Standard pacman hook for udev reload.
LLM auditresponse for 30-systemd-tmpfiles.hook:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard pacman hook for Arch Linux. It triggers after package installation or upgrade when files matching usr/lib/tmpfiles.d/*.conf are added or updated. The action executes a script `/usr/share/libalpm/scripts/systemd-hook tmpfiles`, which is part of the systemd-liberated-git package and is expected to invoke systemd-tmpfiles to process the tmpfiles configurations. There is no malicious code, network requests, obfuscation, or dangerous operations in this hook definition. It follows standard packaging practices.
</details>
<evidence></evidence>
<summary>
Standard pacman hook, no security issues found.
</summary>
</security_assessment>

[11/21] Reviewing 30-systemd-sysctl.hook, 30-systemd-tmpfiles.hook, 30-systemd-update.hook, PKGBUILD...
[12/21] Reviewing 30-systemd-sysctl.hook, 30-systemd-update.hook, PKGBUILD...
+ Reviewed 30-systemd-tmpfiles.hook. Status: SAFE -- Standard pacman hook, no security issues found.
LLM auditresponse for 30-systemd-sysctl.hook:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Arch Linux alpm (Pacman) hook. It is designed to automatically apply kernel sysctl settings after a package containing configuration files in `usr/lib/sysctl.d/*.conf` is installed or upgraded. The executed command, `/usr/share/libalpm/scripts/systemd-hook sysctl`, is a standard distribution script provided by the `systemd` package itself. This script wraps `systemd-sysctl` to safely apply the chosen kernel parameters.

From a security perspective, this hook does not perform any network requests, download or execute code from external sources, use obfuscation, or exfiltrate data. It operates entirely within the expected scope of routine post-installation system configuration. The action taken is a standard maintenance task that is widely used across Arch Linux and its derivatives.

There is no evidence of a supply chain attack, injected malicious code, or deviation from standard packaging practices in this file. Its behavior is consistent with the stated purpose of maintaining kernel parameters.
</details>
<evidence/>
<summary>Standard alpm hook for sysctl.</summary>
</security_assessment>

[12/21] Reviewing 30-systemd-sysctl.hook, 30-systemd-update.hook, PKGBUILD, arch.conf...
[13/21] Reviewing 30-systemd-update.hook, PKGBUILD, arch.conf...
+ Reviewed 30-systemd-sysctl.hook. Status: SAFE -- Standard alpm hook for sysctl.
LLM auditresponse for arch.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a static example configuration for systemd-boot or a compatible bootloader. It contains only comments and placeholder kernel/initrd paths and boot options. No executable code, network requests, obfuscation, or system modifications are present. The content is entirely benign and consistent with standard packaging practices.
</details>
<evidence></evidence>
<summary>Static example config, no security issues.</summary>
</security_assessment>

[13/21] Reviewing 30-systemd-update.hook, PKGBUILD, arch.conf, loader.conf...
[14/21] Reviewing 30-systemd-update.hook, PKGBUILD, loader.conf...
+ Reviewed arch.conf. Status: SAFE -- Static example config, no security issues.
LLM auditresponse for loader.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `loader.conf` is a plain-text configuration file for systemd-boot. It contains only a single directive, `default arch.conf`, which specifies the default boot entry. There are no executable commands, network requests, obfuscated content, file operations, or any other behavior that could be considered malicious. This is a standard packaging file and does not pose any security risk.
</details>
<evidence>
</evidence>
<summary>Standard systemd-boot configuration; no malicious content.</summary>
</security_assessment>

[14/21] Reviewing 30-systemd-update.hook, PKGBUILD, loader.conf, splash-arch.bmp...
[15/21] Reviewing 30-systemd-update.hook, PKGBUILD, splash-arch.bmp...
+ Reviewed loader.conf. Status: SAFE -- Standard systemd-boot configuration; no malicious content.
[15/21] Reviewing 30-systemd-update.hook, PKGBUILD, splash-arch.bmp, systemd-hook...
[16/21] Reviewing 30-systemd-update.hook, PKGBUILD, systemd-hook...
! Reviewed splash-arch.bmp. Status: SKIPPED -- Skipping binary file: splash-arch.bmp
LLM auditresponse for 30-systemd-update.hook:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard ALPM (Arch Linux Package Manager) hook. It defines a post-transaction trigger that executes `/usr/share/libalpm/scripts/systemd-hook update` whenever files under `/usr/` are installed, upgraded, or removed. The content shows no signs of malicious intent. There are no network requests, obfuscated commands, exfiltration attempts, or backdoors. The executed binary is an internal script from the same package, which is standard operating procedure for systemd packages on Arch Linux (the official `systemd` package ships identical hooks). The hook serves the package's stated purpose of managing systemd's `ConditionNeedsUpdate` state.
</details>
<evidence></evidence>
<summary>Standard ALPM hook, no malicious indicators.</summary>
</security_assessment>

[16/21] Reviewing 30-systemd-update.hook, PKGBUILD, systemd-hook, systemd-user.pam...
[17/21] Reviewing PKGBUILD, systemd-hook, systemd-user.pam...
+ Reviewed 30-systemd-update.hook. Status: SAFE -- Standard ALPM hook, no malicious indicators.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a straightforward VCS‑based packaging script for a systemd fork. No `curl`, `wget`, `eval`, `base64`, or `exec` calls are present. The only network operations are the initial `git clone` via the source array (to the package's own upstream) and a fallback clone loop in `prepare()` that tries the same project on alternate mirrors (GitHub, Codeberg, Gitea) if the primary clone fails. While the fallback widens the supply‑chain window slightly, the mirrors are all related to the maintained project and there are no other red flags – the pulled content is simply the upstream tree, not an attacker‑controlled payload. All other operations (`patch`, `meson`, `install`, `mv`, `rm`, `ln`) are standard packaging steps. No obfuscation, data exfiltration, or unexpected system modifications were found.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD via git, no evidence of malicious code.</summary>
</security_assessment>

[18/21] Reviewing systemd-hook, systemd-user.pam...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD via git, no evidence of malicious code.
[18/21] Reviewing systemd-hook, systemd-user.pam, systemd.install...
LLM auditresponse for systemd-user.pam:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard PAM configuration file for systemd --user instances. It includes typical PAM modules such as pam_loginuid, pam_keyinit, pam_umask, pam_systemd, pam_env, and includes system-auth and system-login. There are no network requests, no obfuscated code, no dangerous commands, and no attempts to exfiltrate data or execute untrusted code. The file is a normal part of a systemd package, intended to configure user session PAM stacks.
</details>
<evidence></evidence>
<summary>Standard PAM config for systemd</summary>
</security_assessment>

[19/21] Reviewing systemd-hook, systemd.install...
+ Reviewed systemd-user.pam. Status: SAFE -- Standard PAM config for systemd
LLM auditresponse for systemd.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard .install script for the systemd package. It performs routine post-installation, post-upgrade, and post-remove tasks: setting up the machine ID, enabling default services, creating journal directories, updating systemd catalogs, reexecing systemd processes, and managing the shell entries. There is no evidence of malicious code, obfuscation, suspicious network requests, or any deviation from expected packaging behavior.
</details>
<evidence></evidence>
<summary>Standard systemd package install script.</summary>
</security_assessment>

[20/21] Reviewing systemd-hook...
+ Reviewed systemd.install. Status: SAFE -- Standard systemd package install script.
LLM auditresponse for systemd-hook:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard post-installation/update hook for a systemd package on Arch Linux. It executes a variety of systemd maintenance commands (reloading daemons, updating the hwdb and journal catalog, triggering udev rules, etc.) with appropriate guards against running in a chroot or non-systemd-booted environment. The operations are strictly confined to local system binaries under `/usr/lib/systemd/` and `/usr/bin/`. There is no network access, obfuscation, or execution of untrusted code. The `touch -c /usr` line is a common Arch convention to update the root filesystem timestamp. No evidence of supply-chain compromise or malicious intent exists in this file.
</details>
<evidence>
</evidence>
<summary>
Routine systemd post-update hook with no malicious code.
</summary>
</security_assessment>

[21/21] Reviewing ...
+ Reviewed systemd-hook. Status: SAFE -- Routine systemd post-update hook with no malicious code.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
(Skipped 2 files: 0001-Use-Arch-Linux-device-access-groups.patch, splash-arch.bmp)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 62,097
  Completion Tokens: 21,167
  Total Tokens: 83,264
  Total Cost: $0.009503
  Execution Time: 157.93 seconds

Final Status: SAFE


No issues found.


Audit Skips:

0001-Use-Arch-Linux-device-access-groups.patch: [SKIPPED] Skipping binary file: 0001-Use-Arch-Linux-device-access-groups.patch

splash-arch.bmp: [SKIPPED] Skipping binary file: splash-arch.bmp
