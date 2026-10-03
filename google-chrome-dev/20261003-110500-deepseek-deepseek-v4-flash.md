---
package: google-chrome-dev
pkgver: 157.0.8081.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 31082
completion_tokens: 3198
total_tokens: 34280
cost: 0.001049384
execution_time: 61.33
files_reviewed: 6
files_skipped: 0
maintainer_files: 6
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-03T11:05:00Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR package metadata; sources are official Google Chrome with pinned checksums. No malicious behavior found.
  - file: .nvchecker.toml
    status: safe
    summary: Benign nvchecker configuration tracking Google Chrome unstable versions from the official repository.
  - file: eula_text.html
    status: safe
    summary: Static legal document, no malicious code found.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD for repackaging official Google Chrome.
  - file: google-chrome-dev.install
    status: safe
    summary: Benign install script with user notes.
  - file: google-chrome-unstable.sh
    status: safe
    summary: Benign launcher script; no malicious behavior.
---

Materializing google-chrome-dev from local mirror...
Materialized google-chrome-dev
Analyzing google-chrome-dev AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The top-level scope of this PKGBUILD contains only standard variable definitions (package metadata, dependencies, source URLs, checksum arrays) and function definitions (`package()`). No command substitutions, backtick executions, or other code that would execute at source time. The source URLs point to the official Google Chrome repository (`dl.google.com`). There is no top-level code that downloads or runs anything, exfiltrates data, or performs any other malicious action. Running `makepkg --printsrcinfo` is safe.</details>
<evidence></evidence>
<summary>No dangerous top-level code; safe to parse.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code; safe to parse.
Reviewing the 6 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/6] Reviewing .SRCINFO...
[0/6] Reviewing .SRCINFO, .nvchecker.toml...
[0/6] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is the .SRCINFO metadata for the well-known `google-chrome-dev` AUR package. It lists standard dependencies, options, and sources. The sources are the official Google Chrome Dev .deb packages fetched directly from `dl.google.com` (the project's own upstream distribution host) with pinned versions and valid SHA‑512 checksums. The other two sources are local package files (`eula_text.html` and `google-chrome-unstable.sh`) also with checksums. No obfuscation, no suspicious commands, no unexpected hosts, and no runtime execution of untrusted content are present. This conforms to normal AUR packaging practice.
</details>
<evidence>
</evidence>
<summary>
Standard AUR package metadata; sources are official Google Chrome with pinned checksums. No malicious behavior found.
</summary>
</security_assessment>

[0/6] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD, eula_text.html...
[1/6] Reviewing .nvchecker.toml, PKGBUILD, eula_text.html...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR package metadata; sources are official Google Chrome with pinned checksums. No malicious behavior found.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is an `.nvchecker.toml` configuration used by the `nvchecker` tool to check for new upstream versions of `google-chrome-unstable` from Google's official apt repository. It only defines the source type (`apt`), the mirror URL (`https://dl.google.com/linux/chrome/deb/`), the package name, suite, repo, and version stripping behavior.

There are no commands, scripts, downloads executed at build time, file manipulations, or obfuscated content. The URL points to Google's official Chrome repository, which is the expected upstream host for this package. This configuration is consistent with standard version-checking automation used by AUR maintainers and contains no security concerns.
</details>
<evidence>
</evidence>
<summary>
Benign nvchecker configuration tracking Google Chrome unstable versions from the official repository.</summary>
</security_assessment>

[1/6] Reviewing .nvchecker.toml, PKGBUILD, eula_text.html, google-chrome-dev.install...
[2/6] Reviewing PKGBUILD, eula_text.html, google-chrome-dev.install...
+ Reviewed .nvchecker.toml. Status: SAFE -- Benign nvchecker configuration tracking Google Chrome unstable versions from the official repository.
LLM auditresponse for eula_text.html:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a static HTML document containing the Google Chrome Terms of Service and Additional Terms. It includes standard legal text, links to Google policies, and embedded JavaScript for user-agent detection and Google Analytics tracking. There are no suspicious network requests (other than expected Google-hosted analytics/feature-detection scripts), no obfuscated code, no dangerous commands, and no file operations. The content is consistent with the upstream Google Chrome EULA page and does not exhibit any behavior indicative of a supply-chain attack or malicious injection.
</details>
<evidence></evidence>
<summary>Static legal document, no malicious code found.</summary>
</security_assessment>

[2/6] Reviewing PKGBUILD, eula_text.html, google-chrome-dev.install, google-chrome-unstable.sh...
[3/6] Reviewing PKGBUILD, google-chrome-dev.install, google-chrome-unstable.sh...
+ Reviewed eula_text.html. Status: SAFE -- Static legal document, no malicious code found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD for `google-chrome-dev` follows standard AUR packaging practices. It downloads the official Google Chrome Dev .deb package from Google&#x27;s own servers (`dl.google.com`), extracts the contents, and installs them properly. The source URLs, checksums (including architecture-specific sums), and build steps all align with expected behavior for repackaging a prebuilt binary. No eval, obfuscated code, unexpected network requests, or file operations outside the package&#x27;s own directories were found. The file manipulation (sed on desktop entry, removal of cron job and duplicate logos) is normal clean-up of the upstream package and not malicious.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD for repackaging official Google Chrome.</summary>
</security_assessment>

[4/6] Reviewing google-chrome-dev.install, google-chrome-unstable.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD for repackaging official Google Chrome.
LLM auditresponse for google-chrome-dev.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a minimal `.install` script that defines helper functions for colored output and a `post_install()` function that prints informational messages to the user. It does not perform any network requests, execute external commands beyond `tput` (which is a standard terminal capability query), modify system files, or interact with user data. The content is entirely benign and follows typical AUR packaging practices.
</details>
<evidence></evidence>
<summary>Benign install script with user notes.</summary>
</security_assessment>

[5/6] Reviewing google-chrome-unstable.sh...
+ Reviewed google-chrome-dev.install. Status: SAFE -- Benign install script with user notes.
LLM auditresponse for google-chrome-unstable.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard launcher wrapper for Google Chrome Dev/Unstable. It reads an optional user configuration file at `$XDG_CONFIG_HOME/chrome-dev-flags.conf`, extracts non-comment lines with `grep`, and passes them to the Chrome binary along with the user's command-line arguments. This is normal and expected behavior for AUR browser wrapper scripts.

There is no suspicious network activity, encoded payloads, dangerous shell builtins, or file modification outside the expected scope. The unquoted expansion of `$CHROME_USER_FLAGS` allows word splitting so that multiple flags can be passed, but the content is not evaluated as shell code, so a malicious flags file cannot directly execute commands through this script. Overall, the script behaves as an ordinary application launcher.
</details>
<evidence></evidence>
<summary>Benign launcher script; no malicious behavior.</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed google-chrome-unstable.sh. Status: SAFE -- Benign launcher script; no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 31,082
  Completion Tokens: 3,198
  Total Tokens: 34,280
  Total Cost: $0.001049
  Execution Time: 61.33 seconds

Final Status: SAFE


No issues found.
