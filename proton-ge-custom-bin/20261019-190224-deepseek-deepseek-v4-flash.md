---
package: proton-ge-custom-bin
pkgver: GE_Proton11_11
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 28321
completion_tokens: 4659
total_tokens: 32980
cost: 0.003425149
execution_time: 83.02
files_reviewed: 8
files_skipped: 0
maintainer_files: 8
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-19T19:02:23Z
file_verdicts:
  - file: .nvchecker.toml
    status: safe
    summary: Static config file for version checker, no risk.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, safe.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file, no malicious content.
  - file: pam_limits.conf
    status: safe
    summary: Standard PAM limits configuration for gaming group.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR package, no malicious behavior.
  - file: pleasenote.install
    status: safe
    summary: Simple informational install script; no malicious or suspicious behavior found.
  - file: launcher.sh
    status: safe
    summary: Standard Proton launcher script with no malicious behavior.
  - file: user_settings.py
    status: safe
    summary: Inactive configuration template with no code execution.
---

Materializing proton-ge-custom-bin from local mirror...
Materialized proton-ge-custom-bin
Analyzing proton-ge-custom-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources only the global/top-level scope of this PKGBUILD. The top-level content consists exclusively of variable assignments, arrays, and the `source`/checksum declarations. There are no top-level command substitutions, no invocations of `curl`, `wget`, `eval`, `base64`, or any other executable code, and no obfuscated content.

The `build()` and `package()` functions contain file operations and edits, but those are not executed by `makepkg --printsrcinfo` and are therefore out of scope for this narrow gate. Their content also appears consistent with normal packaging for this type of Proton package. No genuinely malicious behavior can execute during this metadata-printing step.
</details>
<evidence>
</evidence>
<summary>
Top-level PKGBUILD is safe; no executable or malicious code runs during metadata parsing.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD is safe; no executable or malicious code runs during metadata parsing.
Reviewing the 8 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/8] Reviewing .SRCINFO...
[0/8] Reviewing .SRCINFO, .gitignore...
[0/8] Reviewing .SRCINFO, .gitignore, .nvchecker.toml...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a configuration file for the `nvchecker` tool, used to automatically check for new upstream releases. It specifies a Git source, a URL to the official GloriousEggroll Proton GE Custom repository, and patterns for parsing version tags. No commands, network requests in the file itself, obfuscation, or suspicious operations are present. It is purely declarative data.
</details>
<evidence></evidence>
<summary>Static config file for version checker, no risk.</summary>
</security_assessment>

[0/8] Reviewing .SRCINFO, .gitignore, .nvchecker.toml, PKGBUILD...
[1/8] Reviewing .SRCINFO, .gitignore, PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Static config file for version checker, no risk.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a standard metadata file for Arch User Repository packages. It contains package base name, version, dependencies, source URLs with pinned checksums (sha512sums), and architecture-specific information. All downloads point to the project's official GitHub repository. There are no executable commands, obfuscated content, network requests targeting unknown hosts, or any other indicators of malicious behavior. The file is purely declarative and poses no security risk.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file, safe.</summary>
</security_assessment>

[1/8] Reviewing .SRCINFO, .gitignore, PKGBUILD, launcher.sh...
[2/8] Reviewing .gitignore, PKGBUILD, launcher.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, safe.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file used to exclude build artifacts (`pkg/`, `src/`), compressed archives (`*.tar.zst`, `GE*.tar.gz`), and editor/IDE configuration directories (`.trunk/`, `.vscode/`, `.idea/`) from version control. No suspicious commands, network requests, obfuscated content, or system modifications are present. The file contains only benign pattern-matching rules and poses no security risk.
</details>
<evidence></evidence>
<summary>Standard .gitignore file, no malicious content.</summary>
</security_assessment>

[3/8] Reviewing PKGBUILD, launcher.sh...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore file, no malicious content.
[3/8] Reviewing PKGBUILD, launcher.sh, pam_limits.conf...
LLM auditresponse for pam_limits.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard PAM limits configuration snippet (`pam_limits.conf`) that sets a nice priority limit of -11 for the `games` group. This is a common practice for gaming-related packages to allow the group to request higher scheduling priority, improving performance for real-time or latency-sensitive applications. No network requests, obfuscation, system modifications beyond the intended scope, or any other signs of malicious behavior are present. The file contains only a single, straightforward configuration line.
</details>
<evidence></evidence>
<summary>Standard PAM limits configuration for gaming group.</summary>
</security_assessment>

[3/8] Reviewing PKGBUILD, launcher.sh, pam_limits.conf, pleasenote.install...
[4/8] Reviewing PKGBUILD, launcher.sh, pleasenote.install...
+ Reviewed pam_limits.conf. Status: SAFE -- Standard PAM limits configuration for gaming group.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard Arch packaging practices. All sources are fetched from the official upstream GitHub releases with verified sha512sums. The build and package functions perform only expected operations: patching, stripping, installing files, and moving the extracted tarball contents. No obfuscated code, backdoors, unauthorized network requests, or exfiltration of data are present. The only minor concern is the `install --mode=0775 --group=50` for `user_settings.py`, which sets permissive group-write permissions with an unspecified GID. This is not a supply-chain attack; it is a packaging permission choice that may be intentional for shared configuration but is not inherently malicious. Based on the criteria provided, this file is safe.
</details>
<evidence></evidence>
<summary>Standard AUR package, no malicious behavior.</summary>
</security_assessment>

[4/8] Reviewing PKGBUILD, launcher.sh, pleasenote.install, user_settings.py...
[5/8] Reviewing launcher.sh, pleasenote.install, user_settings.py...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR package, no malicious behavior.
LLM auditresponse for pleasenote.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.install` script contains only informational `echo` messages in `post_install()` and a `post_upgrade()` hook that simply calls `post_install()`. It does not download, execute, obfuscate, exfiltrate data, modify system files, or perform any privileged operations. Mentioning that users may join the `games` group for Wine nice-level behavior is consistent with the package's stated gaming purpose and is not malicious.
</details>
<evidence>
</evidence>
<summary>
Simple informational install script; no malicious or suspicious behavior found.</summary>
</security_assessment>

[6/8] Reviewing launcher.sh, user_settings.py...
+ Reviewed pleasenote.install. Status: SAFE -- Simple informational install script; no malicious or suspicious behavior found.
LLM auditresponse for launcher.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a launcher for Proton that sets required environment variables and executes the Proton binary with the given arguments. It performs no network operations, no code execution from external sources, and no obfuscation. The only commands used are variable assignment, condition checks, directory creation via `install -d`, and execution of the Proton binary at the path set in the `_proton` variable. All behavior is consistent with its stated purpose as a helper to run Proton outside of Steam. No evidence of injected malicious code, data exfiltration, backdoors, or supply-chain attack was found.
</details>
<evidence>
</evidence>
<summary>Standard Proton launcher script with no malicious behavior.</summary>
</security_assessment>

[7/8] Reviewing user_settings.py...
+ Reviewed launcher.sh. Status: SAFE -- Standard Proton launcher script with no malicious behavior.
LLM auditresponse for user_settings.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a configuration template for Proton GE. It contains a Python dictionary (`user_settings`) where all entries are commented out, serving as documentation for available runtime environment variables and their purposes. No active code, network requests, system modifications, or obfuscation is present. The file is purely informational and poses no security risk.
</details>
<evidence>
</evidence>
<summary>Inactive configuration template with no code execution.</summary>
</security_assessment>

[8/8] Reviewing ...
+ Reviewed user_settings.py. Status: SAFE -- Inactive configuration template with no code execution.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 28,321
  Completion Tokens: 4,659
  Total Tokens: 32,980
  Total Cost: $0.003425
  Execution Time: 83.02 seconds

Final Status: SAFE


No issues found.
