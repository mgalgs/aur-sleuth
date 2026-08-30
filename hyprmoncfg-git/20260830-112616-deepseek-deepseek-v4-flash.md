---
package: hyprmoncfg-git
pkgver: r250.557b901
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 14752
completion_tokens: 1989
total_tokens: 16741
cost: 0.0014946540
execution_time: 95.5
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
source_fetch: ok
upstream_files: 150
upstream_named_files: 4
unpinned_sources: 0
date: 2026-08-30T11:26:16Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard metadata, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no malicious indicators.
  - file: LICENSE
    status: safe
    summary: Standard open-source license file, no security issues.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file for AUR package builds.
  - file: hyprmoncfg-git.install
    status: safe
    summary: Standard post-install message, no malicious content.
---

Cloning https://aur.archlinux.org/hyprmoncfg-git.git...
Cloned hyprmoncfg-git
Analyzing hyprmoncfg-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD sources a git repository from the project's own upstream (`https://github.com/crmne/hyprmoncfg.git`), which is standard for AUR -git packages. The top-level code contains only variable assignments with static strings and no command substitutions that would execute external commands during sourcing. The `pkgver()` function runs `git rev-list` and `git rev-parse` inside a checked-out repository, which are normal operations for generating a version string. The `install` file reference is a standard packaging element. The `sha256sums` are set to `SKIP`, which is required for VCS sources and does not introduce any risk during the source-fetch step. There is no obfuscated code, no attempts to download or execute content from unexpected hosts, and no data exfiltration mechanisms. The `build()` and `package()` functions contain code that executes later, but those are not run by `makepkg --nobuild --nodeps --noprepare` or `--printsrcinfo`.
</details>
<evidence></evidence>
<summary>No malicious code executed during source fetch.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code executed during source fetch.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: the PKGBUILD names 4 file(s) in the downloaded sources (src/hyprmoncfg-git/packaging/applications/hyprmoncfg-omarchy.desktop, src/hyprmoncfg-git/packaging/applications/hyprmoncfg.desktop, src/hyprmoncfg-git/packaging/icons/hyprmoncfg.svg and 1 more); they are upstream content and were not reviewed.
Reviewing the 5 file(s) in the AUR repository. The 150 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, LICENSE...
[0/5] Reviewing .SRCINFO, LICENSE, .gitignore...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.SRCINFO` metadata file for an AUR package. It declares package name, version, upstream URL, dependencies, and a VCS source pointing to the official GitHub repository (`https://github.com/crmne/hyprmoncfg.git`). Checksums are `SKIP`, which is expected for VCS packages. The file contains no executable code, network requests, obfuscation, or suspicious instructions. It only describes the package structure. No security issues are present.
</details>
<evidence></evidence>
<summary>Standard metadata, no malicious content.</summary>
</security_assessment>

[0/5] Reviewing .SRCINFO, LICENSE, .gitignore, PKGBUILD...
[1/5] Reviewing LICENSE, .gitignore, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard practices for a VCS (git) package from the Arch User Repository. The source is cloned from the official upstream GitHub repository (`https://github.com/crmne/hyprmoncfg`). The `sha256sums` are set to `SKIP`, which is required and expected for VCS sources. The `build()` function compiles two Go binaries with standard `go build` flags and injects version, commit, and date information via `-ldflags`, which is a routine and transparent practice. The `package()` function installs the resulting binaries, license, documentation, desktop files, and systemd user service into the package directory. The `sed` commands modify the desktop entry to correctly invoke the terminal application, which is a normal packaging adjustment. No network requests are made during `build()` or `package()`, no obfuscated code, no dangerous commands like `eval`, `curl`, or `wget`, and no unexpected file operations outside the package scope. The file is entirely consistent with legitimate packaging for this application.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with no malicious indicators.</summary>
</security_assessment>

[2/5] Reviewing LICENSE, .gitignore...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no malicious indicators.
[2/5] Reviewing LICENSE, .gitignore, hyprmoncfg-git.install...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a plaintext open-source license (Zero-Clause BSD). It contains no executable code, no network requests, no obfuscation, and no system-modifying instructions. It is a standard license file and poses no security risk.
</details>
<evidence></evidence>
<summary>Standard open-source license file, no security issues.</summary>
</security_assessment>

[3/5] Reviewing .gitignore, hyprmoncfg-git.install...
+ Reviewed LICENSE. Status: SAFE -- Standard open-source license file, no security issues.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` file for an AUR package repository. It contains only four patterns to exclude build artifacts (`pkg/`, `src/`), the upstream cloned directory (`hyprmoncfg-git/`), and generated package archives (`*.pkg.tar.*`). There is no executable code, no network requests, no encoded or obfuscated content, and no deviation from normal packaging practices. This file poses no security risk.
</details>
<evidence>
</evidence>
<summary>Standard .gitignore file for AUR package builds.</summary>
</security_assessment>

[4/5] Reviewing hyprmoncfg-git.install...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore file for AUR package builds.
LLM auditresponse for hyprmoncfg-git.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR .install file that prints an informational message to the user after installation or upgrade. It contains no executable code beyond echoing text, no network requests, no file operations, and no obfuscation. The content is purely documentation about optional user configuration steps (launching the TUI, enabling a systemd user service, and profile directory location). There is no supply-chain attack risk.
</details>
<evidence></evidence>
<summary>Standard post-install message, no malicious content.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed hyprmoncfg-git.install. Status: SAFE -- Standard post-install message, no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 14,752
  Completion Tokens: 1,989
  Total Tokens: 16,741
  Total Cost: $0.001495
  Execution Time: 95.50 seconds

Final Status: SAFE


No issues found.
