---
package: cursor-bin
pkgver: 3.27.22
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 13065
completion_tokens: 3706
total_tokens: 16771
cost: 0.00232095
execution_time: 78.0
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-27T11:05:26Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore with build artifacts.
  - file: rg.sh
    status: safe
    summary: Simple argument translation wrapper, no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file; no security issues found.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD for prebuilt binary, no issues.
---

Materializing cursor-bin from local mirror...
Materialized cursor-bin
Analyzing cursor-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only variable definitions and function declarations. No global-level command substitutions, backtick expansions, or arithmetic expansions are present. The only shell expansions are variable references (e.g., ${_commit}, ${pkgver}) and a brace expansion ({sh,mjs}), which are standard and benign. There is no code that could execute arbitrary commands during sourcing. Therefore, running makepkg --printsrcinfo on this file is safe.
</details>
<evidence></evidence>
<summary>No malicious code in global scope</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code in global scope
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, PKGBUILD...
[0/4] Reviewing .SRCINFO, PKGBUILD, .gitignore...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The .gitignore file is a standard version control configuration file that lists paths to be ignored by git. It contains only file and directory names related to build artifacts (e.g., .AppImage, .pkg.tar.zst, intermediate directories). There are no commands, network requests, obfuscated code, or any other potentially malicious content. This is typical for AUR packages to prevent committing compiled binaries and temporary files.
</details>
<evidence></evidence>
<summary>Standard .gitignore with build artifacts.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, PKGBUILD, .gitignore, rg.sh...
[1/4] Reviewing .SRCINFO, PKGBUILD, rg.sh...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore with build artifacts.
LLM auditresponse for rg.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a simple wrapper script for `ripgrep` that translates the custom option `--cursor-ignore` to `--ignore-file`. It uses `exec` to replace the shell process with the real `rg` binary, which is standard practice for wrapper scripts. There is no evidence of malicious behavior: no network requests, no obfuscation, no unexpected file operations, and no execution of untrusted code. The argument substitution is straightforward and serves the legitimate purpose of adapting `rg` for use with the Cursor editor.
</details>
<evidence></evidence>
<summary>Simple argument translation wrapper, no security concerns.</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed rg.sh. Status: SAFE -- Simple argument translation wrapper, no security concerns.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a standard AUR metadata file describing package sources, dependencies, and checksums. It contains no executable code or instructions. The sources point to the official Cursor download site and to Arch Linux&#39;s own packaging repository for helper scripts (code.sh, code.mjs), which is normal and expected. All sources have SHA-512 checksums provided, ensuring integrity at build time. No obfuscation, suspicious network destinations, or commands are present. The file itself poses no supply-chain risk.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata file; no security issues found.</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file; no security issues found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a straightforward packaging recipe for the prebuilt Cursor binary. It downloads the official `.deb` package from `downloads.cursor.com`, includes specific checksums for all sources (the initial `SKIP` is overridden by a later explicit `sha512sums[0]` entry), and uses standard extraction and patching operations within `$pkgdir`. All commands (`bsdtar`, `tar`, `mv`, `ln`, `install`, `sed`) are normal packaging steps. There are no network requests outside the declared upstream sources, no obfuscated or encoded code, no dangerous invocations like `eval`, `curl`, or `wget`, and no manipulation of files outside the package scope. The maintainer is identified. This is a typical AUR PKGBUILD for a binary package and shows no signs of a supply-chain attack.
</details>
<evidence>

</evidence>
<summary>Standard PKGBUILD for prebuilt binary, no issues.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD for prebuilt binary, no issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,065
  Completion Tokens: 3,706
  Total Tokens: 16,771
  Total Cost: $0.002321
  Execution Time: 78.00 seconds

Final Status: SAFE


No issues found.
