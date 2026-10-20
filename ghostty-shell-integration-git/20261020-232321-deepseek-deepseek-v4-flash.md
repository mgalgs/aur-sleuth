---
package: ghostty-shell-integration-git
pkgbase: ghostty-git
pkgver: 1.3.1.r1209.gd560c64
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 14189
completion_tokens: 2493
total_tokens: 16682
cost: 0.001744925
execution_time: 64.81
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-20T23:23:21Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard gitignore file, no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no malicious content.
  - file: ghostty-llvm.patch
    status: safe
    summary: Innocent build patch, no malicious code.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no malicious indicators.
---

ghostty-shell-integration-git is built from ghostty-git
Materializing ghostty-shell-integration-git from local mirror...
Materialized ghostty-shell-integration-git
Analyzing ghostty-shell-integration-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD only defines standard packaging metadata at global scope: `_pkgbase`, `pkgname`, `pkgrel`, `pkgver`, `pkgdesc`, `arch`, `url`, `license`, dependencies, `makedepends`, `source`, and `sha256sums`. There are no top-level command substitutions, no `eval`, no `curl`/`wget`/`bash` execution, and no global code that downloads or runs anything while the file is sourced by `makepkg --printsrcinfo`.

All potentially interesting behavior (patching, zig cache fetching, building, and file installation) is inside `prepare()`, `pkgver()`, `build()`, and `package_*()` functions, which are not executed by `makepkg --printsrcinfo`. The `SKIP` checksum for the VCS source is normal for `-git` packages and is not grounds for concern at this gate. No evidence of injected or malicious code exists in the top-level scope.
</details>
<evidence>
</evidence>
<summary>
No dangerous top-level code; printsrcinfo parsing is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code; printsrcinfo parsing is safe.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .gitignore...
[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `.gitignore` contains only a single asterisk (`*`), which is a standard gitignore pattern that tells Git to ignore all files in the directory. This is a common and harmless configuration file used in version control. There is no evidence of any malicious code, network requests, obfuscation, or any other suspicious behavior. The file follows normal packaging best practices and poses no security risk.
</details>
<evidence></evidence>
<summary>Standard gitignore file, no security concerns.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD, ghostty-llvm.patch...
[1/4] Reviewing .SRCINFO, PKGBUILD, ghostty-llvm.patch...
+ Reviewed .gitignore. Status: SAFE -- Standard gitignore file, no security concerns.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard AUR `.SRCINFO` metadata file for the `ghostty-git` package. It defines package metadata, dependencies, sources, and split packages. The only source is the upstream git repository (`git+https://github.com/ghostty-org/ghostty.git`) and a single patch file with a verified SHA256 checksum. The VCS source uses `SKIP` for the checksum, which is normal and expected for git-based packages. There is no obfuscated code, no network requests beyond the declared upstream source, no dangerous commands (eval, curl, wget), and no file operations that deviate from standard packaging. The file is purely declarative and contains no executable content.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata, no malicious content.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, ghostty-llvm.patch...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no malicious content.
LLM auditresponse for ghostty-llvm.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a patch that adds `.use_llvm = true` to two Zig build definitions in the Ghostty source. This is a standard build configuration change, likely to enable LLVM backend usage for better code generation or compatibility. There is no obfuscation, network activity, execution of untrusted code, data exfiltration, or other malicious behavior. The patch is entirely consistent with normal packaging and build optimization.
</details>
<evidence></evidence>
<summary>Innocent build patch, no malicious code.</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed ghostty-llvm.patch. Status: SAFE -- Innocent build patch, no malicious code.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a VCS package. The source is pulled from the official upstream repository (`git+https://github.com/ghostty-org/ghostty.git`) with a SKIP checksum—expected for VCS sources. The only external script executed (`./nix/build-support/fetch-zig-cache.sh`) is part of the upstream build system and performs routine dependency fetching for the Zig build process. No obfuscated code, unexpected network requests, data exfiltration, or dangerous commands (eval, curl|bash, etc.) are present. All package functions copy built artifacts or upstream scripts into standard system paths.  
</details>
<evidence>
</evidence>
<summary>Standard AUR PKGBUILD with no malicious indicators.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no malicious indicators.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 14,189
  Completion Tokens: 2,493
  Total Tokens: 16,682
  Total Cost: $0.001745
  Execution Time: 64.81 seconds

Final Status: SAFE


No issues found.
