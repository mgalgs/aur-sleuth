---
package: microsoft-edge-stable-bin
pkgver: 156.0.4314.58
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 17446
completion_tokens: 3966
total_tokens: 21412
cost: 0.002309398
execution_time: 39.36
files_reviewed: 6
files_skipped: 1
maintainer_files: 7
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-31T19:15:52Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard gitignore file, no security issues.
  - file: Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf
    status: skipped
    summary: "Skipping binary file: Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf"
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config for Microsoft Edge stable.
  - file: .SRCINFO
    status: safe
    summary: Standard metadata; no malicious content detected.
  - file: microsoft-edge-stable.install
    status: safe
    summary: Informational install script, no security issues found.
  - file: microsoft-edge-stable.sh
    status: safe
    summary: Standard wrapper script, no malicious behavior detected.
  - file: PKGBUILD
    status: safe
    summary: Standard repackaging; no malicious code or behavior.
---

Materializing microsoft-edge-stable-bin from local mirror...
Cloning https://aur.archlinux.org/microsoft-edge-stable-bin.git...
Cloned microsoft-edge-stable-bin
Analyzing microsoft-edge-stable-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable assignments and a package() function definition in its global scope. No code is executed during sourcing other than setting variables and arrays. There are no top-level command substitutions, invocations of curl/wget/eval, or any other dangerous operations that would run during `makepkg --printsrcinfo`. All potentially risky operations (chmod, file manipulation, image conversion) are confined within the package() function, which is not executed at this step.</details>
<evidence></evidence>
<summary>No malicious code in global scope; safe to source.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code in global scope; safe to source.
Reviewing the 7 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/7] Reviewing .SRCINFO...
[0/7] Reviewing .SRCINFO, .gitignore...
[0/7] Reviewing .SRCINFO, .gitignore, .nvchecker.toml...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file that lists file extensions (`*.log`, `*.zst`, `*.deb`, `*.rpm`) to be ignored by version control. It contains no executable code, no network requests, no file operations, and no obfuscation. The content is purely declarative and follows normal packaging practices for an AUR repository.
</details>
<evidence></evidence>
<summary>Standard gitignore file, no security issues.</summary>
</security_assessment>

[0/7] Reviewing .SRCINFO, .gitignore, .nvchecker.toml, Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf...
[1/7] Reviewing .SRCINFO, .nvchecker.toml, Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf...
+ Reviewed .gitignore. Status: SAFE -- Standard gitignore file, no security issues.
[1/7] Reviewing .SRCINFO, .nvchecker.toml, Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf, PKGBUILD...
[2/7] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD...
! Reviewed Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf. Status: SKIPPED -- Skipping binary file: Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard nvchecker configuration that defines a version source for `microsoft-edge-stable-bin`. It fetches package metadata from the official Microsoft Edge repository at `packages.microsoft.com` and extracts the version number using a regex pattern. This is a routine and expected use of nvchecker for automated version tracking in AUR packaging. No suspicious network destinations, obfuscated code, unusual operations, or any other malicious indicators are present.
</details>
<evidence>
</evidence>
<summary>Standard nvchecker config for Microsoft Edge stable.</summary>
</security_assessment>

[2/7] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD, microsoft-edge-stable.install...
[3/7] Reviewing .SRCINFO, PKGBUILD, microsoft-edge-stable.install...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config for Microsoft Edge stable.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is standard package metadata for an AUR package of Microsoft Edge Stable. It defines the package name, version, description, dependencies, and source URLs. All sources point to Microsoft's official package repository (packages.microsoft.com), which is expected. Checksums are provided for all three sources and are not set to 'SKIP'. There are no executable commands, obfuscated code, or unusual operations. The file contains no security issues; it is a normal packaging definition.
</details>
<evidence></evidence>
<summary>Standard metadata; no malicious content detected.</summary>
</security_assessment>

[3/7] Reviewing .SRCINFO, PKGBUILD, microsoft-edge-stable.install, microsoft-edge-stable.sh...
[4/7] Reviewing PKGBUILD, microsoft-edge-stable.install, microsoft-edge-stable.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata; no malicious content detected.
LLM auditresponse for microsoft-edge-stable.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.install` script for an AUR package. It defines helper functions for colored terminal output (`msg_blue`, `note`) and implements `post_install` and `post_upgrade` hooks that simply print informational messages to the user. No network requests, downloads, file operations, system modifications, or code execution occur. All actions are purely cosmetic and informational.
</details>
<evidence>
</evidence>
<summary>Informational install script, no security issues found.</summary>
</security_assessment>

[5/7] Reviewing PKGBUILD, microsoft-edge-stable.sh...
+ Reviewed microsoft-edge-stable.install. Status: SAFE -- Informational install script, no security issues found.
LLM auditresponse for microsoft-edge-stable.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a standard launcher for Microsoft Edge, reading optional user-defined flags from a configuration file in `$XDG_CONFIG_HOME`. It executes the official Edge binary with those flags and any passed arguments. There is no suspicious network activity, obfuscated code, unexpected file operations, or any behavior that deviates from normal packaging practices. The use of an unquoted variable expansion for the flags is intentional to allow word splitting, and the config file is entirely under the user's control, so this does not constitute a supply-chain attack.
</details>
<evidence></evidence>
<summary>Standard wrapper script, no malicious behavior detected.</summary>
</security_assessment>

[6/7] Reviewing PKGBUILD...
+ Reviewed microsoft-edge-stable.sh. Status: SAFE -- Standard wrapper script, no malicious behavior detected.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard repackaging of the official Microsoft Edge .deb package for Arch Linux. The only external source is the official Microsoft repository, and checksums are provided for verification. There are no embedded commands (eval, base64, curl, wget) beyond the defined packaging operations: extracting the upstream archive, setting SUID on the sandbox binary (an expected part of the application), resizing icons with ImageMagick, and installing the launcher script and license. No data exfiltration, backdoors, or untrusted downloads occur. The file follows normal AUR practices for binary packaging.
</details>
<evidence></evidence>
<summary>Standard repackaging; no malicious code or behavior.</summary>
</security_assessment>

[7/7] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard repackaging; no malicious code or behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
(Skipped 1 file: Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 17,446
  Completion Tokens: 3,966
  Total Tokens: 21,412
  Total Cost: $0.002309
  Execution Time: 39.36 seconds

Final Status: SAFE


No issues found.


Audit Skips:

Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf: [SKIPPED] Skipping binary file: Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf
