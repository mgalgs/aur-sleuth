---
package: discord-canary
pkgver: 1.0.1714
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 09f2e477a21d918155ca5fbfdf5bc833f8a3f124
prompt_tokens: 185743
completion_tokens: 3887
total_tokens: 189630
cost: 0.01514464042
execution_time: 63.75
files_reviewed: 6
files_skipped: 0
files_unauditable: 2
unpinned_sources: 2
date: 2026-08-22T00:41:14Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard Arch PKGBUILD for Discord Canary, no evidence of malicious behavior.
  - file: OSS-LICENSES-1.0.1714.html
    status: safe
    summary: Standard open-source licenses HTML page, no malicious code found.
  - file: src/DiscordCanary/discord-canary
    status: safe
    summary: Standard Discord launcher, no malicious behavior found.
  - file: src/DiscordCanary/discord-canary.desktop
    status: safe
    summary: Standard desktop entry file, no security issues.
  - file: src/DiscordCanary/postinst.sh
    status: safe
    summary: Standard post-install script, no malicious behavior.
  - file: LICENSE-1.0.1714.html
    status: safe
    summary: Discord ToS HTML page, no malicious code found.
---

Cloning https://aur.archlinux.org/discord-canary.git...
Cloned repository to /data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-l89joxz8
Analyzing discord-canary AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only variable definitions (source array, checksums, metadata) and a `package()` function that will not be executed during `makepkg --nobuild --nodeps --noprepare` or `makepkg --printsrcinfo`. There is no `pkgver()` function or global-scope code that runs commands, downloads additional payloads, or exfiltrates data. The source URLs point to legitimate Discord domains (dl-canary.discordapp.net and discordapp.com). The two SKIP checksums are for license files with documented upstream instability — this is a standard workaround and does not affect the safety of fetching sources. No malicious code is present in the global scope, so executing the two commands is safe.
</details>
<summary>No dangerous top-level code; safe to fetch sources.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code; safe to fetch sources.
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
The PKGBUILD is a standard packaging file for a prebuilt binary from the official Discord Canary distribution server (`dl-canary.discordapp.net`). It downloads a tarball with a pinned checksum, copies the application to `/opt`, creates symlinks, and removes the upstream `postinst.sh` script. No obfuscated code, unexpected network requests, or dangerous commands are present. The license checksums are intentionally set to `SKIP` with documented reasons (unstable hashes and pacman-contrib bug), which is an acceptable packaging practice and does not indicate malice.
</details>
<summary>Standard Arch PKGBUILD for Discord Canary, no evidence of malicious behavior.</summary>
</security_assessment>

[1/2] Reviewing OSS-LICENSES-1.0.1714.html...
+ Reviewed PKGBUILD. Status: SAFE -- Standard Arch PKGBUILD for Discord Canary, no evidence of malicious behavior.
LLM auditresponse for OSS-LICENSES-1.0.1714.html:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is Discord's open-source licenses page (OSS-LICENSES-1.0.1714.html). It is a standard HTML document listing license attributions for third-party libraries used by Discord. The content includes typical website framework elements (Google Tag Manager, OneTrust cookie consent, Cloudflare challenge scripts, and React-based UI components). No malicious code was found. The suspicious pattern matches (e.g., "base64-js", "js-base64") are merely library names within the license text, not base64-encoded payloads. The only external scripts loaded are from Discord's own CDN (cdn.discordapp.com) and standard services (googletagmanager.com), which are expected for the package's upstream website. There is no evidence of code injection, obfuscated commands, unauthorized data exfiltration, or other supply-chain attack indicators.
</details>
<summary>Standard open-source licenses HTML page, no malicious code found.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed OSS-LICENSES-1.0.1714.html. Status: SAFE -- Standard open-source licenses HTML page, no malicious code found.
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
This script is a standard launcher for Discord Canary. It checks for the presence of the Discord executable in the user's config directory, and if missing, invokes a bootstrap updater (`updater_bootstrap`) from the package's installation paths (`/usr/share/`, `/opt/`, or relative to the script). The bootstrap downloads the actual Discord binary from the official Discord updates server (`https://updates.discord.com/`). There is no obfuscated code, no suspicious network requests to unexpected hosts, no exfiltration of data, and no execution of untrusted content beyond what is officially provided by the upstream Discord project. The script behaves exactly as expected for a Discord client loader.
</details>
<summary>Standard Discord launcher, no malicious behavior found.</summary>
</security_assessment>

[0/4] Reviewing LICENSE-1.0.1714.html, src/DiscordCanary/postinst.sh, src/DiscordCanary/discord-canary, src/DiscordCanary/discord-canary.desktop...
[1/4] Reviewing LICENSE-1.0.1714.html, src/DiscordCanary/postinst.sh, src/DiscordCanary/discord-canary.desktop...
+ Reviewed src/DiscordCanary/discord-canary. Status: SAFE -- Standard Discord launcher, no malicious behavior found.
LLM auditresponse for discord-canary.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.desktop` file for a Linux application. It defines metadata for the Discord Canary application, including the executable path, icon, categories, and MIME type handling. The `Exec` line runs `/usr/bin/discord-canary` with `--url -- %u` to handle URL scheme associations. There is no obfuscation, network requests, dangerous commands, or any deviation from normal packaging practices. The file contains only static configuration data and poses no security risk.
</details>
<summary>Standard desktop entry file, no security issues.</summary>
</security_assessment>

[2/4] Reviewing LICENSE-1.0.1714.html, src/DiscordCanary/postinst.sh...
+ Reviewed src/DiscordCanary/discord-canary.desktop. Status: SAFE -- Standard desktop entry file, no security issues.
LLM auditresponse for postinst.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This post-installation script (postinst.sh) performs routine maintenance for the Discord Canary application:
- Reloads AppArmor so the new profile is applied.
- Updates the desktop database for MIME/scheme handlers.
- Determines the appropriate temporary directory using a Node.js-compatible logic.
- Kills any currently running `DiscordCanary` processes to prevent file locks.
- Clears application caches (`Cache`, `GPUCache`) and checks for a root-owned `Crashpad/settings.dat` (a known upstream bug) under each `/home/*/.config/discordcanary/` directory.
- Removes the application socket file from the temporary directory.

All operations are confined to directories owned by or associated with Discord Canary (its configuration, cache, and temporary socket). The iteration over `/home/*` only touches `.config/discordcanary/` subdirectories. There is no code that exfiltrates data, downloads or executes remote content, uses obfuscation, or modifies system files outside the application’s scope. The commands (`systemctl`, `update-desktop-database`, `pkill`, `rm`, `stat`) are standard and used for legitimate application maintenance. No supply-chain attack indicators are present.
</details>
<summary>Standard post-install script, no malicious behavior.</summary>
</security_assessment>

[3/4] Reviewing LICENSE-1.0.1714.html...
+ Reviewed src/DiscordCanary/postinst.sh. Status: SAFE -- Standard post-install script, no malicious behavior.
LLM auditresponse for LICENSE-1.0.1714.html:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is an HTML rendering of Discord's Terms of Service page, as served from the official Discord website (discord.com). All included scripts and resources originate from known, legitimate domains (discord.com, cdn.prod.website-files.com, ajax.googleapis.com, etc.). There is no obfuscated code, no suspicious base64 or eval, no unexpected network requests to unknown hosts, and no attempts to exfiltrate data or execute arbitrary commands. The file name "LICENSE-1.0.1714.html" is slightly misleading (the content is Terms of Service, not a license), but this is a benign naming issue and not evidence of malice. The file represents standard upstream content and does not contain any injected malicious behavior.
</details>
<summary>Discord ToS HTML page, no malicious code found.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed LICENSE-1.0.1714.html. Status: SAFE -- Discord ToS HTML page, no malicious code found.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 185,743
  Completion Tokens: 3,887
  Total Tokens: 189,630
  Total Cost: $0.015145
  Execution Time: 63.75 seconds

Final Status: SAFE


No issues found.
