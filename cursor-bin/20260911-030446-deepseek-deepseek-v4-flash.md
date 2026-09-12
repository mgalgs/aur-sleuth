---
package: cursor-bin
pkgver: 3.20.10
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 12988
completion_tokens: 2713
total_tokens: 15701
cost: 0.001631590884
execution_time: 244.57
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-11T03:04:45Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO metadata, no security issues.
  - file: rg.sh
    status: safe
    summary: Harmless argument replacement wrapper for ripgrep
  - file: .gitignore
    status: safe
    summary: Routine gitignore for AUR package build artifacts.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD, no malicious behavior detected.
---

Materializing cursor-bin from local mirror...
Materialized cursor-bin
Analyzing cursor-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only defines static variables and arrays in its global/top-level scope. There are no command substitutions, `eval` calls, or any other executable expressions that would run when the file is sourced by `makepkg --printsrcinfo`. The `package()` function is defined but not invoked at this stage. All content is standard packaging syntax with no evidence of injected malicious code.
</details>
<evidence></evidence>
<summary>No dangerous code executed during sourcing.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous code executed during sourcing.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .gitignore...
[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file contains only standard package metadata (pkgbase, pkgver, dependencies, sources, checksums). All sources are from official domains: cursor.com and gitlab.archlinux.org (Arch Linux's official packaging repository). Checksums (sha512sums) are provided for all four sources, pinning content. No suspicious commands, obfuscation, or dangerous operations are present. This file is simply a declarative metadata file used by AUR helpers and does not contain executable code. No evidence of a supply-chain attack.
</details>
<evidence></evidence>
<summary>Standard .SRCINFO metadata, no security issues.</summary>
</security_assessment>

[1/4] Reviewing .gitignore, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO metadata, no security issues.
[1/4] Reviewing .gitignore, PKGBUILD, rg.sh...
LLM auditresponse for rg.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a simple shell wrapper for the `rg` (ripgrep) command. It replaces any occurrence of the argument `--cursor-ignore` with `--ignore-file` before executing the real `rg` binary. No unusual operations, network requests, obfuscated code, or system modifications are present. The script only performs a straightforward parameter substitution and exec, which is consistent with non‑malicious packaging helpers that adapt upstream command‑line options.
</details>
<evidence></evidence>
<summary>Harmless argument replacement wrapper for ripgrep</summary>
</security_assessment>

[2/4] Reviewing .gitignore, PKGBUILD...
+ Reviewed rg.sh. Status: SAFE -- Harmless argument replacement wrapper for ripgrep
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.gitignore` file contains only standard file patterns for ignoring build artifacts and generated files from a binary-based AUR package (cursor-bin). These entries are typical for excluding downloaded AppImages, built `.pkg.tar.zst` packages, extracted contents, and other temporary files. No commands, scripts, network operations, or obfuscated content are present. This is a benign packaging file with no security concerns.
</details>
<evidence>

</evidence>
<summary>Routine gitignore for AUR package build artifacts.</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Routine gitignore for AUR package build artifacts.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for wrapping a prebuilt binary (cursor-bin).  
- The main source is downloaded from the official `downloads.cursor.com` domain.  
- Two helper scripts (`code.sh`, `code.mjs`) are fetched from `gitlab.archlinux.org` (the official Arch Linux packaging repository), which is a trusted and expected source for packaging references.  
- A local `rg.sh` script is referenced (presumably included in the AUR repository) to replace the bundled ripgrep with the system one — this is a common optimization, not malicious.  
- All routines (extracting the .deb, creating symlinks, adjusting launcher scripts with `sed`, and placing files into `$pkgdir`) are normal package-building operations.  
- The overridden `sha512sums[0]` means the main `.deb` is actually checksummed, not truly `SKIP`.  

There is **no** obfuscated code, unexpected network requests, download-and-execute patterns, or backdoor-style commands. The PKGBUILD is transparent and performs only expected packaging actions.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD, no malicious behavior detected.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD, no malicious behavior detected.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,988
  Completion Tokens: 2,713
  Total Tokens: 15,701
  Total Cost: $0.001632
  Execution Time: 244.57 seconds

Final Status: SAFE


No issues found.
