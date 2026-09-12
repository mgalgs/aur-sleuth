---
package: picom-nhktmdzhg-git
pkgver: 2858__2026.09.09
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 10803
completion_tokens: 1419
total_tokens: 12222
cost: 0.00095487
execution_time: 34.68
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-09T19:17:25Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR VCS metadata; no suspicious or malicious content found.
  - file: .gitignore
    status: safe
    summary: Innocent .gitignore for build artifacts.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD for a VCS package; no malicious behavior detected.
---

Materializing picom-nhktmdzhg-git from local mirror...
Materialized picom-nhktmdzhg-git
Analyzing picom-nhktmdzhg-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable definitions and function declarations at the global scope. No command substitutions, backticks, eval, or other code that would execute during `makepkg --printsrcinfo` are present. The functions `pkgver()`, `build()`, and `package()` are defined but not executed during the sourcing phase. There is no top-level code that could download, exfiltrate data, or run untrusted payloads. The source array uses a normal git URL with a branch specification, and the checksum is SKIP (expected for VCS packages and irrelevant during this step). Therefore, running `makepkg --printsrcinfo` is safe.
</details>
<evidence></evidence>
<summary>No malicious code at top-level scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code at top-level scope.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, .gitignore...
[0/3] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.SRCINFO` metadata file for an AUR VCS package. It declares a git source from the upstream GitHub repository `nhktmdzhg/picom` on the `next` branch, with `md5sums = SKIP`, which is normal and required for VCS sources. The package description, dependencies, and provides/conflicts entries are consistent with a picom fork package.

There is no obfuscated code, no network fetch beyond the declared upstream repository, no file manipulation, and no build or install logic in this file. The unpinned `next` branch is an ordinary VCS packaging practice and does not indicate a supply-chain attack. No genuinely malicious behavior is present.
</details>
<evidence>
</evidence>
<summary>
Standard AUR VCS metadata; no suspicious or malicious content found.</summary>
</security_assessment>

[1/3] Reviewing .gitignore, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR VCS metadata; no suspicious or malicious content found.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file for an AUR package. It ignores build artifacts such as the `picom/` build directory, `pkg/` directory, `src` directory, and any `*.tar` archives. These are typical patterns used to prevent committing generated files during packaging. There is no suspicious or malicious content.
</details>
<evidence></evidence>
<summary>Innocent .gitignore for build artifacts.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Innocent .gitignore for build artifacts.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard Arch packaging practices for a VCS (git) package. It clones the upstream repository from the declared project URL (`github.com/nhktmdzhg/picom.git`) on the `next` branch, builds with meson/ninja, and installs the compiled binaries, license files, and a sample configuration. There are no suspicious network requests, obfuscated code, dangerous command invocations (curl, wget, eval, base64, etc.), or attempts to exfiltrate data. The `md5sums` are set to `SKIP`, which is normal for VCS sources and not inherently unsafe. All operations serve the stated purpose of packaging the picom compositor fork.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD for a VCS package; no malicious behavior detected.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD for a VCS package; no malicious behavior detected.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,803
  Completion Tokens: 1,419
  Total Tokens: 12,222
  Total Cost: $0.000955
  Execution Time: 34.68 seconds

Final Status: SAFE


No issues found.
