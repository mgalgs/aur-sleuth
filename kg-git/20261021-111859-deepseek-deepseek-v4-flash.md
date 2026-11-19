---
package: kg-git
pkgver: r165.449fac2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 7218
completion_tokens: 2321
total_tokens: 9539
cost: 0.001079260
execution_time: 30.23
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-21T11:18:57Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard VCS AUR metadata; no malicious behavior or suspicious content found.
  - file: PKGBUILD
    status: safe
    summary: Standard VCS PKGBUILD building kg from upstream source; no malicious behavior found.
---

Materializing kg-git from local mirror...
Materialized kg-git
Analyzing kg-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD contains no global-scope code that executes commands or performs network operations during sourcing. All definitions at the top level are standard variable assignments (`pkgname`, `pkgver`, `arch`, `source`, `sha256sums`, etc.) and function definitions (`pkgver()`, `build()`, `package()`). There are no command substitutions, backticks, or external utility calls (curl, wget, eval, base64, etc.) in the global scope that would run when `makepkg --printsrcinfo` sources the file. The `SKIP` checksum is explicitly identified in the rules as acceptable for this gate. The function bodies (`pkgver()`, `build()`, `package()`) are standard for a VCS-based AUR package (using `git`, `make`, and `make install`) but are not executed by `--printsrcinfo` anyway, so they are out of scope for this specific safety check.
</details>
<evidence></evidence>
<summary>No malicious global scope code to execute.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious global scope code to execute.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, .SRCINFO...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file is a standard AUR metadata descriptor for the `kg-git` package. It declares a VCS source from the project's own upstream GitHub repository (`git+https://github.com/troglobit/kg.git`), which is the expected and legitimate origin for a `-git` package. The `sha256sums = SKIP` entry is required and normal for VCS sources; it is not evidence of malice. The dependency list (`glibc`), build dependency (`git`), and package metadata are all consistent with ordinary packaging practices.

There are no suspicious network endpoints, no executable code, no encoded or obfuscated content, and no file operations outside of what a normal package manifest describes. The file contains only declarative metadata and does not perform any action by itself. No evidence of a supply-chain attack or injected malicious behavior was found.
</details>
<evidence>
</evidence>
<summary>
Standard VCS AUR metadata; no malicious behavior or suspicious content found.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard VCS AUR metadata; no malicious behavior or suspicious content found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR VCS packaging practices. It clones the package's own upstream repository from `https://github.com/troglobit/kg`, generates a version from the git commit count and short hash, builds with `make`, and installs into `$pkgdir` with `make install` and a license file copy. No suspicious network endpoints, obfuscated commands, unexpected file operations, or post-build payloads are present.

The `sha256sums=('SKIP')` entry is expected and required for git-based VCS sources, so it is not a security issue. There are no `eval`, `curl`, `wget`, `base64`, or similar constructs, and no code that exfiltrates data or executes attacker-controlled content outside the ordinary build process.
</details>
<evidence>
</evidence>
<summary>
Standard VCS PKGBUILD building kg from upstream source; no malicious behavior found.
</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard VCS PKGBUILD building kg from upstream source; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 7,218
  Completion Tokens: 2,321
  Total Tokens: 9,539
  Total Cost: $0.001079
  Execution Time: 30.23 seconds

Final Status: SAFE


No issues found.
