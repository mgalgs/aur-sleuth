---
package: betterbird-de-bin
pkgver: 153.1.0esr
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 09f2e477a21d918155ca5fbfdf5bc833f8a3f124
prompt_tokens: 59500
completion_tokens: 5477
total_tokens: 64977
cost: 0.00531645884
execution_time: 78.33
files_reviewed: 12
files_skipped: 0
files_unauditable: 28
unpinned_sources: 0
date: 2026-08-22T03:41:33Z
file_verdicts:
  - file: vendor-prefs.js
    status: safe
    summary: Safe preference file for system dictionaries.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD, no malicious content.
  - file: src/betterbird/application.ini
    status: safe
    summary: Standard config file, no malicious content.
  - file: src/betterbird/defaults/pref/channel-prefs.js
    status: safe
    summary: Standard Mozilla preferences file, no security concerns.
  - file: eu.betterbird.Betterbird.desktop
    status: safe
    summary: Standard .desktop file, no malicious content.
  - file: src/betterbird/platform.ini
    status: safe
    summary: Static metadata file, no security concerns.
  - file: src/betterbird/dependentlibs.list
    status: safe
    summary: Static library list, no security concerns.
  - file: src/betterbird/defaults/messenger/mailViews.dat
    status: safe
    summary: Standard email view config file, no security issues.
  - file: src/betterbird/isp/Bogofilter.sfd
    status: safe
    summary: Legitimate spam filter configuration, no security issues.
  - file: src/betterbird/interesting_serverknobs.json
    status: safe
    summary: Telemetry config file, no malicious content.
  - file: src/betterbird/isp/DSPAM.sfd
    status: safe
    summary: Benign SpamAssassin configuration file, no threats.
  - file: src/betterbird/isp/POPFile.sfd
    status: safe
    summary: Spam filter configuration file, no malicious code.
---

Cloning https://aur.archlinux.org/betterbird-de-bin.git...
Cloned betterbird-de-bin
Analyzing betterbird-de-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's top-level scope only contains variable assignments and array definitions. There is no `pkgver()` function or any command substitutions, backticks, or `$()` that would execute code during sourcing. The `source` array references the official Betterbird download URL, a desktop file, and a vendor-prefs.js file—all legitimate sources. Checksums are provided (not SKIP), so source verification occurs. No code runs outside of `package()`, which is not executed with the `--nobuild` flag. Commands like `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo` are safe to run.
</details>
<summary>No malicious code executes during source fetch or PKGBUILD parsing.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code executes during source fetch or PKGBUILD parsing.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, vendor-prefs.js...
LLM auditresponse for vendor-prefs.js:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `vendor-prefs.js` contains a single line setting the Firefox/Thunderbird preference `spellchecker.dictionary_path` to `/usr/share/hunspell`. This is a standard configuration to use system-provided hunspell dictionaries, which is expected for a packaged application like Betterbird on Arch Linux. There are no network requests, obfuscated code, file modifications, or any other malicious or suspicious behavior. The use of HTML entities (`&quot;`) for quotes is likely a display artifact and does not affect analysis.
</details>
<summary>Safe preference file for system dictionaries.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed vendor-prefs.js. Status: SAFE -- Safe preference file for system dictionaries.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a straightforward packaging script for the German version of Betterbird, a Thunderbird fork. It downloads the official binary tarball from the project's HTTPS site, copies files into the package directory, creates symlinks, and installs a desktop file and default preferences. All operations are standard for AUR binary packages. No suspicious network requests, obfuscated code, dangerous commands (eval, base64, curl, wget), or unexpected system modifications are present. The only non-packaging operation is an echo message asking users to vote for the package on the AUR, which is benign. The provided sha256sums are present and not skipped, so the source integrity is verifiable. No evidence of supply-chain attack or malicious intent.
</details>
<summary>Standard AUR PKGBUILD, no malicious content.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD, no malicious content.
Reviewed all required files.
Deciding which files to review next...
Note: 28 compiled/archived file(s) cannot be audited as text and were not reviewed (betterbird-153.1.0esr-bb7-build2.de.linux-x86_64.tar.xz, src/betterbird/betterbird, src/betterbird/betterbird-bin and 25 more). For a package that ships prebuilt binaries, the audit covers the packaging, not the payload.
File selection failed (LLM response message content is empty or missing. Raw response: ChatCompletion(id='gen-1787370065-XzE3TfQ8bI9fDv7gJRde', choices=[Choice(finish_reason='stop', index=0, logprobs=None, message=ChatCompletionMessage(content=None, refusal=None, role='assistant', annotations=None, audio=None, function_call=None, tool_calls=None, reasoning='We are auditing the betterbird-de-bin package, which is a binary package (prebuilt). The AUR maintainer has already reviewed PKGBUILD and vendor-prefs.js. The listing now shows remaining files. Most are source/bundle content from the upstream release (Betterbird binary distribution). These include runtime configuration files like desktop file, application.ini, platform.ini, etc. The package is a binary repackage, so the AUR surface is mostly the PKGBUILD and install script. Since PKGBUILD is already reviewed, and there is no separate .install file listed? Actually the listing doesn\'t include an install hook file. The PKGBUILD may have an install= line but it\'s not shown. Given the listing, the remaining files are all part of the upstream binary bundle (src/betterbird/...). These are not modified by the AUR maintainer (except possibly the desktop file?). The desktop file is eu.betterbird.Betterbird.desktop. It is installed by the PKGBUILD. The PKGBUILD probably has a line like install -Dm644 ...desktop to /usr/share/applications/. The desktop file could specify Exec= command. But since it\'s from upstream, it\'s likely safe. However, we should check if the desktop file has any malicious execution, but that\'s low risk. The other files are runtime configs from upstream (application.ini, platform.ini, precomplete, removed-files, etc.). These are not executed during build/install; they are installed as data. The only potential is that the desktop file specifies commands that could be modified? But it\'s from upstream archive. The AUR maintainer didn\'t patch it. So no injection.\n\nGiven the guidance: "When a package merely repackages a prebuilt archive, the AUR-controlled surface may be only the PKG... (truncated)); using highest-priority files instead

Note: file selection did not complete (LLM response message content is empty or missing. Raw response: ChatCompletion(id='gen-1787370065-XzE3TfQ8bI9fDv7gJRde', choices=[Choice(finish_reason='stop', index=0, logprobs=None, message=ChatCompletionMessage(content=None, refusal=None, role='assistant', annotations=None, audio=None, function_call=None, tool_calls=None, reasoning='We are auditing the betterbird-de-bin package, which is a binary package (prebuilt). The AUR maintainer has already reviewed PKGBUILD and vendor-prefs.js. The listing now shows remaining files. Most are source/bundle content from the upstream release (Betterbird binary distribution). These include runtime configuration files like desktop file, application.ini, platform.ini, etc. The package is a binary repackage, so the AUR surface is mostly the PKGBUILD and install script. Since PKGBUILD is already reviewed, and there is no separate .install file listed? Actually the listing doesn\'t include an install hook file. The PKGBUILD may have an install= line but it\'s not shown. Given the listing, the remaining files are all part of the upstream binary bundle (src/betterbird/...). These are not modified by the AUR maintainer (except possibly the desktop file?). The desktop file is eu.betterbird.Betterbird.desktop. It is installed by the PKGBUILD. The PKGBUILD probably has a line like install -Dm644 ...desktop to /usr/share/applications/. The desktop file could specify Exec= command. But since it\'s from upstream, it\'s likely safe. However, we should check if the desktop file has any malicious execution, but that\'s low risk. The other files are runtime configs from upstream (application.ini, platform.ini, precomplete, removed-files, etc.). These are not executed during build/install; they are installed as data. The only potential is that the desktop file specifies commands that could be modified? But it\'s from upstream archive. The AUR maintainer didn\'t patch it. So no injection.\n\nGiven the guidance: "When a package merely repackages a prebuilt archive, the AUR-controlled surface may be only the PKG... (truncated)). Falling back to the 10 highest-priority file(s) by ranking.
Decided to review 10 additional files: eu.betterbird.Betterbird.desktop, src/betterbird/defaults/pref/channel-prefs.js, src/betterbird/application.ini, src/betterbird/interesting_serverknobs.json, src/betterbird/platform.ini, src/betterbird/defaults/messenger/mailViews.dat, src/betterbird/dependentlibs.list, src/betterbird/isp/Bogofilter.sfd, src/betterbird/isp/DSPAM.sfd, src/betterbird/isp/POPFile.sfd
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing eu.betterbird.Betterbird.desktop...
[0/10] Reviewing eu.betterbird.Betterbird.desktop, src/betterbird/defaults/pref/channel-prefs.js...
[0/10] Reviewing eu.betterbird.Betterbird.desktop, src/betterbird/defaults/pref/channel-prefs.js, src/betterbird/application.ini...
LLM auditresponse for application.ini:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard application.ini configuration file for the Betterbird project, a Thunderbird fork. It contains only metadata fields such as vendor, name, version, build ID, and source repository. There are no executable commands, network requests, obfuscated code, or unexpected operations. It is a benign configuration file used to define application properties.</details>
<summary>Standard config file, no malicious content.</summary>
</security_assessment>

[0/10] Reviewing eu.betterbird.Betterbird.desktop, src/betterbird/defaults/pref/channel-prefs.js, src/betterbird/application.ini, src/betterbird/interesting_serverknobs.json...
[1/10] Reviewing eu.betterbird.Betterbird.desktop, src/betterbird/defaults/pref/channel-prefs.js, src/betterbird/interesting_serverknobs.json...
+ Reviewed src/betterbird/application.ini. Status: SAFE -- Standard config file, no malicious content.
LLM auditresponse for channel-prefs.js:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `channel-prefs.js` is a standard Mozilla preferences file that sets the `app.update.channel` preference to `"default"`. There is no obfuscation, no network requests, no system modifications, or any other suspicious behavior. It is a benign configuration file commonly included in packages like Betterbird to define the application update channel.
</details>
<summary>Standard Mozilla preferences file, no security concerns.</summary>
</security_assessment>

[1/10] Reviewing eu.betterbird.Betterbird.desktop, src/betterbird/defaults/pref/channel-prefs.js, src/betterbird/interesting_serverknobs.json, src/betterbird/platform.ini...
[2/10] Reviewing eu.betterbird.Betterbird.desktop, src/betterbird/interesting_serverknobs.json, src/betterbird/platform.ini...
+ Reviewed src/betterbird/defaults/pref/channel-prefs.js. Status: SAFE -- Standard Mozilla preferences file, no security concerns.
LLM auditresponse for eu.betterbird.Betterbird.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.desktop` file for the Betterbird email client, following the [freedesktop.org Desktop Entry Specification](https://specifications.freedesktop.org/desktop-entry-spec/latest/). It contains:

- An `Exec` line pointing to the `betterbird` binary, which is the package's own executable.  
- Standard fields such as `Name`, `Comment`, `GenericName`, `Keywords`, `MimeType`, `StartupNotify`, `Categories`, and `Actions`.  
- Localised strings for many languages in the standard format (`Name[lang]`, `Comment[lang]`, etc.).  
- Two desktop actions (`ComposeMessage` and `OpenAddressBook`) with their own `Exec` lines using `-compose` and `-addressbook` arguments – these are standard upstream command-line options for Thunderbird-derived mail clients.

No suspicious or malicious content is present. There are no network requests, no obfuscated or encoded commands, no backdoors, no unauthorized file operations, and no deviation from normal packaging practices for a desktop application. The file solely defines how the application appears in the system menu and how it is launched.
</details>
<summary>
Standard .desktop file, no malicious content.</summary>
</security_assessment>

[2/10] Reviewing eu.betterbird.Betterbird.desktop, src/betterbird/interesting_serverknobs.json, src/betterbird/platform.ini, src/betterbird/defaults/messenger/mailViews.dat...
[3/10] Reviewing src/betterbird/interesting_serverknobs.json, src/betterbird/platform.ini, src/betterbird/defaults/messenger/mailViews.dat...
+ Reviewed eu.betterbird.Betterbird.desktop. Status: SAFE -- Standard .desktop file, no malicious content.
LLM auditresponse for platform.ini:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a metadata configuration file (`platform.ini`) for a Mozilla-based application (Betterbird). It contains only static build identifiers: `BuildID`, `Milestone`, `SourceRepository`, and `SourceStamp`. There are no executable commands, no network requests, no obfuscation, and no references to external resources that could be used in a supply-chain attack. The content is purely informational and consistent with standard packaging practices.
</details>
<summary>Static metadata file, no security concerns.</summary>
</security_assessment>

[3/10] Reviewing src/betterbird/interesting_serverknobs.json, src/betterbird/platform.ini, src/betterbird/defaults/messenger/mailViews.dat, src/betterbird/dependentlibs.list...
[4/10] Reviewing src/betterbird/interesting_serverknobs.json, src/betterbird/defaults/messenger/mailViews.dat, src/betterbird/dependentlibs.list...
+ Reviewed src/betterbird/platform.ini. Status: SAFE -- Static metadata file, no security concerns.
LLM auditresponse for dependentlibs.list:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `dependentlibs.list` is a plain text file containing a list of shared library filenames. It contains no executable code, no obfuscated strings, no network requests, and no file operations. It is a static dependency manifest used during packaging to track which libraries are required. There is no evidence of malicious or suspicious behavior.
</details>
<summary>Static library list, no security concerns.</summary>
</security_assessment>

[5/10] Reviewing src/betterbird/interesting_serverknobs.json, src/betterbird/defaults/messenger/mailViews.dat...
+ Reviewed src/betterbird/dependentlibs.list. Status: SAFE -- Static library list, no security concerns.
[5/10] Reviewing src/betterbird/interesting_serverknobs.json, src/betterbird/defaults/messenger/mailViews.dat, src/betterbird/isp/Bogofilter.sfd...
LLM auditresponse for mailViews.dat:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a configuration data file for email view filters, likely used by Thunderbird/Betterbird. It contains standard mail view definitions (People I Know, Recent Mail, Last 5 Days, Not Spam, Has Attachments) with typical filter conditions such as checking the address book, age in days, junk status, and attachment status. There is no executable code, no network requests, no obfuscation, and no dangerous operations. It poses no security risk.
</details>
<summary>Standard email view config file, no security issues.</summary>
</security_assessment>

[5/10] Reviewing src/betterbird/interesting_serverknobs.json, src/betterbird/defaults/messenger/mailViews.dat, src/betterbird/isp/Bogofilter.sfd, src/betterbird/isp/DSPAM.sfd...
[6/10] Reviewing src/betterbird/interesting_serverknobs.json, src/betterbird/isp/Bogofilter.sfd, src/betterbird/isp/DSPAM.sfd...
+ Reviewed src/betterbird/defaults/messenger/mailViews.dat. Status: SAFE -- Standard email view config file, no security issues.
LLM auditresponse for Bogofilter.sfd:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard configuration file for integrating Bogofilter spam detection with a mail filtering system (SpamAssassin or similar). It defines two rules that check the `X-Bogosity` header and set a JunkScore accordingly. There is no executable code, network requests, obfuscation, or system modifications. The file is exactly what it appears to be: a legitimate filter rule definition.
</details>
<summary>Legitimate spam filter configuration, no security issues.</summary>
</security_assessment>

[6/10] Reviewing src/betterbird/interesting_serverknobs.json, src/betterbird/isp/Bogofilter.sfd, src/betterbird/isp/DSPAM.sfd, src/betterbird/isp/POPFile.sfd...
[7/10] Reviewing src/betterbird/interesting_serverknobs.json, src/betterbird/isp/DSPAM.sfd, src/betterbird/isp/POPFile.sfd...
+ Reviewed src/betterbird/isp/Bogofilter.sfd. Status: SAFE -- Legitimate spam filter configuration, no security issues.
LLM auditresponse for interesting_serverknobs.json:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a JSON configuration file for telemetry metrics. It contains a single key `metrics_enabled` mapping a large object whose property names are standard Mozilla Firefox/Thunderbird telemetry probe identifiers (e.g., `a11y.always_underline_links`, `browser.engagement.active_ticks`, `use.counter.page.window_bluetooth`, etc.)—all set to `true`. There is no executable code, no obfuscated strings, no network requests, no file operations, and no attempts to exfiltrate or modify system data. The content is a routine configuration for enabling built-in telemetry collection, which is an upstream application functionality (Betterbird is a Thunderbird fork). Per the auditing guidelines, upstream telemetry practices are not considered supply-chain attacks; marking this file UNSAFE would be inappropriate. No injected malicious behavior is present.
</details>
<summary>Telemetry config file, no malicious content.</summary>
</security_assessment>

[8/10] Reviewing src/betterbird/isp/DSPAM.sfd, src/betterbird/isp/POPFile.sfd...
+ Reviewed src/betterbird/interesting_serverknobs.json. Status: SAFE -- Telemetry config file, no malicious content.
LLM auditresponse for DSPAM.sfd:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a SpamAssassin rule definition (`.sfd`) that sets junk scores based on the `X-DSPAM-Result` header. It contains two rules:
- If the header begins with "Spam", assign a junk score of 100.
- If the header begins with "Innocent", assign a junk score of 0.

There is no executable code, no network requests, no obfuscation, and no attempt to modify system files or exfiltrate data. The file is entirely benign configuration content consistent with standard spam filtering packages.
</details>
<summary>Benign SpamAssassin configuration file, no threats.</summary>
</security_assessment>

[9/10] Reviewing src/betterbird/isp/POPFile.sfd...
+ Reviewed src/betterbird/isp/DSPAM.sfd. Status: SAFE -- Benign SpamAssassin configuration file, no threats.
LLM auditresponse for POPFile.sfd:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `POPFile.sfd` contains configuration rules for a POPFile spam filter. It defines two rules that adjust a `JunkScore` based on the value of an `X-Text-Classification` header. This is standard functionality for a mail filter application. There are no commands, network requests, obfuscated code, or system modifications. The file is purely declarative and poses no security risk.
</details>
<summary>Spam filter configuration file, no malicious code.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/betterbird/isp/POPFile.sfd. Status: SAFE -- Spam filter configuration file, no malicious code.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 59,500
  Completion Tokens: 5,477
  Total Tokens: 64,977
  Total Cost: $0.005316
  Execution Time: 78.33 seconds

Final Status: SAFE


No issues found.
