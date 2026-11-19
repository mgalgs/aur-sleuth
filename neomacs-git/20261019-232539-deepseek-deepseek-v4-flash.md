---
package: neomacs-git
pkgver: 0.0.19.r25162.g7cc75cc8
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 11824
completion_tokens: 1707
total_tokens: 13531
cost: 0.001386658
execution_time: 28.63
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-19T23:25:38Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard AUR .gitignore, no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR VCS package, no malicious content.
---

Materializing neomacs-git from local mirror...
Materialized neomacs-git
Analyzing neomacs-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains standard variable assignments, function definitions (`pkgver()`, `\_target\_triple()`, `prepare()`, `build()`, `package()`), and comments in its global/top-level scope. There are no command substitutions, backtick executions, or expansions that would run arbitrary code when the file is sourced. All potentially dangerous commands (cd, sed, git, cargo, install, cp) are inside functions that are not executed during `makepkg --printsrcinfo`. The `source` array uses a VCS git URL with a variable, which is a normal AUR pattern and does not trigger any download at parse time. Therefore, sourcing this PKGBUILD to print its metadata is safe.
</details>
<evidence></evidence>
<summary>No dangerous top-level code; safe to parse.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code; safe to parse.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, .gitignore...
[0/3] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` file for a Git repository. It ignores all files (`*`) except for the explicitly listed packaging files (`PKGBUILD`, `.SRCINFO`, and `.gitignore` itself). This is a conventional and benign practice used by AUR maintainers to keep only the essential packaging files under version control. No executable instructions, network requests, obfuscated content, or any other malicious patterns are present.
</details>
<evidence></evidence>
<summary>Standard AUR .gitignore, no security concerns.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard AUR .gitignore, no security concerns.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.SRCINFO` metadata file for an AUR package. It declares metadata such as package name, description, dependencies, and a VCS source. There is no executable code, no network requests beyond declaring the upstream git repository (which is normal for a `-git` package), no obfuscation, and no unusual operations. The checksum is `SKIP`, which is required for VCS sources and is not a security issue. No evidence of malicious behavior is present.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file, no malicious content.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a VCS (git) package. The source is fetched from the project's official GitHub repository (`https://github.com/eval-exec/neomacs.git`) and the checksum is correctly set to `SKIP` (required for VCS sources). No unexpected network requests, obfuscation, or dangerous commands are present. The build process uses `cargo fetch --locked` (locked to the fetched source), `cargo xtask` (the project's own build system), and standard installation steps (install, cp, etc.) into `$pkgdir`. No exfiltration, backdoors, or supply-chain injection was found. The desktop asset script is from the project itself and is run during packaging, which is normal.
</details>
<evidence></evidence>
<summary>Standard AUR VCS package, no malicious content.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR VCS package, no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 11,824
  Completion Tokens: 1,707
  Total Tokens: 13,531
  Total Cost: $0.001387
  Execution Time: 28.63 seconds

Final Status: SAFE


No issues found.
