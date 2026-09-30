---
package: softmaker-office-2026-bin
pkgver: 1504
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 88645
completion_tokens: 4938
total_tokens: 93583
cost: 0.00481373606
execution_time: 82.16
files_reviewed: 14
files_skipped: 0
maintainer_files: 14
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-28T23:26:45Z
file_verdicts:
  - file: LICENSES/0BSD.txt
    status: safe
    summary: Standard license text, no security issues.
  - file: .gitignore
    status: safe
    summary: Standard gitignore file for AUR build artifacts.
  - file: LICENSES/0BSD.txt
    status: safe
    summary: Plain 0BSD license text, no executable or suspicious content.
  - file: LICENSES/LicenseRef-custom.md
    status: safe
    summary: License text only; no code, no malicious behavior detected.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR binary package with no malicious indicators.
  - file: planmaker-2026.desktop
    status: safe
    summary: Standard .desktop metadata file, no malicious content.
  - file: planmaker26
    status: safe
    summary: Safe wrapper script executing the application binary.
  - file: REUSE.toml
    status: safe
    summary: Metadata-only REUSE config file, no malicious code.
  - file: presentations-2026.desktop
    status: safe
    summary: Standard application .desktop file, no security concerns.
  - file: softmaker-office-2026.xml
    status: safe
    summary: Benign MIME type metadata file; no security concerns.
  - file: textmaker-2026.desktop
    status: safe
    summary: Benign desktop entry file with no security concerns.
  - file: presentations26
    status: safe
    summary: Standard launcher script, no security issues.
  - file: textmaker26
    status: safe
    summary: Standard wrapper script, no malicious content.
  - file: .SRCINFO
    status: safe
    summary: Standard metadata file, no malicious content.
---

Materializing softmaker-office-2026-bin from local mirror...
Materialized softmaker-office-2026-bin
Analyzing softmaker-office-2026-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only variable and array assignments at the global scope. No command substitutions, function calls, or dangerous commands (such as `eval`, `curl`, `wget`, or `base64`) are present outside of the `package()` function. The `source` array uses a simple string substitution (`${pkgver//./-}`) which is a standard shell parameter expansion, not an executed command. Since `makepkg --printsrcinfo` only sources the file and executes top‑level code, there is no risk of malicious execution at this step.
</details>
<evidence></evidence>
<summary>No dangerous top‑level code; safe to parse.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top‑level code; safe to parse.
Reviewing the 14 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/14] Reviewing .gitignore...
[0/14] Reviewing .gitignore, LICENSES/0BSD.txt...
[0/14] Reviewing .gitignore, LICENSES/0BSD.txt, .SRCINFO...
LLM auditresponse for 0BSD.txt:
<security_assessment>
<decision>SAFE</decision>
<details>
This file contains only the standard text of the 0BSD (Zero-Clause BSD) license. It is a plain text, license-only file with no executable content, no instructions, no network requests, and no system modifications. There is no evidence of malicious or suspicious behavior.
</details>
<evidence>
</evidence>
<summary>Standard license text, no security issues.</summary>
</security_assessment>

[0/14] Reviewing .gitignore, LICENSES/0BSD.txt, .SRCINFO, LICENSES/0BSD.txt...
[1/14] Reviewing .gitignore, .SRCINFO, LICENSES/0BSD.txt...
+ Reviewed LICENSES/0BSD.txt. Status: SAFE -- Standard license text, no security issues.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `.gitignore` is a standard configuration file for Git repositories. It lists patterns to ignore directories like `/pkg` and `/src`, as well as common archive files (`/*.tar.zst`, `/*.tgz`). These are typical build artifacts in Arch Linux AUR packaging. There is no executable code, no network requests, no obfuscation, and no deviation from normal packaging practices. The file poses no security risk.
</details>
<evidence></evidence>
<summary>Standard gitignore file for AUR build artifacts.</summary>
</security_assessment>

[2/14] Reviewing .SRCINFO, LICENSES/0BSD.txt...
+ Reviewed .gitignore. Status: SAFE -- Standard gitignore file for AUR build artifacts.
[2/14] Reviewing .SRCINFO, LICENSES/0BSD.txt, LICENSES/LicenseRef-custom.md...
LLM auditresponse for 0BSD.txt:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is the standard 0BSD license text. It contains only a copyright placeholder and the permissive license terms. There is no code, no executable content, no network requests, no file operations, and no obfuscation. It is an ordinary license file included in the package for compliance purposes. No supply-chain attack indicators are present.
</details>
<evidence>
</evidence>
<summary>
Plain 0BSD license text, no executable or suspicious content.</summary>
</security_assessment>

[2/14] Reviewing .SRCINFO, LICENSES/0BSD.txt, LICENSES/LicenseRef-custom.md, PKGBUILD...
[3/14] Reviewing .SRCINFO, LICENSES/LicenseRef-custom.md, PKGBUILD...
+ Reviewed LICENSES/0BSD.txt. Status: SAFE -- Plain 0BSD license text, no executable or suspicious content.
LLM auditresponse for LicenseRef-custom.md:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard end-user license agreement (EULA) for SoftMaker Office. It contains only legal text outlining usage rights, warranties, and restrictions. There is no executable code, no scripts, no suspicious network operations, and no file manipulations. The mention of license verification via an internet connection is an upstream application functionality described in the license, not evidence of a supply-chain attack. This file poses no security risk.
</details>
<evidence>
</evidence>
<summary>License text only; no code, no malicious behavior detected.</summary>
</security_assessment>

[3/14] Reviewing .SRCINFO, LICENSES/LicenseRef-custom.md, PKGBUILD, REUSE.toml...
[4/14] Reviewing .SRCINFO, PKGBUILD, REUSE.toml...
+ Reviewed LICENSES/LicenseRef-custom.md. Status: SAFE -- License text only; no code, no malicious behavior detected.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a straightforward packaging script for the proprietary SoftMaker Office 2026 suite. It downloads the upstream tarball from softmaker.net (using HTTP, not HTTPS, which is a minor hygiene concern but not malicious), verifies it with MD5 and SHA512 checksums, and installs the bundled binaries, icons, desktop files, MIME definitions, and licenses into standard system paths. All operations are standard for a binary AUR package: extracting the archive with `bsdtar`, setting root ownership, installing helper wrapper scripts from the `$srcdir`, and creating symbolic links for icons and MIME types. There are no dynamic downloads, no eval/base64/obfuscation, no attempts to exfiltrate data, no modification of files outside the package scope, and no unexpected system calls. The only network source is the declared upstream URL, and the checksums are present (albeit not strictly required for a VCS source). Nothing in this file deviates from normal packaging practices or exhibits supply-chain attack indicators.
</details>
<evidence></evidence>
<summary>Standard AUR binary package with no malicious indicators.</summary>
</security_assessment>

[4/14] Reviewing .SRCINFO, PKGBUILD, REUSE.toml, planmaker-2026.desktop...
[5/14] Reviewing .SRCINFO, REUSE.toml, planmaker-2026.desktop...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR binary package with no malicious indicators.
LLM auditresponse for planmaker-2026.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard .desktop file for the PlanMaker spreadsheet application. It contains only metadata definitions (name, translations, categories, MIME types, execution path) with no executable code, network requests, obfuscation, or system modifications. The `Exec`, `TryExec`, `Icon`, and `Path` fields all reference legitimate application paths within the expected installation directory. There is no evidence of supply chain attack or malicious intent.
</details>
<evidence></evidence>
<summary>Standard .desktop metadata file, no malicious content.</summary>
</security_assessment>

[5/14] Reviewing .SRCINFO, REUSE.toml, planmaker-2026.desktop, planmaker26...
[6/14] Reviewing .SRCINFO, REUSE.toml, planmaker26...
+ Reviewed planmaker-2026.desktop. Status: SAFE -- Standard .desktop metadata file, no malicious content.
LLM auditresponse for planmaker26:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a simple wrapper that runs the application binary with the provided arguments. It contains no network requests, file operations, encoded commands, or any other suspicious behavior. This is a standard and expected pattern for launching an installed application in a Linux package.
</details>
<evidence></evidence>
<summary>Safe wrapper script executing the application binary.</summary>
</security_assessment>

[6/14] Reviewing .SRCINFO, REUSE.toml, planmaker26, presentations-2026.desktop...
[7/14] Reviewing .SRCINFO, REUSE.toml, presentations-2026.desktop...
+ Reviewed planmaker26. Status: SAFE -- Safe wrapper script executing the application binary.
LLM auditresponse for REUSE.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a REUSE.toml configuration file that declares SPDX license and copyright annotations for the packaging files and upstream assets. It contains no executable logic, no network requests, no obfuscated code, and no system modification commands. It is purely metadata intended for license compliance automation. No security concerns are present.
</details>
<evidence></evidence>
<summary>Metadata-only REUSE config file, no malicious code.</summary>
</security_assessment>

[8/14] Reviewing .SRCINFO, presentations-2026.desktop...
+ Reviewed REUSE.toml. Status: SAFE -- Metadata-only REUSE config file, no malicious code.
[8/14] Reviewing .SRCINFO, presentations-2026.desktop, presentations26...
LLM auditresponse for presentations-2026.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard .desktop file for the SoftMaker Presentations 2026 application. It contains application metadata (name, descriptions in many languages), categories, MIME types, and launcher configuration. There are no network requests, no obfuscated code, no dangerous commands, and no system modifications beyond what is normal for a desktop entry file. The Exec line points to a legitimate binary path (/usr/bin/presentations26) and the Path is set to the standard installation directory (/usr/share/office2026). This file is entirely benign and follows standard freedesktop.org desktop entry specifications.
</details>
<evidence></evidence>
<summary>Standard application .desktop file, no security concerns.</summary>
</security_assessment>

[8/14] Reviewing .SRCINFO, presentations-2026.desktop, presentations26, softmaker-office-2026.xml...
[9/14] Reviewing .SRCINFO, presentations26, softmaker-office-2026.xml...
+ Reviewed presentations-2026.desktop. Status: SAFE -- Standard application .desktop file, no security concerns.
LLM auditresponse for softmaker-office-2026.xml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard freedesktop.org shared MIME-info XML definition. It declares MIME types, localized comments, icon names, glob patterns, and subclass relationships for the SoftMaker Office document formats (TextMaker, PlanMaker, Presentations) and Microsoft Office compatibility formats. The content is purely declarative metadata. It contains no scripts, network calls, encoded payloads, file operations, or any other executable logic. There is no evidence of supply-chain tampering or malicious behavior.
</details>
<evidence></evidence>
<summary>Benign MIME type metadata file; no security concerns.</summary>
</security_assessment>

[9/14] Reviewing .SRCINFO, presentations26, softmaker-office-2026.xml, textmaker-2026.desktop...
[10/14] Reviewing .SRCINFO, presentations26, textmaker-2026.desktop...
+ Reviewed softmaker-office-2026.xml. Status: SAFE -- Benign MIME type metadata file; no security concerns.
LLM auditresponse for textmaker-2026.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Linux desktop entry file for the TextMaker 2026 word processor. It contains only metadata fields such as application name, description, categories, MIME types, icon, executable path, and localized strings. There are no commands, scripts, network requests, file operations, or any encoded/obfuscated content. The file follows the Desktop Entry Specification and poses no supply-chain security risk.
</details>
<evidence></evidence>
<summary>Benign desktop entry file with no security concerns.</summary>
</security_assessment>

[10/14] Reviewing .SRCINFO, presentations26, textmaker-2026.desktop, textmaker26...
[11/14] Reviewing .SRCINFO, presentations26, textmaker26...
+ Reviewed textmaker-2026.desktop. Status: SAFE -- Benign desktop entry file with no security concerns.
LLM auditresponse for presentations26:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a wrapper script for launching SoftMaker Presentations. It checks the file extension (case-insensitive) and passes the argument to `/usr/share/office2026/presentations` with optional `-S` flag for presentation file types. No obfuscation, network activity, dangerous commands, or unexpected system modifications are present. The quoting conventions (using `&quot;` HTML entities in the provided text, likely a rendering artifact) are unconventional but not malicious—simply a launch helper. The script does exactly what a normal application launcher does.
</details>
<evidence></evidence>
<summary>Standard launcher script, no security issues.</summary>
</security_assessment>

[12/14] Reviewing .SRCINFO, textmaker26...
+ Reviewed presentations26. Status: SAFE -- Standard launcher script, no security issues.
LLM auditresponse for textmaker26:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a simple wrapper script that launches the TextMaker binary located at `/usr/share/office2026/textmaker` with the provided arguments. It contains no obfuscation, network requests, file manipulation, or any other suspicious activity. This is a standard packaging practice for providing a convenient command-line entry point.
</details>
<evidence>
</evidence>
<summary>Standard wrapper script, no malicious content.</summary>
</security_assessment>

[13/14] Reviewing .SRCINFO...
+ Reviewed textmaker26. Status: SAFE -- Standard wrapper script, no malicious content.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a metadata descriptor for the Arch User Repository (AUR) package `softmaker-office-2026-bin`. It lists package dependencies, source locations, and checksums (md5 and sha512). All source files are either local (e.g., desktop files, executable wrappers) or a tarball from the official upstream domain `softmaker.net`. No suspicious network hosts, obfuscated content, or dangerous commands are present. As a metadata file, it does not execute any code and follows standard AUR packaging practices.
</details>
<evidence></evidence>
<summary>Standard metadata file, no malicious content.</summary>
</security_assessment>

[14/14] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata file, no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 88,645
  Completion Tokens: 4,938
  Total Tokens: 93,583
  Total Cost: $0.004814
  Execution Time: 82.16 seconds

Final Status: SAFE


No issues found.
