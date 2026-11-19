---
package: wiso-steuer-2026
pkgver: 33.10.3640
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 29200
completion_tokens: 4930
total_tokens: 34130
cost: 0.0064768400
execution_time: 45.34
files_reviewed: 11
files_skipped: 0
maintainer_files: 11
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 1
injection_attempts: 0
date: 2026-10-09T11:06:15Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file with no security concerns.
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config for version tracking.
  - file: .editorconfig
    status: safe
    summary: Standard editor configuration file with no security issues.
  - file: .SRCINFO
    status: safe
    summary: Metadata file, no malicious content found.
  - file: LICENSE
    status: safe
    summary: License file with no security concerns.
  - file: REUSE.toml
    status: safe
    summary: Standard REUSE configuration, no security issues.
  - file: LICENSE
    status: safe
    summary: Standard license file, no security concerns.
  - file: wiso-steuer-2026.desktop
    status: safe
    summary: Standard desktop file, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard Wine packaging, no malicious content found.
  - file: wiso-steuer-2026.install
    status: safe
    summary: Benign install script with only informational messages.
  - file: wiso-steuer-2026.bash
    status: safe
    summary: Standard Wine launch script for WISO Steuer.
---

Materializing wiso-steuer-2026 from local mirror...
Materialized wiso-steuer-2026
Analyzing wiso-steuer-2026 AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global scope contains only standard variable assignments (including arrays for `source`, `depends`, etc.) and function definitions (`prepare()`, `package()`). The only inline command substitution is in the definition of `_installer_name`, which runs `awk` on the fixed version string `pkgver=33.10.3640` to produce `333640`. This does not perform any network operations, execute fetched code, or access sensitive system resources. No malicious top-level code is present; `makepkg --printsrcinfo` will only source this file and print metadata, which is safe.
</details>
<evidence></evidence>
<summary>No dangerous top-level code; sourcing is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code; sourcing is safe.
Note: 1 remote source(s) have no checksum (sha256sums=SKIP), so the bytes are not verifiable: https://update1.buhl-data.com/Steuer/2026/Handbuch_WISO_Steuer_Win.pdf
Reviewing the 11 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/11] Reviewing .SRCINFO...
[0/11] Reviewing .SRCINFO, .editorconfig...
[0/11] Reviewing .SRCINFO, .editorconfig, .gitignore...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard .gitignore file used by Git to ignore certain files and directories during version control. It contains typical patterns for ignoring IDE configuration directories (`.vscode/`), build artifacts (`/src/`, `/pkg/`), and various file extensions (`.dll`, `.exe`, `.log`, `.pdf`, `.pkg.*`, `.tar.*`, `.zip`). There is no executable code, no network requests, no obfuscation, and no system modification commands. The file poses no security risk.</details>
<evidence></evidence>
<summary>Standard .gitignore file with no security concerns.</summary>
</security_assessment>

[0/11] Reviewing .SRCINFO, .editorconfig, .gitignore, .nvchecker.toml...
[1/11] Reviewing .SRCINFO, .editorconfig, .nvchecker.toml...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore file with no security concerns.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `.nvchecker.toml` is a configuration file for the `nvchecker` tool, used to check for new upstream releases. It defines a regex-based version detection method for the `wiso-steuer-2026` package, pointing to the official Buhl shop updates page (`https://www.buhl.de/shop/updates?category=9`). The regex patterns are used solely to parse version information from the HTML page. No code execution, network requests to arbitrary hosts, data exfiltration, or obfuscation is present. This is a standard and legitimate use of `nvchecker` for monitoring upstream releases.
</details>
<evidence></evidence>
<summary>Standard nvchecker config for version tracking.</summary>
</security_assessment>

[1/11] Reviewing .SRCINFO, .editorconfig, .nvchecker.toml, LICENSE...
[2/11] Reviewing .SRCINFO, .editorconfig, LICENSE...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config for version tracking.
LLM auditresponse for .editorconfig:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.editorconfig` file is a standard configuration file for text editors, specifying formatting rules (charset, end_of_line, indentation, etc.). It contains no executable code, no network requests, no obfuscation, and no system modifications. The content is entirely benign and follows normal project practices.</details>
<evidence></evidence>
<summary>Standard editor configuration file with no security issues.</summary>
</security_assessment>

[3/11] Reviewing .SRCINFO, LICENSE...
+ Reviewed .editorconfig. Status: SAFE -- Standard editor configuration file with no security issues.
[3/11] Reviewing .SRCINFO, LICENSE, LICENSE...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a metadata file generated by `makepkg --printsrcinfo`. It contains no executable code. The declared sources point to the official domains of Buhl (buhl.de and buhl-data.com), the publisher of WISO Steuer. The main executable source has a SHA512 checksum, enabling verification. The PDF manual's checksum is set to SKIP, which is a common practice for binary artifacts that may vary, but does not introduce a supply-chain attack vector on its own. The remaining files (bash wrapper and desktop file) have checksums provided. There are no suspicious URLs, obfuscation, or commands in this file. The package dependencies (wine, etc.) are standard for running Windows applications on Linux. No evidence of malicious behavior.
</details>
<evidence>
</evidence>
<summary>Metadata file, no malicious content found.</summary>
</security_assessment>

[4/11] Reviewing LICENSE, LICENSE...
+ Reviewed .SRCINFO. Status: SAFE -- Metadata file, no malicious content found.
[4/11] Reviewing LICENSE, LICENSE, PKGBUILD...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard ISC license text commonly used in open source projects. It contains no executable code, no network requests, no file operations, and no obfuscated or encoded content. There is no evidence of malicious behavior or deviation from standard packaging practices.</details>
<evidence></evidence>
<summary>License file with no security concerns.</summary>
</security_assessment>

[5/11] Reviewing LICENSE, PKGBUILD...
+ Reviewed LICENSE. Status: SAFE -- License file with no security concerns.
[5/11] Reviewing LICENSE, PKGBUILD, REUSE.toml...
LLM auditresponse for REUSE.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `REUSE.toml` is a standard configuration file for the [REUSE](https://reuse.software/) initiative, which automates the management of copyright and licensing metadata. It defines a version and annotations mapping file patterns to a copyright holder and license identifier (0BSD). There is no executable code, no network access, no system modifications, and no obfuscation. This file poses no security risk.
</details>
<evidence></evidence>
<summary>Standard REUSE configuration, no security issues.</summary>
</security_assessment>

[6/11] Reviewing LICENSE, PKGBUILD...
+ Reviewed REUSE.toml. Status: SAFE -- Standard REUSE configuration, no security issues.
[6/11] Reviewing LICENSE, PKGBUILD, wiso-steuer-2026.bash...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard open-source license (ISC-style). It contains no executable code, no network requests, no obfuscated content, and no instructions. It is purely a legal notice and poses no security risk.
</details>
<evidence></evidence>
<summary>Standard license file, no security concerns.</summary>
</security_assessment>

[6/11] Reviewing LICENSE, PKGBUILD, wiso-steuer-2026.bash, wiso-steuer-2026.desktop...
[7/11] Reviewing PKGBUILD, wiso-steuer-2026.bash, wiso-steuer-2026.desktop...
+ Reviewed LICENSE. Status: SAFE -- Standard license file, no security concerns.
LLM auditresponse for wiso-steuer-2026.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard desktop entry file (`.desktop` file) used by Linux desktop environments to define application launcher metadata. It contains only static fields such as `Name`, `Comment`, `Exec`, `Icon`, and `Categories`. There are no commands, scripts, network requests, or obfuscated content. The file does not deviate from normal packaging practices and poses no security risk.
</details>
<evidence></evidence>
<summary>Standard desktop file, no security issues.</summary>
</security_assessment>

[7/11] Reviewing PKGBUILD, wiso-steuer-2026.bash, wiso-steuer-2026.desktop, wiso-steuer-2026.install...
[8/11] Reviewing PKGBUILD, wiso-steuer-2026.bash, wiso-steuer-2026.install...
+ Reviewed wiso-steuer-2026.desktop. Status: SAFE -- Standard desktop file, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a Wine-based Windows application. It downloads the official installer from the vendor's domain (buhl.de) and a PDF manual from another vendor subdomain (buhl-data.com). The prepare phase extracts the MSI installer, and the package phase installs the extracted files, documentation, icons, and launcher scripts. No signs of obfuscation, unexpected network requests, or dangerous commands (eval, curl|bash, base64, etc.) are present. The `SKIP` checksum on the PDF is not inherently malicious; it's a common practice for files where the maintainer does not pin a checksum. All operations serve the package's stated purpose of running the German tax software under Wine. No evidence of supply-chain attack or malicious injection.
</details>
<evidence></evidence>
<summary>Standard Wine packaging, no malicious content found.</summary>
</security_assessment>

[9/11] Reviewing wiso-steuer-2026.bash, wiso-steuer-2026.install...
+ Reviewed PKGBUILD. Status: SAFE -- Standard Wine packaging, no malicious content found.
LLM auditresponse for wiso-steuer-2026.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard AUR .install script containing only informational messages printed to stderr during package installation and removal. The `post_install` function warns users that Wine is used to run this Windows application, points to the Wine AppDB for known issues, and notes possible crashes when submitting tax declarations. The `post_remove` function advises users to backup their Wine prefix data before removing the package to preserve licenses. No network requests, file modifications, command execution (beyond `cat`), obfuscation, or any other malicious behavior is present. The script performs exactly the expected function of displaying messages to the terminal; it contains no supply-chain attack indicators.
</details>
<evidence></evidence>
<summary>Benign install script with only informational messages.</summary>
</security_assessment>

[10/11] Reviewing wiso-steuer-2026.bash...
+ Reviewed wiso-steuer-2026.install. Status: SAFE -- Benign install script with only informational messages.
LLM auditresponse for wiso-steuer-2026.bash:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard Wine launch wrapper for the Windows application WISO Steuer 2026. It performs routine setup tasks: creating a Wine prefix (if missing), installing corefonts via winetricks, setting up symlinks to the installed application and data directories, and finally launching the Windows executable with Wine. There are no network requests initiated directly by this script (winetricks may download fonts from legitimate upstream servers as part of its normal operation). No obfuscated code, dangerous commands (eval, base64, curl, wget), or unusual file operations are present. The script respects an environment variable for user overrides and uses well-known Wine tools. The behavior is consistent with the stated purpose of running a Wine-based application.
</details>
<evidence></evidence>
<summary>Standard Wine launch script for WISO Steuer.</summary>
</security_assessment>

[11/11] Reviewing ...
+ Reviewed wiso-steuer-2026.bash. Status: SAFE -- Standard Wine launch script for WISO Steuer.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 29,200
  Completion Tokens: 4,930
  Total Tokens: 34,130
  Total Cost: $0.006477
  Execution Time: 45.34 seconds

Final Status: SAFE


No issues found.
