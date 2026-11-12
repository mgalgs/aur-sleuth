---
package: cursor-bin
pkgver: 3.30.8
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 13250
completion_tokens: 3613
total_tokens: 16863
cost: 0.00184284
execution_time: 31.62
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-12T12:17:43Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file with no malicious content.
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO metadata, no malicious content.
  - file: rg.sh
    status: safe
    summary: Simple wrapper, no malicious behavior.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD for binary app, no malicious content.
---

Materializing cursor-bin from local mirror...
Cloning https://aur.archlinux.org/cursor-bin.git...
Cloned cursor-bin
Analyzing cursor-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only top-level variable definitions (standard metadata like pkgname, pkgver, source, checksums, etc.) and a function definition for `package()`. There are no command substitutions, backtick expansions, or any executable code in the global scope. Running `makepkg --printsrcinfo` will simply source these definitions without triggering any network requests, file operations, or dangerous commands. The contents of `package()` are not executed during this step. No evidence of malicious code that would execute during parsing.
</details>
<evidence></evidence>
<summary>No top-level malicious code during sourcing.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level malicious code during sourcing.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .gitignore...
[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` file listing files and directories that Git should ignore. It contains only file paths and patterns (e.g., `cursor-0.37.1.AppImage`, `pkg/cursor-bin/.BUILDINFO`). There is no executable code, no network requests, no obfuscation, and no system modification commands. This file poses no security risk.
</details>
<evidence>
</evidence>
<summary>Standard .gitignore file with no malicious content.</summary>
</security_assessment>

[1/4] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore file with no malicious content.
[1/4] Reviewing .SRCINFO, PKGBUILD, rg.sh...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` metadata file defines an AUR package for Cursor, a coding environment. It declares four sources: the upstream Debian binary package (from cursor.com), two helper scripts from the official Arch Linux packaging repository (gitlab.archlinux.org), and a local file `rg.sh` provided with the AUR package. All sources have explicit sha512sums (none are `SKIP`), and there are no embedded commands, obfuscated strings, or references to unrelated external hosts. The file is purely declarative and contains no executable code.
</details>
<evidence></evidence>
<summary>Standard .SRCINFO metadata, no malicious content.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, rg.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO metadata, no malicious content.
LLM auditresponse for rg.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `rg.sh` is a simple wrapper script that calls `/usr/bin/rg` after substituting `--cursor-ignore` with `--ignore-file` in the command-line arguments. This appears to be a compatibility layer, possibly adapting arguments from an editor (like Cursor) to ripgrep's expected flag. No network requests, file modifications, obfuscation, or execution of untrusted content is present. The script performs no dangerous operations and is consistent with a benign packaging wrapper.
</details>
<evidence></evidence>
<summary>Simple wrapper, no malicious behavior.</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed rg.sh. Status: SAFE -- Simple wrapper, no malicious behavior.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a binary Electron application. The source array uses the official upstream download URL (`downloads.cursor.com`) and a known Arch Linux packaging repository (`gitlab.archlinux.org`) for helper scripts, all with checksums provided (the `.deb` checksum is set via later override; the other sources are pinned in `sha512sums`). The `package()` function performs routine operations: extracting the deb, creating symlinks to system binaries (`node`, `xdg-open`, system `ripgrep` via a wrapper script), and installing modified launcher scripts via `sed` + `install`. No obfuscation, no unexpected network requests, no execution of untrusted code, and no manipulation of files outside the package's own scope. There is no evidence of a supply-chain attack.
</details>
<evidence>
</evidence>
<summary>Standard AUR PKGBUILD for binary app, no malicious content.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD for binary app, no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,250
  Completion Tokens: 3,613
  Total Tokens: 16,863
  Total Cost: $0.001843
  Execution Time: 31.62 seconds

Final Status: SAFE


No issues found.
