---
package: ghostty-git
pkgver: 1.3.1.r1209.gd560c64
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 14490
completion_tokens: 4041
total_tokens: 18531
cost: 0.002054052
execution_time: 89.35
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-20T23:21:53Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Innocuous ignore file, no threats
  - file: .SRCINFO
    status: safe
    summary: Package metadata file, no security issues.
  - file: ghostty-llvm.patch
    status: safe
    summary: Standard build patch, no malicious behavior.
  - file: PKGBUILD
    status: safe
    summary: Standard VCS PKGBUILD with no malicious code.
---

Materializing ghostty-git from local mirror...
Materialized ghostty-git
Analyzing ghostty-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources only the global/top-level scope of this PKGBUILD. The top-level content consists solely of standard metadata variable assignments and function declarations: `pkgname`, `pkgver`, `pkgdesc`, `arch`, `url`, `license`, dependency arrays, `source`, and `sha256sums`. There are no top-level command substitutions, no network requests, no obfuscated code, no eval-like constructs, and no file-modifying operations that would execute during sourcing.

The `prepare()`, `build()`, and `package_*()` functions contain build/install logic, including a `fetch-zig-cache.sh` invocation in `prepare()`, but those functions are not executed by `makepkg --printsrcinfo` and are therefore outside the scope of this narrow gate. The `SKIP` checksum for the git source is not a safety issue for this step because no sources are downloaded or verified during metadata printing.
</details>
<evidence>
</evidence>
<summary>
Top-level PKGBUILD scope is safe; no dangerous code executes during printsrcinfo.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD scope is safe; no dangerous code executes during printsrcinfo.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .gitignore...
[0/4] Reviewing .gitignore, .SRCINFO...
[0/4] Reviewing .gitignore, .SRCINFO, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` file containing a single asterisk pattern, which tells git to ignore all files in the directory. It contains no executable code, no network requests, no obfuscation, and no system modifications. There is no evidence of any malicious or dangerous behavior; it is a routine configuration file for version control.
</details>
<evidence></evidence>
<summary>Innocuous ignore file, no threats</summary>
</security_assessment>

[0/4] Reviewing .gitignore, .SRCINFO, PKGBUILD, ghostty-llvm.patch...
[1/4] Reviewing .SRCINFO, PKGBUILD, ghostty-llvm.patch...
+ Reviewed .gitignore. Status: SAFE -- Innocuous ignore file, no threats
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is the `.SRCINFO` metadata for the `ghostty-git` AUR package. It contains no executable code, no obfuscated strings, no network requests, and no system modification commands. The sources are the upstream Git repository and a patch file (with a pinned checksum for the patch). The `SKIP` checksum for the VCS source is standard AUR practice and is not a security concern. The file only lists package dependencies, descriptions, and provider/conflict relationships. There is no evidence of malicious or supply-chain attack behavior.
</details>
<evidence>
</evidence>
<summary>Package metadata file, no security issues.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, ghostty-llvm.patch...
+ Reviewed .SRCINFO. Status: SAFE -- Package metadata file, no security issues.
LLM auditresponse for ghostty-llvm.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a patch that adds `.use_llvm = true,` to two Zig build configuration files. This setting enables the LLVM backend for compilation, a standard build option. There are no network requests, encoded commands, file operations, or any other indicators of malicious behavior. The change is consistent with normal packaging and upstream build tuning.</details>
<evidence>
</evidence>
<summary>Standard build patch, no malicious behavior.</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed ghostty-llvm.patch. Status: SAFE -- Standard build patch, no malicious behavior.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR VCS packaging practices for the ghostty terminal emulator. The source is fetched from the official upstream repository, a pinned patch is applied, and the upstream build system (Zig) is used. No unusual or obfuscated commands, no unexpected network requests (beyond cloning the declared git source and running the upstream`s own fetch-zig-cache.sh script), and no manipulation of system files outside the package install directory are present. There is no evidence of malicious code injection.
</details>
<evidence></evidence>
<summary>Standard VCS PKGBUILD with no malicious code.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard VCS PKGBUILD with no malicious code.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 14,490
  Completion Tokens: 4,041
  Total Tokens: 18,531
  Total Cost: $0.002054
  Execution Time: 89.35 seconds

Final Status: SAFE


No issues found.
