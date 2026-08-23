---
package: jackett-bin
pkgver: 0.24.2079
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 11c93a0c95e2166961e3664fea6b5a63827ded10
prompt_tokens: 55291
completion_tokens: 7303
total_tokens: 62594
cost: 0.00629073
execution_time: 71.96
files_reviewed: 12
files_skipped: 0
date: 2026-06-19T08:26:22Z
file_verdicts:
  - file: jackett.tmpfiles
    status: safe
    summary: Standard tmpfiles configuration for Jackett service.
  - file: PKGBUILD
    status: safe
    summary: Standard binary PKGBUILD with pinned checksums, no malicious behavior.
  - file: src/Jackett/Content/libs/handlebarsextend.js
    status: safe
    summary: Standard Handlebars helper, no security issues.
  - file: src/Jackett/Content/common.js
    status: safe
    summary: Standard URL parameter parsing utility, no security issues.
  - file: jackett.service
    status: safe
    summary: Standard systemd service definition, no security issues.
  - file: src/Jackett/jackett_launcher.sh
    status: safe
    summary: Legitimate Jackett launcher wrapper; no security issues.
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config; no security issues
  - file: src/Jackett/install_service_systemd.sh
    status: safe
    summary: Standard Jackett systemd service install helper script.
  - file: src/Jackett/Content/libs/api.js
    status: safe
    summary: Standard API client, no malicious activity.
  - file: src/Jackett/Definitions/1337x.yml
    status: safe
    summary: Standard Jackett indexer config; no malicious content.
  - file: src/Jackett/Content/custom.js
    status: safe
    summary: Standard Jackett web UI code, no malicious behavior.
  - file: src/Jackett/Content/libs/handlebarsmoment.js
    status: safe
    summary: Legitimate Handlebars helpers; no security concerns.
---

Cloning https://aur.archlinux.org/jackett-bin.git to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-ox1_ld91...
Cloned repository to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-ox1_ld91
Analyzing jackett-bin AUR package (working in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-ox1_ld91) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only static variable assignments, arrays, and a `package()` function that is not executed during the source-fetching step (`makepkg --nobuild --nodeps --noprepare`). There is no `pkgver()` function, no top-level command substitution, and no code that would execute malicious payloads upon sourcing. All source URLs point to the official Jackett GitHub releases, with pinned checksums. No obfuscation, external data exfiltration, or unexpected network hosts are present. Therefore, running the requested two commands poses no security risk.
</details>
<summary>No malicious code executed during source fetch.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- No malicious code executed during source fetch.[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, jackett.tmpfiles...
LLM auditresponse for jackett.tmpfiles:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard systemd tmpfiles configuration for the Jackett service. It creates a runtime directory (`/var/lib/jackett`), restores ownership/SELinux contexts on that directory and the program directory (`/usr/lib/jackett`), and sets up a symlink for the log file (`/var/log/jackett.log` pointing to `/var/lib/jackett/log.txt`). All paths are within the application's own scope, and the operations (mkdir, chown, symlink) are normal for service setup. The comment about overriding in `/etc/tmpfiles.d/` is standard documentation. No malicious behavior, obfuscation, or suspicious network activity is present.
</details>
<summary>Standard tmpfiles configuration for Jackett service.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed jackett.tmpfiles. Status: SAFE -- Standard tmpfiles configuration for Jackett service.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a binary package. It downloads prebuilt tarballs from the official upstream GitHub releases (`github.com/Jackett/Jackett/releases`), which is the expected source. All downloads have pinned SHA-256 checksums (no SKIP entries). The `package()` function only installs files into `$pkgdir` using `install` and `cp`, with no execution of downloaded binaries or scripts. No obfuscation, network requests beyond the declared sources, or dangerous commands (eval, base64, curl, wget) are present. There is no evidence of exfiltration, backdoors, or supply-chain injection. The optional dependency on `flaresolverr` is a legitimate upstream feature. The file is consistent with a safe, routine binary package.
</details>
<summary>Standard binary PKGBUILD with pinned checksums, no malicious behavior.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard binary PKGBUILD with pinned checksums, no malicious behavior.
Reviewed all required files.
Deciding which files to review next...
Note: 594 files available for selection; offering the 50 highest-priority to the model. 544 lower-priority file(s) were not offered.
LLM response for file selection:
jackett.service
src/Jackett/install_service_systemd.sh
src/Jackett/jackett_launcher.sh
.nvchecker.toml
src/Jackett/Definitions/1337x.yml
src/Jackett/Content/common.js
src/Jackett/Content/custom.js
src/Jackett/Content/libs/api.js
src/Jackett/Content/libs/handlebarsmoment.js
src/Jackett/Content/libs/handlebarsextend.js
Decided to review 10 additional files: jackett.service, src/Jackett/install_service_systemd.sh, src/Jackett/jackett_launcher.sh, .nvchecker.toml, src/Jackett/Definitions/1337x.yml, src/Jackett/Content/common.js, src/Jackett/Content/custom.js, src/Jackett/Content/libs/api.js, src/Jackett/Content/libs/handlebarsmoment.js, src/Jackett/Content/libs/handlebarsextend.js
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing jackett.service...
[0/10] Reviewing jackett.service, src/Jackett/install_service_systemd.sh...
[0/10] Reviewing jackett.service, src/Jackett/install_service_systemd.sh, src/Jackett/jackett_launcher.sh...
[0/10] Reviewing jackett.service, src/Jackett/install_service_systemd.sh, src/Jackett/jackett_launcher.sh, .nvchecker.toml...
[0/10] Reviewing jackett.service, src/Jackett/install_service_systemd.sh, src/Jackett/jackett_launcher.sh, .nvchecker.toml, src/Jackett/Definitions/1337x.yml...
[0/10] Reviewing jackett.service, src/Jackett/install_service_systemd.sh, src/Jackett/jackett_launcher.sh, .nvchecker.toml, src/Jackett/Definitions/1337x.yml, src/Jackett/Content/custom.js...
[0/10] Reviewing jackett.service, src/Jackett/install_service_systemd.sh, src/Jackett/jackett_launcher.sh, .nvchecker.toml, src/Jackett/Definitions/1337x.yml, src/Jackett/Content/custom.js, src/Jackett/Content/common.js...
[0/10] Reviewing jackett.service, src/Jackett/install_service_systemd.sh, src/Jackett/jackett_launcher.sh, .nvchecker.toml, src/Jackett/Definitions/1337x.yml, src/Jackett/Content/custom.js, src/Jackett/Content/common.js, src/Jackett/Content/libs/api.js...
[0/10] Reviewing jackett.service, src/Jackett/install_service_systemd.sh, src/Jackett/jackett_launcher.sh, .nvchecker.toml, src/Jackett/Definitions/1337x.yml, src/Jackett/Content/custom.js, src/Jackett/Content/common.js, src/Jackett/Content/libs/api.js, src/Jackett/Content/libs/handlebarsmoment.js...
[0/10] Reviewing jackett.service, src/Jackett/install_service_systemd.sh, src/Jackett/jackett_launcher.sh, .nvchecker.toml, src/Jackett/Definitions/1337x.yml, src/Jackett/Content/custom.js, src/Jackett/Content/common.js, src/Jackett/Content/libs/api.js, src/Jackett/Content/libs/handlebarsmoment.js, src/Jackett/Content/libs/handlebarsextend.js...
LLM auditresponse for handlebarsextend.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This file defines a single Handlebars helper (`ifCond`) that performs a strict equality comparison. It contains no network requests, no obfuscation, no file operations, and no system modifications. It is a standard, simple template helper used for conditional rendering in Handlebars templates. There is no evidence of malicious behavior.
</details>
<summary>Standard Handlebars helper, no security issues.</summary>
</security_assessment>

[1/10] Reviewing jackett.service, src/Jackett/install_service_systemd.sh, src/Jackett/jackett_launcher.sh, .nvchecker.toml, src/Jackett/Definitions/1337x.yml, src/Jackett/Content/custom.js, src/Jackett/Content/common.js, src/Jackett/Content/libs/api.js, src/Jackett/Content/libs/handlebarsmoment.js...
+ Reviewed src/Jackett/Content/libs/handlebarsextend.js. Status: SAFE -- Standard Handlebars helper, no security issues.
LLM auditresponse for common.js:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `common.js` contains a single function `getUrlParams()` that parses query string parameters from `window.location.href`. This is a standard, benign utility function commonly used in web applications. There is no obfuscation, no network requests, no file system access, no dangerous operations like `eval`, `base64`, `curl`, or `wget`. The code is straightforward and serves only to extract URL parameters for the application's own use. No evidence of malicious or supply-chain attack behavior.
</details>
<summary>Standard URL parameter parsing utility, no security issues.</summary>
</security_assessment>

[2/10] Reviewing jackett.service, src/Jackett/install_service_systemd.sh, src/Jackett/jackett_launcher.sh, .nvchecker.toml, src/Jackett/Definitions/1337x.yml, src/Jackett/Content/custom.js, src/Jackett/Content/libs/api.js, src/Jackett/Content/libs/handlebarsmoment.js...
+ Reviewed src/Jackett/Content/common.js. Status: SAFE -- Standard URL parameter parsing utility, no security issues.
LLM auditresponse for jackett.service:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard systemd service unit for running Jackett as a daemon. It defines a user and group, sets environment variables (including disabling .NET diagnostics), specifies the working directory, and runs Jackett with appropriate flags (`--NoRestart --NoUpdates --DataFolder /var/lib/jackett`). There are no network requests, code execution, obfuscation, or any behavior outside the normal scope of a service file. The configuration follows standard packaging practices and poses no security risk.
</details>
<summary>Standard systemd service definition, no security issues.</summary>
</security_assessment>

[3/10] Reviewing src/Jackett/install_service_systemd.sh, src/Jackett/jackett_launcher.sh, .nvchecker.toml, src/Jackett/Definitions/1337x.yml, src/Jackett/Content/custom.js, src/Jackett/Content/libs/api.js, src/Jackett/Content/libs/handlebarsmoment.js...
+ Reviewed jackett.service. Status: SAFE -- Standard systemd service definition, no security issues.
LLM auditresponse for jackett_launcher.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a straightforward launcher wrapper for the Jackett application. It resolves its own directory, launches the Jackett binary with `--NoRestart` and all passed arguments, then waits for any background `JackettUpdater` process belonging to the same user to finish. There are no network requests, no obfuscation, no dangerous command substitutions (eval, base64, curl, wget), and no file operations outside the package's own directory. The behavior is fully consistent with the documented purpose of handling the Jackett self-update mechanism. No evidence of malicious or supply-chain attack patterns.
</details>
<summary>Legitimate Jackett launcher wrapper; no security issues.</summary>
</security_assessment>

[4/10] Reviewing src/Jackett/install_service_systemd.sh, .nvchecker.toml, src/Jackett/Definitions/1337x.yml, src/Jackett/Content/custom.js, src/Jackett/Content/libs/api.js, src/Jackett/Content/libs/handlebarsmoment.js...
+ Reviewed src/Jackett/jackett_launcher.sh. Status: SAFE -- Legitimate Jackett launcher wrapper; no security issues.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a configuration file for nvchecker, a tool that monitors upstream software releases. It specifies the Jackett GitHub repository as the source for checking new versions, using a standard `git` source type and a regex pattern to match version tags. There are no executable commands, no network requests initiated by this file (it merely defines parameters for later use by nvchecker), and no obfuscation or suspicious strings. The content is consistent with normal AUR packaging practices for version tracking.
</details>
<summary>Standard nvchecker config; no security issues</summary>
</security_assessment>

[5/10] Reviewing src/Jackett/install_service_systemd.sh, src/Jackett/Definitions/1337x.yml, src/Jackett/Content/custom.js, src/Jackett/Content/libs/api.js, src/Jackett/Content/libs/handlebarsmoment.js...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config; no security issues
LLM auditresponse for install_service_systemd.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a standard installation helper for the Jackett service distributed by the upstream project (Jackett/Jackett). It performs only expected operations: checking root privileges, verifying the Jackett binary exists and is not owned by root, writing a systemd unit file to `/etc/systemd/system/jackett.service`, and enabling/starting the service via `systemctl`. There are no network requests, obfuscated code, or unexpected system modifications. The script does not download or execute anything from external sources and does not exfiltrate data. All actions are consistent with routine service installation and do not indicate a supply chain attack.
</details>
<summary>Standard Jackett systemd service install helper script.</summary>
</security_assessment>

[6/10] Reviewing src/Jackett/Definitions/1337x.yml, src/Jackett/Content/custom.js, src/Jackett/Content/libs/api.js, src/Jackett/Content/libs/handlebarsmoment.js...
+ Reviewed src/Jackett/install_service_systemd.sh. Status: SAFE -- Standard Jackett systemd service install helper script.
LLM auditresponse for api.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard JavaScript API client module for the Jackett application. It defines an object with methods that perform AJAX requests to various server endpoints (indexers, server config, logs, etc.) using relative paths under `/api`. All network requests are directed at local API paths, not external hosts. There is no obfuscated code, no use of `eval`, `base64`, `curl`, `wget`, or any dangerous operations. The code performs only the expected functions of an API wrapper for the Jackett frontend. No supply-chain attack indicators are present.
</details>
<summary>
Standard API client, no malicious activity.</summary>
</security_assessment>

[7/10] Reviewing src/Jackett/Definitions/1337x.yml, src/Jackett/Content/custom.js, src/Jackett/Content/libs/handlebarsmoment.js...
+ Reviewed src/Jackett/Content/libs/api.js. Status: SAFE -- Standard API client, no malicious activity.
LLM auditresponse for 1337x.yml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a YAML configuration for the Jackett torrent search aggregator, defining how to query and parse results from the 1337x public torrent site. It contains site links, category mappings, search paths, CSS selectors, and text filters for cleaning up titles. There is no executable code, no obfuscation, no network requests other than specifying the indexer's own URLs, and no commands that fetch or run remote content. The file follows standard Jackett indexer definition format and does not deviate from expected packaging or application behavior. No supply-chain indicators (exfiltration, backdoors, encoded payloads, or unexpected system modifications) are present.
</details>
<summary>Standard Jackett indexer config; no malicious content.</summary>
</security_assessment>

[8/10] Reviewing src/Jackett/Content/custom.js, src/Jackett/Content/libs/handlebarsmoment.js...
+ Reviewed src/Jackett/Definitions/1337x.yml. Status: SAFE -- Standard Jackett indexer config; no malicious content.
LLM auditresponse for custom.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This file (`custom.js`) is the frontend JavaScript for the Jackett web UI. It handles loading configuration, managing indexers, performing searches, and interacting with the local Jackett API server. All network requests are directed to the local API endpoint (api.root) which is the running Jackett service on the same machine. The code uses standard libraries (jQuery, Handlebars, DataTables) and common techniques for clipboard access (`document.execCommand('copy')`) and local storage for user preferences (search presets). There are no encoded/obfuscated strings, no `eval` or `base64` decoding, no unexpected external downloads, and no data exfiltration. External links (IMDB, TMDB, GitHub issues) are part of the application's legitimate functionality. The file fully aligns with the expected behavior of a web-based indexer management UI and shows no signs of a supply-chain attack or injected malicious code.
</details>
<summary>Standard Jackett web UI code, no malicious behavior.</summary>
</security_assessment>

[9/10] Reviewing src/Jackett/Content/libs/handlebarsmoment.js...
+ Reviewed src/Jackett/Content/custom.js. Status: SAFE -- Standard Jackett web UI code, no malicious behavior.
LLM auditresponse for handlebarsmoment.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This file contains standard Handlebars helper functions for formatting dates and file sizes using the `moment.js` and `filesize.js` libraries. There is no obfuscated code, no network requests, no system file operations, and no execution of untrusted content. The code is benign and serves the application's intended purpose of providing display formatting. The comment about removing `Date(context)` is a routine code change, not an indicator of malicious activity.
</details>
<summary>
Legitimate Handlebars helpers; no security concerns.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/Jackett/Content/libs/handlebarsmoment.js. Status: SAFE -- Legitimate Handlebars helpers; no security concerns.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 55,291
  Completion Tokens: 7,303
  Total Tokens: 62,594
  Total Cost: $0.006291
  Execution Time: 71.96 seconds
Full audit report can be found in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-jackett-bin.txt
Final Status: SAFE


No issues found.
