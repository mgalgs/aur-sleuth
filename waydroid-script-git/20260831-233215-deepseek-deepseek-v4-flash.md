---
package: waydroid-script-git
pkgver: r189.d5289cf
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: b9e20f728bbe0de1871ebaca31738c802edc31f8
prompt_tokens: 16032
completion_tokens: 2644
total_tokens: 18676
cost: 0.00172521440
execution_time: 109.08
files_reviewed: 6
files_skipped: 0
maintainer_files: 6
source_fetch: ok
upstream_files: 68
upstream_named_files: 1
unpinned_sources: 0
injection_attempts: 0
date: 2026-08-31T23:32:15Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no malicious content.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file, no malicious content.
  - file: LICENSE
    status: safe
    summary: Standard license file, no security issues.
  - file: REUSE.toml
    status: safe
    summary: Standard REUSE configuration file, no malicious content.
  - file: LICENSE
    status: safe
    summary: Standard license file, no security concerns.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD, no malicious behavior detected.
---

Cloning https://aur.archlinux.org/waydroid-script-git.git...
Cloned waydroid-script-git
Analyzing waydroid-script-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global scope and `pkgver()` function contain only benign operations. Global variables and the source array are standard for an AUR VCS package. The `pkgver()` function runs local git commands (`git rev-list` and `git rev-parse`) to construct a version string from the already-cloned repository; no external network requests or payload execution occurs. There are no top-level command substitutions, obfuscated code, or calls to `curl`, `wget`, `eval`, or similar dangerous constructs. The commands `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo` will only clone the upstream repository (via the standard `git+https` source) and source the PKGBUILD, both of which are safe. No code from `prepare()`, `build()`, or `package()` is executed during this gate.
</details>
<evidence></evidence>
<summary>Only benign git commands and variables execute.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Only benign git commands and variables execute.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: the PKGBUILD names 1 file(s) in the downloaded sources (src/waydroid_script/main.py); they are upstream content and were not reviewed.
Reviewing the 6 file(s) in the AUR repository. The 68 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/6] Reviewing .SRCINFO...
[0/6] Reviewing .SRCINFO, .gitignore...
[0/6] Reviewing .SRCINFO, .gitignore, LICENSE...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a metadata file for an AUR package. It contains only declarative information: package name, description, version, dependencies, and source URL. The source points to the upstream GitHub repository (`https://github.com/casualsnek/waydroid_script.git`), which is expected for a VCS package. The `sha256sums = SKIP` is standard for `-git` packages and not a security concern. There is no executable code, no obfuscation, no unexpected network requests, and no instructions to modify the system beyond normal packaging. The file is entirely benign.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file, no malicious content.</summary>
</security_assessment>

[1/6] Reviewing .gitignore, LICENSE...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no malicious content.
[1/6] Reviewing .gitignore, LICENSE, LICENSE...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file for an AUR package. It ignores common build artifacts (`src/`, `pkg/`), a specific directory (`waydroid_script/`), log files, and tar archives. There is no executable code, no network requests, no obfuscation, and no suspicious patterns. The file is purely a configuration file for Git version control and does not introduce any security risks.
</details>
<evidence></evidence>
<summary>Standard .gitignore file, no malicious content.</summary>
</security_assessment>

[1/6] Reviewing .gitignore, LICENSE, LICENSE, PKGBUILD...
[2/6] Reviewing LICENSE, LICENSE, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore file, no malicious content.
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a plain text license file (ISC-style) containing only a copyright notice and permission grant. It contains no executable commands, network requests, obfuscated code, or any other potentially malicious content. This is a standard packaging file with no security concerns.
</details>
<evidence></evidence>
<summary>Standard license file, no security issues.</summary>
</security_assessment>

[2/6] Reviewing LICENSE, LICENSE, PKGBUILD, REUSE.toml...
[3/6] Reviewing LICENSE, PKGBUILD, REUSE.toml...
+ Reviewed LICENSE. Status: SAFE -- Standard license file, no security issues.
LLM auditresponse for REUSE.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a REUSE.toml configuration file, used to declare copyright and license information for files in the repository. It contains only standard TOML annotations with file path globs and SPDX identifiers. There is no executable code, no network requests, no obfuscation, and no system modification commands. The file is purely metadata and presents no security risk.
</details>
<evidence></evidence>
<summary>Standard REUSE configuration file, no malicious content.</summary>
</security_assessment>

[4/6] Reviewing LICENSE, PKGBUILD...
+ Reviewed REUSE.toml. Status: SAFE -- Standard REUSE configuration file, no malicious content.
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard ISC license text. It contains no executable code, no network requests, no obfuscation, and no system modification commands. There are no security concerns.
</details>
<evidence></evidence>
<summary>Standard license file, no security concerns.</summary>
</security_assessment>

[5/6] Reviewing PKGBUILD...
+ Reviewed LICENSE. Status: SAFE -- Standard license file, no security concerns.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard VCS package for the `waydroid-script` tool. It fetches the source from the project's own GitHub repository (`casualsnek/waydroid_script`), copies the files to `/opt/waydroid-script/`, installs a symlink to `/usr/bin/waydroid-extras`, compiles Python bytecode, and cleans up non-essential files. There are no suspicious network requests, obfuscated commands, or unexpected system modifications. The `sha256sums` is `SKIP`, which is normal for VCS sources. The only notable anomaly is a dependency on `python>=3.14`, which is not a security issue—it is likely a maintainer error or an attempt to force a future Python version, but it does not introduce any malicious behavior. No evidence of data exfiltration, backdoors, or supply-chain attack vectors was found.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD, no malicious behavior detected.</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD, no malicious behavior detected.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 16,032
  Completion Tokens: 2,644
  Total Tokens: 18,676
  Total Cost: $0.001725
  Execution Time: 109.08 seconds

Final Status: SAFE


No issues found.
