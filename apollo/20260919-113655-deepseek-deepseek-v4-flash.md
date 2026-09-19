---
package: apollo
pkgver: 0.4.8
pkgrel: 4
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 16095
completion_tokens: 2607
total_tokens: 18702
cost: 0.00094271016
execution_time: 32.06
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-19T11:36:55Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore for AUR package repository.
  - file: .SRCINFO
    status: safe
    summary: AUR .SRCINFO metadata file, no executable content.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no malicious behavior.
  - file: apollo.install
    status: safe
    summary: Standard install script with no malicious behavior.
---

Materializing apollo from local mirror...
Materialized apollo
Analyzing apollo AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global scope contains only standard variable definitions, array assignments, and conditional checks using local `pacman` queries. The command substitution in `_cuda_gcc_version` runs `pacman -Si cuda | grep ...` which reads from the local pacman sync database; it does not download anything or execute untrusted code. The `pacman -Qi cuda` check is also local. No network requests, file writes, or execution of externally-sourced payloads occur during sourcing. The `prepare()`, `build()`, and `package()` functions are not executed by `makepkg --printsrcinfo`, so their content is out of scope for this gate.
</details>
<evidence></evidence>
<summary>No top-level malicious code; sourcing is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level malicious code; sourcing is safe.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .gitignore...
[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This .gitignore file is a standard Git ignore configuration that allows only the essential AUR package files (PKGBUILD, .SRCINFO, .gitignore) to be tracked. It contains no executable code, no network requests, no obfuscation, and no system modifications. It is purely a version control configuration file and poses no security risk.
</details>
<evidence></evidence>
<summary>Standard .gitignore for AUR package repository.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD, apollo.install...
[1/4] Reviewing .SRCINFO, PKGBUILD, apollo.install...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore for AUR package repository.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.SRCINFO` file for the `apollo` AUR package. It contains only declarative metadata: package name, description, version, upstream URL, dependencies, and a pinned source reference (`git+https://github.com/ClassicOldSong/Apollo.git#tag=v0.4.8`) with a valid SHA256 checksum. There are no executable commands, obfuscated code, network requests, or any operations that could exfiltrate data, download untrusted content, or modify system files. The file adheres to normal AUR packaging practices and poses no security risk.
</details>
<evidence>
</evidence>
<summary>AUR .SRCINFO metadata file, no executable content.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, apollo.install...
+ Reviewed .SRCINFO. Status: SAFE -- AUR .SRCINFO metadata file, no executable content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Arch Linux packaging practices for a fork of the Sunshine GameStream server. The source is pinned to a specific git tag (`v0.4.8`) with a valid SHA-256 checksum. The `prepare()` function removes unwanted bundled submodules and performs straightforward text replacements (`sunshine` → `apollo`) using `sed`. No unexpected network requests, obfuscated code, or backdoors are present. The `build()` function runs CMake and builds the project normally. The `package()` function installs artifacts and creates custom systemd service and desktop entry files; the modifications (renaming config files, removing unrelated paths) are consistent with the fork's purpose. All operations remain within the package's own scope.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with no malicious behavior.</summary>
</security_assessment>

[3/4] Reviewing apollo.install...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no malicious behavior.
LLM auditresponse for apollo.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file contains standard post-installation logic for a package that requires system-level capabilities and udev interactions.  
- `setcap` grants `cap_sys_admin` to the binary, which is expected for applications that need to control input devices (e.g., emulating uinput).  
- udev reload and module loading are typical for packages that provide input device support.  
- There is no obfuscation, no network requests, no execution of remote code, and no exfiltration of data.  
All operations are transparent and aligned with the package's likely purpose.
</details>
<evidence>

</evidence>
<summary>Standard install script with no malicious behavior.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed apollo.install. Status: SAFE -- Standard install script with no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 16,095
  Completion Tokens: 2,607
  Total Tokens: 18,702
  Total Cost: $0.000943
  Execution Time: 32.06 seconds

Final Status: SAFE


No issues found.
