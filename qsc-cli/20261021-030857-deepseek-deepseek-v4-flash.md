---
package: qsc-cli
pkgver: 1.28.3
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 23736
completion_tokens: 5703
total_tokens: 29439
cost: 0.003197922
execution_time: 62.48
files_reviewed: 6
files_skipped: 0
maintainer_files: 6
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-21T03:08:57Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard AUR .gitignore file, no security issues.
  - file: LICENSE.Qualcomm
    status: safe
    summary: Plaintext license file with no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no threats.
  - file: qsc-cli.install
    status: safe
    summary: Standard package install scripts, no suspicious activity.
  - file: qsc-cli.tmpfiles
    status: safe
    summary: Static tmpfiles config, no malicious behavior.
  - file: PKGBUILD
    status: safe
    summary: Legitimate AUR packaging of Qualcomm Software Center CLI.
---

Materializing qsc-cli from local mirror...
Materialized qsc-cli
Analyzing qsc-cli AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources only the top-level scope of this PKGBUILD. The top-level content consists entirely of standard variable/array definitions (`pkgname`, `pkgver`, `source`, `sha256sums`, etc.) and function definitions (`_patch_bytes`, `prepare`, `build`, `package`). No commands in the global scope perform network access, download and execute payloads, exfiltrate data, or modify the system.

Potentially notable behavior — byte-patching bundled executables, running `patchelf`, building a `libsasl2` stub, and installing under `/opt/qcom` — occurs only inside `prepare()`, `build()`, and `package()`, which are not executed by `makepkg --printsrcinfo`. Those functions are out of scope for this narrow gate and should be reviewed in the full PKGBUILD audit.
</details>
<evidence>
</evidence>
<summary>
Top-level scope only defines variables and functions; no malicious execution occurs.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level scope only defines variables and functions; no malicious execution occurs.
Reviewing the 6 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/6] Reviewing .SRCINFO...
[0/6] Reviewing .SRCINFO, .gitignore...
[0/6] Reviewing .SRCINFO, .gitignore, LICENSE.Qualcomm...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.gitignore` file is a standard Git ignore rule set used by AUR maintainers to track only the essential files for the package repository. It ignores all files by default (`*`) and then un-ignores specific files (`PKGBUILD`, `.SRCINFO`, `*.install`, `*.tmpfiles`, `LICENSE.Qualcomm`) that are part of the AUR package. No malicious behavior, network requests, obfuscated code, or system modifications are present.
</details>
<evidence></evidence>
<summary>Standard AUR .gitignore file, no security issues.</summary>
</security_assessment>

[0/6] Reviewing .SRCINFO, .gitignore, LICENSE.Qualcomm, PKGBUILD...
[1/6] Reviewing .SRCINFO, LICENSE.Qualcomm, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard AUR .gitignore file, no security issues.
LLM auditresponse for LICENSE.Qualcomm:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a plaintext license agreement from Qualcomm. It contains no executable code, scripts, network requests, or obfuscated content. It is merely a documentation file included from the upstream package and poses no security risk.
</details>
<evidence></evidence>
<summary>Plaintext license file with no security issues.</summary>
</security_assessment>

[2/6] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed LICENSE.Qualcomm. Status: SAFE -- Plaintext license file with no security issues.
[2/6] Reviewing .SRCINFO, PKGBUILD, qsc-cli.install...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR `.SRCINFO` metadata file. It contains package definitions, dependencies, source URLs, and checksums. There is no executable code or embedded commands. The source URL points to Qualcomm's official HTTPS domain, and all three source files have corresponding SHA-256 checksums. No obfuscation, suspicious network requests, or malicious patterns are present. The file simply describes the package for AUR helpers.
</details>
<evidence></evidence>
<summary>Standard AUR metadata, no threats.</summary>
</security_assessment>

[3/6] Reviewing PKGBUILD, qsc-cli.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no threats.
[3/6] Reviewing PKGBUILD, qsc-cli.install, qsc-cli.tmpfiles...
LLM auditresponse for qsc-cli.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Arch Linux `.install` script that handles package lifecycle hooks (`post_install`, `post_upgrade`, `pre_remove`). It copies `.dat` files between two system directories (`/usr/share/qsc-cli/qik-components` and `/var/lib/qcom/data/qik/components`) using `install` and `rm`, and runs `systemd-tmpfiles --create` to ensure required directories exist. There are no network requests, obfuscated code, dangerous commands, or any operation that deviates from normal packaging behavior. The actions are limited to the package&#8217;s own data directories and serve only to maintain its component files during installation, upgrades, and removal.
</details>
<evidence>
</evidence>
<summary>Standard package install scripts, no suspicious activity.</summary>
</security_assessment>

[4/6] Reviewing PKGBUILD, qsc-cli.tmpfiles...
+ Reviewed qsc-cli.install. Status: SAFE -- Standard package install scripts, no suspicious activity.
LLM auditresponse for qsc-cli.tmpfiles:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a systemd-tmpfiles configuration file that creates directories and files under `/var/tmp/qcom/` and `/var/lib/qcom/` with world-writable permissions (0777 for directories, 0666 for files). The comments explain the rationale: the same paths are written by both root (via `sudo qsc-cli tool ...`) and the unprivileged user, and the qik tool itself resets these modes when running as root.  

While world-writable directories may be a general security consideration (risk of unauthorized file creation or symlink attacks), this is an upstream design choice for application state sharing, not a supply-chain attack. The file contains no executable code, no network requests, no obfuscation, and no deviation from standard AUR packaging practices. There is no evidence of injected malicious behavior.
</details>
<evidence></evidence>
<summary>Static tmpfiles config, no malicious behavior.</summary>
</security_assessment>

[5/6] Reviewing PKGBUILD...
+ Reviewed qsc-cli.tmpfiles. Status: SAFE -- Static tmpfiles config, no malicious behavior.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD packages the official Qualcomm Software Center CLI for Arch Linux. It downloads the upstream .deb from the Qualcomm domain with a pinned SHA-256 checksum, extracts and repackages the contents, and applies small patches for Arch compatibility—handling the absence of VERSION_ID in /etc/os-release and removing a dangerous /tmp-based RUNPATH entry. All actions are transparent, well-documented, and consistent with standard packaging practices. There is no obfuscation, no code downloaded from unexpected hosts, no data exfiltration, and no backdoor or reverse shell. The RPATH strip and the libsasl2 compatibility stub are security-positive changes. No evidence of malicious or dangerous behaviour was found.
</details>
<evidence>
</evidence>
<summary>Legitimate AUR packaging of Qualcomm Software Center CLI.</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Legitimate AUR packaging of Qualcomm Software Center CLI.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 23,736
  Completion Tokens: 5,703
  Total Tokens: 29,439
  Total Cost: $0.003198
  Execution Time: 62.48 seconds

Final Status: SAFE


No issues found.
