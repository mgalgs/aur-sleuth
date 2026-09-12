---
package: cursor-bin
pkgver: 3.20.17
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 12974
completion_tokens: 1884
total_tokens: 14858
cost: 0.00111803076
execution_time: 135.77
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-12T11:03:14Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: A simple .gitignore file with no security concerns.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD for a binary package; no malicious content.
  - file: rg.sh
    status: safe
    summary: Safe wrapper script; no malicious behavior.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no security concerns.
---

Materializing cursor-bin from local mirror...
Materialized cursor-bin
Analyzing cursor-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's top-level scope contains only variable definitions (pkgname, pkgver, source arrays, checksums, etc.) and the definition of the `package()` function. There are no top-level command substitutions, function calls, or other executable statements that would run during `makepkg --printsrcinfo`. No dangerous commands such as `eval`, `curl`, `wget`, or base64 decoding appear at the global scope. The package contents are only executed later during the `package()` function, which is out of scope for this narrow safety gate.
</details>
<evidence></evidence>
<summary>No dangerous top-level code; sourcing is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code; sourcing is safe.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .gitignore...
[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` file that lists build artifacts and generated files (e.g., AppImage, compressed package, extracted files) to exclude from version control. It contains no executable code, no commands, no network requests, and no obfuscation. There is no evidence of malicious behavior whatsoever.
</details>
<evidence></evidence>
<summary>A simple .gitignore file with no security concerns.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD, rg.sh...
[1/4] Reviewing .SRCINFO, PKGBUILD, rg.sh...
+ Reviewed .gitignore. Status: SAFE -- A simple .gitignore file with no security concerns.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD fetches the upstream binary from `downloads.cursor.com` and three helper scripts from `gitlab.archlinux.org` (the official Arch packaging repository). All helper scripts are pinned with SHA‑512 checksums; only the binary `.deb` is checksum-skipped, which is standard AUR practice for prebuilt packages and not an indication of malice. The `package()` function extracts the `.deb`, installs files, creates symlinks for Node.js, ripgrep, and xdg-open, and adapts the launcher scripts to use the system Electron and correct paths. There are no network requests during `build()` or `package()` beyond what was already fetched. No obfuscated code, `eval`, `curl|bash`, or unexpected system modifications are present. The behavior is fully consistent with normal packaging.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD for a binary package; no malicious content.</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, rg.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD for a binary package; no malicious content.
LLM auditresponse for rg.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a simple wrapper for `/usr/bin/rg` (ripgrep). It replaces any occurrence of `--cursor-ignore` in the argument list with `--ignore-file`, then executes the actual `rg` binary. There is no obfuscation, no network access, no file system modifications beyond the intended execution of rg, and no execution of untrusted code. The script is consistent with standard packaging practices for providing customized command-line arguments.
</details>
<evidence></evidence>
<summary>Safe wrapper script; no malicious behavior.</summary>
</security_assessment>

[3/4] Reviewing .SRCINFO...
+ Reviewed rg.sh. Status: SAFE -- Safe wrapper script; no malicious behavior.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.SRCINFO` metadata file for an AUR package. It declares package metadata, dependencies, options, and source URLs with their corresponding SHA-512 checksums. All sources point to expected official locations: the upstream download server (`downloads.cursor.com`) for the binary `.deb` file, official Arch Linux packaging GitLab repository for two helper scripts (`code.sh` and `code.mjs`), and a local file (`rg.sh`) provided within the AUR repository itself. No checksums are skipped, and there is no obfuscated code, dangerous commands, or unexpected network operations. The content is purely declarative and follows standard AUR packaging practices.
</details>
<evidence></evidence>
<summary>Standard AUR metadata, no security concerns.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no security concerns.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,974
  Completion Tokens: 1,884
  Total Tokens: 14,858
  Total Cost: $0.001118
  Execution Time: 135.77 seconds

Final Status: SAFE


No issues found.
