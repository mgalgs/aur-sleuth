---
package: cursor-cli
pkgver: 2026.09.18.1.9a7762b
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 44919
completion_tokens: 20369
total_tokens: 65288
cost: 0.00474882408
execution_time: 483.39
files_reviewed: 12
files_skipped: 0
maintainer_files: 12
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-21T23:42:47Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore for AUR repository; no malicious or suspicious content.
  - file: LICENSE
    status: safe
    summary: Standard license file, no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no malicious content.
  - file: Cursor-TOS
    status: safe
    summary: Plain legal terms text; no executable or malicious content found.
  - file: LICENSE
    status: safe
    summary: Standard license file with no security concerns.
  - file: LICENSES/LicenseRef-Cursor.txt
    status: safe
    summary: Plain text license file, no security concerns.
  - file: REUSE.toml
    status: safe
    summary: Declarative licensing manifest; no executable or malicious content. Safe.
  - file: cursor-cli.install
    status: safe
    summary: Benign post-install message; no malicious operations or code execution.
  - file: nvchecker.toml
    status: safe
    summary: Standard nvchecker config for tracking upstream Cursor releases; no malicious behavior found.
  - file: auto-update-block.patch
    status: safe
    summary: Transparent auto-update block via chmod on app data dir; no malicious behavior found.
  - file: PKGBUILD
    status: safe
    summary: PKGBUILD is standard AUR packaging; no evidence of malicious behavior.
  - file: update-pkgver.sh
    status: safe
    summary: Benign version-bump helper; fetches official upstream, edits only the local PKGBUILD.
---

Materializing cursor-cli from local mirror...
Materialized cursor-cli
Analyzing cursor-cli AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The global/top-level scope of this PKGBUILD consists only of variable definitions and comments. There are no command substitutions, backtick executions, external program calls, or any other code that would execute when the file is sourced. All assignments (including the `_upstream_ver` derivation using shell parameter expansion) are purely static string operations. No network requests, file writes, or malicious actions occur during sourcing. Therefore, running `makepkg --printsrcinfo` on this PKGBUILD is safe.
</details>
<evidence>
</evidence>
<summary>No malicious code in global scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code in global scope.
Reviewing the 12 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/12] Reviewing .SRCINFO...
[0/12] Reviewing .SRCINFO, .gitignore...
[0/12] Reviewing .SRCINFO, .gitignore, Cursor-TOS...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` used in an Arch User Repository (AUR) package repository. It excludes common build artifacts (`src/`, `pkg/`, `*.pkg.tar*`), downloaded upstream tarballs, makepkg logs, and nvchecker version files (`oldver.json`, `newver.json`). There are no commands, network operations, obfuscated content, or any behavior that could constitute a supply-chain attack. The content is purely declarative and aligns with standard AUR packaging practices.
</details>
<evidence></evidence>
<summary>
Standard .gitignore for AUR repository; no malicious or suspicious content.</summary>
</security_assessment>

[0/12] Reviewing .SRCINFO, .gitignore, Cursor-TOS, LICENSE...
[1/12] Reviewing .SRCINFO, Cursor-TOS, LICENSE...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore for AUR repository; no malicious or suspicious content.
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard ISC license text. It contains no executable code, no network requests, no obfuscation, and no system modification instructions. It is a typical license file included with AUR packages and poses no security risk.</details>
<evidence></evidence>
<summary>Standard license file, no security issues.</summary>
</security_assessment>

[2/12] Reviewing .SRCINFO, Cursor-TOS...
+ Reviewed LICENSE. Status: SAFE -- Standard license file, no security issues.
[2/12] Reviewing .SRCINFO, Cursor-TOS, LICENSE...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file is a standard AUR metadata file that defines package sources and checksums. It contains no executable content, no obfuscation, and no dangerous commands. All source URLs point to the project&#x27;s official domain (`downloads.cursor.com`) with pinned version strings in the path, and checksums are provided for every source. There is no evidence of malicious behavior or supply-chain attack. The file is purely declarative and follows normal AUR packaging conventions.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file, no malicious content.</summary>
</security_assessment>

[2/12] Reviewing .SRCINFO, Cursor-TOS, LICENSE, LICENSES/LicenseRef-Cursor.txt...
[3/12] Reviewing Cursor-TOS, LICENSE, LICENSES/LicenseRef-Cursor.txt...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no malicious content.
LLM auditresponse for Cursor-TOS:
<security_assessment>
<decision>SAFE</decision>
<details>
This file contains only the text of Cursor's Terms of Service agreement. It includes no executable code, no shell commands, no network requests, no file operations, and no obfuscated content. The document describes the legal terms for using the Cursor service, including standard sections on access, payments, intellectual property, disclaimers, and dispute resolution. There is no evidence of malicious behavior or supply-chain attack indicators. The document is purely informational legal text.
</details>
<evidence>
</evidence>
<summary>
Plain legal terms text; no executable or malicious content found.</summary>
</security_assessment>

[3/12] Reviewing Cursor-TOS, LICENSE, LICENSES/LicenseRef-Cursor.txt, PKGBUILD...
[4/12] Reviewing LICENSE, LICENSES/LicenseRef-Cursor.txt, PKGBUILD...
+ Reviewed Cursor-TOS. Status: SAFE -- Plain legal terms text; no executable or malicious content found.
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard open-source license (ISC-style) attributed to Arch Linux Contributors. It contains no executable code, no instructions, no network or file operations, and no obfuscated content. It is a typical license file distributed with AUR packages and poses no security risk.
</details>
<evidence>
</evidence>
<summary>Standard license file with no security concerns.</summary>
</security_assessment>

[4/12] Reviewing LICENSE, LICENSES/LicenseRef-Cursor.txt, PKGBUILD, REUSE.toml...
[5/12] Reviewing LICENSES/LicenseRef-Cursor.txt, PKGBUILD, REUSE.toml...
+ Reviewed LICENSE. Status: SAFE -- Standard license file with no security concerns.
LLM auditresponse for LicenseRef-Cursor.txt:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a plain-text license document (Terms of Service) for the Cursor application. It contains no executable code, no network requests, no obfuscated content, and no system-modification instructions. It is a standard legal text file placed in the LICENSES directory, which is normal packaging practice. There is no evidence of malicious behavior.
</details>
<evidence></evidence>
<summary>Plain text license file, no security concerns.</summary>
</security_assessment>

[5/12] Reviewing LICENSES/LicenseRef-Cursor.txt, PKGBUILD, REUSE.toml, auto-update-block.patch...
[6/12] Reviewing PKGBUILD, REUSE.toml, auto-update-block.patch...
+ Reviewed LICENSES/LicenseRef-Cursor.txt. Status: SAFE -- Plain text license file, no security concerns.
LLM auditresponse for REUSE.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a REUSE specification manifest (REUSE.toml) used to declare copyright and license metadata for files in the repository. It contains only declarative data: a version number, a list of file paths, copyright strings, and SPDX license identifiers.

There is no executable code, no network operations, no file system manipulation, no obfuscated content, and no deviation from standard packaging practices. The `&quot;` entities and `&lt;` / `&gt;` sequences are simply XML character references used to represent quotation marks and angle brackets in the TOML/TOML-within-XML representation — they are not encoded commands or hidden data. The file is consistent with the purpose of a REUSE licensing checklist and poses no security risk.
</details>
<evidence>
</evidence>
<summary>Declarative licensing manifest; no executable or malicious content. Safe.</summary>
</security_assessment>

[6/12] Reviewing PKGBUILD, REUSE.toml, auto-update-block.patch, cursor-cli.install...
[7/12] Reviewing PKGBUILD, auto-update-block.patch, cursor-cli.install...
+ Reviewed REUSE.toml. Status: SAFE -- Declarative licensing manifest; no executable or malicious content. Safe.
LLM auditresponse for cursor-cli.install:
 <security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Arch package install script (`.install`). It defines two functions: `post_install()` delegates to `post_upgrade()`, which simply uses a quoted heredoc (`cat &lt;&lt; &apos;EOF&apos;`) to print an informational message to the user. The quoted heredoc delimiter means no command substitution, variable expansion, or execution occurs — the text is purely displayed on the terminal.

The message informs the user that `cursor-agent` updates are handled by the package manager, and suggests manual cleanup commands for leftover files from a previous self-updating install. These commands target only the application&apos;s own files in the user&apos;s home directory (`~/.local/bin/cursor-agent` and `~/.local/share/cursor-agent/versions/`). They are suggestions printed for the user to run themselves; the script does not execute them. There are no network requests, no obfuscation, no dangerous command substitution (e.g., `eval`, `base64`, `curl|bash`), and no manipulation of system files outside the application&apos;s scope. The `chmod +x` on the `versions/` directory in the message is pointless but harmless, and is never executed by this script.
</details>
<evidence>
</evidence>
<summary>
Benign post-install message; no malicious operations or code execution.</summary>
</security_assessment>

[7/12] Reviewing PKGBUILD, auto-update-block.patch, cursor-cli.install, nvchecker.toml...
[8/12] Reviewing PKGBUILD, auto-update-block.patch, nvchecker.toml...
+ Reviewed cursor-cli.install. Status: SAFE -- Benign post-install message; no malicious operations or code execution.
LLM auditresponse for nvchecker.toml:
 <security_assessment>
<decision>SAFE</decision>
<details>
This file is a configuration file for `nvchecker`, a standard tool used by AUR maintainers to automatically detect new upstream releases. The configuration is straightforward and benign:
- It uses the `regex` source type to parse the official Cursor install page (`https://cursor.com/install`).
- The regular expression simply extracts a version-like token (e.g., `2025.01.15-abc123`) from a download URL (`downloads.cursor.com/lab/...`) belonging to Cursor's own infrastructure.
- The only other settings define where nvchecker stores its version-state JSON files (`oldver.json`/`newver.json`).

This file is not executable, performs no downloads or code execution itself, contains no obfuscation, exfiltration, or system modification. It is a conventional version-monitoring configuration entirely consistent with routine AUR maintenance workflows. There are no security concerns.
</details>
<evidence>
</evidence>
<summary>Standard nvchecker config for tracking upstream Cursor releases; no malicious behavior found.</summary>
</security_assessment>

[8/12] Reviewing PKGBUILD, auto-update-block.patch, nvchecker.toml, update-pkgver.sh...
[9/12] Reviewing PKGBUILD, auto-update-block.patch, update-pkgver.sh...
+ Reviewed nvchecker.toml. Status: SAFE -- Standard nvchecker config for tracking upstream Cursor releases; no malicious behavior found.
LLM auditresponse for auto-update-block.patch:
 <security_assessment>
<decision>SAFE</decision>
<details>
This patch adds a single line to the `cursor-agent` launcher script. The line creates the directory `$HOME/.local/share/cursor-agent/versions` and removes its execute permission with `chmod -x`, causing any auto-downloaded/auto-updated agent versions in that directory to be non-executable. This is a transparent, common technique for disabling an application's self-update mechanism so that updates are managed exclusively through the system package manager (pacman) instead of the application's own updater.

The behavior is scoped entirely to the application's own data directory under the user's `$HOME`. It does not exfiltrate data, download or execute code from any host, use obfuscation, touch system files, or interact with credentials, SSH/GPG keys, shell startup files, or other users' data. The `[[ -n "${HOME:-}" ]]` guard and trailing `|| true` make the operation defensive and non-fatal. The code is consistent with its stated purpose (blocking auto-updates) and deviates from ordinary packaging only in that it modifies the user's home directory at runtime — a minor UX consideration, not a supply-chain threat. Blocking updates could delay upstream security patches, but that is a maintainer policy choice and is offset by keeping the installed software under package-manager control.
</details>
<evidence>
</evidence>
<summary>
Transparent auto-update block via chmod on app data dir; no malicious behavior found.
</summary>
</security_assessment>

[10/12] Reviewing PKGBUILD, update-pkgver.sh...
+ Reviewed auto-update-block.patch. Status: SAFE -- Transparent auto-update block via chmod on app data dir; no malicious behavior found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Arch packaging practice. It downloads prebuilt agent
tarballs from the official Cursor domain (`downloads.cursor.com`) and pins them with
per-architecture `b2sums` checksums. The `prepare()` function applies a source-bundled
patch, and `package()` installs files only into `${pkgdir}/opt/cursor-agent`,
`${pkgdir}/usr/bin`, and `${pkgdir}/usr/share/licenses`. There are no suspicious
shell constructs, no base64/eval usage, no `curl | bash`, no hidden network requests,
and no writes outside the package's own build and install paths.

The only non-standard behavior is the intentional `auto-update-block.patch` applied to
the upstream agent. This is a modification of the vendor's own files, and the patch
itself is not included in this file, so it should be reviewed as part of the AUR source
bundle. However, nothing in this PKGBUILD suggests that the patch downloads executable
content, exfiltrates data, or performs any operation outside the packaged application's
own scope. The approach is consistent with typical AUR packaging hygiene for a system-
managed `/opt` installation.
</details>
<evidence></evidence>
<summary>PKGBUILD is standard AUR packaging; no evidence of malicious behavior.</summary>
</security_assessment>

[11/12] Reviewing update-pkgver.sh...
+ Reviewed PKGBUILD. Status: SAFE -- PKGBUILD is standard AUR packaging; no evidence of malicious behavior.
LLM auditresponse for update-pkgver.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR version-bump helper for the `cursor-cli` package. It fetches `https://cursor.com/install` (the project's official upstream domain) with `curl -fsSL` and pipes the page through `grep`/`sed` only to extract a `YYYY.MM.DD-&lt;hash&gt;` version string; the page content is never executed. The extracted value is constrained by strict regexes to digits, dots, and `[A-Za-z0-9]`, so it cannot smuggle metacharacters or newlines into the later `sed` edit of `pkgver=`. The connection is a plain GET to the package's own upstream; no local data is sent anywhere.

The file operations stay inside the package directory: the script backs up `PKGBUILD` and `.SRCINFO` via `mktemp`, edits `pkgver`/`pkgrel`, refreshes checksums with `updpkgsums`, regenerates `.SRCINFO` with `makepkg --printsrcinfo`, and restores the backups on failure only. These are ordinary AUR maintainer operations. There is no obfuscation, no `eval`/encoded blobs, no execution of downloaded content, and no modification of files outside the package's own `PKGBUILD`/`.SRCINFO`. Minor hygiene note (not a security threat): the script assumes caller-exported variables such as `CURRENT_PKGVER`, `PKGBUILD_BACKUP`, and `SRCINFO_BACKUP`, so it is meant to be sourced by a larger maintainer script; running it standalone would fail under `set -u`. That is a maintainability concern, not evidence of malice.
</details>
<evidence>
</evidence>
<summary>Benign version-bump helper; fetches official upstream, edits only the local PKGBUILD.</summary>
</security_assessment>

[12/12] Reviewing ...
+ Reviewed update-pkgver.sh. Status: SAFE -- Benign version-bump helper; fetches official upstream, edits only the local PKGBUILD.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 44,919
  Completion Tokens: 20,369
  Total Tokens: 65,288
  Total Cost: $0.004749
  Execution Time: 483.39 seconds

Final Status: SAFE


No issues found.
