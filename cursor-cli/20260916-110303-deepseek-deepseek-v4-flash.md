---
package: cursor-cli
pkgver: 2026.09.10.1.fd3934a
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 44557
completion_tokens: 7223
total_tokens: 51780
cost: 0.005228019818
execution_time: 68.32
files_reviewed: 12
files_skipped: 0
maintainer_files: 12
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-16T11:03:02Z
file_verdicts:
  - file: Cursor-TOS
    status: safe
    summary: Legal document; no malicious code or behavior present.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file for AUR package build artifacts.
  - file: LICENSE
    status: safe
    summary: Standard license file, no malicious content.
  - file: LICENSE
    status: safe
    summary: License file with no security concerns.
  - file: LICENSES/LicenseRef-Cursor.txt
    status: safe
    summary: License file only; no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with no malicious content.
  - file: REUSE.toml
    status: safe
    summary: LICENSE metadata file, no executable content.
  - file: cursor-cli.install
    status: safe
    summary: Standard install script message, no risk.
  - file: auto-update-block.patch
    status: safe
    summary: Defensive patch to block auto-updates; no malicious behavior found.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with verified upstream sources and no malicious behavior.
  - file: nvchecker.toml
    status: safe
    summary: Standard version-checking config, no malice.
  - file: update-pkgver.sh
    status: safe
    summary: Standard AUR helper script; no security issues.
---

Materializing cursor-cli from local mirror...
Materialized cursor-cli
Analyzing cursor-cli AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources only the PKGBUILD's top-level scope. The top-level code here consists solely of standard metadata variable assignments, upstream version string manipulation using parameter expansion, and source/checksum array definitions. No command substitution, `eval`, `curl`, `wget`, base64 decoding, or other execution occurs while sourcing the PKGBUILD.

The `prepare()` and `package()` functions are not executed by `makepkg --printsrcinfo`, so their contents are out of scope for this narrow gate. They will be reviewed in the full PKGBUILD audit. No genuinely malicious top-level behavior is present.
</details>
<evidence></evidence>
<summary>Top-level PKGBUILD evaluation contains only metadata assignments; no malicious execution exists at parse time.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD evaluation contains only metadata assignments; no malicious execution exists at parse time.
Reviewing the 12 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/12] Reviewing .SRCINFO...
[0/12] Reviewing .SRCINFO, .gitignore...
[0/12] Reviewing .SRCINFO, .gitignore, Cursor-TOS...
LLM auditresponse for Cursor-TOS:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a legal Terms of Service document for the Cursor software platform. It contains no executable code, no network requests, no obfuscated commands, and no system operations that could be exploited. There is no evidence of malicious behavior such as data exfiltration, code execution, backdoors, or supply-chain attack vectors. The content is purely textual and serves as a standard end-user license agreement.
</details>
<evidence></evidence>
<summary>Legal document; no malicious code or behavior present.</summary>
</security_assessment>

[0/12] Reviewing .SRCINFO, .gitignore, Cursor-TOS, LICENSE...
[1/12] Reviewing .SRCINFO, .gitignore, LICENSE...
+ Reviewed Cursor-TOS. Status: SAFE -- Legal document; no malicious code or behavior present.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.gitignore` file is a standard configuration file for a Git repository used by an AUR package maintainer. It lists common build artifacts and downloaded files that should not be committed to version control: `src/`, `pkg/`, built package archives (`*.pkg.tar*`), upstream tarballs (`*.tar.gz`, etc.), makepkg logs (`*.log`), and nvchecker version records (`oldver.json`, `newver.json`). There are no executable commands, no network requests, no obfuscation, and no system modifications. The file is benign and follows normal packaging hygiene.
</details>
<evidence></evidence>
<summary>Standard .gitignore file for AUR package build artifacts.</summary>
</security_assessment>

[2/12] Reviewing .SRCINFO, LICENSE...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore file for AUR package build artifacts.
[2/12] Reviewing .SRCINFO, LICENSE, LICENSE...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard software license (ISC-style). It contains no executable code, no network requests, no obfuscation, and no system modifications. It is purely a legal text file distributed with the package.
</details>
<evidence></evidence>
<summary>Standard license file, no malicious content.</summary>
</security_assessment>

[3/12] Reviewing .SRCINFO, LICENSE...
+ Reviewed LICENSE. Status: SAFE -- Standard license file, no malicious content.
[3/12] Reviewing .SRCINFO, LICENSE, LICENSES/LicenseRef-Cursor.txt...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>The file is a standard ISC license file for Arch Linux Contributors. It contains no code, no instructions, no network requests, no obfuscated content, and no system modifications. It is a plain text license file with no security implications.</details>
<evidence></evidence>
<summary>License file with no security concerns.</summary>
</security_assessment>

[3/12] Reviewing .SRCINFO, LICENSE, LICENSES/LicenseRef-Cursor.txt, PKGBUILD...
[4/12] Reviewing .SRCINFO, LICENSES/LicenseRef-Cursor.txt, PKGBUILD...
+ Reviewed LICENSE. Status: SAFE -- License file with no security concerns.
LLM auditresponse for LicenseRef-Cursor.txt:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is the Cursor Terms of Service, a plain-text legal document. It contains no executable code, no scripts, no network requests, no obfuscated content, and no system-modification instructions. It is a standard EULA/TOS file shipped with the package for licensing purposes. No security concerns.
</details>
<evidence></evidence>
<summary>License file only; no security concerns.</summary>
</security_assessment>

[4/12] Reviewing .SRCINFO, LICENSES/LicenseRef-Cursor.txt, PKGBUILD, REUSE.toml...
[5/12] Reviewing .SRCINFO, PKGBUILD, REUSE.toml...
+ Reviewed LICENSES/LicenseRef-Cursor.txt. Status: SAFE -- License file only; no security concerns.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR metadata file (`.SRCINFO`) describing the `cursor-cli` package. It declares the package name, version, dependencies, architecture support, and source locations. All source files, including the two tarballs from the official `downloads.cursor.com` domain, have pinned BLAKE2 checksums, ensuring integrity. There are no obfuscated commands, no unusual network requests beyond the declared upstream URLs, and no executable code in this file itself. The file is purely descriptive and follows normal AUR packaging practices.
</details>
<evidence></evidence>
<summary>Standard AUR metadata with no malicious content.</summary>
</security_assessment>

[6/12] Reviewing PKGBUILD, REUSE.toml...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with no malicious content.
[6/12] Reviewing PKGBUILD, REUSE.toml, auto-update-block.patch...
LLM auditresponse for REUSE.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a REUSE configuration file (REUSE.toml) that only declares copyright and license annotations for various files in the package. It contains no executable code, no network requests, no file operations, and no obfuscation. The content is purely metadata for compliance with the REUSE specification. There is no evidence of malicious behavior.
</details>
<evidence></evidence>
<summary>LICENSE metadata file, no executable content.</summary>
</security_assessment>

[6/12] Reviewing PKGBUILD, REUSE.toml, auto-update-block.patch, cursor-cli.install...
[7/12] Reviewing PKGBUILD, auto-update-block.patch, cursor-cli.install...
+ Reviewed REUSE.toml. Status: SAFE -- LICENSE metadata file, no executable content.
LLM auditresponse for cursor-cli.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Arch Linux package install script (<code>.install</code>). It defines <code>post_install</code> and <code>post_upgrade</code> functions that only print a message to the user via a here-document. The message suggests manual cleanup steps for leftover files from a previous self-update mechanism. No commands are executed automatically; the script merely displays text. There is no network access, obfuscation, eval, or any operation beyond printing. The file follows normal packaging practices and poses no security threat.
</details>
<evidence></evidence>
<summary>Standard install script message, no risk.</summary>
</security_assessment>

[8/12] Reviewing PKGBUILD, auto-update-block.patch...
+ Reviewed cursor-cli.install. Status: SAFE -- Standard install script message, no risk.
[8/12] Reviewing PKGBUILD, auto-update-block.patch, nvchecker.toml...
LLM auditresponse for auto-update-block.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
The patch file `auto-update-block.patch` adds a single command to the upstream `cursor-agent` script that creates a directory `$HOME/.local/share/cursor-agent/versions` and removes its execute permission. This is a common packaging practice to disable an application's auto-update mechanism, ensuring updates go through the package manager instead. There is no networking, no obfuscation, no data exfiltration, and no execution of untrusted content. The command is guarded with `[[ -n "${HOME:-}" ]]` and a `|| true` to safely handle edge cases. This is a benign, supply-chain‑defensive change.
</details>
<evidence></evidence>
<summary>Defensive patch to block auto-updates; no malicious behavior found.</summary>
</security_assessment>

[8/12] Reviewing PKGBUILD, auto-update-block.patch, nvchecker.toml, update-pkgver.sh...
[9/12] Reviewing PKGBUILD, nvchecker.toml, update-pkgver.sh...
+ Reviewed auto-update-block.patch. Status: SAFE -- Defensive patch to block auto-updates; no malicious behavior found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a pre-built binary distribution. It downloads the official cursor-agent tarball from the project's legitimate domain (downloads.cursor.com) over HTTPS, verifies integrity with BLAKE2 checksums, applies a benign patch to disable auto-updates, and installs the files under /opt/cursor-agent with a symlink in /usr/bin.

There is no obfuscated code, no suspicious network requests (all fetch from the upstream vendor), no calls to eval/base64/curl/wget outside the declared source array, and no manipulation of files outside the package's own installation path. The patch (`auto-update-block.patch`) is included as a source and applied in prepare(); even without seeing its contents, its stated purpose—blocking the application's internal updater—is a common packaging modification, not a supply-chain attack. The use of `epoch=1` is documented as a version-scheme migration and is innocuous.

All checksums (b2sums) are provided and pinned; nothing is set to SKIP. There are no red flags such as untrusted remote code execution, data exfiltration, or backdoors.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with verified upstream sources and no malicious behavior.</summary>
</security_assessment>

[10/12] Reviewing nvchecker.toml, update-pkgver.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with verified upstream sources and no malicious behavior.
LLM auditresponse for nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a configuration for nvchecker, a tool that automatically checks for new upstream releases. It defines a regex to extract version numbers from a given URL (https://cursor.com/install). The regex matches version strings like `YYYY.MM.DD-hash` from the `downloads.cursor.com/lab/` path. There is no obfuscation, no code execution, no network requests outside the intended version-checking workflow, and no data exfiltration. It is a standard, non-malicious tool configuration.
</details>
<evidence>
</evidence>
<summary>Standard version-checking config, no malice.</summary>
</security_assessment>

[11/12] Reviewing update-pkgver.sh...
+ Reviewed nvchecker.toml. Status: SAFE -- Standard version-checking config, no malice.
LLM auditresponse for update-pkgver.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is an AUR maintainer helper that automates version bumps for the `cursor-cli` package. It fetches the latest version string from the official cursor.com install page (the package's own upstream), parses it, updates the PKGBUILD `pkgver` and `pkgrel`, then refreshes checksums via `updpkgsums` and regenerates `.SRCINFO` via `makepkg --printsrcinfo`. The script includes proper backup/restore logic on failure.  

No obfuscation, no execution of downloaded content, no unusual network destinations, no file operations outside the package directory, and no backdoor-like behavior. The network fetch targets the package's own official domain, which is standard and expected for a version‑bump script. The use of `sed`, `updpkgsums`, and `makepkg` are routine AUR packaging operations.  

There is no evidence of supply‑chain attack, credential theft, code execution from untrusted sources, or any deviation from normal packaging automation.
</details>
<evidence>
</evidence>
<summary>Standard AUR helper script; no security issues.</summary>
</security_assessment>

[12/12] Reviewing ...
+ Reviewed update-pkgver.sh. Status: SAFE -- Standard AUR helper script; no security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 44,557
  Completion Tokens: 7,223
  Total Tokens: 51,780
  Total Cost: $0.005228
  Execution Time: 68.32 seconds

Final Status: SAFE


No issues found.
