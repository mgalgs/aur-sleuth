---
package: cursor-cli
pkgver: 2026.10.16.1.e3cb207
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 44338
completion_tokens: 4312
total_tokens: 48650
cost: 0.004819542
execution_time: 40.76
files_reviewed: 12
files_skipped: 0
maintainer_files: 12
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-17T23:17:16Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file with no security issues.
  - file: Cursor-TOS
    status: safe
    summary: No code or malicious content; legal document only.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no security concerns.
  - file: LICENSE
    status: safe
    summary: A license file with no executable content.
  - file: LICENSE
    status: safe
    summary: License file, no malicious content.
  - file: LICENSES/LicenseRef-Cursor.txt
    status: safe
    summary: Plain legal document, no executable code or threats.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD; no malicious behavior detected.
  - file: REUSE.toml
    status: safe
    summary: Safe metadata file; no malicious content.
  - file: auto-update-block.patch
    status: safe
    summary: Patch blocks cursor-agent auto-updates; no malicious behavior.
  - file: cursor-cli.install
    status: safe
    summary: Informational heredoc only; no executed commands.
  - file: nvchecker.toml
    status: safe
    summary: Benign nvchecker config, no malicious content.
  - file: update-pkgver.sh
    status: safe
    summary: Standard AUR version-bumping helper; no malicious behavior.
---

Materializing cursor-cli from local mirror...
Materialized cursor-cli
Analyzing cursor-cli AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The global/top-level scope of this PKGBUILD contains only standard variable definitions (pkgname, pkgver, pkgrel, etc.), array assignments (source, checksums), and simple shell parameter expansions to derive the upstream version string. No command substitutions, backticks, or function calls that would execute arbitrary code during sourcing exist. The `prepare()` and `package()` functions, which do modify the filesystem, are not executed by `makepkg --printsrcinfo`. Therefore, running this command is safe.
</details>
<evidence></evidence>
<summary>No dangerous top-level code execution.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code execution.
Reviewing the 12 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/12] Reviewing .SRCINFO...
[0/12] Reviewing .SRCINFO, .gitignore...
[0/12] Reviewing .SRCINFO, .gitignore, Cursor-TOS...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` for an AUR package. It lists common patterns to exclude from version control, such as build directories (`src/`, `pkg/`), compiled package files (`*.pkg.tar*`), downloaded source archives (`*.tar.gz`, etc.), makepkg logs, and nvchecker version records. There is no executable code, network requests, obfuscation, or any behavior that could be considered malicious. It aligns with normal packaging practices.
</details>
<evidence></evidence>
<summary>Standard .gitignore file with no security issues.</summary>
</security_assessment>

[0/12] Reviewing .SRCINFO, .gitignore, Cursor-TOS, LICENSE...
[1/12] Reviewing .SRCINFO, Cursor-TOS, LICENSE...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore file with no security issues.
LLM auditresponse for Cursor-TOS:
<security_assessment>
<decision>SAFE</decision>
<details>
The file "Cursor-TOS" is a plain-text Terms of Service document. It contains no executable code, no commands, no network requests, and no obfuscated or encoded content. It is purely a legal agreement describing the rights and obligations of using the Cursor software service. There is no evidence of any supply-chain attack, backdoor, data exfiltration, or malicious behavior. Even if some clauses (e.g., regarding model training, limitation of liability, or dispute resolution) could be considered unfavorable to users, those are upstream business and legal decisions, not indicators of package-level malware. The file poses no security risk to the system.
</details>
<evidence>

</evidence>
<summary>No code or malicious content; legal document only.</summary>
</security_assessment>

[1/12] Reviewing .SRCINFO, Cursor-TOS, LICENSE, LICENSE...
[2/12] Reviewing .SRCINFO, LICENSE, LICENSE...
+ Reviewed Cursor-TOS. Status: SAFE -- No code or malicious content; legal document only.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.SRCINFO` metadata file for an AUR package. It declares the package name, version, architecture(s), dependencies, and source URLs with associated checksums. All source URLs point to the official Cursor downloads domain (`downloads.cursor.com`), which is expected for a legitimate package. The checksums are provided (not set to `SKIP`), allowing verification of downloaded artifacts. There is no executable code, obfuscated content, or any indication of malicious behavior. The file only describes how to build the package and does not perform any actions itself.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file, no security concerns.</summary>
</security_assessment>

[2/12] Reviewing .SRCINFO, LICENSE, LICENSE, LICENSES/LicenseRef-Cursor.txt...
[3/12] Reviewing LICENSE, LICENSE, LICENSES/LicenseRef-Cursor.txt...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no security concerns.
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard open-source license (ISC-style). It contains no executable code, no network requests, no file operations, and no obfuscated content. It is purely a legal notice and does not pose any security threat.
</details>
<evidence></evidence>
<summary>A license file with no executable content.</summary>
</security_assessment>

[3/12] Reviewing LICENSE, LICENSE, LICENSES/LicenseRef-Cursor.txt, PKGBUILD...
[4/12] Reviewing LICENSE, LICENSES/LicenseRef-Cursor.txt, PKGBUILD...
+ Reviewed LICENSE. Status: SAFE -- A license file with no executable content.
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard permissive license text (similar to ISC) for the Arch Linux Contributors. It contains no executable code, no network requests, no file operations, and no obfuscation. There is no evidence of malicious or dangerous behavior. The file is purely a legal notice and poses no security risk.
</details>
<evidence>
</evidence>
<summary>License file, no malicious content.</summary>
</security_assessment>

[5/12] Reviewing LICENSES/LicenseRef-Cursor.txt, PKGBUILD...
+ Reviewed LICENSE. Status: SAFE -- License file, no malicious content.
[5/12] Reviewing LICENSES/LicenseRef-Cursor.txt, PKGBUILD, REUSE.toml...
LLM auditresponse for LicenseRef-Cursor.txt:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a Terms of Service document (LicenseRef-Cursor.txt) for the Cursor software platform by Anysphere, Inc. It is a plain text legal document containing standard software licensing terms, privacy policies, payment terms, dispute resolution clauses, and disclaimers. There are no executable scripts, encoded commands, network requests, file operations, or any form of code that could perform malicious actions. The file references external URLs (e.g., Stripe's legal/privacy pages, the Cursor website) only as informational citations within the legal text, not as commands to fetch or execute anything. No evidence of supply-chain attack or malicious behavior is present.
</details>
<evidence></evidence>
<summary>Plain legal document, no executable code or threats.</summary>
</security_assessment>

[5/12] Reviewing LICENSES/LicenseRef-Cursor.txt, PKGBUILD, REUSE.toml, auto-update-block.patch...
[6/12] Reviewing PKGBUILD, REUSE.toml, auto-update-block.patch...
+ Reviewed LICENSES/LicenseRef-Cursor.txt. Status: SAFE -- Plain legal document, no executable code or threats.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging conventions. All sources are fetched from the official upstream `downloads.cursor.com` using pinned checksums (`b2sums`). The `prepare()` function applies a local patch (`auto-update-block.patch`) to disable automatic updates, which is a legitimate maintenance action. The `package()` function copies files into the package directory and creates a symlink, without any unusual or dangerous operations. There is no obfuscated code, unexpected network requests, or exfiltration of data. The file is safe.
</details>
<evidence>
</evidence>
<summary>Standard AUR PKGBUILD; no malicious behavior detected.</summary>
</security_assessment>

[7/12] Reviewing REUSE.toml, auto-update-block.patch...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD; no malicious behavior detected.
[7/12] Reviewing REUSE.toml, auto-update-block.patch, cursor-cli.install...
LLM auditresponse for REUSE.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `REUSE.toml` is a standard REUSE configuration file that declares copyright and license annotations for various files within the package. It is a plain text TOML file containing only metadata (file paths, copyright statements, and license identifiers). There is no executable code, no network requests, no obfuscation, and no system-modifying operations. This file poses no security threat and is consistent with ordinary packaging practices.
</details>
<evidence>
</evidence>
<summary>Safe metadata file; no malicious content.</summary>
</security_assessment>

[7/12] Reviewing REUSE.toml, auto-update-block.patch, cursor-cli.install, nvchecker.toml...
[8/12] Reviewing auto-update-block.patch, cursor-cli.install, nvchecker.toml...
+ Reviewed REUSE.toml. Status: SAFE -- Safe metadata file; no malicious content.
LLM auditresponse for auto-update-block.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
The patch adds two lines to `cursor-agent` that create the directory `$HOME/.local/share/cursor-agent/versions` (if it does not already exist) and then removes its execute permission. This is a common technique to block an application from writing or updating files into that directory, effectively preventing auto-updates. The code is safe because it only operates on the user&#39;s own home directory, does not fetch any external content, and does not execute any payload. The `|| true` ensures no crash if the operation fails. This is typical AUR packaging to give users control over updates.
</details>
<evidence></evidence>
<summary>Patch blocks cursor-agent auto-updates; no malicious behavior.</summary>
</security_assessment>

[8/12] Reviewing auto-update-block.patch, cursor-cli.install, nvchecker.toml, update-pkgver.sh...
[9/12] Reviewing cursor-cli.install, nvchecker.toml, update-pkgver.sh...
+ Reviewed auto-update-block.patch. Status: SAFE -- Patch blocks cursor-agent auto-updates; no malicious behavior.
LLM auditresponse for cursor-cli.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `cursor-cli.install` contains only informational output via a `cat` heredoc. The `post_install` and `post_upgrade` functions simply display a message to the user about cleaning up leftover files from a self-updating mechanism. The commands shown (e.g., `rm -f`, `chmod +x`, `rm -rf`) appear only inside the heredoc as text printed to the terminal — they are not executed by the shell. No obfuscation, network requests, file exfiltration, or unexpected system modifications are present. The content is consistent with a standard AUR install script providing upgrade guidance.
</details>
<evidence></evidence>
<summary>Informational heredoc only; no executed commands.</summary>
</security_assessment>

[10/12] Reviewing nvchecker.toml, update-pkgver.sh...
+ Reviewed cursor-cli.install. Status: SAFE -- Informational heredoc only; no executed commands.
LLM auditresponse for nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard nvchecker configuration for monitoring new releases of the cursor-cli package. It uses a regex to extract version strings from the official Cursor website. There is no code execution, no downloads at build time, and no obfuscation. The file performs no operations other than defining version detection instructions for nvchecker, which is a common tool in AUR maintenance workflows.
</details>
<evidence></evidence>
<summary>Benign nvchecker config, no malicious content.</summary>
</security_assessment>

[11/12] Reviewing update-pkgver.sh...
+ Reviewed nvchecker.toml. Status: SAFE -- Benign nvchecker config, no malicious content.
LLM auditresponse for update-pkgver.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard AUR maintainer helper that automates updating the `pkgver` in the PKGBUILD for the `cursor-cli` package. It fetches the latest upstream version from the official Cursor website (`cursor.com`), parses the version string, updates the PKGBUILD, runs `updpkgsums` to refetch checksums, and regenerates `.SRCINFO` via `makepkg --printsrcinfo`. It includes a backup/restore mechanism for safety. All operations are confined to the local packaging directory and use standard Arch packaging tools. No obfuscation, encoded commands, or unexpected network requests are present. The script only communicates with the project's own upstream domain and does not download or execute any external code.
</details>
<evidence></evidence>
<summary>Standard AUR version-bumping helper; no malicious behavior.</summary>
</security_assessment>

[12/12] Reviewing ...
+ Reviewed update-pkgver.sh. Status: SAFE -- Standard AUR version-bumping helper; no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 44,338
  Completion Tokens: 4,312
  Total Tokens: 48,650
  Total Cost: $0.004820
  Execution Time: 40.76 seconds

Final Status: SAFE


No issues found.
