---
package: throne-bin
pkgver: 1.3.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 16465
completion_tokens: 6700
total_tokens: 23165
cost: 0.0014006685
execution_time: 117.18
files_reviewed: 6
files_skipped: 0
maintainer_files: 6
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-27T23:06:59Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR package metadata; no security issues.
  - file: .gitignore
    status: safe
    summary: Standard gitignore, no security concerns.
  - file: LICENSE
    status: safe
    summary: Pure license file, no executable content.
  - file: Throne.desktop
    status: safe
    summary: Standard desktop entry launcher; no suspicious content or behavior found.
  - file: PKGBUILD
    status: safe
    summary: Standard pinned-checksum -bin PKGBUILD; installs only; no malicious behavior detected.
  - file: Throne.sh
    status: safe
    summary: Benign launcher that manages app config and runs the packaged Throne binary.
---

Materializing throne-bin from local mirror...
Materialized throne-bin
Analyzing throne-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD file only contains top-level variable and array assignments, followed by a `package()` function definition. There are no command substitutions (no `$()` or backticks) in the global scope that would execute arbitrary code during sourcing. All variable expansions (e.g., `$url`, `$_appver`) are standard string interpolations and do not trigger execution. No calls to `eval`, `curl`, `wget`, or other dangerous commands exist at the top level. Therefore, running `makepkg --printsrcinfo` (which only sources the PKGBUILD) is safe.
</details>
<evidence></evidence>
<summary>Sourcing PKGBUILD is safe; no top-level execution.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Sourcing PKGBUILD is safe; no top-level execution.
Reviewing the 6 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/6] Reviewing .SRCINFO...
[0/6] Reviewing .SRCINFO, .gitignore...
[0/6] Reviewing .SRCINFO, .gitignore, LICENSE...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard .SRCINFO metadata file for an AUR package. It defines the package `throne-bin`, pointing to its upstream GitHub repository and providing prebuilt binary downloads from the official releases. Checksums are included for all sources, and no unusual or suspicious directives are present. There is no embedded code, no obfuscation, and no attempt to fetch or execute anything outside the standard AUR workflow.
</details>
<evidence>
</evidence>
<summary>Standard AUR package metadata; no security issues.</summary>
</security_assessment>

[1/6] Reviewing .gitignore, LICENSE...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR package metadata; no security issues.
[1/6] Reviewing .gitignore, LICENSE, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `.gitignore` contains standard patterns for ignoring build artifacts (`pkg/`, `src/`, `*.png`, `*.zip`, `*.tar.zst`). There is no executable code, no network requests, no obfuscation, and no system modification. This is a normal AUR packaging file with no security issues.
</details>
<evidence></evidence>
<summary>Standard gitignore, no security concerns.</summary>
</security_assessment>

[2/6] Reviewing LICENSE, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard gitignore, no security concerns.
[2/6] Reviewing LICENSE, PKGBUILD, Throne.desktop...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a plaintext license document. It contains no executable instructions, no network requests, no obfuscated code, and no system modifications. It is a standard open-source license (ISC/BSD-0-Clause variant) with no security implications.
</details>
<evidence>
</evidence>
<summary>Pure license file, no executable content.</summary>
</security_assessment>

[2/6] Reviewing LICENSE, PKGBUILD, Throne.desktop, Throne.sh...
[3/6] Reviewing PKGBUILD, Throne.desktop, Throne.sh...
+ Reviewed LICENSE. Status: SAFE -- Pure license file, no executable content.
LLM auditresponse for Throne.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard freedesktop.org `.desktop` launcher entry. It defines a menu entry named "Throne" that executes the `throne` command with no arguments, uses a fixed icon name, and disables terminal and startup notification. There are no environment variables, no wrapper scripts, no network operations, no encoded or obfuscated content, and no file-system manipulation. The `Exec=throne` line is consistent with launching a normally installed application binary from the package, and no unusual or dangerous behavior is present. This file contains no evidence of malicious or supply-chain attack activity.
</details>
<evidence>
</evidence>
<summary>
Standard desktop entry launcher; no suspicious content or behavior found.</summary>
</security_assessment>

[4/6] Reviewing PKGBUILD, Throne.sh...
+ Reviewed Throne.desktop. Status: SAFE -- Standard desktop entry launcher; no suspicious content or behavior found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard `-bin` package: it declares all sources with pinned SHA-256 checksums, downloads prebuilt Throne archives from the project's own GitHub releases, and the `package()` function only installs files into the package directory (`$pkgdir`). There is no `eval`, base64 decoding, obfuscation, unexpected network activity, or execution of downloaded code during the build or install phase. The unusual `_appver` parameter expansion is a harmless version-tag transformation in this context and does not change the security assessment.
</details>
<evidence></evidence>
<summary>Standard pinned-checksum -bin PKGBUILD; installs only; no malicious behavior detected.</summary>
</security_assessment>

[5/6] Reviewing Throne.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard pinned-checksum -bin PKGBUILD; installs only; no malicious behavior detected.
LLM auditresponse for Throne.sh:
 <security_assessment>
<decision>SAFE</decision>
<details>
This is a straightforward shell launcher for the Throne application. It resolves the user config directory from `XDG_CONFIG_HOME` or `$HOME/.config`, prepares `Throne` app data, optionally migrates an existing `nekoray` config directory, archives old JSON config when a SQLite database is expected, removes stale geoip/geosite symlinks inside the app's own config directory, and then executes the packaged binary at `/opt/Throne/Throne`. All file operations are confined to the user's own configuration and app-data directories. There are no network requests, no downloads, no encoded or obfuscated commands, no `eval`, no writes to system paths, and no credential or data exfiltration.

The only minor concerns are hygiene-related: shell variables are not quoted, so paths containing spaces or glob characters could be mishandled, and the migration logic relies on normal filesystem checks. These are not security threats in this context. The script behaves consistently with normal upstream application packaging and does not show evidence of injected malicious code.
</details>
<evidence></evidence>
<summary>
Benign launcher that manages app config and runs the packaged Throne binary.
</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed Throne.sh. Status: SAFE -- Benign launcher that manages app config and runs the packaged Throne binary.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 16,465
  Completion Tokens: 6,700
  Total Tokens: 23,165
  Total Cost: $0.001401
  Execution Time: 117.18 seconds

Final Status: SAFE


No issues found.
