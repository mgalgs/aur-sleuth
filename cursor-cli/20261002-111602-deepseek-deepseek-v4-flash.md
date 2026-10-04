---
package: cursor-cli
pkgver: 2026.10.01.1.e373342
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 44489
completion_tokens: 5052
total_tokens: 49541
cost: 0.002292906
execution_time: 96.4
files_reviewed: 12
files_skipped: 0
maintainer_files: 12
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-02T11:16:02Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Metadata file with no executable content.
  - file: Cursor-TOS
    status: safe
    summary: Legal document only – no executable code or security threats.
  - file: LICENSE
    status: safe
    summary: Standard license file with no security concerns.
  - file: LICENSE
    status: safe
    summary: Standard license file, no security concerns.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore for AUR packaging; no security concerns.
  - file: LICENSES/LicenseRef-Cursor.txt
    status: safe
    summary: "Safe: plain text terms of service, no executable code."
  - file: REUSE.toml
    status: safe
    summary: REUSE.toml is benign license metadata; no security issues found.
  - file: cursor-cli.install
    status: safe
    summary: Standard post-install message, no malicious code.
  - file: auto-update-block.patch
    status: safe
    summary: Patch blocks auto-updates; no malicious behavior.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD for cursor-cli, no malicious content.
  - file: nvchecker.toml
    status: safe
    summary: Standard version-check configuration, no malicious content.
  - file: update-pkgver.sh
    status: safe
    summary: Standard AUR version-update helper; no malicious behavior found.
---

Materializing cursor-cli from local mirror...
Materialized cursor-cli
Analyzing cursor-cli AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
No code executes in the global scope beyond standard variable definitions and array assignments. All operational logic (patching, installation) is confined to `prepare()` and `package()` functions, which are **not** invoked by `makepkg --printsrcinfo`. There are no top-level command substitutions, external network calls, or dangerous operations that could execute while the PKGBUILD is sourced. The file is safe to parse for metadata.
</details>
<evidence></evidence>
<summary>No global-scope execution risk; safe to parse.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No global-scope execution risk; safe to parse.
Reviewing the 12 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/12] Reviewing .SRCINFO...
[0/12] Reviewing .SRCINFO, Cursor-TOS...
[0/12] Reviewing .SRCINFO, Cursor-TOS, .gitignore...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a `.SRCINFO` metadata file for an AUR package. It contains only package declarations: package name, version, description, dependencies, architecture-specific source URLs from the official `downloads.cursor.com` domain, and checksums (b2sums) for all sources. There is no executable code, no obfuscation, and no dangerous operations. The source references are to the official Cursor CLI distribution, which is expected. The file does not contain any signs of a supply-chain attack.
</details>
<evidence></evidence>
<summary>Metadata file with no executable content.</summary>
</security_assessment>

[0/12] Reviewing .SRCINFO, Cursor-TOS, .gitignore, LICENSE...
[1/12] Reviewing Cursor-TOS, .gitignore, LICENSE...
+ Reviewed .SRCINFO. Status: SAFE -- Metadata file with no executable content.
LLM auditresponse for Cursor-TOS:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a Terms of Service document for the Cursor software platform by Anysphere, Inc. It contains standard legal disclaimers, usage restrictions, payment terms, privacy policies, and dispute resolution clauses. There is no executable code, no obfuscated content, no network requests, no file operations, and no system modifications. It is purely a contractual text document with no security concerns.
</details>
<evidence>
</evidence>
<summary>Legal document only – no executable code or security threats.</summary>
</security_assessment>

[2/12] Reviewing .gitignore, LICENSE...
+ Reviewed Cursor-TOS. Status: SAFE -- Legal document only – no executable code or security threats.
[2/12] Reviewing .gitignore, LICENSE, LICENSE...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a plain text license file (ISC-style) commonly used by Arch Linux contributors. It contains no executable code, no obfuscation, no network requests, and no system-modifying instructions. There is no security concern whatsoever.
</details>
<evidence></evidence>
<summary>Standard license file with no security concerns.</summary>
</security_assessment>

[2/12] Reviewing .gitignore, LICENSE, LICENSE, LICENSES/LicenseRef-Cursor.txt...
[3/12] Reviewing .gitignore, LICENSE, LICENSES/LicenseRef-Cursor.txt...
+ Reviewed LICENSE. Status: SAFE -- Standard license file with no security concerns.
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard permissive software license (ISC-style) attributed to "Arch Linux Contributors". It contains no executable code, no network requests, no file operations, and no hidden or obfuscated content. It is a purely informational legal document. There is no evidence of any supply-chain attack or malicious behavior.
</details>
<evidence></evidence>
<summary>Standard license file, no security concerns.</summary>
</security_assessment>

[4/12] Reviewing .gitignore, LICENSES/LicenseRef-Cursor.txt...
+ Reviewed LICENSE. Status: SAFE -- Standard license file, no security concerns.
[4/12] Reviewing .gitignore, LICENSES/LicenseRef-Cursor.txt, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file used in an Arch User Repository (AUR) package repository. It contains only ignore patterns for common build artifacts and local state files that should not be committed to version control:

- `src/` and `pkg/` — makepkg build directories
- `*.pkg.tar*` — built package files
- Various archive extensions (`*.tar.gz`, `*.tar.xz`, etc.) — downloaded upstream tarballs
- `*.log` — build logs
- `oldver.json` / `newver.json` — nvchecker local version records

There is no executable content, no network activity, no obfuscation, no file-manipulation logic, and no system-level operations. This file poses no security risk whatsoever. It is purely a maintenance/version-control hygiene artifact.
</details>
<evidence></evidence>
<summary>Standard .gitignore for AUR packaging; no security concerns.</summary>
</security_assessment>

[4/12] Reviewing .gitignore, LICENSES/LicenseRef-Cursor.txt, PKGBUILD, REUSE.toml...
[5/12] Reviewing LICENSES/LicenseRef-Cursor.txt, PKGBUILD, REUSE.toml...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore for AUR packaging; no security concerns.
LLM auditresponse for LicenseRef-Cursor.txt:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a plain-text Terms of Service document for the Cursor software platform. It contains no executable code, scripts, macros, or embedded commands. There are no obfuscated strings, network requests, file operations, or system modifications. As a legal agreement, it poses no security risk.
</details>
<evidence></evidence>
<summary>Safe: plain text terms of service, no executable code.</summary>
</security_assessment>

[5/12] Reviewing LICENSES/LicenseRef-Cursor.txt, PKGBUILD, REUSE.toml, auto-update-block.patch...
[6/12] Reviewing PKGBUILD, REUSE.toml, auto-update-block.patch...
+ Reviewed LICENSES/LicenseRef-Cursor.txt. Status: SAFE -- Safe: plain text terms of service, no executable code.
LLM auditresponse for REUSE.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
REUSE.toml is a metadata configuration file for the REUSE license compliance tool. It contains only SPDX copyright and license annotations for package files and declares the upstream Cursor Terms of Service as the installed license. No commands, scripts, network operations, file modifications, or executable content are present. There is no evidence of malicious behavior or supply-chain compromise.
</details>
<evidence></evidence>
<summary>REUSE.toml is benign license metadata; no security issues found.</summary>
</security_assessment>

[6/12] Reviewing PKGBUILD, REUSE.toml, auto-update-block.patch, cursor-cli.install...
[7/12] Reviewing PKGBUILD, auto-update-block.patch, cursor-cli.install...
+ Reviewed REUSE.toml. Status: SAFE -- REUSE.toml is benign license metadata; no security issues found.
LLM auditresponse for cursor-cli.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Arch Linux .install script that only outputs a message to the user during package installation or upgrade. The `chmod` and `rm` commands are inside a heredoc (displayed as text), not executed. There are no network requests, no obfuscation, no execution of untrusted code, and no deviation from normal packaging practices.
</details>
<evidence>
</evidence>
<summary>Standard post-install message, no malicious code.</summary>
</security_assessment>

[7/12] Reviewing PKGBUILD, auto-update-block.patch, cursor-cli.install, nvchecker.toml...
[8/12] Reviewing PKGBUILD, auto-update-block.patch, nvchecker.toml...
+ Reviewed cursor-cli.install. Status: SAFE -- Standard post-install message, no malicious code.
LLM auditresponse for auto-update-block.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch modifies the cursor-agent script to block automatic updates. It adds a single line that creates the directory `$HOME/.local/share/cursor-agent/versions` and removes its execute permission (`chmod -x`). This is a common and benign technique to prevent an application from writing into that directory, thereby disabling its auto-update mechanism. There is no network activity, code execution from external sources, obfuscation, or any other indicator of a supply-chain attack. The change is consistent with the stated purpose ("Block cursor-agent auto-updates") and involves only a local file system operation on the user's home directory.
</details>
<evidence></evidence>
<summary>Patch blocks auto-updates; no malicious behavior.</summary>
</security_assessment>

[8/12] Reviewing PKGBUILD, auto-update-block.patch, nvchecker.toml, update-pkgver.sh...
[9/12] Reviewing PKGBUILD, nvchecker.toml, update-pkgver.sh...
+ Reviewed auto-update-block.patch. Status: SAFE -- Patch blocks auto-updates; no malicious behavior.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices. Sources are fetched from the official Cursor downloads domain with checksums provided. No obfuscated code, suspicious network requests, or dangerous commands (such as eval, curl|bash, or base64 decoding) are present. The prepare() function applies a checksummed patch to block auto-updates, and the package() function copies the prebuilt binaries to /opt/cursor-agent and creates a symlink. All operations are routine and expected for packaging a prebuilt CLI tool. No evidence of exfiltration, backdoors, or supply-chain tampering exists within this file.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD for cursor-cli, no malicious content.</summary>
</security_assessment>

[10/12] Reviewing nvchecker.toml, update-pkgver.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD for cursor-cli, no malicious content.
LLM auditresponse for nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a configuration for the `nvchecker` tool, used to detect new releases of the `cursor-cli` package. It defines a regex-based version check against the official Cursor website (`https://cursor.com/install`), which is the project&#39;s own upstream source. The configuration only specifies where to look for version strings and where to store local version tracking files (`oldver.json`, `newver.json`). There are no commands, no downloads of external code, no obfuscation, and no exfiltration of data. The file is a standard and benign packaging helper; it does not contain any malicious or suspicious behavior.
</details>
<evidence></evidence>
<summary>Standard version-check configuration, no malicious content.</summary>
</security_assessment>

[11/12] Reviewing update-pkgver.sh...
+ Reviewed nvchecker.toml. Status: SAFE -- Standard version-check configuration, no malicious content.
LLM auditresponse for update-pkgver.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a maintainer helper for updating the pkgver in an AUR PKGBUILD. It fetches the latest version string from the official Cursor upstream (cursor.com/install), parses it, and updates the PKGBUILD file accordingly. It uses standard Arch tools (sed, updpkgsums, makepkg) and includes backup/restore logic to handle failures gracefully. There is no obfuscation, no execution of fetched code, no data exfiltration, and no backdoor behavior. All operations are within the normal scope of AUR package maintenance.
</details>
<evidence></evidence>
<summary>Standard AUR version-update helper; no malicious behavior found.</summary>
</security_assessment>

[12/12] Reviewing ...
+ Reviewed update-pkgver.sh. Status: SAFE -- Standard AUR version-update helper; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 44,489
  Completion Tokens: 5,052
  Total Tokens: 49,541
  Total Cost: $0.002293
  Execution Time: 96.40 seconds

Final Status: SAFE


No issues found.
