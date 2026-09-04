---
package: linux-wireless-reg-unlocked
pkgver: 7.2.3
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 34719
completion_tokens: 6279
total_tokens: 40998
cost: 0.00416321262
execution_time: 64.03
files_reviewed: 9
files_skipped: 0
maintainer_files: 9
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-04T15:18:47Z
file_verdicts:
  - file: 0001-iwlwifi-add-lar_disable.patch
    status: safe
    summary: Legitimate kernel driver patch; no malicious behavior.
  - file: .SRCINFO
    status: safe
    summary: No malicious code; standard packaging metadata with verified checksums.
  - file: LICENSE
    status: safe
    summary: Standard GPL-2.0 license text, no security concerns.
  - file: 0002-iwlwifi-nvm-unlock-6ghz-and-relax-channel-flags.patch
    status: safe
    summary: Kernel patch, no malicious code.
  - file: PKGBUILD
    status: safe
    summary: Legitimate kernel module package with patched wireless regulatory behavior.
  - file: iwlwifi-lar.conf
    status: safe
    summary: Standard modprobe option disabling iwlwifi LAR; no malicious behavior.
  - file: dracut-wireless-reg-unlocked.conf
    status: safe
    summary: Harmless dracut configuration file.
  - file: 0003-cfg80211-allow-unsigned-regdb-and-reject-driver-country-ie-regdom-hints.patch
    status: safe
    summary: Patch disables regdb signature check and driver/IE hints as intended.
  - file: linux-wireless-reg-unlocked.install
    status: safe
    summary: Standard install script for wireless regulatory package.
---

Materializing linux-wireless-reg-unlocked from local mirror...
Materialized linux-wireless-reg-unlocked
Analyzing linux-wireless-reg-unlocked AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources only the global/top-level scope of this PKGBUILD. The only executable code at that scope is the two command substitutions that parse the hardcoded `_kernelpkgver` string via `printf`, `sed`, and `tr`. These operate solely on a local constant version string and perform pure text transformation; they make no network requests, do not download or execute any payload, do not touch the filesystem in a harmful way, and are not obfuscated. All other top-level statements are ordinary variable, array, and metadata assignments consistent with standard AUR packaging.

The substantive logic (patching the Linux kernel sources, building out-of-tree modules, installing files into `$pkgdir`) lives inside `prepare()`, `build()`, and `package()`, which `makepkg --printsrcinfo` does not execute, so it is out of scope for this narrow gate and will be evaluated in the full audit. The `source` array points to the official kernel.org tarball and local patch/config files with pinned sha256 checksums; no extraneous hosts or suspicious artifacts are referenced. Nothing in the sourced global scope constitutes malicious behavior.
</details>
<evidence>
</evidence>
<summary>
Global scope only does benign version-string parsing; no malicious code executes during printsrcinfo.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Global scope only does benign version-string parsing; no malicious code executes during printsrcinfo.
Reviewing the 9 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/9] Reviewing .SRCINFO...
[0/9] Reviewing .SRCINFO, 0001-iwlwifi-add-lar_disable.patch...
[0/9] Reviewing .SRCINFO, 0001-iwlwifi-add-lar_disable.patch, 0002-iwlwifi-nvm-unlock-6ghz-and-relax-channel-flags.patch...
LLM auditresponse for 0001-iwlwifi-add-lar_disable.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a kernel patch for the Intel wireless driver (iwlwifi) that adds a new module parameter `lar_disable` to disable Location-Aware Regulatory (LAR) functionality. The patch modifies several C source files in the standard intel wireless driver tree: adding the parameter definition, adding the field to the module parameter struct, updating NVM parsing logic to respect the flag, and modifying the MVM driver to check the flag. There are no network requests, no execution of external code, no obfuscation, no data exfiltration, and no system modifications beyond what is expected from a kernel driver patch. The code is transparent and only serves the stated purpose of allowing users to disable LAR via a module parameter. This is standard packaging/upstream kernel patching behavior, not a supply-chain attack.
</details>
<evidence></evidence>
<summary>Legitimate kernel driver patch; no malicious behavior.</summary>
</security_assessment>

[0/9] Reviewing .SRCINFO, 0001-iwlwifi-add-lar_disable.patch, 0002-iwlwifi-nvm-unlock-6ghz-and-relax-channel-flags.patch, 0003-cfg80211-allow-unsigned-regdb-and-reject-driver-country-ie-regdom-hints.patch...
[1/9] Reviewing .SRCINFO, 0002-iwlwifi-nvm-unlock-6ghz-and-relax-channel-flags.patch, 0003-cfg80211-allow-unsigned-regdb-and-reject-driver-country-ie-regdom-hints.patch...
+ Reviewed 0001-iwlwifi-add-lar_disable.patch. Status: SAFE -- Legitimate kernel driver patch; no malicious behavior.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file is a standard Arch package metadata file. It declares the package name, version, dependencies, and source URLs. All sources are provided with SHA-256 checksums (none are `SKIP`), and the source URLs point to the official kernel.org archive and the project's own GitHub repository for patches and configuration files. There is no obfuscation, no embedded commands, no network requests beyond declaring the sources, and no deviation from normal packaging practices. The package purpose—modified wireless regulatory behavior for research—is stated clearly. No signs of supply-chain attack or malicious intent are present.
</details>
<evidence></evidence>
<summary>No malicious code; standard packaging metadata with verified checksums.</summary>
</security_assessment>

[1/9] Reviewing .SRCINFO, 0002-iwlwifi-nvm-unlock-6ghz-and-relax-channel-flags.patch, 0003-cfg80211-allow-unsigned-regdb-and-reject-driver-country-ie-regdom-hints.patch, LICENSE...
[2/9] Reviewing 0002-iwlwifi-nvm-unlock-6ghz-and-relax-channel-flags.patch, 0003-cfg80211-allow-unsigned-regdb-and-reject-driver-country-ie-regdom-hints.patch, LICENSE...
+ Reviewed .SRCINFO. Status: SAFE -- No malicious code; standard packaging metadata with verified checksums.
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a copy of the GNU General Public License version 2. It contains only legal text, no executable code, no network requests, no file operations, and no obfuscated or encoded content. There is no evidence of malicious behavior or deviation from standard packaging practices.
</details>
<evidence></evidence>
<summary>Standard GPL-2.0 license text, no security concerns.</summary>
</security_assessment>

[3/9] Reviewing 0002-iwlwifi-nvm-unlock-6ghz-and-relax-channel-flags.patch, 0003-cfg80211-allow-unsigned-regdb-and-reject-driver-country-ie-regdom-hints.patch...
+ Reviewed LICENSE. Status: SAFE -- Standard GPL-2.0 license text, no security concerns.
[3/9] Reviewing 0002-iwlwifi-nvm-unlock-6ghz-and-relax-channel-flags.patch, 0003-cfg80211-allow-unsigned-regdb-and-reject-driver-country-ie-regdom-hints.patch, PKGBUILD...
LLM auditresponse for 0002-iwlwifi-nvm-unlock-6ghz-and-relax-channel-flags.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a kernel driver patch that modifies channel flag assignments in the Intel wireless driver (iwlwifi). It forces certain channel flags (valid, active, IBSS, etc.) and removes radar and indoor-only restrictions. For 5 GHz and 6 GHz bands it additionally enables 160 MHz, VLP, and AFC flags.  

There is no obfuscated code, no network requests, no data exfiltration, no execution of external binaries, and no backdoor behavior. The patch simply alters regulatory channel settings inline with the package's stated purpose of "unlocking" wireless regulatory restrictions. This is an intentional kernel modification, not a supply-chain attack.
</details>
<evidence></evidence>
<summary>Kernel patch, no malicious code.</summary>
</security_assessment>

[4/9] Reviewing 0003-cfg80211-allow-unsigned-regdb-and-reject-driver-country-ie-regdom-hints.patch, PKGBUILD...
+ Reviewed 0002-iwlwifi-nvm-unlock-6ghz-and-relax-channel-flags.patch. Status: SAFE -- Kernel patch, no malicious code.
[4/9] Reviewing 0003-cfg80211-allow-unsigned-regdb-and-reject-driver-country-ie-regdom-hints.patch, PKGBUILD, dracut-wireless-reg-unlocked.conf...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Arch packaging practices for building custom kernel modules. The kernel source is fetched from the official kernel.org CDN with a pinned SHA256 checksum. All local patch files and config files also have explicit SHA256 checksums, providing integrity verification.

The build process is a standard external kernel module build using `make -C` against the installed kernel headers, which is the expected approach for out-of-tree kernel modules. The patches (iwlwifi and cfg80211 modifications) are applied to the upstream kernel source and perform no network access, data exfiltration, or system modification beyond building the stated wireless modules. The installation places kernel modules in `/usr/lib/modules/.../updates/` and config files in `/etc/modprobe.d/` and `/etc/dracut.conf.d/`, which are standard locations for kernel module overrides and system configuration.

The `sed` commands that modify Makefiles to remove `$(srctree)/` prefixes are a standard workaround when building kernel modules outside the kernel source tree. There is no obfuscated code, no unexpected network requests, and no data exfiltration. The use of `/dev/stdin` with a heredoc to write a version file is unusual but harmless — it simply records the kernel release string for reference.
</details>
<evidence></evidence>
<summary>Legitimate kernel module package with patched wireless regulatory behavior.</summary>
</security_assessment>

[4/9] Reviewing 0003-cfg80211-allow-unsigned-regdb-and-reject-driver-country-ie-regdom-hints.patch, PKGBUILD, dracut-wireless-reg-unlocked.conf, iwlwifi-lar.conf...
[5/9] Reviewing 0003-cfg80211-allow-unsigned-regdb-and-reject-driver-country-ie-regdom-hints.patch, dracut-wireless-reg-unlocked.conf, iwlwifi-lar.conf...
+ Reviewed PKGBUILD. Status: SAFE -- Legitimate kernel module package with patched wireless regulatory behavior.
LLM auditresponse for iwlwifi-lar.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a modprobe configuration file that sets a single kernel module option for the `iwlwifi` driver: `lar_disable=1`. This disables Location Aware Regulatory (LAR) functionality for Intel wireless adapters. The content is a standard, innocuous kernel module configuration and contains no commands, network operations, obfuscation, or file manipulation. There is no evidence of malicious or dangerous behavior.
</details>
<evidence>
</evidence>
<summary>
Standard modprobe option disabling iwlwifi LAR; no malicious behavior.</summary>
</security_assessment>

[6/9] Reviewing 0003-cfg80211-allow-unsigned-regdb-and-reject-driver-country-ie-regdom-hints.patch, dracut-wireless-reg-unlocked.conf...
+ Reviewed iwlwifi-lar.conf. Status: SAFE -- Standard modprobe option disabling iwlwifi LAR; no malicious behavior.
[6/9] Reviewing 0003-cfg80211-allow-unsigned-regdb-and-reject-driver-country-ie-regdom-hints.patch, dracut-wireless-reg-unlocked.conf, linux-wireless-reg-unlocked.install...
LLM auditresponse for dracut-wireless-reg-unlocked.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a dracut configuration file that instructs the initramfs builder to omit a set of wireless kernel modules (iwlwifi, iwlmvm, iwldvm, cfg80211, mac80211) from the generated initramfs. The file contains no network requests, obfuscated code, dangerous commands, or any operations beyond setting a configuration variable for dracut. It is a normal and expected packaging practice for a package named `linux-wireless-reg-unlocked`, which likely aims to alter the kernel's wireless regulatory enforcement. There is no evidence of malicious intent or supply-chain attack.
</details>
<evidence></evidence>
<summary>Harmless dracut configuration file.</summary>
</security_assessment>

[7/9] Reviewing 0003-cfg80211-allow-unsigned-regdb-and-reject-driver-country-ie-regdom-hints.patch, linux-wireless-reg-unlocked.install...
+ Reviewed dracut-wireless-reg-unlocked.conf. Status: SAFE -- Harmless dracut configuration file.
LLM auditresponse for 0003-cfg80211-allow-unsigned-regdb-and-reject-driver-country-ie-regdom-hints.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch modifies the Linux kernel's wireless regulatory code (`net/wireless/reg.c`) to:
1. Disable signature verification of the regulatory database by commenting out the call to `regdb_has_valid_signature()`.
2. Reject regulatory hints from drivers (`NL80211_REGDOM_SET_BY_DRIVER`) and country IEs (`NL80211_REGDOM_SET_BY_COUNTRY_IE`) by returning `-EPERM` instead of processing them.

This behavior is the stated purpose of the `linux-wireless-reg-unlocked` package—allowing users to load an unsigned regulatory database and ignoring external regulatory hints. The patch contains no obfuscation, no network requests, no downloads, no encoded payloads, and no system modifications outside the kernel source tree. It is a straightforward diff against an upstream kernel file, typical of AUR kernel customization packages. There is no evidence of exfiltration, backdoors, credential theft, or execution of attacker-controlled code. While disabling signature verification reduces security, that is an intentional user choice, not a supply-chain attack.
</details>
<evidence>

</evidence>
<summary>Patch disables regdb signature check and driver/IE hints as intended.</summary>
</security_assessment>

[8/9] Reviewing linux-wireless-reg-unlocked.install...
+ Reviewed 0003-cfg80211-allow-unsigned-regdb-and-reject-driver-country-ie-regdom-hints.patch. Status: SAFE -- Patch disables regdb signature check and driver/IE hints as intended.
LLM auditresponse for linux-wireless-reg-unlocked.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a typical AUR install script for a wireless regulatory package. It loads a user‑controlled configuration file from `/etc/` (which only root can modify), then optionally reloads kernel modules (`iwlwifi`), restarts network services (`NetworkManager`, `wpa_supplicant`), and rebuilds boot artifacts (`depmod`, `dracut`, `mkinitcpio`, `kernel-install`). All commands are standard system utilities for kernel/driver maintenance. No network downloads, no obfuscated code, no data exfiltration, and no execution of unchecked external content. The only external input is a local config file, which is normal packaging practice. There is no malicious behavior.
</details>
<evidence></evidence>
<summary>Standard install script for wireless regulatory package.</summary>
</security_assessment>

[9/9] Reviewing ...
+ Reviewed linux-wireless-reg-unlocked.install. Status: SAFE -- Standard install script for wireless regulatory package.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 34,719
  Completion Tokens: 6,279
  Total Tokens: 40,998
  Total Cost: $0.004163
  Execution Time: 64.03 seconds

Final Status: SAFE


No issues found.
