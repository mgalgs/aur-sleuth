---
package: cursor-bin
pkgver: 3.22.7
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 13074
completion_tokens: 1824
total_tokens: 14898
cost: 0.00122438484
execution_time: 47.22
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-24T19:05:51Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard AUR binary package; no malicious behavior detected.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file, no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with official sources and pinned checksums; no security issues found.
  - file: rg.sh
    status: safe
    summary: Safe wrapper script for ripgrep argument translation.
---

Materializing cursor-bin from local mirror...
Materialized cursor-bin
Analyzing cursor-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable definitions (pkgname, pkgver, source, sha512sums, etc.) and a single function definition (`package()`). There are no top-level command substitutions, invocations of `curl`, `wget`, `eval`, or any other dangerous commands that would execute during sourcing. Running `makepkg --printsrcinfo` simply sources the file, which only sets variables and defines a function. No malicious code runs at this stage.
</details>
<evidence>
</evidence>
<summary>No dangerous top-level code; sourcing is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code; sourcing is safe.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .gitignore...
[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard binary package for cursor-bin. It downloads a `.deb` from the official upstream URL (downloads.cursor.com) and extracts it. The only source with a SKIP checksum is the `.deb` itself, which is common for prebuilt binaries; the other sources (helper scripts) have pinned sha512sums. The `package()` function performs routine operations: extracting the archive, replacing bundled binaries with system symlinks (node, xdg-open, ripgrep), and writing modified startup scripts to use the system electron. There is no obfuscated code, no unexpected network requests, no data exfiltration, and no execution of remote scripts. The SKIP checksum on the primary source is a supply-chain hygiene concern but does not constitute malicious behavior.  
No evidence of an injected backdoor, credential theft, or any operation outside the normal packaging scope for a VSCode-based application.
</details>
<evidence></evidence>
<summary>Standard AUR binary package; no malicious behavior detected.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD, rg.sh...
[1/4] Reviewing .SRCINFO, .gitignore, rg.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR binary package; no malicious behavior detected.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` file used in git repositories to exclude build artifacts and generated files from version control. It contains only file and directory paths that would typically be produced when packaging the `cursor-bin` AppImage for Arch Linux. There is no executable code, no network requests, no system modifications, and no obfuscation. The content is entirely benign and follows normal packaging and development practices.
</details>
<evidence></evidence>
<summary>Standard .gitignore file, no security concerns.</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, rg.sh...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore file, no security concerns.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard AUR `.SRCINFO` metadata file for the `cursor-bin` package. It declares the package name, version, dependencies, build options, and sources with pinned SHA-512 checksums. The remote sources point to the application's official download domain (`downloads.cursor.com`) and the Arch Linux packaging repository (`gitlab.archlinux.org`), both of which are expected and appropriate for the package. The remaining source (`rg.sh`) is a local file referenced during packaging. No network requests beyond the declared sources, no encoded commands, no suspicious file operations, and no deviation from normal AUR packaging practices are present. All sources have explicit checksums, so there is no issue with unpinned or unverified downloads.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata with official sources and pinned checksums; no security issues found.</summary>
</security_assessment>

[3/4] Reviewing rg.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with official sources and pinned checksums; no security issues found.
LLM auditresponse for rg.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a simple wrapper that transforms the argument `--cursor-ignore` into `--ignore-file` and then executes ripgrep (`/usr/bin/rg`). It does not perform any network requests, download code, execute arbitrary content, or include obfuscation. The substitution is a standard bash parameter expansion, and the exec replaces the shell process with the intended binary. This behavior is consistent with a helper script that adapts command-line options for the cursor-bin package, which relies on ripgrep for search functionality. There is no evidence of malicious activity.
</details>
<evidence></evidence>
<summary>Safe wrapper script for ripgrep argument translation.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed rg.sh. Status: SAFE -- Safe wrapper script for ripgrep argument translation.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,074
  Completion Tokens: 1,824
  Total Tokens: 14,898
  Total Cost: $0.001224
  Execution Time: 47.22 seconds

Final Status: SAFE


No issues found.
