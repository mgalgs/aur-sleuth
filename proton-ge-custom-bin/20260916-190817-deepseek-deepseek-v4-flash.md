---
package: proton-ge-custom-bin
pkgver: GE_Proton11_7
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 64476
completion_tokens: 8918
total_tokens: 73394
cost: 0.006914208
execution_time: 229.34
files_reviewed: 10
files_skipped: 0
maintainer_files: 10
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-16T19:08:17Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore with no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with pinned checksums and official upstream sources; no security issues found.
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config, no malicious behavior.
  - file: changelog.md
    status: safe
    summary: Changelog file, no executable content.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with pinned checksums, no malice found.
  - file: add-to-changelog.sh
    status: safe
    summary: Standard maintainer helper script, no malicious behavior.
  - file: pleasenote.install
    status: safe
    summary: Informational install script, no unsafe operations.
  - file: pam_limits.conf
    status: safe
    summary: Standard PAM nice-limit config for games group; no malicious behavior.
  - file: user_settings.py
    status: safe
    summary: Configuration template with only commented-out Proton/Wine/DXVK environment variables; no executable or malicious content.
  - file: launcher.sh
    status: safe
    summary: No malicious behavior found; only routine environment setup and directory creation.
---

Materializing proton-ge-custom-bin from local mirror...
Materialized proton-ge-custom-bin
Analyzing proton-ge-custom-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only top-level variable definitions and array assignments. There are no command substitutions, backticks, `$()`, or any executable code at the global scope that would run when the file is sourced by `makepkg --printsrcinfo`. The `build()` and `package()` functions contain `sed`, `strip`, `install`, and `mv` commands, but those functions are not executed during this step. All source URLs are static strings, and no network operations are performed during sourcing. No malicious or dangerous code is present at the top level.
</details>
<evidence></evidence>
<summary>No malicious code executes when sourcing the PKGBUILD.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code executes when sourcing the PKGBUILD.
Reviewing the 10 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/10] Reviewing .SRCINFO...
[0/10] Reviewing .SRCINFO, .gitignore...
[0/10] Reviewing .SRCINFO, .gitignore, .nvchecker.toml...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` for an AUR package (proton-ge-custom-bin). It contains only patterns to exclude build artifacts (`pkg/`, `src/`, `*.tar.zst`, `GE*.tar.gz`, `GE*.tar.gz.part`) and IDE/editor directories (`.trunk/`, `.vscode/`, `.idea`). There is no executable code, no network requests, no obfuscation, and no system modifications. The content is entirely benign and follows normal packaging practices.
</details>
<evidence>
</evidence>
<summary>Standard .gitignore with no security concerns.</summary>
</security_assessment>

[0/10] Reviewing .SRCINFO, .gitignore, .nvchecker.toml, PKGBUILD...
[1/10] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore with no security concerns.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file is a standard AUR package metadata file for `proton-ge-custom-bin`. It declares the package description, version, dependencies, and sources. All local helper files (`user_settings.py`, `launcher.sh`, `pam_limits.conf`) have pinned SHA-512 checksums. The main binary tarballs are fetched from the official upstream GitHub releases (`GloriousEggroll/proton-ge-custom`) with pinned checksums for both `x86_64` and `aarch64`. No suspicious network endpoints, no dynamic or obfuscated content, no unpinned VCS sources, and no post-download code execution instructions are present. The file is consistent with normal packaging practice and contains no indicators of malicious supply-chain behavior.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata with pinned checksums and official upstream sources; no security issues found.
</summary>
</security_assessment>

[1/10] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD, add-to-changelog.sh...
[2/10] Reviewing .nvchecker.toml, PKGBUILD, add-to-changelog.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with pinned checksums and official upstream sources; no security issues found.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a configuration for nvchecker, a tool that checks for new versions of software. It defines a source as a git repository URL pointing to the official upstream project (GloriousEggroll/proton-ge-custom) with rules for extracting the latest tag and transforming it into a version string. No commands are executed, no data is exfiltrated, and no unexpected network destinations are specified. The behavior is entirely standard for version-checking configurations and poses no security risk.
</details>
<evidence></evidence>
<summary>Standard nvchecker config, no malicious behavior.</summary>
</security_assessment>

[2/10] Reviewing .nvchecker.toml, PKGBUILD, add-to-changelog.sh, changelog.md...
[3/10] Reviewing PKGBUILD, add-to-changelog.sh, changelog.md...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config, no malicious behavior.
LLM auditresponse for changelog.md:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a changelog (release notes) for GE-Proton custom builds. It contains only human-readable text describing fixes, additions, and version updates. No executable code, shell commands, network requests, or obfuscated content is present. The file does not attempt to exfiltrate data, download or execute code, or perform any system modifications. All external references are standard GitHub commit and issue URLs pointing to the project&#x27;s own repository. There is no evidence of injected malicious behavior.
</details>
<evidence>
</evidence>
<summary>Changelog file, no executable content.</summary>
</security_assessment>

[3/10] Reviewing PKGBUILD, add-to-changelog.sh, changelog.md, launcher.sh...
[4/10] Reviewing PKGBUILD, add-to-changelog.sh, launcher.sh...
+ Reviewed changelog.md. Status: SAFE -- Changelog file, no executable content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD defines a standard binary package (`proton-ge-custom-bin`) that downloads prebuilt tarballs from the official GitHub releases of GloriousEggroll/proton-ge-custom. All source checksums are pinned (not SKIP). The `build()` and `package()` functions perform only expected packaging operations: minor path substitutions via `sed`, stripping of wine binaries, and installing files into the correct directories. No obfuscated code, suspicious network requests, or commands that could exfiltrate data or install backdoors are present. The configuration files (`user_settings.py`, `pam_limits.conf`, `launcher.sh`) are included from the AUR source itself, which is typical for packages that bundle their own defaults. The use of `install --mode=0775 --group=50` and installing a limits.d file for the games group is standard practice for gaming-related packages. There is no evidence of supply-chain injection or malicious behavior in this PKGBUILD.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with pinned checksums, no malice found.</summary>
</security_assessment>

[4/10] Reviewing PKGBUILD, add-to-changelog.sh, launcher.sh, pam_limits.conf...
[5/10] Reviewing add-to-changelog.sh, launcher.sh, pam_limits.conf...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with pinned checksums, no malice found.
LLM auditresponse for add-to-changelog.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a maintainer helper that fetches release notes from the official GitHub API of the upstream project (GloriousEggroll/proton-ge-custom) and prepends them to a local `changelog.md`. It uses `curl` and `jq` as expected for this purpose, and all network requests target the project’s own GitHub releases endpoint – an expected and legitimate source. There is no obfuscation, encoded commands, execution of downloaded payloads, or any operation that exfiltrates data or modifies system files outside the intended workflow. The script relies on the PKGBUILD file for version information, but that file is part of the same repository and its review is separate; sourcing it is standard practice for such helpers. No supply-chain attack vectors are present.
</details>
<evidence></evidence>
<summary>Standard maintainer helper script, no malicious behavior.</summary>
</security_assessment>

[5/10] Reviewing add-to-changelog.sh, launcher.sh, pam_limits.conf, pleasenote.install...
[6/10] Reviewing launcher.sh, pam_limits.conf, pleasenote.install...
+ Reviewed add-to-changelog.sh. Status: SAFE -- Standard maintainer helper script, no malicious behavior.
LLM auditresponse for pleasenote.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is an installation script (`.install`) that only displays informational messages to the user. It does not execute any commands, make network requests, modify system files, or perform any operations beyond echoing text. The messages advise adding the user to the `games` group to allow Wine to adjust niceness, which is a standard system configuration step for gaming-related packages. There is no obfuscation, no dangerous function calls, and no behavior that deviates from expected packaging practices. The file is harmless.
</details>
<evidence>
</evidence>
<summary>Informational install script, no unsafe operations.</summary>
</security_assessment>

[6/10] Reviewing launcher.sh, pam_limits.conf, pleasenote.install, user_settings.py...
[7/10] Reviewing launcher.sh, pam_limits.conf, user_settings.py...
+ Reviewed pleasenote.install. Status: SAFE -- Informational install script, no unsafe operations.
LLM auditresponse for pam_limits.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard PAM limits configuration snippet. It grants the `games` group a negative nice value limit of -11, allowing processes in that group to raise their scheduling priority. This is a routine resource-limit adjustment commonly used by gaming-related packages to improve performance. It does not contain any network activity, code execution, obfuscation, file exfiltration, or modification of unrelated system files. The configuration is consistent with the package's stated purpose and is not a security threat.
</details>
<evidence>
</evidence>
<summary>
Standard PAM nice-limit config for games group; no malicious behavior.</summary>
</security_assessment>

[8/10] Reviewing launcher.sh, user_settings.py...
+ Reviewed pam_limits.conf. Status: SAFE -- Standard PAM nice-limit config for games group; no malicious behavior.
LLM auditresponse for user_settings.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a user-facing configuration template for Proton GE, containing a Python dictionary of commented-out environment variable settings. Every single setting is commented out (prefixed with `#`), so there is no executable code, no function calls, and no logic that runs at all. The settings themselves are standard, well-known Proton, Wine, DXVK, and GStreamer environment variables (e.g., `PROTON_NO_D3D12`, `DXVK_HUD`, `WINE_FULLSCREEN_FSR_MODE`) used for game compatibility tuning — exactly what this package is designed to provide.

There are no network requests, no file system modifications, no obfuscated or encoded content, no use of dangerous commands (eval, base64, curl, wget), and no attempts to access or exfiltrate sensitive data. The file is a commented template whose only purpose is to let users uncomment the options they want for their games. This is entirely consistent with ordinary, legitimate packaging practices for a Proton GE distribution.
</details>
<evidence></evidence>
<summary>Configuration template with only commented-out Proton/Wine/DXVK environment variables; no executable or malicious content.</summary>
</security_assessment>

[9/10] Reviewing launcher.sh...
+ Reviewed user_settings.py. Status: SAFE -- Configuration template with only commented-out Proton/Wine/DXVK environment variables; no executable or malicious content.
LLM auditresponse for launcher.sh:
<security_assessment>
  <decision>SAFE</decision>
  <details>
The visible script is a Proton launcher helper. It performs routine environment setup: exporting STEAM_COMPAT_CLIENT_INSTALL_PATH, STEAM_COMPAT_DATA_PATH, SteamAppId, and DXVK_STATE_CACHE_PATH when unset, and creating the corresponding prefix and cache directories with install -d. It also has an optional debug mode that prints environment variables. No network requests, no eval, no base64 or obfuscated payloads, no file exfiltration, and no writes outside user-controlled data and cache directories were observed. The GitHub URL in the comments is documentation only and is not fetched or executed.

The file appears truncated and contains shell syntax errors, such as if statements without then, but these are packaging or quality issues rather than evidence of malicious behavior. No red flags such as curl-piped-to-bash, hidden encoded commands, backdoors, or tampering with unrelated system files are present.
  </details>
  <evidence></evidence>
  <summary>No malicious behavior found; only routine environment setup and directory creation.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed launcher.sh. Status: SAFE -- No malicious behavior found; only routine environment setup and directory creation.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 64,476
  Completion Tokens: 8,918
  Total Tokens: 73,394
  Total Cost: $0.006914
  Execution Time: 229.34 seconds

Final Status: SAFE


No issues found.
