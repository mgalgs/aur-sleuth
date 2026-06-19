---
package: betterbird-bin
pkgver: 140.12.0esr
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 11c93a0c95e2166961e3664fea6b5a63827ded10
prompt_tokens: 58572
completion_tokens: 6338
total_tokens: 64910
cost: 0.00641232
execution_time: 75.09
files_reviewed: 12
files_skipped: 0
date: 2026-06-19T09:49:25Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard AUR package, no malicious code.
  - file: vendor-prefs.js
    status: safe
    summary: Benign preference file setting dictionary path.
  - file: src/betterbird/defaults/pref/channel-prefs.js
    status: safe
    summary: Standard Mozilla preference file, no security issues.
  - file: src/betterbird/application.ini
    status: safe
    summary: Static config file, no security issues.
  - file: src/betterbird/dependentlibs.list
    status: safe
    summary: Plain static library list, no security issues.
  - file: src/betterbird/removed-files
    status: safe
    summary: Benign list of removed files, no risk.
  - file: src/betterbird/platform.ini
    status: safe
    summary: Plain build metadata; no security issues.
  - file: src/betterbird/interesting_serverknobs.json
    status: safe
    summary: Static telemetry config, no malicious code.
  - file: eu.betterbird.Betterbird.desktop
    status: safe
    summary: Standard desktop entry file, no security issues.
  - file: src/betterbird/isp/Bogofilter.sfd
    status: safe
    summary: Spam filter config file, no malicious content.
  - file: src/betterbird/defaults/messenger/mailViews.dat
    status: safe
    summary: Safe configuration file for mail view filters.
  - file: src/betterbird/precomplete
    status: safe
    summary: Standard app update manifest, no malicious content.
---

Cloning https://aur.archlinux.org/betterbird-bin.git to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-jlh9ny36...
Cloned repository to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-jlh9ny36
Analyzing betterbird-bin AUR package (working in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-jlh9ny36) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD has no `pkgver()` function and no top-level command substitutions or code execution. The global scope consists solely of variable assignments and a `source` array pointing to standard HTTPS downloads and local auxiliary files. Checksums are provided for all sources. No dangerous operations (e.g., `eval`, `curl`, `wget`, or exfiltration) are present. The `package()` function is not executed by the requested commands (`--nobuild --nodeps --noprepare`), so any code there is out of scope for this gate. Fetching the sources and sourcing the PKGBUILD is safe.
</details>
<summary>No malicious code executed during source fetch or PKGBUILD parse.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- No malicious code executed during source fetch or PKGBUILD parse.[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, vendor-prefs.js...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD for betterbird-bin follows standard packaging practices. It downloads the official upstream tarball from betterbird.eu with a pinned version and specific checksum (sha256sum is present, not SKIP). The package() function only performs expected operations: extracting the tarball into /opt, installing a desktop file, copying a vendor-prefs.js configuration to the defaults/pref directory, and creating symlinks for the binary and icons. There are no obfuscated commands, no unexpected network requests (the only source is the official URL), no use of dangerous functions like `eval`, `curl`, or `wget` in a malicious context, and no tampering with system files outside the package's scope. The echo message asking users to vote is benign. The file is consistent with a legitimate AUR package.
</details>
<summary>Standard AUR package, no malicious code.</summary>
</security_assessment>

[1/2] Reviewing vendor-prefs.js...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR package, no malicious code.
LLM auditresponse for vendor-prefs.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This file contains a single configuration line that sets the Hunspell dictionary path to the system-provided location (`/usr/share/hunspell`). This is a standard and expected practice for Linux packages that want to use system dictionaries rather than bundled ones. There is no obfuscation, no network access, no execution of external code, and no modification of system files beyond a preference in the application's configuration. The file is completely benign.
</details>
<summary>
Benign preference file setting dictionary path.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed vendor-prefs.js. Status: SAFE -- Benign preference file setting dictionary path.
Reviewed all required files.
Deciding which files to review next...
LLM response for file selection:
eu.betterbird.Betterbird.desktop
src/betterbird/defaults/pref/channel-prefs.js
src/betterbird/application.ini
src/betterbird/interesting_serverknobs.json
src/betterbird/platform.ini
src/betterbird/defaults/messenger/mailViews.dat
src/betterbird/dependentlibs.list
src/betterbird/isp/Bogofilter.sfd
src/betterbird/precomplete
src/betterbird/removed-files
Decided to review 10 additional files: eu.betterbird.Betterbird.desktop, src/betterbird/defaults/pref/channel-prefs.js, src/betterbird/application.ini, src/betterbird/interesting_serverknobs.json, src/betterbird/platform.ini, src/betterbird/defaults/messenger/mailViews.dat, src/betterbird/dependentlibs.list, src/betterbird/isp/Bogofilter.sfd, src/betterbird/precomplete, src/betterbird/removed-files
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing eu.betterbird.Betterbird.desktop...
[0/10] Reviewing eu.betterbird.Betterbird.desktop, src/betterbird/defaults/pref/channel-prefs.js...
[0/10] Reviewing eu.betterbird.Betterbird.desktop, src/betterbird/defaults/pref/channel-prefs.js, src/betterbird/application.ini...
[0/10] Reviewing eu.betterbird.Betterbird.desktop, src/betterbird/defaults/pref/channel-prefs.js, src/betterbird/application.ini, src/betterbird/interesting_serverknobs.json...
[0/10] Reviewing eu.betterbird.Betterbird.desktop, src/betterbird/defaults/pref/channel-prefs.js, src/betterbird/application.ini, src/betterbird/interesting_serverknobs.json, src/betterbird/platform.ini...
[0/10] Reviewing eu.betterbird.Betterbird.desktop, src/betterbird/defaults/pref/channel-prefs.js, src/betterbird/application.ini, src/betterbird/interesting_serverknobs.json, src/betterbird/platform.ini, src/betterbird/defaults/messenger/mailViews.dat...
[0/10] Reviewing eu.betterbird.Betterbird.desktop, src/betterbird/defaults/pref/channel-prefs.js, src/betterbird/application.ini, src/betterbird/interesting_serverknobs.json, src/betterbird/platform.ini, src/betterbird/defaults/messenger/mailViews.dat, src/betterbird/dependentlibs.list...
[0/10] Reviewing eu.betterbird.Betterbird.desktop, src/betterbird/defaults/pref/channel-prefs.js, src/betterbird/application.ini, src/betterbird/interesting_serverknobs.json, src/betterbird/platform.ini, src/betterbird/defaults/messenger/mailViews.dat, src/betterbird/dependentlibs.list, src/betterbird/isp/Bogofilter.sfd...
[0/10] Reviewing eu.betterbird.Betterbird.desktop, src/betterbird/defaults/pref/channel-prefs.js, src/betterbird/application.ini, src/betterbird/interesting_serverknobs.json, src/betterbird/platform.ini, src/betterbird/defaults/messenger/mailViews.dat, src/betterbird/dependentlibs.list, src/betterbird/isp/Bogofilter.sfd, src/betterbird/precomplete...
[0/10] Reviewing eu.betterbird.Betterbird.desktop, src/betterbird/defaults/pref/channel-prefs.js, src/betterbird/application.ini, src/betterbird/interesting_serverknobs.json, src/betterbird/platform.ini, src/betterbird/defaults/messenger/mailViews.dat, src/betterbird/dependentlibs.list, src/betterbird/isp/Bogofilter.sfd, src/betterbird/precomplete, src/betterbird/removed-files...
LLM auditresponse for channel-prefs.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Mozilla preference file that sets the update channel to "default". It contains no obfuscated code, network requests, file operations, or any other suspicious behavior. The content is exactly what is expected for a channel-prefs.js file in a Mozilla-based application like Betterbird.
</details>
<summary>Standard Mozilla preference file, no security issues.</summary>
</security_assessment>

[1/10] Reviewing eu.betterbird.Betterbird.desktop, src/betterbird/application.ini, src/betterbird/interesting_serverknobs.json, src/betterbird/platform.ini, src/betterbird/defaults/messenger/mailViews.dat, src/betterbird/dependentlibs.list, src/betterbird/isp/Bogofilter.sfd, src/betterbird/precomplete, src/betterbird/removed-files...
+ Reviewed src/betterbird/defaults/pref/channel-prefs.js. Status: SAFE -- Standard Mozilla preference file, no security issues.
LLM auditresponse for application.ini:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a static configuration file (application.ini) for the Betterbird application, a Thunderbird fork. It contains only metadata fields such as vendor, name, version, build ID, source repository, and XRE settings. There are no executable commands, no network requests, no obfuscation, no file operations, and no references to external resources that could be exploited. The file is purely informational and harmless. The comment explicitly states the file is not used unless the application is started with the `-app` argument, further reducing any potential impact.
</details>
<summary>Static config file, no security issues.</summary>
</security_assessment>

[2/10] Reviewing eu.betterbird.Betterbird.desktop, src/betterbird/interesting_serverknobs.json, src/betterbird/platform.ini, src/betterbird/defaults/messenger/mailViews.dat, src/betterbird/dependentlibs.list, src/betterbird/isp/Bogofilter.sfd, src/betterbird/precomplete, src/betterbird/removed-files...
+ Reviewed src/betterbird/application.ini. Status: SAFE -- Static config file, no security issues.
LLM auditresponse for dependentlibs.list:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `dependentlibs.list` contains only a plain list of shared library filenames (e.g., libnspr4.so, libxul.so). It is a static manifest used by the packaging or runtime linker to enumerate required libraries. There is no executable code, no network operations, no system modifications, and no obfuscation. The content is entirely benign and consistent with standard packaging practices for a Mozilla-based application.
</details>
<summary>Plain static library list, no security issues.</summary>
</security_assessment>

[3/10] Reviewing eu.betterbird.Betterbird.desktop, src/betterbird/interesting_serverknobs.json, src/betterbird/platform.ini, src/betterbird/defaults/messenger/mailViews.dat, src/betterbird/isp/Bogofilter.sfd, src/betterbird/precomplete, src/betterbird/removed-files...
+ Reviewed src/betterbird/dependentlibs.list. Status: SAFE -- Plain static library list, no security issues.
LLM auditresponse for removed-files:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a simple list of file paths, commonly used during package upgrades to remove old or obsolete files from a previous installation. It contains no executable code, no network requests, no obfuscation, and no reference to any external or malicious behavior. The paths reference `distribution/` and specific extension files under `distribution/extensions/`, which is standard cleanup practice for Mozilla-based applications like Thunderbird/Betterbird. There is no evidence of supply-chain attack or malicious intent.
</details>
<summary>Benign list of removed files, no risk.</summary>
</security_assessment>

[4/10] Reviewing eu.betterbird.Betterbird.desktop, src/betterbird/interesting_serverknobs.json, src/betterbird/platform.ini, src/betterbird/defaults/messenger/mailViews.dat, src/betterbird/isp/Bogofilter.sfd, src/betterbird/precomplete...
+ Reviewed src/betterbird/removed-files. Status: SAFE -- Benign list of removed files, no risk.
LLM auditresponse for platform.ini:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `platform.ini` contains only build metadata: a BuildID, Milestone, SourceRepository, and SourceStamp. It is a plain-text INI configuration file with no executable code, no network requests, no obfuscation, and no file operations. The source repository URL points to the official Mozilla mercurial repository, which is expected for a package like Betterbird (a Thunderbird fork). There is nothing in this file that could constitute a security threat.
</details>
<summary>Plain build metadata; no security issues.</summary>
</security_assessment>

[5/10] Reviewing eu.betterbird.Betterbird.desktop, src/betterbird/interesting_serverknobs.json, src/betterbird/defaults/messenger/mailViews.dat, src/betterbird/isp/Bogofilter.sfd, src/betterbird/precomplete...
+ Reviewed src/betterbird/platform.ini. Status: SAFE -- Plain build metadata; no security issues.
LLM auditresponse for interesting_serverknobs.json:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a static JSON configuration file (named `interesting_serverknobs.json`) from the Betterbird (Thunderbird fork) package. It contains a single key `metrics_enabled` mapping to an object of thousands of metric names, all set to `true`. These are standard telemetry metric identifiers used by the upstream application (e.g., `browser.engagement.uri_count`, `webrtc.call_count_3`, etc.). The file is purely data – no executable code, no network commands (curl/wget), no obfuscation (base64/eval), and no file system manipulation instructions are present. There is no evidence of supply-chain attack injection; the content is consistent with an upstream telemetry configuration that enables various performance and usage counters within the application. Upstream telemetry practices are considered a product decision, not a malicious AUR modification.
</details>
<summary>Static telemetry config, no malicious code.</summary>
</security_assessment>

[6/10] Reviewing eu.betterbird.Betterbird.desktop, src/betterbird/defaults/messenger/mailViews.dat, src/betterbird/isp/Bogofilter.sfd, src/betterbird/precomplete...
+ Reviewed src/betterbird/interesting_serverknobs.json. Status: SAFE -- Static telemetry config, no malicious code.
LLM auditresponse for eu.betterbird.Betterbird.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.desktop` file for the Betterbird email client. It contains no executable code, no network requests, no obfuscation, and no system manipulations beyond defining how the application is launched and integrated into the desktop environment. All `Exec` lines run the `betterbird` binary with standard arguments (`%u`, `-compose`, `-addressbook`), which is expected behavior for an email client. The file consists entirely of static metadata entries (Name, Comment, GenericName, Keywords, MimeType, Actions) with localized translations. There is no evidence of malicious content or deviations from normal packaging practices.
</details>
<summary>Standard desktop entry file, no security issues.</summary>
</security_assessment>

[7/10] Reviewing src/betterbird/defaults/messenger/mailViews.dat, src/betterbird/isp/Bogofilter.sfd, src/betterbird/precomplete...
+ Reviewed eu.betterbird.Betterbird.desktop. Status: SAFE -- Standard desktop entry file, no security issues.
LLM auditresponse for Bogofilter.sfd:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a straightforward configuration file for a spam filter (Bogofilter). It defines rules that assign a junk score based on X-Bogosity header values. There are no executable commands, no network operations, no obfuscation, and no deviation from standard spam filter configuration practices. The content is entirely benign.
</details>
<summary>Spam filter config file, no malicious content.</summary>
</security_assessment>

[8/10] Reviewing src/betterbird/defaults/messenger/mailViews.dat, src/betterbird/precomplete...
+ Reviewed src/betterbird/isp/Bogofilter.sfd. Status: SAFE -- Spam filter config file, no malicious content.
LLM auditresponse for mailViews.dat:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a plain-text configuration file for mail view filters in an email client (likely Mozilla Thunderbird or similar). It contains only filter definitions with conditions like age in days, junk status, has attachment status, and references to an address book. There is no executable code, no network requests, no system commands, no obfuscation, and no signs of supply-chain attack or malicious behavior. It is a standard data file that defines user-specified mail views.
</details>
<summary>Safe configuration file for mail view filters.</summary>
</security_assessment>

[9/10] Reviewing src/betterbird/precomplete...
+ Reviewed src/betterbird/defaults/messenger/mailViews.dat. Status: SAFE -- Safe configuration file for mail view filters.
LLM auditresponse for precomplete:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard "precomplete" manifest used by Mozilla-based applications (including Betterbird) to list files and directories that should be removed during an update or uninstall process. The file contains only "remove" and "rmdir" instructions targeting expected application components (libraries, icons, configuration files, etc.) within the application's own installation directory. There is no code execution, no network requests, no obfuscation, and no reference to any external or unexpected resources. This is normal packaging and update scaffolding for the application's own structure, not a supply-chain attack or malicious behavior.
</details>
<summary>Standard app update manifest, no malicious content.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/betterbird/precomplete. Status: SAFE -- Standard app update manifest, no malicious content.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 58,572
  Completion Tokens: 6,338
  Total Tokens: 64,910
  Total Cost: $0.006412
  Execution Time: 75.09 seconds
Full audit report can be found in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-betterbird-bin.txt
Final Status: SAFE


No issues found.
