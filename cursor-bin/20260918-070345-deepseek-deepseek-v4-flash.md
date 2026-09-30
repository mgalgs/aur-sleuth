---
package: cursor-bin
pkgver: 3.21.12
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 12995
completion_tokens: 2329
total_tokens: 15324
cost: 0.001564161718
execution_time: 84.43
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-18T07:03:45Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore with no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO with verified upstream sources.
  - file: rg.sh
    status: safe
    summary: Simple argument transformation wrapper; no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD for official Cursor binary package.
---

Materializing cursor-bin from local mirror...
Materialized cursor-bin
Analyzing cursor-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only variable assignments and a function definition (`package()`) at the top level. No command substitutions, dangerous calls (e.g., `eval`, `curl`, `wget`), or any other executable code is present in the global scope. The source array and checksums are simple string assignments. Running `makepkg --printsrcinfo` will source this file but will not execute any code beyond these assignments, so it is safe.
</details>
<evidence>
</evidence>
<summary>No top-level code execution risk.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level code execution risk.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .gitignore...
[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file for the `cursor-bin` AUR package. It lists files and paths (such as the AppImage, the built package archive, build artifacts, and source images) that should be ignored by version control. There is no executable code, no network requests, no obfuscation, and no system modification commands. The file is entirely passive and poses no security risk.
</details>
<evidence></evidence>
<summary>Standard .gitignore with no security concerns.</summary>
</security_assessment>

[1/4] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore with no security concerns.
[1/4] Reviewing .SRCINFO, PKGBUILD, rg.sh...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is package metadata for cursor-bin. It declares sources from the official upstream (downloads.cursor.com) and the Arch Linux packaging repository (gitlab.archlinux.org), each accompanied by SHA-512 checksums. No executable code, obfuscated commands, or suspicious network endpoints are present. The `rg.sh` source is a local script file not included here, but its content is not evaluated from this file alone. The file follows standard AUR metadata conventions and contains no evidence of malicious behavior.
</details>
<evidence>
</evidence>
<summary>Standard .SRCINFO with verified upstream sources.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, rg.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO with verified upstream sources.
LLM auditresponse for rg.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a simple wrapper that replaces the argument `--cursor-ignore` with `--ignore-file` before executing ripgrep. It uses safe bash parameter expansion and quotes the result correctly. There is no obfuscation, no network interaction, no dangerous commands, and no deviation from expected packaging practices. This appears to be a convenience wrapper for a tool that consumes ripgrep with a custom flag.
</details>
<evidence></evidence>
<summary>Simple argument transformation wrapper; no security issues.</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed rg.sh. Status: SAFE -- Simple argument transformation wrapper; no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard Arch Linux package definition for the `cursor-bin` package. It downloads the official Cursor editor binary from the project&#x27;s own domain (`downloads.cursor.com`) and two helper scripts from the official Arch Linux GitLab repository for the `code` package (the basis for Cursor). The `package()` function extracts the `.deb`, symlinks system-provided dependencies (`node`, `xdg-open`, `ripgrep`), and uses `sed` to adapt the upstream VS Code launcher templates for Cursor. There are no obfuscated commands, no unexpected network requests during build, no attempts to exfiltrate data, and no execution of untrusted code. The overriding of `sha512sums[0]` from `SKIP` to a specific hash is a valid and common pattern in PKGBUILDs. All operations are consistent with normal packaging practices for a prebuilt binary package.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD for official Cursor binary package.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD for official Cursor binary package.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,995
  Completion Tokens: 2,329
  Total Tokens: 15,324
  Total Cost: $0.001564
  Execution Time: 84.43 seconds

Final Status: SAFE


No issues found.
