---
package: proton-mail
pkgver: 1.15.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 30412
completion_tokens: 2883
total_tokens: 33295
cost: 0.001012984
execution_time: 39.09
files_reviewed: 9
files_skipped: 0
maintainer_files: 9
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-03T19:09:35Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: Standard license file, no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file with no issues.
  - file: .nvchecker.toml
    status: safe
    summary: Legitimate upstream version-checking configuration; no malicious behavior detected.
  - file: LICENSES/GPL-3.0-or-later.txt
    status: safe
    summary: Standard GPL-3.0 license text; no executable or malicious content.
  - file: REUSE.toml
    status: safe
    summary: REUSE.toml is inert licensing metadata; no malicious behavior found.
  - file: LICENSE
    status: safe
    summary: Standard license file; no security concerns.
  - file: proton-mail.desktop
    status: safe
    summary: Standard desktop entry for Proton Mail; no malicious or suspicious content found.
  - file: PKGBUILD
    status: safe
    summary: Standard Electron app PKGBUILD with no malicious elements.
  - file: proton-mail.sh
    status: safe
    summary: Standard Electron app launcher, no security issues.
---

Materializing proton-mail from local mirror...
Materialized proton-mail
Analyzing proton-mail AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` will only source the PKGBUILD, executing its top-level code. The top-level code consists solely of variable assignments (pkgname, pkgver, pkgrel, etc.) and function definitions. There are no command substitutions, backtick executions, eval statements, or any other code that would execute arbitrary commands during source. All potentially dangerous operations (yarn install, building, packaging, file copying) are confined to the `prepare()`, `build()`, `check()`, and `package()` functions, which are not invoked by `--printsrcinfo`. The source array defines a standard tarball from the official upstream GitHub repository, and checksums are provided (not SKIP). There is no obfuscation, no unexpected network requests, and no exfiltration attempts at the top level.
</details>
<evidence></evidence>
<summary>No dangerous top-level code execution.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code execution.
Reviewing the 9 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/9] Reviewing .SRCINFO...
[0/9] Reviewing .SRCINFO, LICENSE...
[0/9] Reviewing .SRCINFO, LICENSE, .nvchecker.toml...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a plain-text ISC license file, containing only standard license text. There is no executable code, no network requests, no obfuscation, and no system modifications. It presents no security concerns.
</details>
<evidence></evidence>
<summary>Standard license file, no security issues.</summary>
</security_assessment>

[1/9] Reviewing .SRCINFO, .nvchecker.toml...
+ Reviewed LICENSE. Status: SAFE -- Standard license file, no security issues.
[1/9] Reviewing .SRCINFO, .nvchecker.toml, LICENSE...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a standard AUR metadata file. It declares package name, version, dependencies, source URLs (all from the official ProtonMail GitHub repository with a pinned tag), and checksums (b2sums, not SKIP). There is no obfuscated code, network requests, dangerous commands, or any deviation from normal packaging practices. No security concerns are present.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file with no issues.</summary>
</security_assessment>

[1/9] Reviewing .SRCINFO, .nvchecker.toml, LICENSE, LICENSES/GPL-3.0-or-later.txt...
[2/9] Reviewing .nvchecker.toml, LICENSE, LICENSES/GPL-3.0-or-later.txt...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file with no issues.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard nvchecker configuration file used to monitor upstream releases of the proton-mail package. It queries the official Proton Mail version manifest over HTTPS and extracts the release version using a jq filter. There are no suspicious commands, obfuscated strings, external downloads, or attempts to access unrelated data. The URL points to the software project's own official domain, and the configuration performs only read-only version lookups, which is normal and expected for a packaging version checker.
</details>
<evidence></evidence>
<summary>Legitimate upstream version-checking configuration; no malicious behavior detected.</summary>
</security_assessment>

[2/9] Reviewing .nvchecker.toml, LICENSE, LICENSES/GPL-3.0-or-later.txt, PKGBUILD...
[3/9] Reviewing LICENSE, LICENSES/GPL-3.0-or-later.txt, PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Legitimate upstream version-checking configuration; no malicious behavior detected.
LLM auditresponse for GPL-3.0-or-later.txt:
<security_assessment>
<decision>SAFE</decision>
<details>
This file contains the standard GNU General Public License version 3 text, which is purely legal boilerplate and contains no executable content. It is a license file commonly included in packages to comply with distribution requirements. There are no network requests, file operations, or any code that could perform malicious actions. The content is identical to the canonical GPL-3.0 text published by the Free Software Foundation. No security concerns are present.
</details>
<evidence>
</evidence>
<summary>
Standard GPL-3.0 license text; no executable or malicious content.</summary>
</security_assessment>

[3/9] Reviewing LICENSE, LICENSES/GPL-3.0-or-later.txt, PKGBUILD, REUSE.toml...
[4/9] Reviewing LICENSE, PKGBUILD, REUSE.toml...
+ Reviewed LICENSES/GPL-3.0-or-later.txt. Status: SAFE -- Standard GPL-3.0 license text; no executable or malicious content.
LLM auditresponse for REUSE.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a REUSE configuration file used for software licensing compliance. It only declares which paths are covered by certain SPDX copyright and license annotations. There is no executable code, no network activity, no file manipulation, and no obfuscated content. The paths referenced (PKGBUILD, README.md, keys, etc.) are ordinary package repository files. No security concerns are present.
</details>
<evidence>
</evidence>
<summary>
REUSE.toml is inert licensing metadata; no malicious behavior found.</summary>
</security_assessment>

[5/9] Reviewing LICENSE, PKGBUILD...
+ Reviewed REUSE.toml. Status: SAFE -- REUSE.toml is inert licensing metadata; no malicious behavior found.
[5/9] Reviewing LICENSE, PKGBUILD, proton-mail.desktop...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard ISC license template, typically used for Arch Linux or similar project contributions. It contains no executable code, no instructions for network operations, no obfuscation, and no system-level manipulations. It is purely a legal text document distributed with the package. There is no evidence of supply-chain attack or malicious behavior.
</details>
<evidence></evidence>
<summary>Standard license file; no security concerns.</summary>
</security_assessment>

[5/9] Reviewing LICENSE, PKGBUILD, proton-mail.desktop, proton-mail.sh...
[6/9] Reviewing PKGBUILD, proton-mail.desktop, proton-mail.sh...
+ Reviewed LICENSE. Status: SAFE -- Standard license file; no security concerns.
LLM auditresponse for proton-mail.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard desktop entry file for the Proton Mail application. It defines the application name, comment, icon, category, and the command used to launch the application (`Exec=proton-mail %U`). The `%U` field is a normal desktop-entry placeholder indicating that Proton Mail should handle URLs or files passed to it.

There are no suspicious commands, network requests, obfuscated content, or file-system modifications. Registering as a handler for the `mailto:` scheme via `MimeType=x-scheme-handler/mailto;` is expected behavior for an email application. No security issues are present.
</details>
<evidence>
</evidence>
<summary>
Standard desktop entry for Proton Mail; no malicious or suspicious content found.</summary>
</security_assessment>

[7/9] Reviewing PKGBUILD, proton-mail.sh...
+ Reviewed proton-mail.desktop. Status: SAFE -- Standard desktop entry for Proton Mail; no malicious or suspicious content found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Arch packaging practices for an Electron-based application. It fetches the upstream source from the official ProtonMail GitHub repository with a pinned version tag and provides strong b2sums for integrity verification. The build process installs dependencies via yarn (with `SENTRYCLI_SKIP_DOWNLOAD=1` to avoid an unnecessary binary download) and packages the application normally. There is no obfuscated code, no unexpected network requests, no execution of untrusted fetched content, and no system modifications outside the package's own scope. The only modification beyond standard install is adjusting the workspace configuration to build only the inbox-desktop app, which is a packaging optimization. No supply-chain attack indicators were found.
</details>
<evidence></evidence>
<summary>Standard Electron app PKGBUILD with no malicious elements.</summary>
</security_assessment>

[8/9] Reviewing proton-mail.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard Electron app PKGBUILD with no malicious elements.
LLM auditresponse for proton-mail.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Electron application launcher script used in Arch Linux packages.  `@ELECTRON@` is a placeholder substituted during packaging with the actual Electron binary path. The script simply launches `/usr/share/proton-mail/app.asar` with any passed arguments.  There are no network requests, obfuscated code, file system modifications outside the install directories, or other malicious behaviors.
</details>
<evidence></evidence>
<summary>Standard Electron app launcher, no security issues.</summary>
</security_assessment>

[9/9] Reviewing ...
+ Reviewed proton-mail.sh. Status: SAFE -- Standard Electron app launcher, no security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 30,412
  Completion Tokens: 2,883
  Total Tokens: 33,295
  Total Cost: $0.001013
  Execution Time: 39.09 seconds

Final Status: SAFE


No issues found.
