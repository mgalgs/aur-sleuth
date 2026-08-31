---
package: throne-bin
pkgver: 1.2.4
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: b9e20f728bbe0de1871ebaca31738c802edc31f8
prompt_tokens: 16550
completion_tokens: 2320
total_tokens: 18870
cost: 0.00171469480
execution_time: 145.09
files_reviewed: 6
files_skipped: 0
maintainer_files: 6
source_fetch: ok
upstream_files: 38
upstream_named_files: 1
unpinned_sources: 0
injection_attempts: 0
date: 2026-08-31T23:34:48Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file with no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with pinned checksums from official GitHub releases; no security issues.
  - file: Throne.desktop
    status: safe
    summary: Standard desktop entry file; no malicious or suspicious behavior detected.
  - file: LICENSE
    status: safe
    summary: License file only, no executable or malicious content.
  - file: Throne.sh
    status: safe
    summary: Standard launcher script with no malicious behavior detected.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD; no evidence of malicious code.
---

Cloning https://aur.archlinux.org/throne-bin.git...
Cloned throne-bin
Analyzing throne-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains variable assignments and a `package()` function. The top-level scope executes no dangerous operations—only setting variables like `source`, `sha256sums`, and metadata. The `source` array points to the official GitHub releases of the Throne project, and checksums are provided (not SKIP). There is no `pkgver()` function defined, and no command substitutions or code execution at global scope. The `package()` function is only executed during installation, which is out of scope for the `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo` commands. Therefore, fetching sources and sourcing this PKGBUILD is safe.
</details>
<evidence>
</evidence>
<summary>PKGBUILD top-level scope has no dangerous code.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- PKGBUILD top-level scope has no dangerous code.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: the PKGBUILD names 1 file(s) in the downloaded sources (src/Throne/Throne.png); they are upstream content and were not reviewed.
Reviewing the 6 file(s) in the AUR repository. The 38 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/6] Reviewing .SRCINFO...
[0/6] Reviewing .SRCINFO, .gitignore...
[0/6] Reviewing .SRCINFO, .gitignore, LICENSE...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` file used by AUR package maintainers to exclude build artifacts from version control. It contains only patterns for directories (`pkg/`, `src/`) and file extensions (`*.png`, `*.zip`, `*.tar.zst`). There is no executable code, no network requests, no obfuscation, and no commands that could perform any malicious action. This file is harmless and follows normal packaging practices.
</details>
<evidence></evidence>
<summary>Standard .gitignore file with no security concerns.</summary>
</security_assessment>

[1/6] Reviewing .SRCINFO, LICENSE...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore file with no security concerns.
[1/6] Reviewing .SRCINFO, LICENSE, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file contains only standard Arch package metadata for the `throne-bin` package. All sources point to the project's own GitHub releases (`github.com/throneproj/Throne`), matching the declared upstream URL. The desktop entry and launcher shell script have pinned SHA-256 checksums, and the per-architecture release archives also have pinned SHA-256 checksums. There are no network operations, obfuscated content, file manipulations, or executable hooks defined in this file itself. The packaging appears consistent with ordinary AUR practices for a prebuilt binary package.

One minor supply-chain consideration: the release archives are fetched over HTTPS from GitHub, which is the project's official upstream, so the destination is appropriate and trusted. The checksums are pinned, which provides integrity verification. No genuinely malicious behavior is present in this file.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata with pinned checksums from official GitHub releases; no security issues.</summary>
</security_assessment>

[1/6] Reviewing .SRCINFO, LICENSE, PKGBUILD, Throne.desktop...
[2/6] Reviewing LICENSE, PKGBUILD, Throne.desktop...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with pinned checksums from official GitHub releases; no security issues.
LLM auditresponse for Throne.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Linux desktop entry file for the Throne application. It declares the application name, icon, category, and the `throne` executable to launch. No malicious behavior is present: there are no network commands, no encoded content, no file manipulation, and no unexpected execution. The file follows normal desktop-entry packaging practices.
</details>
<evidence></evidence>
<summary>Standard desktop entry file; no malicious or suspicious behavior detected.</summary>
</security_assessment>

[3/6] Reviewing LICENSE, PKGBUILD...
+ Reviewed Throne.desktop. Status: SAFE -- Standard desktop entry file; no malicious or suspicious behavior detected.
[3/6] Reviewing LICENSE, PKGBUILD, Throne.sh...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard ISC-style license file. It contains no executable code, no network requests, no obfuscation, and no system manipulation commands. It is a license notice only, typical for AUR package distributions. No security concerns.
</details>
<evidence></evidence>
<summary>License file only, no executable or malicious content.</summary>
</security_assessment>

[4/6] Reviewing PKGBUILD, Throne.sh...
+ Reviewed LICENSE. Status: SAFE -- License file only, no executable or malicious content.
LLM auditresponse for Throne.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This shell script serves as a launcher for the Throne application. It handles user config directory initialization, migration from a previous application (nekoray), backup of old JSON configs, cleanup of broken symlinks, and then runs the main binary. All operations are confined to the user&#8217;s XDG config directory (`~/.config/Throne`) and the application&#8217;s own install directory (`/opt/Throne`). There are no network requests, no obfuscated commands, no use of dangerous tools like `eval` or `base64`, and no exfiltration of sensitive data. The migration from nekoray is a copy within the user&#8217;s home directory, which is a standard practice for rebranded or forked applications. The script performs only expected application setup activities and does not contain any supply-chain attack indicators.
</details>
<evidence></evidence>
<summary>Standard launcher script with no malicious behavior detected.</summary>
</security_assessment>

[5/6] Reviewing PKGBUILD...
+ Reviewed Throne.sh. Status: SAFE -- Standard launcher script with no malicious behavior detected.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD for `throne-bin` follows standard AUR packaging practices. It downloads prebuilt binaries from the official GitHub releases of the Throne project, with checksums provided for all sources. The `package()` function only installs files (binaries, desktop entry, icon) into the package directory. No suspicious network requests, obfuscated code, dangerous commands, or unexpected system modifications are present. The file is consistent with a legitimate binary package.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD; no evidence of malicious code.</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD; no evidence of malicious code.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 16,550
  Completion Tokens: 2,320
  Total Tokens: 18,870
  Total Cost: $0.001715
  Execution Time: 145.09 seconds

Final Status: SAFE


No issues found.
