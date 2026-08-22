---
package: discord-canary
pkgver: 1.0.1714
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 09f2e477a21d918155ca5fbfdf5bc833f8a3f124
prompt_tokens: 185781
completion_tokens: 3549
total_tokens: 189330
cost: 0.01455464934
execution_time: 154.09
files_reviewed: 6
files_skipped: 0
files_unauditable: 2
unpinned_sources: 2
date: 2026-08-22T04:00:22Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD for Discord Canary, no malicious code.
  - file: OSS-LICENSES-1.0.1714.html
    status: safe
    summary: "Safe: standard open-source license page, no malicious code."
  - file: src/DiscordCanary/discord-canary
    status: safe
    summary: Standard upstream launcher; no malicious behavior.
  - file: src/DiscordCanary/postinst.sh
    status: safe
    summary: Benign post-install script; no malicious behavior detected.
  - file: src/DiscordCanary/discord-canary.desktop
    status: safe
    summary: Standard .desktop file, no security concerns.
  - file: LICENSE-1.0.1714.html
    status: safe
    summary: Static ToS HTML, no malicious code found.
---

Cloning https://aur.archlinux.org/discord-canary.git...
Cloned discord-canary
Analyzing discord-canary AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD defines variables and a `package()` function, but does not execute any code in the global scope or `pkgver()` (which is absent). No top-level command substitutions, external downloads (other than the declared sources from official Discord domains), or dangerous operations are present. The SKIP checksums for the license files are explicitly commented as stable upstream issues. The `package()` function is not run during `makepkg --nobuild --nodeps --noprepare` or `makepkg --printsrcinfo`. Therefore, fetching the sources and parsing this PKGBUILD poses no security risk.
</details>
<summary>
No malicious code executed during parsing or source fetch.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code executed during parsing or source fetch.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Note: 2 remote source(s) have no checksum (sha256sums=SKIP), so the fetched bytes are not verifiable and can change without any AUR update: LICENSE-1.0.1714.html::https://discordapp.com/terms, OSS-LICENSES-1.0.1714.html::https://discordapp.com/licenses
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, OSS-LICENSES-1.0.1714.html...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a prebuilt binary application. The source is downloaded from Discord's official CDN (`dl-canary.discordapp.net`), and the license files are fetched from `discordapp.com`. The SHA512 checksum for the main tarball is pinned, while the license file checksums are intentionally set to `SKIP` with a clear explanation in the comments (unstable license hashes, with references to upstream issues). The `package()` function simply extracts the binary, sets permissions, removes the upstream `postinst.sh` (which is a normal cleanup step), and creates symlinks to standard locations. There are no obfuscated commands, no unexpected network requests, no execution of untrusted code, and no exfiltration of data. The file is consistent with legitimate packaging.
</details>
<summary>Standard AUR PKGBUILD for Discord Canary, no malicious code.</summary>
</security_assessment>

[1/2] Reviewing OSS-LICENSES-1.0.1714.html...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD for Discord Canary, no malicious code.
LLM auditresponse for OSS-LICENSES-1.0.1714.html:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `OSS-LICENSES-1.0.1714.html` is a standard open-source license compliance page for Discord. It lists all third-party libraries used by Discord and reproduces their licenses (MIT, Apache 2.0, BSD, etc.). The only suspicious pattern matches are mentions of `base64-js` and `js-base64` as library names, which are legitimate npm packages; their inclusion in a license list is expected and benign. No evidence of obfuscated code, hidden network requests, backdoors, data exfiltration, or execution of attacker-controlled code was found. The file appears to be a static HTML document sourced from Discord's official website and bundled with the application. It does not perform any actions during build or runtime beyond displaying license text. There is no indication of a supply-chain attack or malicious behavior.
</details>
<summary>Safe: standard open-source license page, no malicious code.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed OSS-LICENSES-1.0.1714.html. Status: SAFE -- Safe: standard open-source license page, no malicious code.
Reviewed all required files.
Deciding which files to review next...
Note: 2 compiled/archived file(s) cannot be audited as text and were not reviewed (discord-canary-1.0.1714.tar.gz, src/DiscordCanary/updater_bootstrap). For a package that ships prebuilt binaries, the audit covers the packaging, not the payload.
Decided to review 4 additional files: LICENSE-1.0.1714.html, src/DiscordCanary/postinst.sh, src/DiscordCanary/discord-canary, src/DiscordCanary/discord-canary.desktop
Reviewing additional files...
Reviewing additional files...
[0/4] Reviewing LICENSE-1.0.1714.html...
[0/4] Reviewing LICENSE-1.0.1714.html, src/DiscordCanary/postinst.sh...
[0/4] Reviewing LICENSE-1.0.1714.html, src/DiscordCanary/postinst.sh, src/DiscordCanary/discord-canary...
LLM auditresponse for discord-canary:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard launcher for Discord Canary. It checks for an existing installation at `$XDG_CONFIG_HOME/discordcanary/DiscordCanary` and, if missing, runs the `updater_bootstrap` binary (shipped with the package) to download the Discord client from the official Discord update server (`updates.discord.com`). The bootstrap path is resolved from well-known system directories (`/usr/share`, `/opt`, or the script&#39;s own directory) — all part of the AUR package&#39;s own installation. There is no obfuscated code, no unexpected network requests, no exfiltration of local data, and no execution of arbitrary or untrusted content. The script performs only the expected launch workflow for a self-updating desktop application.
</details>
<summary>Standard upstream launcher; no malicious behavior.</summary>
</security_assessment>

[0/4] Reviewing LICENSE-1.0.1714.html, src/DiscordCanary/postinst.sh, src/DiscordCanary/discord-canary, src/DiscordCanary/discord-canary.desktop...
[1/4] Reviewing LICENSE-1.0.1714.html, src/DiscordCanary/postinst.sh, src/DiscordCanary/discord-canary.desktop...
+ Reviewed src/DiscordCanary/discord-canary. Status: SAFE -- Standard upstream launcher; no malicious behavior.
LLM auditresponse for postinst.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard post-installation script for the `discord-canary` package. All operations are within the expected scope of the application:
- Reloading AppArmor to apply the package's profile.
- Updating the desktop database.
- Killing any running `DiscordCanary` processes to allow file replacement.
- Clearing cache and crashpad files under `~/.config/discordcanary/` for each user, which is normal maintenance to resolve known bugs.
- Removing a socket file from the system temp directory.

No suspicious network requests, obfuscated code, data exfiltration, or commands outside the application's own configuration and runtime are present. The script does exactly what it describes and uses only standard shell utilities.
</details>
<summary>
Benign post-install script; no malicious behavior detected.</summary>
</security_assessment>

[2/4] Reviewing LICENSE-1.0.1714.html, src/DiscordCanary/discord-canary.desktop...
+ Reviewed src/DiscordCanary/postinst.sh. Status: SAFE -- Benign post-install script; no malicious behavior detected.
LLM auditresponse for discord-canary.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard desktop entry file for the discord-canary application. It contains typical fields: Name, StartupWMClass, Comment, GenericName, Exec, Icon, Type, Categories, MimeType, and Path. The Exec line invokes `/usr/bin/discord-canary --url -- %u`, which is normal for handling URL schemes. There is no obfuscation, no encoded commands, no network requests, and no file operations beyond what a typical launcher does. The content is entirely benign and follows expected packaging conventions.
</details>
<summary>Standard .desktop file, no security concerns.</summary>
</security_assessment>

[3/4] Reviewing LICENSE-1.0.1714.html...
+ Reviewed src/DiscordCanary/discord-canary.desktop. Status: SAFE -- Standard .desktop file, no security concerns.
LLM auditresponse for LICENSE-1.0.1714.html:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `LICENSE-1.0.1714.html` is a static HTML copy of Discord's Terms of Service webpage, as served from discord.com. It contains standard web markup, CSS, JavaScript for UI interactions (WebFont loader, touch detection, navigation, language selector, footers), and external assets from legitimate domains (cdn.prod.website-files.com, discord.com, googleapis.com, googletagmanager.com, etc.). All inline scripts are normal: a Cloudflare challenge script, Google Tag Manager initialization, and a simple jQuery toggle for a modal class. There is no obfuscated code, no use of `eval`, `base64`, `curl`, or `wget`, no attempts to fetch or execute code from unexpected hosts, and no system commands. The filename is misleading (it's not a license file but the ToS), but that is a packaging naming choice, not malicious. The content matches what Discord publishes on its official website and appears to be included for documentation purposes in the package.
</details>
<summary>Static ToS HTML, no malicious code found.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed LICENSE-1.0.1714.html. Status: SAFE -- Static ToS HTML, no malicious code found.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 185,781
  Completion Tokens: 3,549
  Total Tokens: 189,330
  Total Cost: $0.014555
  Execution Time: 154.09 seconds

Final Status: SAFE


No issues found.
