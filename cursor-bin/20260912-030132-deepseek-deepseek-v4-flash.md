---
package: cursor-bin
pkgver: 3.20.14
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 13064
completion_tokens: 2028
total_tokens: 15092
cost: 0.00114806720
execution_time: 51.98
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-12T03:01:31Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore listing build artifacts; no security concerns found.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD, no malicious code detected.
  - file: rg.sh
    status: safe
    summary: Wrapper translates argument, no malicious behavior.
---

Materializing cursor-bin from local mirror...
Materialized cursor-bin
Analyzing cursor-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD consists solely of variable declarations, comments, and a `package()` function definition. No code executes at the top level during sourcing – there are no command substitutions, backticks, eval, or similar constructs. The `source` array and `sha512sums` are static strings; URLs and filenames are not fetched or executed during `makepkg --printsrcinfo`. The `package()` function is defined but not invoked. Therefore, parsing this PKGBUILD is safe.
</details>
<evidence></evidence>
<summary>No top-level code execution; parsing is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level code execution; parsing is safe.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, PKGBUILD...
[0/4] Reviewing .SRCINFO, PKGBUILD, .gitignore...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` used in an AUR package repository. It lists build artifacts, downloaded upstream binaries (`cursor-0.37.1.AppImage`), the resulting package archive (`cursor-bin-0.37.1-1-x86_64.pkg.tar.zst`), and intermediate files under `pkg/` and `src/` that should not be committed to version control. There are no commands, network operations, obfuscated content, or references to external hosts. The content is entirely passive and consistent with ordinary packaging workflow for a prebuilt-bin AUR package.
</details>
<evidence>
</evidence>
<summary>
Standard .gitignore listing build artifacts; no security concerns found.
</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, PKGBUILD, .gitignore, rg.sh...
[1/4] Reviewing .SRCINFO, PKGBUILD, rg.sh...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore listing build artifacts; no security concerns found.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a metadata file for the cursor-bin AUR package. It declares standard fields: package name, version, description, dependencies, and source URLs. The sources point to the official Cursor download (cursor.com), official Arch Linux packaging files (code.sh, code.mjs from gitlab.archlinux.org), and a local file rg.sh. All source entries have SHA512 checksums (none are SKIP), which is good practice. No suspicious commands, obfuscated content, or unexpected behavior is present. The file is purely declarative and does not execute any code. It poses no security risk.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata; no malicious content.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, rg.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices. It downloads a prebuilt `.deb` from the official Cursor website, extracts its contents, and integrates the application with the system (symlinks for node, ripgrep, xdg-open, and custom launcher scripts). The `SKIP` checksum on the primary source is typical for prebuilt binaries where the upstream does not provide checksums; it is not a supply-chain risk by itself. The auxiliary sources come from the official Arch Linux packaging repository (`gitlab.archlinux.org`) and a local helper script (`rg.sh`), both legitimate. There is no obfuscated code, no unexpected network requests, no download-and-execute patterns, and no other indicators of malice. The maintainer is clearly identified, and all operations serve the stated purpose of packaging the Cursor editor.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD, no malicious code detected.</summary>
</security_assessment>

[3/4] Reviewing rg.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD, no malicious code detected.
LLM auditresponse for rg.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `rg.sh` is a simple wrapper script that replaces any occurrence of `--cursor-ignore` in the command-line arguments with `--ignore-file` and then executes `/usr/bin/rg` (ripgrep) with the modified arguments. There is no malicious activity: no network requests, no code download/execution, no obfuscation, no data exfiltration, and no system modification outside its intended scope. The script only performs a straightforward string substitution and hands control to a legitimate system binary. The use of `exec` is standard for wrappers. The presence of `&quot;` is likely an artifact of how the file was presented (HTML encoding); in the actual script this would be a plain double quote. This is a typical convenience wrapper for integrating ripgrep with the Cursor editor.
</details>
<evidence>

</evidence>
<summary>Wrapper translates argument, no malicious behavior.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed rg.sh. Status: SAFE -- Wrapper translates argument, no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,064
  Completion Tokens: 2,028
  Total Tokens: 15,092
  Total Cost: $0.001148
  Execution Time: 51.98 seconds

Final Status: SAFE


No issues found.
