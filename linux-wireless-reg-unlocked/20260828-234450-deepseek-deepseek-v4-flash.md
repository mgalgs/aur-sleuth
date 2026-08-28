---
package: linux-wireless-reg-unlocked
pkgver: 7.1.10
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 34741
completion_tokens: 4446
total_tokens: 39187
cost: 0.00377512716
execution_time: 270.8
files_reviewed: 9
files_skipped: 0
maintainer_files: 9
source_fetch: ok
upstream_files: 93710
upstream_named_files: 3
unpinned_sources: 0
date: 2026-08-28T23:44:46Z
file_verdicts:
  - file: 0002-iwlwifi-nvm-unlock-6ghz-and-relax-channel-flags.patch
    status: safe
    summary: Patch unlocks iwlwifi channel flags as intended by package.
  - file: 0001-iwlwifi-add-lar_disable.patch
    status: safe
    summary: Standard kernel patch adding a module parameter for LAR disable.
  - file: .SRCINFO
    status: safe
    summary: Standard package metadata, no security issues.
  - file: LICENSE
    status: safe
    summary: Standard GPL license text, no executable content.
  - file: PKGBUILD
    status: safe
    summary: Legitimate AUR package with no malicious indicators.
  - file: 0003-cfg80211-allow-unsigned-regdb-and-reject-driver-country-ie-regdom-hints.patch
    status: safe
    summary: Legitimate kernel patch disabling regulatory checks.
  - file: iwlwifi-lar.conf
    status: safe
    summary: Simple kernel module config, safe.
  - file: dracut-wireless-reg-unlocked.conf
    status: safe
    summary: Benign dracut config snippet, no malicious behavior.
  - file: linux-wireless-reg-unlocked.install
    status: safe
    summary: Standard install script, no malicious behavior found.
---

Cloning https://aur.archlinux.org/linux-wireless-reg-unlocked.git...
Cloned linux-wireless-reg-unlocked
Analyzing linux-wireless-reg-unlocked AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD was analyzed for safety when executing `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo`. The global scope only performs variable assignments using standard shell utilities (printf, sed, tr) and defines the source array. No malicious commands or network requests beyond fetching the kernel tarball from kernel.org are present. The `pkgver()` function is not defined, so no code executes via that path. The source array includes a kernel.org URL with a pinned SHA256 checksum and local patch files. File operations (extraction) during source fetch are not executable and pose no risk. No suspicious top-level command substitutions, obfuscation, or exfiltration attempts are present. The build and package functions are not executed at this stage. Therefore, the specified commands are safe to run.
</details>
<evidence>
</evidence>
<summary>Safe for initial fetching and parsing.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe for initial fetching and parsing.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: the PKGBUILD names 3 file(s) in the downloaded sources (src/linux-7.1.10/drivers/net/wireless/intel/iwlwifi/dvm/Makefile, src/linux-7.1.10/drivers/net/wireless/intel/iwlwifi/mld/Makefile, src/linux-7.1.10/drivers/net/wireless/intel/iwlwifi/mvm/Makefile); they are upstream content and were not reviewed.
Reviewing the 9 file(s) in the AUR repository. The 93710 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/9] Reviewing .SRCINFO...
[0/9] Reviewing .SRCINFO, 0001-iwlwifi-add-lar_disable.patch...
[0/9] Reviewing .SRCINFO, 0001-iwlwifi-add-lar_disable.patch, 0002-iwlwifi-nvm-unlock-6ghz-and-relax-channel-flags.patch...
LLM auditresponse for 0002-iwlwifi-nvm-unlock-6ghz-and-relax-channel-flags.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch is part of the `linux-wireless-reg-unlocked` AUR package, which aims to remove wireless regulatory restrictions (e.g., enabling 6 GHz channels). The patch modifies `iwl-nvm-parse.c` to force-enable channel flags (valid, IBSS, active, GO, 20/40/160 MHz) and remove radar and indoor-only restrictions for the iwlwifi driver. The code is straightforward kernel patch logic with no obfuscation, network requests, or unexpected system modifications. It aligns precisely with the package's declared purpose of "unlocking" wireless regulatory domains. No evidence of supply-chain injection or malicious behavior is present.
</details>
<evidence>
</evidence>
<summary>Patch unlocks iwlwifi channel flags as intended by package.</summary>
</security_assessment>

[0/9] Reviewing .SRCINFO, 0001-iwlwifi-add-lar_disable.patch, 0002-iwlwifi-nvm-unlock-6ghz-and-relax-channel-flags.patch, 0003-cfg80211-allow-unsigned-regdb-and-reject-driver-country-ie-regdom-hints.patch...
[1/9] Reviewing .SRCINFO, 0001-iwlwifi-add-lar_disable.patch, 0003-cfg80211-allow-unsigned-regdb-and-reject-driver-country-ie-regdom-hints.patch...
+ Reviewed 0002-iwlwifi-nvm-unlock-6ghz-and-relax-channel-flags.patch. Status: SAFE -- Patch unlocks iwlwifi channel flags as intended by package.
LLM auditresponse for 0001-iwlwifi-add-lar_disable.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a kernel patch for the Intel wireless driver (iwlwifi) adding a module parameter `lar_disable` that allows disabling Location Aware Regulatory (LAR) functionality. The patch modifies C source files in a standard way: it adds a `module_param_named` declaration, a struct member, and conditional checks in the NVM parsing and LAR enablement paths. There is no obfuscated code, no network requests, no file operations outside the kernel source tree, and no execution of untrusted content. The patch is consistent with legitimate kernel driver modifications for regulatory control. No supply-chain attack indicators are present.
</details>
<evidence></evidence>
<summary>Standard kernel patch adding a module parameter for LAR disable.</summary>
</security_assessment>

[2/9] Reviewing .SRCINFO, 0003-cfg80211-allow-unsigned-regdb-and-reject-driver-country-ie-regdom-hints.patch...
+ Reviewed 0001-iwlwifi-add-lar_disable.patch. Status: SAFE -- Standard kernel patch adding a module parameter for LAR disable.
[2/9] Reviewing .SRCINFO, 0003-cfg80211-allow-unsigned-regdb-and-reject-driver-country-ie-regdom-hints.patch, LICENSE...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file is standard package metadata for an AUR package. It declares sources from kernel.org (a trusted upstream) and local patches, all with pinned SHA256 checksums. There are no embedded commands, obfuscated code, network requests, or unexpected file operations. The dependencies, optional dependencies, and conflict declarations are ordinary for a kernel module package. No evidence of supply-chain attack or malicious behavior is present.
</details>
<evidence></evidence>
<summary>Standard package metadata, no security issues.</summary>
</security_assessment>

[3/9] Reviewing 0003-cfg80211-allow-unsigned-regdb-and-reject-driver-country-ie-regdom-hints.patch, LICENSE...
+ Reviewed .SRCINFO. Status: SAFE -- Standard package metadata, no security issues.
[3/9] Reviewing 0003-cfg80211-allow-unsigned-regdb-and-reject-driver-country-ie-regdom-hints.patch, LICENSE, PKGBUILD...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a verbatim copy of the GNU General Public License (GPL) version 2. It contains no executable code, no network requests, no obfuscated content, and no instructions for system modification. It is a standard open-source license file commonly included in software packages. There is no evidence of malicious behavior or supply-chain attack indicators.
</details>
<evidence></evidence>
<summary>Standard GPL license text, no executable content.</summary>
</security_assessment>

[4/9] Reviewing 0003-cfg80211-allow-unsigned-regdb-and-reject-driver-country-ie-regdom-hints.patch, PKGBUILD...
+ Reviewed LICENSE. Status: SAFE -- Standard GPL license text, no executable content.
[4/9] Reviewing 0003-cfg80211-allow-unsigned-regdb-and-reject-driver-country-ie-regdom-hints.patch, PKGBUILD, dracut-wireless-reg-unlocked.conf...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD builds custom kernel modules (iwlwifi, cfg80211) with patches to unlock wireless regulatory restrictions. All sources originate from kernel.org and the AUR itself, with pinned checksums on every file. The build and packaging steps are standard: applying patches, calling `make` against the installed kernel headers, stripping debug symbols, and installing `.ko` files plus configuration files into expected locations. There is no obfuscated code, no unexpected network activity, no exfiltration, no backdoors, and no manipulation of files outside the package&#x27;s own scope. The script is a straightforward AUR package for a legitimate research-oriented kernel module set.
</details>
<evidence></evidence>
<summary>Legitimate AUR package with no malicious indicators.</summary>
</security_assessment>

[4/9] Reviewing 0003-cfg80211-allow-unsigned-regdb-and-reject-driver-country-ie-regdom-hints.patch, PKGBUILD, dracut-wireless-reg-unlocked.conf, iwlwifi-lar.conf...
[5/9] Reviewing 0003-cfg80211-allow-unsigned-regdb-and-reject-driver-country-ie-regdom-hints.patch, dracut-wireless-reg-unlocked.conf, iwlwifi-lar.conf...
+ Reviewed PKGBUILD. Status: SAFE -- Legitimate AUR package with no malicious indicators.
LLM auditresponse for 0003-cfg80211-allow-unsigned-regdb-and-reject-driver-country-ie-regdom-hints.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a kernel patch that disables regulatory database signature validation and rejects regulatory domain hints from drivers and country IEs. The patch modifies `net/wireless/reg.c` in the Linux kernel source, commenting out the call to `regdb_has_valid_signature` and replacing driver/country IE hint handling with `EPERM` returns. This is a deliberate feature change intended by the AUR package `linux-wireless-reg-unlocked` to allow unsigned regulatory databases and ignore certain regulatory hints. There is no obfuscation, no external network requests, no data exfiltration, and no execution of untrusted code. The patch is a straightforward source code modification that alters kernel behavior for a specific purpose. It does not exhibit any signs of a supply-chain attack or malicious intent. The change is consistent with the package's stated goal, and the code is not hidden or deceptive.
</details>
<evidence>

</evidence>
<summary>Legitimate kernel patch disabling regulatory checks.</summary>
</security_assessment>

[5/9] Reviewing 0003-cfg80211-allow-unsigned-regdb-and-reject-driver-country-ie-regdom-hints.patch, dracut-wireless-reg-unlocked.conf, iwlwifi-lar.conf, linux-wireless-reg-unlocked.install...
[6/9] Reviewing dracut-wireless-reg-unlocked.conf, iwlwifi-lar.conf, linux-wireless-reg-unlocked.install...
+ Reviewed 0003-cfg80211-allow-unsigned-regdb-and-reject-driver-country-ie-regdom-hints.patch. Status: SAFE -- Legitimate kernel patch disabling regulatory checks.
LLM auditresponse for iwlwifi-lar.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a kernel module configuration file (modprobe.d format). It sets the `lar_disable` option for the `iwlwifi` driver to `1`, which disables Location Aware Regulatory (LAR) enforcement. This is a common and legitimate tweak used to avoid potential regulatory restrictions on wireless cards. There is no executable code, no network activity, no obfuscation, and no data exfiltration. The content is entirely benign and follows standard packaging practices for kernel module parameters.
</details>
<evidence>
</evidence>
<summary>Simple kernel module config, safe.</summary>
</security_assessment>

[7/9] Reviewing dracut-wireless-reg-unlocked.conf, linux-wireless-reg-unlocked.install...
+ Reviewed iwlwifi-lar.conf. Status: SAFE -- Simple kernel module config, safe.
LLM auditresponse for dracut-wireless-reg-unlocked.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a configuration snippet for dracut, specifying a list of kernel modules to omit from the initramfs. The content is a single line setting `omit_drivers` to include several wireless driver names. There are no executable commands, network requests, obfuscated code, or file operations. The use of HTML-encoded quotes (`&quot;`) is likely a result of copy-paste or processing; in context, it will be interpreted as regular double quotes by dracut. The omission of wireless drivers is consistent with the package's purpose (managing wireless regulatory domain) and does not indicate supply-chain compromise.
</details>
<evidence></evidence>
<summary>Benign dracut config snippet, no malicious behavior.</summary>
</security_assessment>

[8/9] Reviewing linux-wireless-reg-unlocked.install...
+ Reviewed dracut-wireless-reg-unlocked.conf. Status: SAFE -- Benign dracut config snippet, no malicious behavior.
LLM auditresponse for linux-wireless-reg-unlocked.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The install script performs standard post-install/upgrade/removal operations for a kernel wireless regulatory database package: rebuilding boot artifacts (`depmod`, `kernel-install`, `dracut`/`mkinitcpio`), optionally reloading wireless modules (`modprobe -r`/`modprobe`), and optionally restarting network services (`NetworkManager`, `wpa_supplicant`). All operations are legitimate and use only standard system utilities. The configuration file sourced from `/etc/` is a normal practice for optional runtime behavior tuning. There is no network activity, no obfuscated code, no execution of external payloads, and no exfiltration of data. The script adheres to expected packaging conventions.
</details>
<evidence></evidence>
<summary>Standard install script, no malicious behavior found.</summary>
</security_assessment>

[9/9] Reviewing ...
+ Reviewed linux-wireless-reg-unlocked.install. Status: SAFE -- Standard install script, no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 34,741
  Completion Tokens: 4,446
  Total Tokens: 39,187
  Total Cost: $0.003775
  Execution Time: 270.80 seconds

Final Status: SAFE


No issues found.
