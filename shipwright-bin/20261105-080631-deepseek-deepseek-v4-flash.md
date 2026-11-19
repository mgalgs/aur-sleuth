---
package: shipwright-bin
pkgver: 9.3.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 12339
completion_tokens: 2151
total_tokens: 14490
cost: 0.001514331
execution_time: 17.89
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-05T08:06:30Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file with no executable content.
  - file: .gitignore
    status: safe
    summary: Standard gitignore file, no security concerns.
  - file: soh.desktop
    status: safe
    summary: Standard desktop entry file; no malicious or suspicious behavior found.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD; no malicious behavior detected.
---

Materializing shipwright-bin from local mirror...
Materialized shipwright-bin
Analyzing shipwright-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only top-level variable assignments, array definitions, and a `package()` function definition. Nothing in the global scope executes commands, downloads payloads, or performs network operations during `makepkg --printsrcinfo`. The source URLs point to the project's official GitHub releases and repository, and checksums are fixed rather than `SKIP`. The `package()` function contains only file installation and launcher creation, but it is not executed by `makepkg --printsrcinfo`, so it is out of scope for this narrow gate.
</details>
<evidence>
</evidence>
<summary>
Top-level scope is benign; no code executes during printsrcinfo.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level scope is benign; no code executes during printsrcinfo.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .gitignore...
[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is a standard AUR metadata file describing a prebuilt binary package. It declares sources from the official GitHub repository of the Shipwright project, includes SHA-256 checksums for all sources, and lists runtime dependencies expected for a graphic application (SDL2, libpng, libzip, etc.). No code is present to execute, no network requests originate from this file itself, and there is no obfuscation or suspicious content. The package name, description, and URLs all align with the stated upstream project. The file conforms to normal AUR binary package conventions.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata file with no executable content.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD, soh.desktop...
[1/4] Reviewing .gitignore, PKGBUILD, soh.desktop...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file with no executable content.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` file used to prevent build artifacts, source directories, package files, and editor temporary files from being tracked by Git. It contains no executable code, no network requests, no obfuscation, and no commands. There is no evidence of malicious behavior or supply-chain attack indicators.
</details>
<evidence></evidence>
<summary>Standard gitignore file, no security concerns.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, soh.desktop...
+ Reviewed .gitignore. Status: SAFE -- Standard gitignore file, no security concerns.
LLM auditresponse for soh.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard freedesktop.org `.desktop` launcher file for the Ship of Harkinian application. It only defines application metadata (name, comment, icon, category) and launches the `soh` executable in a terminal. There are no suspicious commands, network operations, encoded payloads, or file modifications. The `Exec=soh` line simply runs the package's own binary from the user's PATH, which is normal for a desktop entry.
</details>
<evidence>
</evidence>
<summary>
Standard desktop entry file; no malicious or suspicious behavior found.</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed soh.desktop. Status: SAFE -- Standard desktop entry file; no malicious or suspicious behavior found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for distributing a pre-built binary (AppImage) from an official GitHub release. It downloads the AppImage and an icon image from the upstream repository (github.com/HarbourMasters/Shipwright) with pinned version 9.3.1 and verified SHA-256 checksums. The `package()` function simply installs the AppImage, a desktop file, an icon, and creates a small launch script that execs the AppImage with arguments. There are no suspicious network requests, obfuscated code, dangerous commands (eval, base64, etc.), or unexpected file operations. The behavior is entirely consistent with the stated purpose of packaging an unofficial PC port of Ocarina of Time.
</details>
<evidence>
</evidence>
<summary>Standard PKGBUILD; no malicious behavior detected.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD; no malicious behavior detected.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,339
  Completion Tokens: 2,151
  Total Tokens: 14,490
  Total Cost: $0.001514
  Execution Time: 17.89 seconds

Final Status: SAFE


No issues found.
