---
package: throne-bin
pkgver: 1.4.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 16581
completion_tokens: 6321
total_tokens: 22902
cost: 0.002659293
execution_time: 44.74
files_reviewed: 6
files_skipped: 0
maintainer_files: 6
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-05T20:15:47Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore; no security issues.
  - file: LICENSE
    status: safe
    summary: Standard license file, no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; no malicious content.
  - file: Throne.desktop
    status: safe
    summary: Standard desktop entry, no malicious content.
  - file: Throne.sh
    status: safe
    summary: Safe launcher script; only modifies app-local config and runs the package binary.
  - file: PKGBUILD
    status: safe
    summary: Standard pinned binary PKGBUILD; installs only package files, no malicious behavior found.
---

Materializing throne-bin from local mirror...
Materialized throne-bin
Analyzing throne-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's top-level scope contains only variable assignments and array definitions. There are no command substitutions, function calls, or other executable statements that would run during `makepkg --printsrcinfo`. The `package()` function is not executed at this stage, and none of the top-level code performs network requests, file writes, or system modifications. Running `makepkg --printsrcinfo` on this PKGBUILD poses no risk.
</details>
<evidence></evidence>
<summary>No dangerous top-level code; sourcing is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code; sourcing is safe.
Reviewing the 6 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/6] Reviewing .SRCINFO...
[0/6] Reviewing .SRCINFO, LICENSE...
[0/6] Reviewing .SRCINFO, LICENSE, .gitignore...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` for an AUR repository. It lists common build artifacts (`pkg/`, `src/`), PNG images at the repository root, and compressed archives (`*.zip`, `*.tar.zst`). There are no commands, network requests, or any code execution paths. No security concerns.
</details>
<evidence></evidence>
<summary>Standard .gitignore; no security issues.</summary>
</security_assessment>

[0/6] Reviewing .SRCINFO, LICENSE, .gitignore, PKGBUILD...
[1/6] Reviewing .SRCINFO, LICENSE, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore; no security issues.
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a plain-text license file (ISC-style) attributed to Arch Linux Contributors. It contains no executable code, no network operations, no obfuscation, and no instructions that could perform any system modifications or data exfiltration. It is a standard license file with no security implications.
</details>
<evidence></evidence>
<summary>Standard license file, no security issues.</summary>
</security_assessment>

[2/6] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed LICENSE. Status: SAFE -- Standard license file, no security issues.
[2/6] Reviewing .SRCINFO, PKGBUILD, Throne.desktop...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is metadata only, containing package description, dependencies, source URLs, and checksums. All source URLs point to the official GitHub releases of the Throne project, and checksums are provided (not set to SKIP). There is no obfuscated code, no dangerous commands, and no evidence of supply-chain attack. The file describes a standard AUR package that downloads prebuilt binaries from the official upstream source.
</details>
<evidence></evidence>
<summary>Standard AUR metadata; no malicious content.</summary>
</security_assessment>

[3/6] Reviewing PKGBUILD, Throne.desktop...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; no malicious content.
[3/6] Reviewing PKGBUILD, Throne.desktop, Throne.sh...
LLM auditresponse for Throne.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard .desktop entry file that defines how the application "Throne" appears in the system menu. It contains only static metadata (name, icon, category, execution command) with no embedded scripts, network requests, or obfuscated code. The `Exec=throne` line simply launches the installed binary; there is no attempt to download or execute external content. No security issues are present.
</details>
<evidence></evidence>
<summary>Standard desktop entry, no malicious content.</summary>
</security_assessment>

[4/6] Reviewing PKGBUILD, Throne.sh...
+ Reviewed Throne.desktop. Status: SAFE -- Standard desktop entry, no malicious content.
LLM auditresponse for Throne.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard application launcher/migration wrapper for the Throne binary. It operates only within the user's own configuration directory (`$XDG_CONFIG_HOME` or `~/.config/Throne`) and the application's installed location under `/opt/Throne`. It removes stale symlinks in the app's data directory and backs up an old JSON config directory when a new SQLite database is expected. These operations are limited to the application's own data and do not touch unrelated system files, fetch remote content, execute decoded/obfuscated code, or exfiltrate information. The final line simply runs the package's own binary with `-appdata`, which is expected functionality.

No evidence of injected malicious behavior or supply-chain attack indicators was found. The script follows normal packaging and post-install migration practices.
</details>
<evidence>
</evidence>
<summary>
Safe launcher script; only modifies app-local config and runs the package binary.
</summary>
</security_assessment>

[5/6] Reviewing PKGBUILD...
+ Reviewed Throne.sh. Status: SAFE -- Safe launcher script; only modifies app-local config and runs the package binary.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard binary package for the Throne proxy utility. It downloads prebuilt release archives from the project's official GitHub releases page over HTTPS, with pinned SHA-256 checksums for the local source files and both architecture-specific archives. The package() function only installs binaries, supporting files, a desktop entry, an icon, and a launcher script into $pkgdir.

There are no signs of injected or obfuscated code, no download-and-execute steps, no unexpected network endpoints, no attempts to read or exfiltrate local data, and no modifications outside the package installation directory. The use of a versioned release URL and checksums is consistent with safe, normal AUR packaging practice.
</details>
<evidence>
</evidence>
<summary>
Standard pinned binary PKGBUILD; installs only package files, no malicious behavior found.
</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard pinned binary PKGBUILD; installs only package files, no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 16,581
  Completion Tokens: 6,321
  Total Tokens: 22,902
  Total Cost: $0.002659
  Execution Time: 44.74 seconds

Final Status: SAFE


No issues found.
