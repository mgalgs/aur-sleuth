---
package: discord-ptb
pkgver: 1.0.196
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 11c93a0c95e2166961e3664fea6b5a63827ded10
prompt_tokens: 185038
completion_tokens: 3929
total_tokens: 188967
cost: 0.01736064
execution_time: 94.98
files_reviewed: 6
files_skipped: 0
date: 2026-06-19T08:29:05Z
file_verdicts:
  - file: OSS-LICENSES-1.0.196.html
    status: safe
    summary: Static license file; no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD for Discord PTB, no malice found.
  - file: src/DiscordPTB/discord-ptb.desktop
    status: safe
    summary: Standard desktop entry file, no security concerns.
  - file: LICENSE-1.0.196.html
    status: safe
    summary: Static license HTML file, no malicious code.
  - file: src/DiscordPTB/discord-ptb
    status: safe
    summary: Standard launcher for Discord PTB, no malicious behavior.
  - file: src/DiscordPTB/postinst.sh
    status: safe
    summary: Safe post-install cleanup script, no malicious activity.
---

Cloning https://aur.archlinux.org/discord-ptb.git to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-ph8xvbb4...
Cloned repository to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-ph8xvbb4
Analyzing discord-ptb AUR package (working in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-ph8xvbb4) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains no dangerous top-level code or `pkgver()` function. The global scope only defines static variables and arrays with no command substitutions or function calls that execute during sourcing. The `source` array points to official Discord download servers using HTTPS URLs, all legitimate for the package. Even though two source entries have SKIP checksums, this is documented as intentional and not a supply-chain risk. There is no obfuscation, no unexpected network operations, and no executable code that could run during `makepkg --nobuild --nodeps --noprepare` or `--printsrcinfo`. The `package()` function is out of scope for this gate as it is not executed.
</details>
<summary>Safe to fetch sources and source PKGBUILD.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- Safe to fetch sources and source PKGBUILD.[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, OSS-LICENSES-1.0.196.html...
LLM auditresponse for OSS-LICENSES-1.0.196.html:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is an HTML page from Discord's website displaying open source licenses used by the application. It contains standard HTML, CSS, JavaScript for asset loading, and environment variable configuration. No malicious code, obfuscated commands, or suspicious network requests are present. The file is part of the upstream source distribution for the discord-ptb package and serves its intended purpose of listing software licenses.
</details>
<summary>Static license file; no malicious content.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed OSS-LICENSES-1.0.196.html. Status: SAFE -- Static license file; no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Arch Linux packaging practices for a pre-built binary package from Discord&#39;s own CDN. The source is fetched from the official Discord PTB download server (`dl-ptb.discordapp.net`) and the license URLs are from Discord&#39;s website. The `package()` function simply extracts the tarball, installs the binary to `/opt/discord-ptb`, creates symlinks for the executable, desktop file, and icon, and installs license files. It also removes an upstream `postinst.sh` which is not needed in the packaging context. There are no obfuscated commands, no unexpected network requests, no execution of downloaded scripts, and no system modifications outside the package&#39;s own installation paths (`/opt`, `/usr/bin`, `/usr/share`). The `SKIP` checksums for the license files are documented and intentional due to upstream instability. No evidence of malicious or dangerous behavior was found.
</details>
<summary>Standard PKGBUILD for Discord PTB, no malice found.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD for Discord PTB, no malice found.
Reviewed all required files.
Deciding which files to review next...
Decided to review 4 additional files: LICENSE-1.0.196.html, src/DiscordPTB/discord-ptb, src/DiscordPTB/discord-ptb.desktop, src/DiscordPTB/postinst.sh
Reviewing additional files...
Reviewing additional files...
[0/4] Reviewing LICENSE-1.0.196.html...
[0/4] Reviewing LICENSE-1.0.196.html, src/DiscordPTB/discord-ptb...
[0/4] Reviewing LICENSE-1.0.196.html, src/DiscordPTB/discord-ptb, src/DiscordPTB/discord-ptb.desktop...
[0/4] Reviewing LICENSE-1.0.196.html, src/DiscordPTB/discord-ptb, src/DiscordPTB/discord-ptb.desktop, src/DiscordPTB/postinst.sh...
LLM auditresponse for discord-ptb.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.desktop` file for the Discord PTB application. It contains no executable code, network requests, obfuscation, or unexpected operations. The `Exec` line invokes the application binary with a `--url` flag and the URL argument, which is typical for handling custom URL schemes. The `MimeType` entry registers the `discord://` URI scheme handler, a standard feature for Discord. No security issues are present.
</details>
<summary>Standard desktop entry file, no security concerns.</summary>
</security_assessment>

[1/4] Reviewing LICENSE-1.0.196.html, src/DiscordPTB/discord-ptb, src/DiscordPTB/postinst.sh...
+ Reviewed src/DiscordPTB/discord-ptb.desktop. Status: SAFE -- Standard desktop entry file, no security concerns.
LLM auditresponse for LICENSE-1.0.196.html:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is an HTML copy of Discord's Terms of Service page, included as a license file in the package. It contains standard web page elements (CSS, JavaScript, external resources from discord.com and CDNs) and the full terms text. No suspicious patterns such as `curl`, `wget`, `eval`, `base64`, or `exec` are present in the context of package build or installation. The inline scripts are part of the original page's functionality (e.g., Cloudflare challenge, Google Tag Manager) and are not executed during packaging. The file is static and poses no supply-chain risk.
</details>
<summary>Static license HTML file, no malicious code.</summary>
</security_assessment>

[2/4] Reviewing src/DiscordPTB/discord-ptb, src/DiscordPTB/postinst.sh...
+ Reviewed LICENSE-1.0.196.html. Status: SAFE -- Static license HTML file, no malicious code.
LLM auditresponse for discord-ptb:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard launcher script for Discord PTB (Public Test Build). It simply defines configuration paths, checks for an existing installation, and if not found, runs the official Discord updater bootstrap from a known system location (`/usr/share/discord-ptb/updater_bootstrap`, `/opt/discord-ptb/updater_bootstrap`, or a fallback relative path). The bootstrap is invoked with the official Discord update URL (`https://updates.discord.com/`) and the channel (`ptb`). There are no suspicious network requests, no obfuscated commands, no unexpected file operations, and no attempt to exfiltrate data. The script follows the expected pattern for a package that provides a launcher for an upstream application whose binary is installed via an official bootstrap. All operations are within the application's own scope (`$config_home/discordptb/`). No genuine supply-chain attack indicators are present.
</details>
<summary>
Standard launcher for Discord PTB, no malicious behavior.</summary>
</security_assessment>

[3/4] Reviewing src/DiscordPTB/postinst.sh...
+ Reviewed src/DiscordPTB/discord-ptb. Status: SAFE -- Standard launcher for Discord PTB, no malicious behavior.
LLM auditresponse for postinst.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script performs standard post-install tasks for a Discord PTB package: reloading the AppArmor profile, updating the desktop file database, killing any running DiscordPTB processes, clearing per-user caches located under `~/.config/discordptb/` and removing a socket file from the temp directory. The loop over `/home/*` is a common pattern in Discord packaging to clean caches for all users after an update (this does not modify files outside the discordptb configuration subdirectory). The Crashpad directory removal only occurs if the settings.dat file is owned by root, which is a reasonable safety check. There is no evidence of malicious behavior: no external network requests, no obfuscated code, no exfiltration of data, and no execution of untrusted content. All operations are local and consistent with the package’s stated purpose.
</details>
<summary>
Safe post-install cleanup script, no malicious activity.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed src/DiscordPTB/postinst.sh. Status: SAFE -- Safe post-install cleanup script, no malicious activity.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 185,038
  Completion Tokens: 3,929
  Total Tokens: 188,967
  Total Cost: $0.017361
  Execution Time: 94.98 seconds
Full audit report can be found in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-discord-ptb.txt
Final Status: SAFE


No issues found.
