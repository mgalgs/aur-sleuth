---
package: betterbird-bin
pkgver: 140.12.0esr
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 1b22d23ffa2e20617928e10a86ab2640838223e7
prompt_tokens: 58558
completion_tokens: 5200
total_tokens: 63758
cost: 0.00620622
execution_time: 53.26
files_reviewed: 12
files_skipped: 0
date: 2026-06-19T06:58:33Z
file_verdicts:
  - file: vendor-prefs.js
    status: safe
    summary: Benign preference setting; no security concerns.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD for betterbird-bin, no security issues
  - file: src/betterbird/platform.ini
    status: safe
    summary: Static build metadata; no malicious content.
  - file: src/betterbird/defaults/pref/channel-prefs.js
    status: safe
    summary: Standard update channel pref; no security issues.
  - file: src/betterbird/dependentlibs.list
    status: safe
    summary: Plain text dependency list, no security risks.
  - file: src/betterbird/removed-files
    status: safe
    summary: Plain-text file listing paths; no malicious content.
  - file: src/betterbird/isp/SpamAssassin.sfd
    status: safe
    summary: Standard spam filter rule configuration, no security issues.
  - file: src/betterbird/application.ini
    status: safe
    summary: Standard metadata file, no malicious content.
  - file: src/betterbird/precomplete
    status: safe
    summary: Standard updater precomplete file, no malicious content.
  - file: src/betterbird/defaults/messenger/mailViews.dat
    status: safe
    summary: Plain config file for mail views, no security issues.
  - file: eu.betterbird.Betterbird.desktop
    status: safe
    summary: Standard .desktop file, no malicious content
  - file: src/betterbird/interesting_serverknobs.json
    status: safe
    summary: Standard telemetry configuration; no malicious content.
---

Cloning https://aur.archlinux.org/betterbird-bin.git to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-nxh3j5vj...
Cloned repository to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-nxh3j5vj
Analyzing betterbird-bin AUR package (working in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-nxh3j5vj) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only defines variables and arrays in its global scope, with no `pkgver()` function or top-level command substitutions that could execute code during sourcing. The `source` array fetches files from the official Betterbird website over HTTPS, and all three sources have valid SHA-256 checksums. The `package()` function (which contains installation logic) is not executed by the requested commands (`--nobuild --nodeps --noprepare`). There is no obfuscated code, no network requests to unexpected hosts, and no exfiltration or backdoor mechanisms. Running `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo` is safe.
</details>
<summary>Standard PKGBUILD with no dangerous top-level code.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- Standard PKGBUILD with no dangerous top-level code.[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing vendor-prefs.js...
[0/2] Reviewing vendor-prefs.js, PKGBUILD...
LLM auditresponse for vendor-prefs.js:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `vendor-prefs.js` contains a single preference setting that directs the spellchecker to use system-provided Hunspell dictionaries at `/usr/share/hunspell`. This is a standard and expected configuration for packaged applications on Linux distributions. There is no obfuscation, no network access, no code execution, and no deviation from normal packaging practices. The file is completely benign.
</details>
<summary>Benign preference setting; no security concerns.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed vendor-prefs.js. Status: SAFE -- Benign preference setting; no security concerns.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard Arch packaging script for the Betterbird binary package. It downloads the official tarball from the project's own domain (betterbird.eu), verifies it with a hardcoded SHA256 checksum, and installs it to `/opt/betterbird` with appropriate symlinks and desktop file. There are no suspicious network requests, obfuscated commands, or unexpected system modifications. All operations are limited to installing the package into `$pkgdir` and creating symlinks, which is normal packaging behavior. No signs of supply-chain attack or malicious injection.
</details>
<summary>Standard AUR PKGBUILD for betterbird-bin, no security issues</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD for betterbird-bin, no security issues
Reviewed all required files.
Deciding which files to review next...
LLM response for file selection:
eu.betterbird.Betterbird.desktop
src/betterbird/defaults/pref/channel-prefs.js
src/betterbird/application.ini
src/betterbird/platform.ini
src/betterbird/precomplete
src/betterbird/removed-files
src/betterbird/dependentlibs.list
src/betterbird/interesting_serverknobs.json
src/betterbird/defaults/messenger/mailViews.dat
src/betterbird/isp/SpamAssassin.sfd
Decided to review 10 additional files: eu.betterbird.Betterbird.desktop, src/betterbird/defaults/pref/channel-prefs.js, src/betterbird/application.ini, src/betterbird/platform.ini, src/betterbird/precomplete, src/betterbird/removed-files, src/betterbird/dependentlibs.list, src/betterbird/interesting_serverknobs.json, src/betterbird/defaults/messenger/mailViews.dat, src/betterbird/isp/SpamAssassin.sfd
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing eu.betterbird.Betterbird.desktop...
[0/10] Reviewing eu.betterbird.Betterbird.desktop, src/betterbird/defaults/pref/channel-prefs.js...
[0/10] Reviewing eu.betterbird.Betterbird.desktop, src/betterbird/defaults/pref/channel-prefs.js, src/betterbird/application.ini...
[0/10] Reviewing eu.betterbird.Betterbird.desktop, src/betterbird/defaults/pref/channel-prefs.js, src/betterbird/application.ini, src/betterbird/platform.ini...
[0/10] Reviewing eu.betterbird.Betterbird.desktop, src/betterbird/defaults/pref/channel-prefs.js, src/betterbird/application.ini, src/betterbird/platform.ini, src/betterbird/precomplete...
[0/10] Reviewing eu.betterbird.Betterbird.desktop, src/betterbird/defaults/pref/channel-prefs.js, src/betterbird/application.ini, src/betterbird/platform.ini, src/betterbird/precomplete, src/betterbird/removed-files...
[0/10] Reviewing eu.betterbird.Betterbird.desktop, src/betterbird/defaults/pref/channel-prefs.js, src/betterbird/application.ini, src/betterbird/platform.ini, src/betterbird/precomplete, src/betterbird/removed-files, src/betterbird/dependentlibs.list...
[0/10] Reviewing eu.betterbird.Betterbird.desktop, src/betterbird/defaults/pref/channel-prefs.js, src/betterbird/application.ini, src/betterbird/platform.ini, src/betterbird/precomplete, src/betterbird/removed-files, src/betterbird/dependentlibs.list, src/betterbird/defaults/messenger/mailViews.dat...
[0/10] Reviewing eu.betterbird.Betterbird.desktop, src/betterbird/defaults/pref/channel-prefs.js, src/betterbird/application.ini, src/betterbird/platform.ini, src/betterbird/precomplete, src/betterbird/removed-files, src/betterbird/dependentlibs.list, src/betterbird/defaults/messenger/mailViews.dat, src/betterbird/interesting_serverknobs.json...
[0/10] Reviewing eu.betterbird.Betterbird.desktop, src/betterbird/defaults/pref/channel-prefs.js, src/betterbird/application.ini, src/betterbird/platform.ini, src/betterbird/precomplete, src/betterbird/removed-files, src/betterbird/dependentlibs.list, src/betterbird/defaults/messenger/mailViews.dat, src/betterbird/interesting_serverknobs.json, src/betterbird/isp/SpamAssassin.sfd...
LLM auditresponse for platform.ini:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `platform.ini` contains only static build metadata: a BuildID, milestone version, repository URL, and commit hash. There is no executable code, no network requests, no file manipulation, and no obfuscation. The content is purely informational and poses no security risk.
</details>
<summary>Static build metadata; no malicious content.</summary>
</security_assessment>

[1/10] Reviewing eu.betterbird.Betterbird.desktop, src/betterbird/defaults/pref/channel-prefs.js, src/betterbird/application.ini, src/betterbird/precomplete, src/betterbird/removed-files, src/betterbird/dependentlibs.list, src/betterbird/defaults/messenger/mailViews.dat, src/betterbird/interesting_serverknobs.json, src/betterbird/isp/SpamAssassin.sfd...
+ Reviewed src/betterbird/platform.ini. Status: SAFE -- Static build metadata; no malicious content.
LLM auditresponse for channel-prefs.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Mozilla preferences file (`channel-prefs.js`) that sets the `app.update.channel` preference to `"default"`. It contains only a single pref() call with a standard update channel value. No suspicious network requests, obfuscated code, file operations, or system modifications are present. The file is entirely benign and follows expected packaging conventions for Mozilla-based applications.
</details>
<summary>Standard update channel pref; no security issues.</summary>
</security_assessment>

[2/10] Reviewing eu.betterbird.Betterbird.desktop, src/betterbird/application.ini, src/betterbird/precomplete, src/betterbird/removed-files, src/betterbird/dependentlibs.list, src/betterbird/defaults/messenger/mailViews.dat, src/betterbird/interesting_serverknobs.json, src/betterbird/isp/SpamAssassin.sfd...
+ Reviewed src/betterbird/defaults/pref/channel-prefs.js. Status: SAFE -- Standard update channel pref; no security issues.
LLM auditresponse for dependentlibs.list:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `dependentlibs.list` is a plain text list of shared library filenames (e.g., libnspr4.so, libxul.so). It contains no executable code, no obfuscation, no network requests, and no system operations. This is a standard packaging artifact that declares runtime dependencies for the Betterbird application. There is no evidence of any malicious or dangerous behavior.
</details>
<summary>Plain text dependency list, no security risks.</summary>
</security_assessment>

[3/10] Reviewing eu.betterbird.Betterbird.desktop, src/betterbird/application.ini, src/betterbird/precomplete, src/betterbird/removed-files, src/betterbird/defaults/messenger/mailViews.dat, src/betterbird/interesting_serverknobs.json, src/betterbird/isp/SpamAssassin.sfd...
+ Reviewed src/betterbird/dependentlibs.list. Status: SAFE -- Plain text dependency list, no security risks.
LLM auditresponse for removed-files:
<security_assessment>
<decision>SAFE</decision>
<details>
The file "removed-files" is a plain-text list of paths under the distribution/ and extensions/ directories. It contains no executable code, no obfuscated content, no network requests, and no instructions. This type of file is commonly used by Arch Linux packages (via `pacman`'s `NoExtract` or manual removal routines) to specify files that should not be installed or should be deleted after installation. There is no evidence of malicious or dangerous behavior.
</details>
<summary>Plain-text file listing paths; no malicious content.</summary>
</security_assessment>

[4/10] Reviewing eu.betterbird.Betterbird.desktop, src/betterbird/application.ini, src/betterbird/precomplete, src/betterbird/defaults/messenger/mailViews.dat, src/betterbird/interesting_serverknobs.json, src/betterbird/isp/SpamAssassin.sfd...
+ Reviewed src/betterbird/removed-files. Status: SAFE -- Plain-text file listing paths; no malicious content.
LLM auditresponse for SpamAssassin.sfd:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a configuration rule file (SpamAssassin.sfd) for a mail client's spam filter, likely Thunderbird. It defines conditions to evaluate spam headers (X-Spam-Status, X-Spam-Flag) and subject line to set a JunkScore. There is no executable code, no network or file operations, and no obfuscation. The content is purely declarative and benign, consistent with standard spam filtering configuration.
</details>
<summary>Standard spam filter rule configuration, no security issues.</summary>
</security_assessment>

[5/10] Reviewing eu.betterbird.Betterbird.desktop, src/betterbird/application.ini, src/betterbird/precomplete, src/betterbird/defaults/messenger/mailViews.dat, src/betterbird/interesting_serverknobs.json...
+ Reviewed src/betterbird/isp/SpamAssassin.sfd. Status: SAFE -- Standard spam filter rule configuration, no security issues.
LLM auditresponse for application.ini:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `application.ini` is a standard metadata configuration file for XULRunner-based applications like Betterbird (a Thunderbird fork). It contains only static fields such as vendor, name, version, build ID, source repository, and internal identifiers. There is no executable code, no obfuscation, no network requests, no file operations, and no system modifications. The file explicitly states it is not used unless the application is launched with the `-app /path/to/application.ini` argument. This content is entirely benign and consistent with normal packaging practices.
</details>
<summary>Standard metadata file, no malicious content.</summary>
</security_assessment>

[6/10] Reviewing eu.betterbird.Betterbird.desktop, src/betterbird/precomplete, src/betterbird/defaults/messenger/mailViews.dat, src/betterbird/interesting_serverknobs.json...
+ Reviewed src/betterbird/application.ini. Status: SAFE -- Standard metadata file, no malicious content.
LLM auditresponse for precomplete:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a "precomplete" file used by Mozilla-based updaters (such as Thunderbird's update mechanism). It contains only a list of files and directories to be removed during an update, using the keywords `remove` and `rmdir`. There is no executable code, no network requests, no obfuscation, and no deviation from standard packaging practices. The file is a normal artifact of the Betterbird/Thunderbird update system and poses no security risk.
</details>
<summary>Standard updater precomplete file, no malicious content.</summary>
</security_assessment>

[7/10] Reviewing eu.betterbird.Betterbird.desktop, src/betterbird/defaults/messenger/mailViews.dat, src/betterbird/interesting_serverknobs.json...
+ Reviewed src/betterbird/precomplete. Status: SAFE -- Standard updater precomplete file, no malicious content.
LLM auditresponse for mailViews.dat:
<security_assessment>
<decision>SAFE</decision>
<details>
This file (`mailViews.dat`) is a standard configuration file for email client saved search folders (virtual views). It contains a list of named views with filter conditions (e.g., "People I Know", "Recent Mail", "Not Junk"). The file is purely declarative data—no code, no network requests, no obfuscation, no unexpected operations. There is no evidence of malicious or suspicious behavior; it is an ordinary user preference file shipped as part of the package for initial configuration.
</details>
<summary>Plain config file for mail views, no security issues.</summary>
</security_assessment>

[8/10] Reviewing eu.betterbird.Betterbird.desktop, src/betterbird/interesting_serverknobs.json...
+ Reviewed src/betterbird/defaults/messenger/mailViews.dat. Status: SAFE -- Plain config file for mail views, no security issues.
LLM auditresponse for eu.betterbird.Betterbird.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Freedesktop.org .desktop file for the Betterbird email client. It contains only metadata (name, comment, categories, localized strings) and desktop actions that launch the `betterbird` binary with appropriate arguments (`%u`, `-compose`, `-addressbook`). There is no executable code, no network requests, no obfuscated strings, and no deviation from normal packaging practices. The file is benign and performs no action beyond defining how the application appears and is launched in a desktop environment.
</details>
<summary>Standard .desktop file, no malicious content</summary>
</security_assessment>

[9/10] Reviewing src/betterbird/interesting_serverknobs.json...
+ Reviewed eu.betterbird.Betterbird.desktop. Status: SAFE -- Standard .desktop file, no malicious content
LLM auditresponse for interesting_serverknobs.json:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `interesting_serverknobs.json` is a large JSON configuration object enumerating telemetry/metrics probes (mostly from Mozilla's toolkit) with a value of `true`. It contains no executable code, no network requests, no obfuscated strings, and no system commands. The content is entirely a static mapping of metric names (e.g., `browser.engagement.uri_count`, `characteristics.canvasdata1`, `use.counter.page.window_usb`) to a boolean. This is a standard Mozilla/Firefox/Thunderbird telemetry configuration file. The truncated portion, based on the visible head and tail, does not contain any suspicious patterns (curl, wget, eval, base64, exec, etc.). There is no evidence of a supply-chain attack or malicious behavior in this file.
</details>
<summary>Standard telemetry configuration; no malicious content.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/betterbird/interesting_serverknobs.json. Status: SAFE -- Standard telemetry configuration; no malicious content.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 58,558
  Completion Tokens: 5,200
  Total Tokens: 63,758
  Total Cost: $0.006206
  Execution Time: 53.26 seconds
Full audit report can be found in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-betterbird-bin.txt
Final Status: SAFE


No issues found.
