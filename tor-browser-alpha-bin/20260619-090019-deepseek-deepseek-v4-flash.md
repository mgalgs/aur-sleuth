---
package: tor-browser-alpha-bin
pkgver: 16.0a7
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 11c93a0c95e2166961e3664fea6b5a63827ded10
prompt_tokens: 44214
completion_tokens: 9326
total_tokens: 53540
cost: 0.00565794
execution_time: 91.71
files_reviewed: 13
files_skipped: 0
date: 2026-06-19T09:00:19Z
file_verdicts:
  - file: tor-browser-linux-x86_64-16.0a7.tar.xz.asc
    status: safe
    summary: File is a standard PGP signature, no malicious content.
  - file: tor-browser-alpha-bin.install
    status: safe
    summary: Safe install script with only informational messages.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD; only unusual element is an obfuscated email in a comment.
  - file: src/tor-browser/Browser/TorBrowser/Tor/torrc
    status: safe
    summary: Empty file, no security issues.
  - file: src/tor-browser/Browser/defaults/pref/channel-prefs.js
    status: safe
    summary: Standard preference file; no security issues.
  - file: src/tor-browser/Browser/firefox
    status: safe
    summary: Standard library path wrapper, no malicious behavior.
  - file: tor-browser-alpha-bin.desktop.in
    status: safe
    summary: Standard desktop entry file, no security issues.
  - file: src/tor-browser/Browser/TorBrowser/Tor/torrc-defaults
    status: safe
    summary: Standard Tor Browser configuration file, no malicious content.
  - file: src/tor-browser/Browser/start-tor-browser
    status: safe
    summary: Standard Tor Browser launcher; no malicious code.
  - file: src/tor-browser/Browser/precomplete
    status: safe
    summary: Standard precomplete file for Tor Browser update cleanup; no malicious behavior.
  - file: src/tor-browser/Browser/execdesktop
    status: safe
    summary: Standard launcher script for Tor Browser; no malicious behavior.
  - file: src/tor-browser/Browser/start-tor-browser.desktop
    status: safe
    summary: Standard Tor Browser .desktop launcher, no malicious code found.
  - file: tor-browser-alpha-bin.in
    status: safe
    summary: Standard AUR helper script, no malicious behavior found.
---

Cloning https://aur.archlinux.org/tor-browser-alpha-bin.git to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-z5h6unu3...
Cloned repository to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-z5h6unu3
Analyzing tor-browser-alpha-bin AUR package (working in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-z5h6unu3) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains standard variable assignments, a source array pointing to official Tor archive URLs, and checksums (with a SKIP for the .asc file). No top-level command substitutions, `eval`, or `curl|bash` patterns exist that would execute when the PKGBUILD is sourced. The `_checksums()` function is defined but never called during the sourcing phase, so it does not execute. The obfuscated maintainer email in the comment is not executed and poses no risk. Source fetching and sourcing are safe.
</details>
<summary>No malicious execution during source fetch or sourcing.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- No malicious execution during source fetch or sourcing.[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/3] Reviewing PKGBUILD...
[0/3] Reviewing PKGBUILD, tor-browser-alpha-bin.install...
[0/3] Reviewing PKGBUILD, tor-browser-alpha-bin.install, tor-browser-linux-x86_64-16.0a7.tar.xz.asc...
LLM auditresponse for tor-browser-linux-x86_64-16.0a7.tar.xz.asc:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a PGP signature file (`.asc` format) for the corresponding tarball `tor-browser-linux-x86_64-16.0a7.tar.xz`. It contains only an ASCII-armored OpenPGP signature block. There is no executable code, no suspicious network requests, obfuscated content, or any operations that deviate from standard packaging practices. Such signature files are routinely distributed by upstream projects to allow users to verify the integrity and authenticity of the release archive. No security issues are present.
</details>
<summary>File is a standard PGP signature, no malicious content.</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, tor-browser-alpha-bin.install...
+ Reviewed tor-browser-linux-x86_64-16.0a7.tar.xz.asc. Status: SAFE -- File is a standard PGP signature, no malicious content.
LLM auditresponse for tor-browser-alpha-bin.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `tor-browser-alpha-bin.install` contains only `post_install`, `post_upgrade`, and `post_remove` functions that print informational messages to the user. No commands other than `echo` are executed. There are no network requests, file downloads, execution of untrusted code, obfuscation, or any system modifications. The script simply informs the user about the package location and how to manually clean up afterward. This is standard Arch Linux packaging practice and poses no security risk.
</details>
<summary>Safe install script with only informational messages.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed tor-browser-alpha-bin.install. Status: SAFE -- Safe install script with only informational messages.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR practices for a binary package: it sources the official Tor Browser archive from `archive.torproject.org`, uses standard sed substitutions to produce wrapper scripts and desktop files, and copies the tarball intact to `/opt/`. The only unusual element is the maintainer comment containing an obfuscated email (base64-decoded via `rev`), but that is a static comment — it is never executed by `makepkg` or during build/install. No network requests, code execution, or data exfiltration occur beyond fetching the declared upstream source. The `_checksums()` function is defined but never invoked, making it dead code with no security impact. The `validpgpkeys` entry and the use of `SKIP` for the signature checksum are typical for AUR packages.
</details>
<summary>Standard PKGBUILD; only unusual element is an obfuscated email in a comment.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD; only unusual element is an obfuscated email in a comment.
Reviewed all required files.
Deciding which files to review next...
LLM response for file selection:
tor-browser-alpha-bin.in
src/tor-browser/Browser/start-tor-browser
src/tor-browser/Browser/start-tor-browser.desktop
tor-browser-alpha-bin.desktop.in
src/tor-browser/Browser/execdesktop
src/tor-browser/Browser/precomplete
src/tor-browser/Browser/firefox
src/tor-browser/Browser/defaults/pref/channel-prefs.js
src/tor-browser/Browser/TorBrowser/Tor/torrc
src/tor-browser/Browser/TorBrowser/Tor/torrc-defaults
Decided to review 10 additional files: tor-browser-alpha-bin.in, src/tor-browser/Browser/start-tor-browser, src/tor-browser/Browser/start-tor-browser.desktop, tor-browser-alpha-bin.desktop.in, src/tor-browser/Browser/execdesktop, src/tor-browser/Browser/precomplete, src/tor-browser/Browser/firefox, src/tor-browser/Browser/defaults/pref/channel-prefs.js, src/tor-browser/Browser/TorBrowser/Tor/torrc, src/tor-browser/Browser/TorBrowser/Tor/torrc-defaults
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/tor-browser/Browser/start-tor-browser...
[0/10] Reviewing src/tor-browser/Browser/start-tor-browser, tor-browser-alpha-bin.in...
[0/10] Reviewing src/tor-browser/Browser/start-tor-browser, tor-browser-alpha-bin.in, tor-browser-alpha-bin.desktop.in...
[0/10] Reviewing src/tor-browser/Browser/start-tor-browser, tor-browser-alpha-bin.in, tor-browser-alpha-bin.desktop.in, src/tor-browser/Browser/start-tor-browser.desktop...
[0/10] Reviewing src/tor-browser/Browser/start-tor-browser, tor-browser-alpha-bin.in, tor-browser-alpha-bin.desktop.in, src/tor-browser/Browser/start-tor-browser.desktop, src/tor-browser/Browser/execdesktop...
[0/10] Reviewing src/tor-browser/Browser/start-tor-browser, tor-browser-alpha-bin.in, tor-browser-alpha-bin.desktop.in, src/tor-browser/Browser/start-tor-browser.desktop, src/tor-browser/Browser/execdesktop, src/tor-browser/Browser/precomplete...
[0/10] Reviewing src/tor-browser/Browser/start-tor-browser, tor-browser-alpha-bin.in, tor-browser-alpha-bin.desktop.in, src/tor-browser/Browser/start-tor-browser.desktop, src/tor-browser/Browser/execdesktop, src/tor-browser/Browser/precomplete, src/tor-browser/Browser/defaults/pref/channel-prefs.js...
[0/10] Reviewing src/tor-browser/Browser/start-tor-browser, tor-browser-alpha-bin.in, tor-browser-alpha-bin.desktop.in, src/tor-browser/Browser/start-tor-browser.desktop, src/tor-browser/Browser/execdesktop, src/tor-browser/Browser/precomplete, src/tor-browser/Browser/defaults/pref/channel-prefs.js, src/tor-browser/Browser/firefox...
[0/10] Reviewing src/tor-browser/Browser/start-tor-browser, tor-browser-alpha-bin.in, tor-browser-alpha-bin.desktop.in, src/tor-browser/Browser/start-tor-browser.desktop, src/tor-browser/Browser/execdesktop, src/tor-browser/Browser/precomplete, src/tor-browser/Browser/defaults/pref/channel-prefs.js, src/tor-browser/Browser/firefox, src/tor-browser/Browser/TorBrowser/Tor/torrc...
[0/10] Reviewing src/tor-browser/Browser/start-tor-browser, tor-browser-alpha-bin.in, tor-browser-alpha-bin.desktop.in, src/tor-browser/Browser/start-tor-browser.desktop, src/tor-browser/Browser/execdesktop, src/tor-browser/Browser/precomplete, src/tor-browser/Browser/defaults/pref/channel-prefs.js, src/tor-browser/Browser/firefox, src/tor-browser/Browser/TorBrowser/Tor/torrc, src/tor-browser/Browser/TorBrowser/Tor/torrc-defaults...
LLM auditresponse for torrc:
<security_assessment>
<decision>SAFE</decision>
<details>
The file torrc is empty. No content exists to analyze for malicious behavior. Therefore, there are no security concerns.
</details>
<summary>Empty file, no security issues.</summary>
</security_assessment>

[1/10] Reviewing src/tor-browser/Browser/start-tor-browser, tor-browser-alpha-bin.in, tor-browser-alpha-bin.desktop.in, src/tor-browser/Browser/start-tor-browser.desktop, src/tor-browser/Browser/execdesktop, src/tor-browser/Browser/precomplete, src/tor-browser/Browser/defaults/pref/channel-prefs.js, src/tor-browser/Browser/firefox, src/tor-browser/Browser/TorBrowser/Tor/torrc-defaults...
+ Reviewed src/tor-browser/Browser/TorBrowser/Tor/torrc. Status: SAFE -- Empty file, no security issues.
LLM auditresponse for channel-prefs.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Mozilla preferences file that sets the update channel to &quot;alpha&quot; for Tor Browser. It contains no executable code, no network requests, no obfuscation, and no system modifications. It follows the standard format for Firefox/Tor Browser preference files and is not malicious.
</details>
<summary>Standard preference file; no security issues.</summary>
</security_assessment>

[2/10] Reviewing src/tor-browser/Browser/start-tor-browser, tor-browser-alpha-bin.in, tor-browser-alpha-bin.desktop.in, src/tor-browser/Browser/start-tor-browser.desktop, src/tor-browser/Browser/execdesktop, src/tor-browser/Browser/precomplete, src/tor-browser/Browser/firefox, src/tor-browser/Browser/TorBrowser/Tor/torrc-defaults...
+ Reviewed src/tor-browser/Browser/defaults/pref/channel-prefs.js. Status: SAFE -- Standard preference file; no security issues.
LLM auditresponse for firefox:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard wrapper for the Tor Browser binary. It checks whether the system's libstdc++ is compatible (via `abicheck`) and, if not, prepends a bundled `libstdc++` path to `LD_LIBRARY_PATH`. There are no network requests, obfuscated code, or unexpected file operations. The script simply sets an environment variable and then executes the real Firefox binary (`firefox.real`). This is a common and expected packaging pattern for applications that bundle their own libraries.
</details>
<summary>Standard library path wrapper, no malicious behavior.</summary>
</security_assessment>

[3/10] Reviewing src/tor-browser/Browser/start-tor-browser, tor-browser-alpha-bin.in, tor-browser-alpha-bin.desktop.in, src/tor-browser/Browser/start-tor-browser.desktop, src/tor-browser/Browser/execdesktop, src/tor-browser/Browser/precomplete, src/tor-browser/Browser/TorBrowser/Tor/torrc-defaults...
+ Reviewed src/tor-browser/Browser/firefox. Status: SAFE -- Standard library path wrapper, no malicious behavior.
LLM auditresponse for tor-browser-alpha-bin.desktop.in:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.desktop.in` file used to define an application launcher for Tor Browser Alpha. It contains only configuration metadata (name, icon, categories, MIME types, etc.) and the `Exec` line `tor-browser %u`, which is the expected command to launch the browser. No executable code, network requests, obfuscation, or unusual operations are present. The file follows normal packaging practices and presents no security concerns.
</details>
<summary>Standard desktop entry file, no security issues.</summary>
</security_assessment>

[4/10] Reviewing src/tor-browser/Browser/start-tor-browser, tor-browser-alpha-bin.in, src/tor-browser/Browser/start-tor-browser.desktop, src/tor-browser/Browser/execdesktop, src/tor-browser/Browser/precomplete, src/tor-browser/Browser/TorBrowser/Tor/torrc-defaults...
+ Reviewed tor-browser-alpha-bin.desktop.in. Status: SAFE -- Standard desktop entry file, no security issues.
LLM auditresponse for torrc-defaults:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Tor Browser configuration file (`torrc-defaults`) containing only Tor daemon options and pluggable transport plugin paths. It sets logging to stdout, enables cookie authentication, and configures client transport plugins (meek, obfs, snowflake, conjure) with paths to executables bundled within the application directory. The URLs and paths are legitimate upstream defaults for Tor Browser. No executable code, obfuscation, or network exfiltration is present.
</details>
<summary>Standard Tor Browser configuration file, no malicious content.</summary>
</security_assessment>

[5/10] Reviewing src/tor-browser/Browser/start-tor-browser, tor-browser-alpha-bin.in, src/tor-browser/Browser/start-tor-browser.desktop, src/tor-browser/Browser/execdesktop, src/tor-browser/Browser/precomplete...
+ Reviewed src/tor-browser/Browser/TorBrowser/Tor/torrc-defaults. Status: SAFE -- Standard Tor Browser configuration file, no malicious content.
LLM auditresponse for start-tor-browser:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `start-tor-browser` is the standard Tor Browser launcher script, identical to the one distributed by the upstream Tor Project. It performs expected operations: resolving its own path via symlinks, changing directories, managing environment variables (e.g., `HOME`, `TOR_CONTROL_PASSWD`), registering/unregistering desktop app entries, cleaning up cached data (`gvfs-metadata`, `nvidia shader cache`) to prevent information leaks, and launching the Firefox binary bundled in the Tor Browser directory. All file operations are confined to the Tor Browser installation directory and the user's `$HOME/.tor-browser-alpha` or `$HOME/.config` (for IBus compatibility). There are no network requests, encoded commands, or attempts to fetch or execute code from external sources. The cleanup commands (`srm`, `wipe`, `shred`, `rm -rf`) are legitimately used to erase potentially leaky data like recently-used files and GPU shader caches, which is consistent with the security goals of Tor Browser. No genuinely malicious behavior is present.
</details>
<summary>Standard Tor Browser launcher; no malicious code.</summary>
</security_assessment>

[6/10] Reviewing tor-browser-alpha-bin.in, src/tor-browser/Browser/start-tor-browser.desktop, src/tor-browser/Browser/execdesktop, src/tor-browser/Browser/precomplete...
+ Reviewed src/tor-browser/Browser/start-tor-browser. Status: SAFE -- Standard Tor Browser launcher; no malicious code.
LLM auditresponse for precomplete:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `precomplete` is a standard Mozilla/application update manifest used by Tor Browser (and Firefox) to remove obsolete files and directories during an update. Every line follows the format `remove "path"` or `rmdir "path"`, and all referenced paths are confined within the application's own installation directory (e.g., `TorBrowser/`, `browser/`, `fonts/`). There are no commands, network operations, encoded data, or references to external systems. The file performs only internal cleanup of the package's own resources, which is expected and benign supply-chain behavior. No evidence of exfiltration, backdoors, or tampering with unrelated files.
</details>
<summary>
Standard precomplete file for Tor Browser update cleanup; no malicious behavior.</summary>
</security_assessment>

[7/10] Reviewing tor-browser-alpha-bin.in, src/tor-browser/Browser/start-tor-browser.desktop, src/tor-browser/Browser/execdesktop...
+ Reviewed src/tor-browser/Browser/precomplete. Status: SAFE -- Standard precomplete file for Tor Browser update cleanup; no malicious behavior.
LLM auditresponse for execdesktop:
<security_assessment>
<decision>SAFE</decision>
<details>
The script `execdesktop` is a launcher helper for Tor Browser. It reads the `X-TorBrowser-ExecShell` key from a provided desktop file and executes the resulting command with any additional arguments. This is standard packaging practice for Tor Browser on Arch Linux—the desktop file is bundled with the package and the key specifies the correct binary to launch. There are no network requests, no obfuscated code, no data exfiltration, and no system modifications beyond executing the intended application. The command injection risk is theoretical and limited to the package's own trusted desktop file; there is no indication of malicious intent or supply-chain compromise.
</details>
<summary>Standard launcher script for Tor Browser; no malicious behavior.</summary>
</security_assessment>

[8/10] Reviewing tor-browser-alpha-bin.in, src/tor-browser/Browser/start-tor-browser.desktop...
+ Reviewed src/tor-browser/Browser/execdesktop. Status: SAFE -- Standard launcher script for Tor Browser; no malicious behavior.
LLM auditresponse for start-tor-browser.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.desktop` launcher for Tor Browser Alpha. It uses a custom shebang (`#!/usr/bin/env ./Browser/execdesktop`) pointing to an executable within the Tor Browser bundle – this is expected for a portable application and not malicious. The `Exec` line runs a shell command that launches `Browser/start-tor-browser` from the same directory, with a fallback to the parent directory. This behavior is consistent with portable Tor Browser installations. No obfuscated code, network requests, data exfiltration, or unexpected system modifications are present. The file does not contain any code that performs self-modification; the comments refer to updates performed by an external script (likely `start-tor-browser`). There are no red flags indicating a supply-chain attack.
</details>
<summary>
Standard Tor Browser .desktop launcher, no malicious code found.</summary>
</security_assessment>

[9/10] Reviewing tor-browser-alpha-bin.in...
+ Reviewed src/tor-browser/Browser/start-tor-browser.desktop. Status: SAFE -- Standard Tor Browser .desktop launcher, no malicious code found.
LLM auditresponse for tor-browser-alpha-bin.in:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard AUR helper wrapper for the tor-browser-alpha-bin package. It performs routine operations: launching the browser, refreshing a local copy from an upstream tarball stored in `/opt/`, and optionally checking for AUR updates via `curl` of the official AUR snapshot followed by `makepkg -si`.  

All network requests target only the official Arch Linux AUR (`aur.archlinux.org`), and file operations are confined to the user's home directory (`~/.local/opt/...`) and the system-installed package path (`/opt/`). There is no obfuscation, no execution of fetched scripts (aside from the normal `makepkg` build process, which is inherent to AUR updates), and no exfiltration of sensitive data. The script avoids dangerous constructs like `eval`, base64 decoding, or unexpected privilege escalation (it refuses to run as root).  

While running `makepkg -si` based on a downloaded PKGBUILD carries the same risk as using any AUR helper (a potentially compromised upstream PKGBUILD), this is an inherent property of the AUR ecosystem and not evidence of malicious injection in this file. The script itself does not introduce additional backdoors, telemetry, or unexpected behavior.
</details>
<summary>Standard AUR helper script, no malicious behavior found.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed tor-browser-alpha-bin.in. Status: SAFE -- Standard AUR helper script, no malicious behavior found.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 44,214
  Completion Tokens: 9,326
  Total Tokens: 53,540
  Total Cost: $0.005658
  Execution Time: 91.71 seconds
Full audit report can be found in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-tor-browser-alpha-bin.txt
Final Status: SAFE


No issues found.
