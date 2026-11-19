---
package: linapple-git
pkgver: 2026.10.26.g7f4b6089
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 11371
completion_tokens: 2795
total_tokens: 14166
cost: 0.00080259452
execution_time: 30.86
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-27T19:07:15Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file, no security concerns.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR VCS PKGBUILD for an emulator; no malicious content.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no security issues.
  - file: linapple.sh
    status: safe
    summary: Routine AUR wrapper script, no malicious behaviour.
---

Materializing linapple-git from local mirror...
Materialized linapple-git
Analyzing linapple-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only static variable assignments and array definitions at the top level. No command substitutions, backtick executions, or dangerous operations (e.g., eval, curl, wget) are present. The `pkgver()`, `build()`, `check()`, and `package()` functions are defined but not executed during `makepkg --printsrcinfo`. Therefore, sourcing this file for metadata extraction poses no security risk.
</details>
<evidence></evidence>
<summary>No top-level code executes; only static definitions.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level code executes; only static definitions.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .gitignore...
[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `.gitignore` contains only two simple patterns to ignore the compiled binary `linapple` and any `*.log` files. This is standard practice for software projects and does not contain any code, instructions, or behavior that could be considered malicious. There are no network requests, obfuscation, dangerous commands, or deviations from expected packaging practices.
</details>
<evidence>
</evidence>
<summary>Standard .gitignore file, no security concerns.</summary>
</security_assessment>

[1/4] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore file, no security concerns.
[1/4] Reviewing .SRCINFO, PKGBUILD, linapple.sh...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a VCS (git) package. It fetches the source from the official upstream repository (`https://github.com/linappleii/linapple.git`), uses `sha256sums=('SKIP')` as required for VCS sources, and performs standard build (`cmake --build`), check (`ctest`), and install steps. No obfuscated code, suspicious network requests, unexpected file operations, or attempts to execute untrusted downloaded content outside the normal build process are present. The `pkgver()` function uses `git log` for versioning, which is typical for git packages. All tools used (cmake, ninja, ctest, git) are standard build dependencies. No red flags indicating a supply chain attack or malicious intent.
</details>
<evidence>
</evidence>
<summary>Standard AUR VCS PKGBUILD for an emulator; no malicious content.</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, linapple.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR VCS PKGBUILD for an emulator; no malicious content.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.SRCINFO` metadata file for the `linapple-git` AUR package. It contains only declarative package metadata (name, version, dependencies, source URL, etc.) and no executable code. The source is fetched from the package's own upstream GitHub repository, which is normal practice for VCS packages. The `sha256sums = SKIP` entry is standard for VCS sources and does not indicate a security issue. All listed dependencies are legitimate libraries associated with the application's stated purpose (Apple 2e emulation). There are no suspicious network requests, obfuscated commands, or any other indicators of malicious behavior.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata, no security issues.</summary>
</security_assessment>

[3/4] Reviewing linapple.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no security issues.
LLM auditresponse for linapple.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard wrapper script for an AUR package that symlinks program files from `/usr/share/linapple` into `$HOME/.linapple` and initializes a default config if missing. All operations are confined to the user&#x27;s home directory and the package&#x27;s own installed files. There are no network requests, downloads, execution of untrusted code, obfuscation, or system modification outside the application&#x27;s scope. The behaviour is consistent with expected packaging practice for an emulator that stores per-user data in a hidden directory.
</details>
<evidence>
</evidence>
<summary>Routine AUR wrapper script, no malicious behaviour.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed linapple.sh. Status: SAFE -- Routine AUR wrapper script, no malicious behaviour.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 11,371
  Completion Tokens: 2,795
  Total Tokens: 14,166
  Total Cost: $0.000803
  Execution Time: 30.86 seconds

Final Status: SAFE


No issues found.
