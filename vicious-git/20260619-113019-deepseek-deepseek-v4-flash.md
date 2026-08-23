---
package: vicious-git
pkgver: 2.7.1.r0.gc3d0409
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 11c93a0c95e2166961e3664fea6b5a63827ded10
prompt_tokens: 35812
completion_tokens: 9264
total_tokens: 45076
cost: 0.00489060
execution_time: 88.62
files_reviewed: 11
files_skipped: 0
date: 2026-06-19T11:30:19Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD, no malicious content found
  - file: src/vicious-git/widgets/cmus_all.lua
    status: safe
    summary: Standard CMUS widget for Vicious; no security issues.
  - file: src/vicious-git/widgets/gmail_all.lua
    status: safe
    summary: Standard Gmail widget; no malicious behavior.
  - file: src/vicious-git/contrib/pop_all.lua
    status: safe
    summary: Standard POP3 mail widget; no security issues
  - file: src/vicious-git/contrib/wpa_all.lua
    status: safe
    summary: No supply‑chain attack; standard wireless widget code.
  - file: src/vicious-git/contrib/pulse_all.lua
    status: safe
    summary: Standard PulseAudio control module with no malicious behavior.
  - file: src/vicious-git/contrib/rss_all.lua
    status: safe
    summary: Legitimate upstream RSS widget, no malicious code.
  - file: src/vicious-git/spawn.lua
    status: safe
    summary: Clean wrapper for spawning commands; no malicious code.
  - file: src/vicious-git/contrib/buildbot_all.lua
    status: safe
    summary: Legitimate Buildbot widget, no malicious code.
  - file: src/vicious-git/contrib/openweather_all.lua
    status: safe
    summary: "Safe: standard widget fetching API data; no malicious behavior."
  - file: src/vicious-git/contrib/btc_all.lua
    status: safe
    summary: Standard upstream Bitcoin widget; no malicious code.
---

Cloning https://aur.archlinux.org/vicious-git.git to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-b1da_j_i...
Cloned repository to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-b1da_j_i
Analyzing vicious-git AUR package (working in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-b1da_j_i) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD defines a standard VCS source from the official upstream repository (`https://github.com/vicious-widgets/vicious`). The top-level scope only contains variable assignments (pkgname, pkgver, pkgdesc, etc.) with no command substitutions that execute arbitrary code. The `pkgver()` function runs `git describe` inside the cloned repo, which is typical for -git packages. No network requests other than the expected git clone, no obfuscated code, no dangerous commands (eval, curl, base64, etc.) in the sourceable scope. The `package()` function is not executed by `makepkg --nobuild --nodeps --noprepare` and thus is out of scope for this gate. No malicious behavior is present.
</details>
<summary>Standard AUR git package, no security concerns in sourceable code.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- Standard AUR git package, no security concerns in sourceable code.[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/1] Reviewing PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging conventions for a VCS package. It sources the code from the official upstream GitHub repository (`vicious-widgets/vicious`), uses `SKIP` checksums (appropriate for git sources), and installs Lua widget files into the system's Lua path. There are no network requests beyond the declared `git` source, no encoded/obfuscated commands, no unexpected file operations, and no exfiltration of data. The `pkgver()` function simply extracts a version tag from the local clone, and the `package()` function copies files into `$pkgdir`. No signs of malicious behavior are present.
</details>
<summary>Standard AUR PKGBUILD, no malicious content found</summary>
</security_assessment>

[1/1] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD, no malicious content found
Reviewed all required files.
Deciding which files to review next...
Note: 114 files available for selection; offering the 50 highest-priority to the model. 59 lower-priority file(s) were not offered.
LLM response for file selection:
src/vicious-git/contrib/openweather_all.lua
src/vicious-git/contrib/rss_all.lua
src/vicious-git/widgets/gmail_all.lua
src/vicious-git/contrib/btc_all.lua
src/vicious-git/contrib/buildbot_all.lua
src/vicious-git/contrib/pop_all.lua
src/vicious-git/contrib/wpa_all.lua
src/vicious-git/contrib/pulse_all.lua
src/vicious-git/spawn.lua
src/vicious-git/contrib/cmus_all.lua
Decided to review 10 additional files: src/vicious-git/contrib/openweather_all.lua, src/vicious-git/contrib/rss_all.lua, src/vicious-git/widgets/gmail_all.lua, src/vicious-git/contrib/btc_all.lua, src/vicious-git/contrib/buildbot_all.lua, src/vicious-git/contrib/pop_all.lua, src/vicious-git/contrib/wpa_all.lua, src/vicious-git/contrib/pulse_all.lua, src/vicious-git/spawn.lua, src/vicious-git/contrib/cmus_all.lua
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/vicious-git/contrib/rss_all.lua...
[0/10] Reviewing src/vicious-git/contrib/rss_all.lua, src/vicious-git/contrib/openweather_all.lua...
[0/10] Reviewing src/vicious-git/contrib/rss_all.lua, src/vicious-git/contrib/openweather_all.lua, src/vicious-git/widgets/gmail_all.lua...
[0/10] Reviewing src/vicious-git/contrib/rss_all.lua, src/vicious-git/contrib/openweather_all.lua, src/vicious-git/widgets/gmail_all.lua, src/vicious-git/contrib/btc_all.lua...
[0/10] Reviewing src/vicious-git/contrib/rss_all.lua, src/vicious-git/contrib/openweather_all.lua, src/vicious-git/widgets/gmail_all.lua, src/vicious-git/contrib/btc_all.lua, src/vicious-git/contrib/buildbot_all.lua...
[0/10] Reviewing src/vicious-git/contrib/rss_all.lua, src/vicious-git/contrib/openweather_all.lua, src/vicious-git/widgets/gmail_all.lua, src/vicious-git/contrib/btc_all.lua, src/vicious-git/contrib/buildbot_all.lua, src/vicious-git/contrib/pop_all.lua...
[0/10] Reviewing src/vicious-git/contrib/rss_all.lua, src/vicious-git/contrib/openweather_all.lua, src/vicious-git/widgets/gmail_all.lua, src/vicious-git/contrib/btc_all.lua, src/vicious-git/contrib/buildbot_all.lua, src/vicious-git/contrib/pop_all.lua, src/vicious-git/contrib/wpa_all.lua...
[0/10] Reviewing src/vicious-git/contrib/rss_all.lua, src/vicious-git/contrib/openweather_all.lua, src/vicious-git/widgets/gmail_all.lua, src/vicious-git/contrib/btc_all.lua, src/vicious-git/contrib/buildbot_all.lua, src/vicious-git/contrib/pop_all.lua, src/vicious-git/contrib/wpa_all.lua, src/vicious-git/contrib/pulse_all.lua...
[0/10] Reviewing src/vicious-git/contrib/rss_all.lua, src/vicious-git/contrib/openweather_all.lua, src/vicious-git/widgets/gmail_all.lua, src/vicious-git/contrib/btc_all.lua, src/vicious-git/contrib/buildbot_all.lua, src/vicious-git/contrib/pop_all.lua, src/vicious-git/contrib/wpa_all.lua, src/vicious-git/contrib/pulse_all.lua, src/vicious-git/spawn.lua...
[0/10] Reviewing src/vicious-git/contrib/rss_all.lua, src/vicious-git/contrib/openweather_all.lua, src/vicious-git/widgets/gmail_all.lua, src/vicious-git/contrib/btc_all.lua, src/vicious-git/contrib/buildbot_all.lua, src/vicious-git/contrib/pop_all.lua, src/vicious-git/contrib/wpa_all.lua, src/vicious-git/contrib/pulse_all.lua, src/vicious-git/spawn.lua, src/vicious-git/widgets/cmus_all.lua...
LLM auditresponse for cmus_all.lua:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard widget for the Vicious library that queries the CMUS music player via its own `cmus-remote` command. It parses the output to extract metadata such as file, status, duration, tags, and settings. There is no network activity, no obfuscation, no unexpected file operations, and no dangerous command execution. The only external command is `cmus-remote`, which is the official client for the CMUS player and is expected in such a widget. The code follows standard practices for the Vicious library and AUR packaging.
</details>
<summary>Standard CMUS widget for Vicious; no security issues.</summary>
</security_assessment>

[1/10] Reviewing src/vicious-git/contrib/rss_all.lua, src/vicious-git/contrib/openweather_all.lua, src/vicious-git/widgets/gmail_all.lua, src/vicious-git/contrib/btc_all.lua, src/vicious-git/contrib/buildbot_all.lua, src/vicious-git/contrib/pop_all.lua, src/vicious-git/contrib/wpa_all.lua, src/vicious-git/contrib/pulse_all.lua, src/vicious-git/spawn.lua...
+ Reviewed src/vicious-git/widgets/cmus_all.lua. Status: SAFE -- Standard CMUS widget for Vicious; no security issues.
LLM auditresponse for gmail_all.lua:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `gmail_all.lua` is a standard Vicious widget that fetches the Gmail Atom feed using `curl -fsn https://mail.google.com/mail/feed/atom` to retrieve unread email count and subject. This is legitimate upstream functionality for a Gmail widget. The code is straightforward, contains no obfuscation, no unexpected network requests, no execution of downloaded code, and no exfiltration of data. The comment about `.netrc` being a security risk is a standard warning to users. There is no evidence of a supply-chain attack.
</details>
<summary>Standard Gmail widget; no malicious behavior.</summary>
</security_assessment>

[2/10] Reviewing src/vicious-git/contrib/rss_all.lua, src/vicious-git/contrib/openweather_all.lua, src/vicious-git/contrib/btc_all.lua, src/vicious-git/contrib/buildbot_all.lua, src/vicious-git/contrib/pop_all.lua, src/vicious-git/contrib/wpa_all.lua, src/vicious-git/contrib/pulse_all.lua, src/vicious-git/spawn.lua...
+ Reviewed src/vicious-git/widgets/gmail_all.lua. Status: SAFE -- Standard Gmail widget; no malicious behavior.
LLM auditresponse for pop_all.lua:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `pop_all.lua` is a standard widget for checking POP3 mailbox message counts. It uses the `luasocket` library to connect to a user-specified POP3 server, authenticate with provided credentials, and fetch the number of messages via the `STAT` command. There is no obfuscation, no unexpected network destinations (it only connects to the user-configured host/port), and no code downloading or execution. The code is entirely upstream application functionality and does not contain any supply-chain attack indicators.
</details>
<summary>Standard POP3 mail widget; no security issues</summary>
</security_assessment>

[3/10] Reviewing src/vicious-git/contrib/rss_all.lua, src/vicious-git/contrib/openweather_all.lua, src/vicious-git/contrib/btc_all.lua, src/vicious-git/contrib/buildbot_all.lua, src/vicious-git/contrib/wpa_all.lua, src/vicious-git/contrib/pulse_all.lua, src/vicious-git/spawn.lua...
+ Reviewed src/vicious-git/contrib/pop_all.lua. Status: SAFE -- Standard POP3 mail widget; no security issues
LLM auditresponse for wpa_all.lua:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Vicious widget module that uses `wpa_cli` to retrieve wireless status information. It contains no obfuscated code, no network requests to external hosts, and no file operations beyond reading `/proc` or similar via the system `wpa_cli` command. The only potential concern is that the `warg` (network interface name) is unsanitized and passed directly to `io.popen`, which could allow command injection if an attacker controls the interface name. However, this is a general vulnerability in the upstream application, not an injected supply‑chain attack. The `warg` value would come from the user's own Awesome WM configuration, and the rest of the script performs only its stated purpose of parsing `wpa_cli` output. No genuine malicious behavior (exfiltration, backdoors, unexpected downloads) is present.
</details>
<summary>No supply‑chain attack; standard wireless widget code.</summary>
</security_assessment>

[4/10] Reviewing src/vicious-git/contrib/rss_all.lua, src/vicious-git/contrib/openweather_all.lua, src/vicious-git/contrib/btc_all.lua, src/vicious-git/contrib/buildbot_all.lua, src/vicious-git/contrib/pulse_all.lua, src/vicious-git/spawn.lua...
+ Reviewed src/vicious-git/contrib/wpa_all.lua. Status: SAFE -- No supply‑chain attack; standard wireless widget code.
LLM auditresponse for pulse_all.lua:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `pulse_all.lua` is a standard Lua module for the Vicious widget library that interfaces with PulseAudio via the `pacmd` command. It retrieves volume levels, controls mute, and adjusts volume. All actions are performed using `io.popen` and `os.execute` on system commands that are either fixed strings (e.g., "dump", "list-sinks") or derived from PulseAudio sink names obtained through those same commands. The sink names come from system output, not from untrusted external input. There is no obfuscated code, no network communication, no download or execution of remote scripts, and no exfiltration of data. The code behaves exactly as expected for a volume-control widget and does not contain any supply-chain attack indicators.
</details>
<summary>Standard PulseAudio control module with no malicious behavior.</summary>
</security_assessment>

[5/10] Reviewing src/vicious-git/contrib/rss_all.lua, src/vicious-git/contrib/openweather_all.lua, src/vicious-git/contrib/btc_all.lua, src/vicious-git/contrib/buildbot_all.lua, src/vicious-git/spawn.lua...
+ Reviewed src/vicious-git/contrib/pulse_all.lua. Status: SAFE -- Standard PulseAudio control module with no malicious behavior.
LLM auditresponse for rss_all.lua:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a legitimate upstream RSS reader widget for the awesome window manager. It uses `io.popen` to execute a `curl` command with a user-configured feed URL. This is standard practice for fetching web content in widget scripts; the feed URL is set by the user in their configuration, not by an external attacker. There is no obfuscated code, no data exfiltration, no backdoors, and no unexpected system modifications. The file is part of the upstream Vicious library and serves its stated purpose without any signs of a supply-chain attack. The only potential concern is command injection if a user configures a malicious feed URL, but that is a general risk of such scripts (user-controlled input in shell commands) and not evidence of malice in the AUR package itself.
</details>
<summary>Legitimate upstream RSS widget, no malicious code.</summary>
</security_assessment>

[6/10] Reviewing src/vicious-git/contrib/openweather_all.lua, src/vicious-git/contrib/btc_all.lua, src/vicious-git/contrib/buildbot_all.lua, src/vicious-git/spawn.lua...
+ Reviewed src/vicious-git/contrib/rss_all.lua. Status: SAFE -- Legitimate upstream RSS widget, no malicious code.
LLM auditresponse for spawn.lua:
<security_assessment>
<decision>SAFE</decision>
<details>
This file provides a wrapper around Awesome WM's `awful.spawn` with a fallback to `io.popen` for environments without Awesome. The code is straightforward and serves its stated purpose: it exposes functions like `spawn.with_line_callback_with_shell` and `spawn.easy_async_with_shell` that execute shell commands. There is no obfuscation, no unusual encoding, no network requests, no file system tampering, and no data exfiltration. The fallback using `io.popen` is a normal and expected pattern for implementing command execution in Lua. The library itself does not introduce any supply-chain risk; any security concerns would depend on how callers use these functions (e.g., passing untrusted commands), which is outside the scope of this file.
</details>
<summary>Clean wrapper for spawning commands; no malicious code.</summary>
</security_assessment>

[7/10] Reviewing src/vicious-git/contrib/openweather_all.lua, src/vicious-git/contrib/btc_all.lua, src/vicious-git/contrib/buildbot_all.lua...
+ Reviewed src/vicious-git/spawn.lua. Status: SAFE -- Clean wrapper for spawning commands; no malicious code.
LLM auditresponse for buildbot_all.lua:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `buildbot_all.lua` is a legitimate Lua widget for the Vicious module that monitors Buildbot CI build status. It uses `io.popen` with `curl` to fetch JSON data from a user-configured URL. While this could be vulnerable to command injection if the user provides a malicious URL, that is a configuration risk, not a supply-chain attack. The file does not contain obfuscated code, backdoors, or any behavior that deviates from its stated purpose. It is a standard widget for monitoring build status.
</details>
<summary>Legitimate Buildbot widget, no malicious code.</summary>
</security_assessment>

[8/10] Reviewing src/vicious-git/contrib/openweather_all.lua, src/vicious-git/contrib/btc_all.lua...
+ Reviewed src/vicious-git/contrib/buildbot_all.lua. Status: SAFE -- Legitimate Buildbot widget, no malicious code.
LLM auditresponse for openweather_all.lua:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is part of the legitimate Vicious widget library for Awesome WM and implements an OpenWeatherMap weather data fetcher. It uses `spawn.easy_async` to run a `curl` command that retrieves JSON from the official API endpoint `http://api.openweathermap.org/data/2.5/weather`. There is no evidence of malicious intent such as data exfiltration, backdoors, obfuscated code, or downloads from untrusted sources.  

The URL is constructed by concatenating user-supplied `warg.city_id` and `warg.app_id` directly into a shell command string with single-quote wrapping. If these values contain a single quote or unescaped shell metacharacters, command injection is theoretically possible. However, in practice the `warg` is provided by the user in their own Awesome WM configuration, so this is a hygiene/input-sanitization concern rather than a supply‑chain attack. All operations are consistent with the stated purpose of the widget and the upstream project.
</details>
<summary>
Safe: standard widget fetching API data; no malicious behavior.</summary>
</security_assessment>

[9/10] Reviewing src/vicious-git/contrib/btc_all.lua...
+ Reviewed src/vicious-git/contrib/openweather_all.lua. Status: SAFE -- Safe: standard widget fetching API data; no malicious behavior.
LLM auditresponse for btc_all.lua:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard widget from the upstream Vicious project (vicious-git is an AUR package for the Vicious window manager widget system). It fetches Bitcoin price data from CoinDesk's public API using `curl`. The URL is constructed from a user-configured currency code (default "usd") and is properly escaped via `helpers.shellquote()`, preventing command injection. There is no obfuscation, no unexpected network destinations, no file system modifications outside normal widget behavior, and no exfiltration of local data. The code serves its stated purpose and contains no signs of a supply-chain attack.
</details>
<summary>Standard upstream Bitcoin widget; no malicious code.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/vicious-git/contrib/btc_all.lua. Status: SAFE -- Standard upstream Bitcoin widget; no malicious code.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 35,812
  Completion Tokens: 9,264
  Total Tokens: 45,076
  Total Cost: $0.004891
  Execution Time: 88.62 seconds
Full audit report can be found in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-vicious-git.txt
Final Status: SAFE


No issues found.
