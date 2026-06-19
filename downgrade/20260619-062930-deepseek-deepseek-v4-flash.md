---
package: downgrade
pkgver: 12.0.2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 5790943c1b39200ecdf449522971aa7db90ade4a
prompt_tokens: 42351
completion_tokens: 8483
total_tokens: 50834
cost: 0.00533853
execution_time: 59.07
files_reviewed: 11
files_skipped: 1
date: 2026-06-19T06:29:30Z
file_verdicts:
  - file: downgrade-12.0.2.tar.gz
    status: skipped
    summary: "Skipping binary file: downgrade-12.0.2.tar.gz"
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD, no security issues found.
  - file: src/downgrade-12.0.2/locale/downgrade/cs.po
    status: safe
    summary: File is a harmless translation PO file.
  - file: src/downgrade-12.0.2/conf/downgrade.conf
    status: safe
    summary: Configuration file with no executable content.
  - file: src/downgrade-12.0.2/completion/downgrade/bash
    status: safe
    summary: Standard bash completion; no security concerns.
  - file: src/downgrade-12.0.2/Makefile
    status: safe
    summary: Standard package install script, no security issues.
  - file: src/downgrade-12.0.2/locale/downgrade/es.po
    status: safe
    summary: Standard translation file, no security issues.
  - file: src/downgrade-12.0.2/locale/downgrade/fr.po
    status: safe
    summary: Safe translation file with no executable content.
  - file: src/downgrade-12.0.2/completion/downgrade/zsh
    status: safe
    summary: Standard zsh completion script, no security issues.
  - file: src/downgrade-12.0.2/completion/downgrade/fish
    status: safe
    summary: Standard completions script; no malicious behavior.
  - file: src/downgrade-12.0.2/bin/pacignore
    status: safe
    summary: Safe script for managing Pacman IgnorePkg.
  - file: src/downgrade-12.0.2/bin/downgrade
    status: safe
    summary: Legitimate downgrade tool; no malicious indicators found.
---

Cloning https://aur.archlinux.org/downgrade.git to /tmp/aur-sleuth/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-h1d96rcq...
Cloned repository to /tmp/aur-sleuth/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-h1d96rcq
Analyzing downgrade AUR package (working in /tmp/aur-sleuth/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-h1d96rcq) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only variable definitions and a `package()` function. No code executes at the top level or in `pkgver()` (which is not defined). The source is a pinned tarball from the official GitHub releases page with a valid checksum. There are no dangerous commands, network requests to untrusted hosts, or obfuscated code. Running `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo` will only download the expected tarball and source the PKGBUILD, which is safe.
</details>
<summary>Standard PKGBUILD, no dangerous top-level code.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- Standard PKGBUILD, no dangerous top-level code.[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, downgrade-12.0.2.tar.gz...
[1/2] Reviewing PKGBUILD...
! Reviewed downgrade-12.0.2.tar.gz. Status: SKIPPED -- Skipping binary file: downgrade-12.0.2.tar.gz
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is standard and follows AUR packaging best practices. The source is downloaded from the official GitHub releases of the project, and the sha256sum is pinned (not SKIP), ensuring integrity. The package function only executes `make install` with proper DESTDIR and PREFIX. There are no suspicious commands (no eval, base64, curl, wget, obfuscated code, or unexpected network requests). No evidence of malicious or dangerous behavior is present.
</details>
<summary>Standard PKGBUILD, no security issues found.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD, no security issues found.
Reviewed all required files.
Deciding which files to review next...
LLM response for file selection:
src/downgrade-12.0.2/Makefile
src/downgrade-12.0.2/conf/downgrade.conf
src/downgrade-12.0.2/bin/downgrade
src/downgrade-12.0.2/bin/pacignore
src/downgrade-12.0.2/completion/downgrade/bash
src/downgrade-12.0.2/completion/downgrade/fish
src/downgrade-12.0.2/completion/downgrade/zsh
src/downgrade-12.0.2/locale/downgrade/cs.po
src/downgrade-12.0.2/locale/downgrade/es.po
src/downgrade-12.0.2/locale/downgrade/fr.po
Decided to review 10 additional files: src/downgrade-12.0.2/Makefile, src/downgrade-12.0.2/conf/downgrade.conf, src/downgrade-12.0.2/bin/downgrade, src/downgrade-12.0.2/bin/pacignore, src/downgrade-12.0.2/completion/downgrade/bash, src/downgrade-12.0.2/completion/downgrade/fish, src/downgrade-12.0.2/completion/downgrade/zsh, src/downgrade-12.0.2/locale/downgrade/cs.po, src/downgrade-12.0.2/locale/downgrade/es.po, src/downgrade-12.0.2/locale/downgrade/fr.po
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/downgrade-12.0.2/conf/downgrade.conf...
[0/10] Reviewing src/downgrade-12.0.2/conf/downgrade.conf, src/downgrade-12.0.2/Makefile...
[0/10] Reviewing src/downgrade-12.0.2/conf/downgrade.conf, src/downgrade-12.0.2/Makefile, src/downgrade-12.0.2/bin/downgrade...
[0/10] Reviewing src/downgrade-12.0.2/conf/downgrade.conf, src/downgrade-12.0.2/Makefile, src/downgrade-12.0.2/bin/downgrade, src/downgrade-12.0.2/completion/downgrade/bash...
[0/10] Reviewing src/downgrade-12.0.2/conf/downgrade.conf, src/downgrade-12.0.2/Makefile, src/downgrade-12.0.2/bin/downgrade, src/downgrade-12.0.2/completion/downgrade/bash, src/downgrade-12.0.2/completion/downgrade/fish...
[0/10] Reviewing src/downgrade-12.0.2/conf/downgrade.conf, src/downgrade-12.0.2/Makefile, src/downgrade-12.0.2/bin/downgrade, src/downgrade-12.0.2/completion/downgrade/bash, src/downgrade-12.0.2/completion/downgrade/fish, src/downgrade-12.0.2/bin/pacignore...
[0/10] Reviewing src/downgrade-12.0.2/conf/downgrade.conf, src/downgrade-12.0.2/Makefile, src/downgrade-12.0.2/bin/downgrade, src/downgrade-12.0.2/completion/downgrade/bash, src/downgrade-12.0.2/completion/downgrade/fish, src/downgrade-12.0.2/bin/pacignore, src/downgrade-12.0.2/completion/downgrade/zsh...
[0/10] Reviewing src/downgrade-12.0.2/conf/downgrade.conf, src/downgrade-12.0.2/Makefile, src/downgrade-12.0.2/bin/downgrade, src/downgrade-12.0.2/completion/downgrade/bash, src/downgrade-12.0.2/completion/downgrade/fish, src/downgrade-12.0.2/bin/pacignore, src/downgrade-12.0.2/completion/downgrade/zsh, src/downgrade-12.0.2/locale/downgrade/es.po...
[0/10] Reviewing src/downgrade-12.0.2/conf/downgrade.conf, src/downgrade-12.0.2/Makefile, src/downgrade-12.0.2/bin/downgrade, src/downgrade-12.0.2/completion/downgrade/bash, src/downgrade-12.0.2/completion/downgrade/fish, src/downgrade-12.0.2/bin/pacignore, src/downgrade-12.0.2/completion/downgrade/zsh, src/downgrade-12.0.2/locale/downgrade/es.po, src/downgrade-12.0.2/locale/downgrade/cs.po...
[0/10] Reviewing src/downgrade-12.0.2/conf/downgrade.conf, src/downgrade-12.0.2/Makefile, src/downgrade-12.0.2/bin/downgrade, src/downgrade-12.0.2/completion/downgrade/bash, src/downgrade-12.0.2/completion/downgrade/fish, src/downgrade-12.0.2/bin/pacignore, src/downgrade-12.0.2/completion/downgrade/zsh, src/downgrade-12.0.2/locale/downgrade/es.po, src/downgrade-12.0.2/locale/downgrade/cs.po, src/downgrade-12.0.2/locale/downgrade/fr.po...
LLM auditresponse for cs.po:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard GNU gettext PO translation file (Czech locale) for the `downgrade` package. It contains only `msgid` and `msgstr` pairs mapping English strings to Czech translations. There is no executable code, no shell commands, no network requests, no obfuscation, no file operations, and no system modifications. The content is purely textual translation data. No security issues are present.
</details>
<summary>File is a harmless translation PO file.</summary>
</security_assessment>

[1/10] Reviewing src/downgrade-12.0.2/conf/downgrade.conf, src/downgrade-12.0.2/Makefile, src/downgrade-12.0.2/bin/downgrade, src/downgrade-12.0.2/completion/downgrade/bash, src/downgrade-12.0.2/completion/downgrade/fish, src/downgrade-12.0.2/bin/pacignore, src/downgrade-12.0.2/completion/downgrade/zsh, src/downgrade-12.0.2/locale/downgrade/es.po, src/downgrade-12.0.2/locale/downgrade/fr.po...
+ Reviewed src/downgrade-12.0.2/locale/downgrade/cs.po. Status: SAFE -- File is a harmless translation PO file.
LLM auditresponse for downgrade.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `downgrade.conf` is a plain-text configuration file for the `downgrade` tool. It contains only commented-out lines showing default settings, with no executable code, no network requests, no obfuscation, and no file operations. The only URL referenced is `https://archive.archlinux.org`, which is the official Arch Linux package archive and is expected for this tool. There is no evidence of any malicious or dangerous behavior.
</details>
<summary>Configuration file with no executable content.</summary>
</security_assessment>

[2/10] Reviewing src/downgrade-12.0.2/Makefile, src/downgrade-12.0.2/bin/downgrade, src/downgrade-12.0.2/completion/downgrade/bash, src/downgrade-12.0.2/completion/downgrade/fish, src/downgrade-12.0.2/bin/pacignore, src/downgrade-12.0.2/completion/downgrade/zsh, src/downgrade-12.0.2/locale/downgrade/es.po, src/downgrade-12.0.2/locale/downgrade/fr.po...
+ Reviewed src/downgrade-12.0.2/conf/downgrade.conf. Status: SAFE -- Configuration file with no executable content.
LLM auditresponse for bash:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a bash completion script for the `downgrade` command. It defines a function `_downgrade` that generates completion suggestions by querying available package names from `pacman -Ssq` with a prefix based on the current word. This is standard practice for shell completions in Arch Linux and the AUR. There is no obfuscation, no suspicious network requests (the query is to the local package manager), and no execution of untrusted content. The script performs only read-only operations and sets a completion helper.
</details>
<summary>Standard bash completion; no security concerns.</summary>
</security_assessment>

[3/10] Reviewing src/downgrade-12.0.2/Makefile, src/downgrade-12.0.2/bin/downgrade, src/downgrade-12.0.2/completion/downgrade/fish, src/downgrade-12.0.2/bin/pacignore, src/downgrade-12.0.2/completion/downgrade/zsh, src/downgrade-12.0.2/locale/downgrade/es.po, src/downgrade-12.0.2/locale/downgrade/fr.po...
+ Reviewed src/downgrade-12.0.2/completion/downgrade/bash. Status: SAFE -- Standard bash completion; no security concerns.
LLM auditresponse for Makefile:
<security_assessment>
<decision>SAFE</decision>
<details>
The Makefile is a standard install/uninstall script for the `downgrade` AUR package. It installs configuration files, man pages, executable scripts from `bin/`, shell completions, and compiled locale `.mo` files using standard `install` commands. There are no network requests, no obfuscation, no dangerous commands (eval, base64, curl, wget), no exfiltration of data, and no unexpected file operations beyond the package's own installation paths. The use of `$(shell find ...)` to enumerate scripts is a typical Makefile pattern and not a security concern. The file performs only routine packaging operations and contains no malicious code.
</details>
<summary>Standard package install script, no security issues.</summary>
</security_assessment>

[4/10] Reviewing src/downgrade-12.0.2/bin/downgrade, src/downgrade-12.0.2/completion/downgrade/fish, src/downgrade-12.0.2/bin/pacignore, src/downgrade-12.0.2/completion/downgrade/zsh, src/downgrade-12.0.2/locale/downgrade/es.po, src/downgrade-12.0.2/locale/downgrade/fr.po...
+ Reviewed src/downgrade-12.0.2/Makefile. Status: SAFE -- Standard package install script, no security issues.
LLM auditresponse for es.po:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard GNU gettext `.po` translation file for the Spanish locale of the `downgrade` package. It contains only `msgid` and `msgstr` entries, metadata headers, and comments. There is no executable code, no network requests, no file operations, no obfuscation, and no system modifications. The `#~` lines are obsolete translations, and `#, fuzzy` markers indicate incomplete or uncertain translations; both are normal in `.po` files. There is no evidence of malicious or dangerous behavior.
</details>
<summary>Standard translation file, no security issues.</summary>
</security_assessment>

[5/10] Reviewing src/downgrade-12.0.2/bin/downgrade, src/downgrade-12.0.2/completion/downgrade/fish, src/downgrade-12.0.2/bin/pacignore, src/downgrade-12.0.2/completion/downgrade/zsh, src/downgrade-12.0.2/locale/downgrade/fr.po...
+ Reviewed src/downgrade-12.0.2/locale/downgrade/es.po. Status: SAFE -- Standard translation file, no security issues.
LLM auditresponse for fr.po:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard GNU gettext PO file containing French translations for the `downgrade` package. It consists entirely of `msgid` and `msgstr` pairs that map English messages to French equivalents. There is no executable code, no network or file operations, no obfuscation, and no system modifications. The content is purely textual and follows expected PO file formatting conventions (e.g., escaped quotes, inline HTML entities). It poses no security risk.
</details>
<summary>Safe translation file with no executable content.</summary>
</security_assessment>

[6/10] Reviewing src/downgrade-12.0.2/bin/downgrade, src/downgrade-12.0.2/completion/downgrade/fish, src/downgrade-12.0.2/bin/pacignore, src/downgrade-12.0.2/completion/downgrade/zsh...
+ Reviewed src/downgrade-12.0.2/locale/downgrade/fr.po. Status: SAFE -- Safe translation file with no executable content.
LLM auditresponse for zsh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard zsh completion file (`.zsh` extension, `#compdef downgrade` header) for the `downgrade` AUR package. It defines completion logic for command-line flags (`--pacman`, `--ala-url`, `--help`, etc.) and uses `_retrieve_cache`/`_store_cache` with a cache policy based on pacman's log file. There are no obfuscated strings, no unexpected network requests (the only external command is `pacman -Ssq` for listing available packages, which is expected for a package manager helper), and no dangerous operations like `eval`, `curl`, `wget`, or file exfiltration. The script performs no modifications to the system or user data and is consistent with ordinary AUR packaging practices.
</details>
<summary>Standard zsh completion script, no security issues.</summary>
</security_assessment>

[7/10] Reviewing src/downgrade-12.0.2/bin/downgrade, src/downgrade-12.0.2/completion/downgrade/fish, src/downgrade-12.0.2/bin/pacignore...
+ Reviewed src/downgrade-12.0.2/completion/downgrade/zsh. Status: SAFE -- Standard zsh completion script, no security issues.
LLM auditresponse for fish:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a Fish shell completions script for the `downgrade` command. It defines tab-completion rules for package names (via `__fish_print_pacman_packages`) and various command-line options such as `--pacman`, `--pacman-conf`, `--cached-only`, `--ala-url`, etc. No commands are executed beyond what is normal for completions (e.g., calling `complete`). There are no network requests, no obfuscated code, no dangerous operations, and no deviation from standard packaging practices. The file is purely declarative and aids user experience. It is safe.
</details>
<summary>
Standard completions script; no malicious behavior.</summary>
</security_assessment>

[8/10] Reviewing src/downgrade-12.0.2/bin/downgrade, src/downgrade-12.0.2/bin/pacignore...
+ Reviewed src/downgrade-12.0.2/completion/downgrade/fish. Status: SAFE -- Standard completions script; no malicious behavior.
LLM auditresponse for pacignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This script manages pacman's `IgnorePkg` directive by reading and writing `/etc/pacman.conf` with `sed -i`. It performs expected file operations for its purpose (add, remove, list, check ignored packages) and requires root for modifications. There are no network requests, obfuscated commands, downloads, or exfiltration of data. The locale path resolution using `$0` is a standard technique for locating bundled translation files and does not introduce any injection or traversal risk—gettext uses it only to look up `.mo` files, not to execute code. All operations are confined to the intended configuration file and are consistent with ordinary packaging practices.
</details>
<summary>Safe script for managing Pacman IgnorePkg.</summary>
</security_assessment>

[9/10] Reviewing src/downgrade-12.0.2/bin/downgrade...
+ Reviewed src/downgrade-12.0.2/bin/pacignore. Status: SAFE -- Safe script for managing Pacman IgnorePkg.
LLM auditresponse for downgrade:
<security_assessment>
<decision>SAFE</decision>
<details>
The script `downgrade` is a legitimate Arch Linux tool for downgrading packages. It searches local package caches and the Arch Linux Archive (ALA) via `curl` (to the project's own upstream server) and allows building from local AUR helper cache directories using `git checkout` and `makepkg`. All network destinations (ALA, AUR helper cache clones) are expected and related to the package's purpose. No obfuscated code, base64 decoding, data exfiltration, or backdoors are present. Operations like `eval` on a config file and temporary file writes are standard and not malicious. The tool's design trusts the ALA server without signature verification, but this is an inherent function of the tool (fetching historical packages), not injected malicious behavior. No evidence of a supply-chain attack was found.
</details>
<summary>Legitimate downgrade tool; no malicious indicators found.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/downgrade-12.0.2/bin/downgrade. Status: SAFE -- Legitimate downgrade tool; no malicious indicators found.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
(Skipped 1 file: downgrade-12.0.2.tar.gz)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 42,351
  Completion Tokens: 8,483
  Total Tokens: 50,834
  Total Cost: $0.005339
  Execution Time: 59.07 seconds
Full audit report can be found in /tmp/aur-sleuth/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-downgrade.txt
Final Status: SAFE


No issues found.


Audit Skips:

/tmp/aur-sleuth/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-h1d96rcq/downgrade-12.0.2.tar.gz: [SKIPPED] Skipping binary file: downgrade-12.0.2.tar.gz
