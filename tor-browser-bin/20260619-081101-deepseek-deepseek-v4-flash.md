---
package: tor-browser-bin
pkgver: 15.0.16
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 11c93a0c95e2166961e3664fea6b5a63827ded10
prompt_tokens: 41947
completion_tokens: 11986
total_tokens: 53933
cost: 0.00593271
execution_time: 130.52
files_reviewed: 13
files_skipped: 0
date: 2026-06-19T08:11:01Z
file_verdicts:
  - file: tor-browser.svg
    status: safe
    summary: Static SVG icon, no malicious content.
  - file: tor-browser.install
    status: safe
    summary: Informational messages only; no malicious operations.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD for Tor Browser; no malicious behavior found.
  - file: src/tor-browser/Browser/TorBrowser/Data/Tor/torrc
    status: safe
    summary: Empty file; no content to assess.
  - file: tor-browser.desktop.in
    status: safe
    summary: Standard desktop entry file with no security concerns.
  - file: src/tor-browser/Browser/update-settings.ini
    status: safe
    summary: Standard Tor Browser update configuration file, no malicious content.
  - file: src/tor-browser/Browser/defaults/pref/channel-prefs.js
    status: safe
    summary: Standard upstream preference file, no malicious content.
  - file: src/tor-browser/Browser/updater.ini
    status: safe
    summary: Innocuous INI file with UI strings.
  - file: src/tor-browser/Browser/start-tor-browser.desktop
    status: safe
    summary: Standard Tor Browser desktop launcher; no malicious behavior.
  - file: src/tor-browser/Browser/execdesktop
    status: safe
    summary: Standard wrapper script, no supply-chain threat.
  - file: src/tor-browser/Browser/TorBrowser/Data/Tor/torrc-defaults
    status: safe
    summary: Standard Tor Browser config; no security issues.
  - file: src/tor-browser/Browser/start-tor-browser
    status: safe
    summary: Official Tor Browser launcher with no malicious code; all operations are expected privacy features.
  - file: tor-browser.in
    status: safe
    summary: Safe wrapper for Tor Browser with AUR update functionality.
---

Cloning https://aur.archlinux.org/tor-browser-bin.git to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-w0hsezi7...
Cloned repository to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-w0hsezi7
Analyzing tor-browser-bin AUR package (working in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-w0hsezi7) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD fetches sources from the official Tor Project archive (`archive.torproject.org`). During sourcing (global scope), it calls `_dist_checksum` which uses `curl` to download checksum files from the same official URL. This is a non-standard but legitimate packaging practice – the network request is to the project’s own upstream and retrieves only text data for verification. No obfuscation, eval, or unexpected external destinations are present. The commands (`makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo`) are safe to run.
</details>
<summary>Fetching sources from official Tor archive only; sourcing safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- Fetching sources from official Tor archive only; sourcing safe.[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/3] Reviewing PKGBUILD...
[0/3] Reviewing PKGBUILD, tor-browser.install...
[0/3] Reviewing PKGBUILD, tor-browser.install, tor-browser.svg...
LLM auditresponse for tor-browser.svg:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is an SVG icon for the Tor Browser. It contains standard SVG elements such as gradients, paths, filters, and transformations. There is no JavaScript, no encoded or obfuscated content, no external network requests, and no dangerous commands. The file is entirely static and serves only as an icon for the application. No supply-chain attack indicators are present.
</details>
<summary>Static SVG icon, no malicious content.</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, tor-browser.install...
+ Reviewed tor-browser.svg. Status: SAFE -- Static SVG icon, no malicious content.
LLM auditresponse for tor-browser.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard AUR `.install` script that only prints informational messages to the user during package installation, upgrade, and removal. It does not execute any commands that download or execute code, modify system files, exfiltrate data, or perform any other potentially malicious operations. The messages inform the user about the expected behavior of the package (extraction to `~/.local/opt/tor-browser` on first run) and remind them to manually clean up the user-local directory on removal. There is no obfuscation, no encoded content, no network requests, and no deviation from standard packaging practices. The content is entirely benign.
</details>
<summary>Informational messages only; no malicious operations.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed tor-browser.install. Status: SAFE -- Informational messages only; no malicious operations.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a binary package. It downloads the Tor Browser tarball and its signature from the official Tor Project archive (`archive.torproject.org`). The checksums are fetched dynamically from the same official source using `curl`, which is a design choice that trades reproducibility for convenience but is not malicious. The `validpgpkeys` array is set to the Tor Browser signing key, and the `.asc` signature files are included in the source array (though not explicitly verified in the PKGBUILD itself). No obfuscated code, dangerous commands (`eval`, `curl|bash`, etc.), or unexpected network destinations are present. The `package()` function only copies the tarball into `/opt` and installs wrapper scripts and icons; it does not execute any downloaded content. The dynamic checksum fetching is a hygiene concern (unpinned checksum) but does not constitute a supply-chain attack.
</details>
<summary>Standard AUR PKGBUILD for Tor Browser; no malicious behavior found.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD for Tor Browser; no malicious behavior found.
Reviewed all required files.
Deciding which files to review next...
LLM response for file selection:
src/tor-browser/Browser/start-tor-browser
src/tor-browser/Browser/start-tor-browser.desktop
tor-browser.desktop.in
tor-browser.in
src/tor-browser/Browser/execdesktop
src/tor-browser/Browser/TorBrowser/Data/Tor/torrc
src/tor-browser/Browser/TorBrowser/Data/Tor/torrc-defaults
src/tor-browser/Browser/update-settings.ini
src/tor-browser/Browser/updater.ini
src/tor-browser/Browser/defaults/pref/channel-prefs.js
Decided to review 10 additional files: src/tor-browser/Browser/start-tor-browser, src/tor-browser/Browser/start-tor-browser.desktop, tor-browser.desktop.in, tor-browser.in, src/tor-browser/Browser/execdesktop, src/tor-browser/Browser/TorBrowser/Data/Tor/torrc, src/tor-browser/Browser/TorBrowser/Data/Tor/torrc-defaults, src/tor-browser/Browser/update-settings.ini, src/tor-browser/Browser/updater.ini, src/tor-browser/Browser/defaults/pref/channel-prefs.js
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/tor-browser/Browser/start-tor-browser...
[0/10] Reviewing src/tor-browser/Browser/start-tor-browser, tor-browser.in...
[0/10] Reviewing src/tor-browser/Browser/start-tor-browser, tor-browser.in, tor-browser.desktop.in...
[0/10] Reviewing src/tor-browser/Browser/start-tor-browser, tor-browser.in, tor-browser.desktop.in, src/tor-browser/Browser/start-tor-browser.desktop...
[0/10] Reviewing src/tor-browser/Browser/start-tor-browser, tor-browser.in, tor-browser.desktop.in, src/tor-browser/Browser/start-tor-browser.desktop, src/tor-browser/Browser/execdesktop...
[0/10] Reviewing src/tor-browser/Browser/start-tor-browser, tor-browser.in, tor-browser.desktop.in, src/tor-browser/Browser/start-tor-browser.desktop, src/tor-browser/Browser/execdesktop, src/tor-browser/Browser/TorBrowser/Data/Tor/torrc-defaults...
[0/10] Reviewing src/tor-browser/Browser/start-tor-browser, tor-browser.in, tor-browser.desktop.in, src/tor-browser/Browser/start-tor-browser.desktop, src/tor-browser/Browser/execdesktop, src/tor-browser/Browser/TorBrowser/Data/Tor/torrc-defaults, src/tor-browser/Browser/update-settings.ini...
[0/10] Reviewing src/tor-browser/Browser/start-tor-browser, tor-browser.in, tor-browser.desktop.in, src/tor-browser/Browser/start-tor-browser.desktop, src/tor-browser/Browser/execdesktop, src/tor-browser/Browser/TorBrowser/Data/Tor/torrc-defaults, src/tor-browser/Browser/update-settings.ini, src/tor-browser/Browser/TorBrowser/Data/Tor/torrc...
[0/10] Reviewing src/tor-browser/Browser/start-tor-browser, tor-browser.in, tor-browser.desktop.in, src/tor-browser/Browser/start-tor-browser.desktop, src/tor-browser/Browser/execdesktop, src/tor-browser/Browser/TorBrowser/Data/Tor/torrc-defaults, src/tor-browser/Browser/update-settings.ini, src/tor-browser/Browser/TorBrowser/Data/Tor/torrc, src/tor-browser/Browser/updater.ini...
[0/10] Reviewing src/tor-browser/Browser/start-tor-browser, tor-browser.in, tor-browser.desktop.in, src/tor-browser/Browser/start-tor-browser.desktop, src/tor-browser/Browser/execdesktop, src/tor-browser/Browser/TorBrowser/Data/Tor/torrc-defaults, src/tor-browser/Browser/update-settings.ini, src/tor-browser/Browser/TorBrowser/Data/Tor/torrc, src/tor-browser/Browser/updater.ini, src/tor-browser/Browser/defaults/pref/channel-prefs.js...
LLM auditresponse for torrc:
<security_assessment>
<decision>SAFE</decision>
<details>
The provided file "torrc" is empty. There is no content to analyze for security issues. Therefore, no malicious or suspicious behavior is present.
</details>
<summary>Empty file; no content to assess.</summary>
</security_assessment>

[1/10] Reviewing src/tor-browser/Browser/start-tor-browser, tor-browser.in, tor-browser.desktop.in, src/tor-browser/Browser/start-tor-browser.desktop, src/tor-browser/Browser/execdesktop, src/tor-browser/Browser/TorBrowser/Data/Tor/torrc-defaults, src/tor-browser/Browser/update-settings.ini, src/tor-browser/Browser/updater.ini, src/tor-browser/Browser/defaults/pref/channel-prefs.js...
+ Reviewed src/tor-browser/Browser/TorBrowser/Data/Tor/torrc. Status: SAFE -- Empty file; no content to assess.
LLM auditresponse for tor-browser.desktop.in:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.desktop.in` template for Tor Browser, containing only metadata fields (Name, Type, Exec, Icon, Categories, MimeType, Comment, StartupWMClass). No executable code, network requests, obfuscation, or system modifications are present. This is a benign packaging file used to integrate Tor Browser into the desktop environment.
</details>
<summary>Standard desktop entry file with no security concerns.</summary>
</security_assessment>

[2/10] Reviewing src/tor-browser/Browser/start-tor-browser, tor-browser.in, src/tor-browser/Browser/start-tor-browser.desktop, src/tor-browser/Browser/execdesktop, src/tor-browser/Browser/TorBrowser/Data/Tor/torrc-defaults, src/tor-browser/Browser/update-settings.ini, src/tor-browser/Browser/updater.ini, src/tor-browser/Browser/defaults/pref/channel-prefs.js...
+ Reviewed tor-browser.desktop.in. Status: SAFE -- Standard desktop entry file with no security concerns.
LLM auditresponse for update-settings.ini:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard configuration file for Tor Browser updates. It sets the `ACCEPTED_MAR_CHANNEL_IDS` to `torbrowser-torproject-release`, which ensures that the browser only accepts updates from the official Tor Project release channel. There is no executable code, no network requests, no obfuscation, and no system modifications. The comments warn against modification, which is normal for such configuration files. No security issues are present.
</details>
<summary>Standard Tor Browser update configuration file, no malicious content.</summary>
</security_assessment>

[3/10] Reviewing src/tor-browser/Browser/start-tor-browser, tor-browser.in, src/tor-browser/Browser/start-tor-browser.desktop, src/tor-browser/Browser/execdesktop, src/tor-browser/Browser/TorBrowser/Data/Tor/torrc-defaults, src/tor-browser/Browser/updater.ini, src/tor-browser/Browser/defaults/pref/channel-prefs.js...
+ Reviewed src/tor-browser/Browser/update-settings.ini. Status: SAFE -- Standard Tor Browser update configuration file, no malicious content.
LLM auditresponse for channel-prefs.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Mozilla Firefox/Tor Browser preference file (`channel-prefs.js`). It contains only a single pref setting: `pref("app.update.channel", "release");`. There is no obfuscated code, no network requests, no file operations, and no system modifications. The content is exactly what is expected from the upstream Tor Browser source. No security concerns.
</details>
<summary>Standard upstream preference file, no malicious content.</summary>
</security_assessment>

[4/10] Reviewing src/tor-browser/Browser/start-tor-browser, tor-browser.in, src/tor-browser/Browser/start-tor-browser.desktop, src/tor-browser/Browser/execdesktop, src/tor-browser/Browser/TorBrowser/Data/Tor/torrc-defaults, src/tor-browser/Browser/updater.ini...
+ Reviewed src/tor-browser/Browser/defaults/pref/channel-prefs.js. Status: SAFE -- Standard upstream preference file, no malicious content.
LLM auditresponse for updater.ini:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard UTF-8 encoded INI configuration file for Tor Browser's update UI strings. It contains only three string entries (Title, Info, MozillaMaintenanceDescription) and a license header. There is no executable code, no network requests, no obfuscation, and no references to external resources. The content is entirely benign and serves no purpose other than providing localized text for the update dialog.
</details>
<summary>Innocuous INI file with UI strings.</summary>
</security_assessment>

[5/10] Reviewing src/tor-browser/Browser/start-tor-browser, tor-browser.in, src/tor-browser/Browser/start-tor-browser.desktop, src/tor-browser/Browser/execdesktop, src/tor-browser/Browser/TorBrowser/Data/Tor/torrc-defaults...
+ Reviewed src/tor-browser/Browser/updater.ini. Status: SAFE -- Innocuous INI file with UI strings.
LLM auditresponse for start-tor-browser.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.desktop` launcher file from the official Tor Browser bundle. It is used to start the browser via the `Browser/start-tor-browser` script. The self-modifying behavior (updating itself with an absolute path after first invocation) is a documented upstream feature for portable application relocation and desktop menu registration, not evidence of malice. The `Exec` line uses a shell command that dynamically resolves the `.desktop` file's directory to locate the start script — this is a normal portability pattern. No network requests, obfuscated code, or exfiltration of data are present. The file performs only expected operations for launching Tor Browser.
</details>
<summary>Standard Tor Browser desktop launcher; no malicious behavior.</summary>
</security_assessment>

[6/10] Reviewing src/tor-browser/Browser/start-tor-browser, tor-browser.in, src/tor-browser/Browser/execdesktop, src/tor-browser/Browser/TorBrowser/Data/Tor/torrc-defaults...
+ Reviewed src/tor-browser/Browser/start-tor-browser.desktop. Status: SAFE -- Standard Tor Browser desktop launcher; no malicious behavior.
LLM auditresponse for execdesktop:
<security_assessment>
<decision>SAFE</decision>
<details>
The script extracts an executable path from a desktop file's `X-TorBrowser-ExecShell` field and runs it with any additional arguments. This is a normal wrapper for launching Tor Browser from the AUR package. The script does not perform any network requests, download or execute remote code, decode obfuscated strings, or manipulate system files outside the package's scope. The unquoted expansion of `${TBB_START_PROG}` is a minor hygiene concern (word splitting could occur if the desktop file value contains spaces), but it does not constitute a supply-chain attack—the desktop file is part of the trusted package and any injection there would require prior system compromise. No genuinely malicious behavior (exfiltration, backdoors, unauthorized downloads) is present.
</details>
<summary>Standard wrapper script, no supply-chain threat.</summary>
</security_assessment>

[7/10] Reviewing src/tor-browser/Browser/start-tor-browser, tor-browser.in, src/tor-browser/Browser/TorBrowser/Data/Tor/torrc-defaults...
+ Reviewed src/tor-browser/Browser/execdesktop. Status: SAFE -- Standard wrapper script, no supply-chain threat.
LLM auditresponse for torrc-defaults:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Tor Browser configuration file (torrc-defaults). It contains expected directives such as `AvoidDiskWrites 1`, `Log notice stdout`, `CookieAuthentication 1`, `DormantCanceledByStartup 1`, and `ClientTransportPlugin` entries that point to legitimate pluggable transport executables (lyrebird and conjure-client) within the Tor Browser bundle. The URL `https://registration.refraction.network/api` is the normal registration API for the Conjure bridge, used by Conjure transport. There is no evidence of malicious or suspicious behavior—all settings are consistent with standard Tor Browser functionality and packaging practices. No obfuscation, unauthorized network requests, or dangerous commands are present.
</details>
<summary>
Standard Tor Browser config; no security issues.
</summary>
</security_assessment>

[8/10] Reviewing src/tor-browser/Browser/start-tor-browser, tor-browser.in...
+ Reviewed src/tor-browser/Browser/TorBrowser/Data/Tor/torrc-defaults. Status: SAFE -- Standard Tor Browser config; no security issues.
LLM auditresponse for start-tor-browser:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is the official Tor Browser launcher (`start-tor-browser`) as distributed by the Tor Project. It performs standard Tor Browser operations: environment setup, symlink resolution, architecture checks, desktop file registration, and launching the Firefox-based browser with Tor integration.  

- All file operations (creating symlinks under `~/.config/ibus`, updating `.desktop` files, and erasing leaky paths like `gvfs-metadata` or `~/.cache/nvidia`) are documented upstream privacy features of Tor Browser — not malicious data exfiltration or backdoor behavior.  
- No network requests, obfuscated code, `eval`, `curl`, `wget`, or other injection vectors appear. The script uses common command-line tools (`sed`, `find`, `shred`, `srm`, etc.) only for their intended purposes.  
- The `erase_leaky` function securely deletes cached data to prevent disk leaks, falling back to `rm -rf` if secure tools are unavailable. This is normal anti-forensic behavior for Tor Browser, not an attack.  
- The modification of `HOME` and symlinking of `$HOME/.local/share` to `/dev/null` are deliberate isolation mechanisms, not tampering with system files.

All operations are consistent with the application's stated purpose and upstream behavior. There is no evidence of injected malicious code or supply-chain attack indicators.
</details>
<summary>Official Tor Browser launcher with no malicious code; all operations are expected privacy features.</summary>
</security_assessment>

[9/10] Reviewing tor-browser.in...
+ Reviewed src/tor-browser/Browser/start-tor-browser. Status: SAFE -- Official Tor Browser launcher with no malicious code; all operations are expected privacy features.
LLM auditresponse for tor-browser.in:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a wrapper for managing a local copy of Tor Browser in the user's home directory. It performs routine operations: extracting the bundled tarball from `/opt`, checking for version updates, and launching the browser. The only network access is to download the AUR snapshot from `aur.archlinux.org` when the `-u` update flag is used—this is expected behavior for an AUR package that offers a self‑update mechanism.  

The `_aur_update_` function downloads the PKGBUILD source, parses `.SRCINFO`, and optionally runs `makepkg -si`. While running arbitrary code from AUR at runtime carries inherent supply‑chain risk, this is standard practice for AUR helper scripts and does not indicate malicious intent in *this* file. The script uses no obfuscation, no unusual encoding, no network requests to unexpected hosts, and no system modifications outside the user’s own `~/.local/opt/<package>` directory. It also refuses to run as root.  

All code is transparent, well‑structured, and performs only the operations a user would expect from a local Tor Browser launcher/updater. No backdoors, exfiltration, or hidden behaviors are present.
</details>
<summary>Safe wrapper for Tor Browser with AUR update functionality.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed tor-browser.in. Status: SAFE -- Safe wrapper for Tor Browser with AUR update functionality.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 41,947
  Completion Tokens: 11,986
  Total Tokens: 53,933
  Total Cost: $0.005933
  Execution Time: 130.52 seconds
Full audit report can be found in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-tor-browser-bin.txt
Final Status: SAFE


No issues found.
