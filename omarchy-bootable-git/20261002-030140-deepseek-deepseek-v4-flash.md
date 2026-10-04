---
package: omarchy-bootable-git
pkgver: r23.3fdd881
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 13996
completion_tokens: 3439
total_tokens: 17435
cost: 0.000876708
execution_time: 32.69
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-02T03:01:40Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file with no malicious content.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore with benign build-artifact patterns; no security concerns.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR -git PKGBUILD, no malicious code.
  - file: omarchy-bootable.install
    status: safe
    summary: Install scriptlet contains only informational echo messages; no security issues found.
  - file: omarchy-bootable-setup
    status: safe
    summary: Legitimate plugin installation script; no malicious behavior.
---

Materializing omarchy-bootable-git from local mirror...
Materialized omarchy-bootable-git
Analyzing omarchy-bootable-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` only sources the PKGBUILD's global scope. This PKGBUILD contains only static variable assignments, an array source definition, and function definitions (`pkgver`, `package`). No code executes at the top level beyond the variable assignments and function definitions, and no commands such as `curl`, `wget`, `eval`, `base64`, or command substitutions occur in that scope. The `pkgver()` and `package()` functions are not executed during `--printsrcinfo`, so they are out of scope for this gate. No malicious top-level behavior is present.
</details>
<evidence>
</evidence>
<summary>
No top-level code executes; only static definitions and functions.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level code executes; only static definitions and functions.
Reviewing the 5 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, .gitignore...
[0/5] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.SRCINFO` metadata file for an Arch User Repository package. It declares the package name, version, dependencies, and sources. All three source entries originate from the project&#39;s own GitHub repository (`github.com/debpalash/omarchy-bootable`). The `sha256sums` are set to `SKIP`, which is normal and expected for VCS (git) sources. There is no executable code, no obfuscation, no unexpected network requests, and no system-modifying operations. The file contains only declarative metadata and poses no security threat.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file with no malicious content.</summary>
</security_assessment>

[0/5] Reviewing .SRCINFO, .gitignore, PKGBUILD, omarchy-bootable-setup...
[1/5] Reviewing .gitignore, PKGBUILD, omarchy-bootable-setup...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file with no malicious content.
LLM auditresponse for .gitignore:
 <security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` containing only four ignore patterns for common build artifacts and directories: `src/`, `pkg/`, `*.pkg.tar.*`, and `omachy-bootable/`. These are routine exclusions for Arch Linux package builds (source/build directories, packaged tarballs, and a local build output directory). There is no executable content, no network activity, no obfuscation, no file manipulation, and no reference to any external host or command. The file matches ordinary AUR packaging hygiene and contains nothing resembling a security threat.
</details>
<evidence>
</evidence>
<summary>
Standard .gitignore with benign build-artifact patterns; no security concerns.
</summary>
</security_assessment>

[1/5] Reviewing .gitignore, PKGBUILD, omarchy-bootable-setup, omarchy-bootable.install...
[2/5] Reviewing PKGBUILD, omarchy-bootable-setup, omarchy-bootable.install...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore with benign build-artifact patterns; no security concerns.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a VCS (`-git`) package. It clones the upstream repository from the project's official GitHub URL, copies files from the checkout into the package directory, and installs a helper script (`omarchy-bootable-setup`) and license file. There are no suspicious network requests, obfuscated commands, or attempts to modify system files outside the package's scope. The `sha256sums` entries are set to `SKIP`, which is required for VCS sources and while unusual for local files, it is not evidence of malice — it is a trust/hygiene choice. No malicious behavior is present.
</details>
<evidence>
</evidence>
<summary>Standard AUR -git PKGBUILD, no malicious code.</summary>
</security_assessment>

[3/5] Reviewing omarchy-bootable-setup, omarchy-bootable.install...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR -git PKGBUILD, no malicious code.
LLM auditresponse for omarchy-bootable.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The install scriptlet only prints informational messages during package installation, upgrade, and removal. It performs no file operations, does not execute commands, does not download or run code, and does not access sensitive data. The messages merely advise the user to run the package's own setup command manually. No malicious or suspicious behavior is present.
</details>
<evidence></evidence>
<summary>Install scriptlet contains only informational echo messages; no security issues found.</summary>
</security_assessment>

[4/5] Reviewing omarchy-bootable-setup...
+ Reviewed omarchy-bootable.install. Status: SAFE -- Install scriptlet contains only informational echo messages; no security issues found.
LLM auditresponse for omarchy-bootable-setup:
<security_assessment>
<decision>SAFE</decision>
<details>
The script copies plugin files from a system directory (`/usr/share/omarchy-bootable/plugin`) to the user's configuration directory (`~/.config/omarchy/plugins/`). It uses standard commands (`mkdir`, `cp`, `chmod`) and calls `omarchy-plugin-validate` and `omarchy plugin enable/remove` from the installed Omarchy toolset. There are no network requests, no obfuscated code, no `eval`, no unexpected file system modifications, and no attempts to exfiltrate data. The script performs exactly the stated task of installing or removing the Bootable plugin for the current user under the application's own plugin directory. No evidence of malicious or dangerous behavior was found.
</details>
<evidence></evidence>
<summary>Legitimate plugin installation script; no malicious behavior.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed omarchy-bootable-setup. Status: SAFE -- Legitimate plugin installation script; no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,996
  Completion Tokens: 3,439
  Total Tokens: 17,435
  Total Cost: $0.000877
  Execution Time: 32.69 seconds

Final Status: SAFE


No issues found.
