---
package: proton-ge-custom-bin
pkgver: GE_Proton11_12
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 28493
completion_tokens: 8752
total_tokens: 37245
cost: 0.004185727
execution_time: 51.18
files_reviewed: 8
files_skipped: 0
maintainer_files: 8
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-03T08:04:11Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR package metadata; no unsafe content.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file, benign.
  - file: .nvchecker.toml
    status: safe
    summary: Legitimate nvchecker config for upstream version checking.
  - file: pam_limits.conf
    status: safe
    summary: Legitimate PAM limits configuration for gaming.
  - file: pleasenote.install
    status: safe
    summary: Informational install script, no malicious content.
  - file: launcher.sh
    status: safe
    summary: Standard Proton launcher wrapper, no malicious behavior.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR binary package with no malicious behavior.
  - file: user_settings.py
    status: safe
    summary: Inert configuration template with no harmful code.
---

Materializing proton-ge-custom-bin from local mirror...
Materialized proton-ge-custom-bin
Analyzing proton-ge-custom-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global scope contains only standard metadata, dependency arrays, path variables, source arrays, checksums, and function definitions. The only expansions at top level are benign parameter substitutions such as `${pkgname//-bin/}`, `${pkgver//_/-}`, and `${_pkgver}-${CARCH}`; none invoke external commands, download content, evaluate encoded data, or modify the system.

The `build()` and `package()` functions are not executed by `makepkg --printsrcinfo`, so their `sed`, `strip`, `install`, and `mv` operations are out of scope for this gate. The sources are declared from the project's own GitHub upstream, and no top-level command substitution or executable payload runs while sourcing the PKGBUILD.
</details>
<evidence>
</evidence>
<summary>Top-level PKGBUILD code is benign; no execution during printsrcinfo.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD code is benign; no execution during printsrcinfo.
Reviewing the 8 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/8] Reviewing .SRCINFO...
[0/8] Reviewing .SRCINFO, .gitignore...
[0/8] Reviewing .SRCINFO, .gitignore, .nvchecker.toml...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a metadata file (`.SRCINFO`) that describes an AUR package. It contains no executable code; it only defines package metadata, dependencies, source URLs, and checksums. The source URLs point to the official GitHub releases of `proton-ge-custom` and are pinned to a specific version (`GE-Proton11-12`). Proper SHA-512 checksums are provided for all source files, meaning the artifact integrity is verifiable. The references to helper scripts (like `pleasenote.install`) and configuration snippets are standard AUR packaging practice. There is no evidence of obfuscation, network exfiltration, backdoors, or any deviation from normal packaging operations.
</details>
<evidence></evidence>
<summary>Standard AUR package metadata; no unsafe content.</summary>
</security_assessment>

[1/8] Reviewing .gitignore, .nvchecker.toml...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR package metadata; no unsafe content.
[1/8] Reviewing .gitignore, .nvchecker.toml, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` file containing common ignore patterns for a development environment. It lists directories and file extensions to be excluded from version control. No suspicious commands, network requests, encoded data, or other indicators of malicious activity are present.
</details>
<evidence>
</evidence>
<summary>Standard .gitignore file, benign.</summary>
</security_assessment>

[2/8] Reviewing .nvchecker.toml, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore file, benign.
[2/8] Reviewing .nvchecker.toml, PKGBUILD, launcher.sh...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a configuration for nvchecker, a tool used to automatically check for new upstream releases. It defines a source as the official `git` repository of GloriousEggroll's `proton-ge-custom` project, which is the expected upstream for this package. The configuration specifies tag-matching patterns and a version template for the package. There are no network requests, code execution, obfuscation, or suspicious operations present. The file contains only static configuration directives and is a normal, non-executable part of an AUR packaging workflow.
</details>
<evidence>
</evidence>
<summary>Legitimate nvchecker config for upstream version checking.</summary>
</security_assessment>

[2/8] Reviewing .nvchecker.toml, PKGBUILD, launcher.sh, pam_limits.conf...
[3/8] Reviewing PKGBUILD, launcher.sh, pam_limits.conf...
+ Reviewed .nvchecker.toml. Status: SAFE -- Legitimate nvchecker config for upstream version checking.
LLM auditresponse for pam_limits.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `pam_limits.conf` contains a single PAM limits directive that grants the `games` group a nice priority of -11 (a higher scheduling priority). This is a standard system configuration adjustment, consistent with the stated purpose of a gaming-related package. It does not exhibit any obfuscation, network activity, file exfiltration, or execution of untrusted code. The configuration follows normal practices for system resource tuning and is not indicative of a supply-chain attack.
</details>
<evidence>
</evidence>
<summary>
Legitimate PAM limits configuration for gaming.
</summary>
</security_assessment>

[3/8] Reviewing PKGBUILD, launcher.sh, pam_limits.conf, pleasenote.install...
[4/8] Reviewing PKGBUILD, launcher.sh, pleasenote.install...
+ Reviewed pam_limits.conf. Status: SAFE -- Legitimate PAM limits configuration for gaming.
LLM auditresponse for pleasenote.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.install` script for the `proton-ge-custom-bin` AUR package. It contains `post_install()` and `post_upgrade()` functions that only print informational messages to the user, advising them to add themselves to the `games` group for nice-level adjustments. No network requests, file operations, code execution, or obfuscation is present. The script performs no actions beyond echoing text. There are no security issues.
</details>
<evidence>
</evidence>
<summary>Informational install script, no malicious content.</summary>
</security_assessment>

[4/8] Reviewing PKGBUILD, launcher.sh, pleasenote.install, user_settings.py...
[5/8] Reviewing PKGBUILD, launcher.sh, user_settings.py...
+ Reviewed pleasenote.install. Status: SAFE -- Informational install script, no malicious content.
LLM auditresponse for launcher.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard Proton GE launcher wrapper. It sets up environment variables (STEAM_COMPAT_DATA_PATH, DXVK_STATE_CACHE_PATH, etc.) needed by Proton, creates prefix and cache directories with `install -d`, and then executes the Proton binary. The code contains no network requests, no download of external content, no obfuscated commands, and no execution of attacker-controlled code. All operations are limited to environment configuration and running a locally installed binary. References to an external cache repository appear only in help text and are never fetched by the script. The logic is consistent with expected Proton launcher behavior and does not exfiltrate data, install backdoors, or perform any supply‑chain injection.
</details>
<evidence></evidence>
<summary>Standard Proton launcher wrapper, no malicious behavior.</summary>
</security_assessment>

[6/8] Reviewing PKGBUILD, user_settings.py...
+ Reviewed launcher.sh. Status: SAFE -- Standard Proton launcher wrapper, no malicious behavior.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard practices for a prebuilt binary package. It downloads tarballs from the project's official GitHub releases with pinned sha512 checksums, patches path references and version strings, and installs configuration files to expected locations (e.g., `/etc/security/limits.d/` for gaming-related resource limits). There are no suspicious network requests, obfuscated commands, backdoors, or attempts to exfiltrate data. The reference to a custom install script (`pleasenote.install`) is a naming choice and not inherently malicious. While the `build()` function includes `strip` and `sed` operations, these only adjust the upstream binaries and text files as part of normal packaging, not to inject code.
</details>
<evidence></evidence>
<summary>Standard AUR binary package with no malicious behavior.</summary>
</security_assessment>

[7/8] Reviewing user_settings.py...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR binary package with no malicious behavior.
LLM auditresponse for user_settings.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is an inert configuration template for Proton-GE. It defines a Python dictionary (`user_settings = {}`) where all entries are commented out. The included settings are standard, well-documented Proton/Wine/DXVK environment variables (e.g., `PROTON_NO_D3D12`, `WINE_FULLSCREEN_FSR`, `DXVK_LOG_LEVEL`). There is no executable logic, no network requests, no file system modifications, no obfuscated code, and no dangerous commands (`eval`, `curl`, `wget`, `base64` decode). The file serves purely as documentation and a user-configurable list of options. Its active runtime representation is an empty dictionary, making it completely safe.
</details>
<evidence>
</evidence>
<summary>Inert configuration template with no harmful code.</summary>
</security_assessment>

[8/8] Reviewing ...
+ Reviewed user_settings.py. Status: SAFE -- Inert configuration template with no harmful code.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 28,493
  Completion Tokens: 8,752
  Total Tokens: 37,245
  Total Cost: $0.004186
  Execution Time: 51.18 seconds

Final Status: SAFE


No issues found.
