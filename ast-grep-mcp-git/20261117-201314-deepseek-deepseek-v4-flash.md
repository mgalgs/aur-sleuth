---
package: ast-grep-mcp-git
pkgver: r82.51d5a23
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 9458
completion_tokens: 2475
total_tokens: 11933
cost: 0.00129672
execution_time: 18.8
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-17T20:13:13Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file, no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file with no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no malicious indicators.
---

Materializing ast-grep-mcp-git from local mirror...
Materialized ast-grep-mcp-git
Analyzing ast-grep-mcp-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources the PKGBUILD solely in its top-level scope. The top-level content of this PKGBUILD contains only standard variable and array assignments (`pkgname`, `_realname`, `arch`, `depends`, `source`, `sha256sums`, etc.). None of these assignments contain any command substitution (`$(...)` or `` `...` ``) or other mechanisms that would execute arbitrary code at source time.

The functions `pkgver()`, `build()`, and `package()` are defined but *not invoked* during `--printsrcinfo` parsing. The code that interacts with git or the build system resides entirely inside these functions, so it cannot execute during this phase. There is no obfuscation, no unexpected external calls, and no exfiltration attempts in the top-level code. Parsing this PKGBUILD to extract its metadata is completely safe.
</details>
<evidence></evidence>
<summary>Top-level parsing is completely safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level parsing is completely safe.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, .gitignore...
[0/3] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.gitignore` file is a standard Git configuration file that ignores all files except the essential AUR packaging files (`PKGBUILD`, `.SRCINFO`, and `.gitignore` itself). This is normal practice to prevent build artifacts from being committed to the repository. There are no commands, network requests, or any executable content. The file contains only simple glob patterns and comments (if any). No evidence of malicious behavior.
</details>
<evidence></evidence>
<summary>Standard .gitignore file, no security concerns.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore file, no security concerns.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is a standard metadata file for an AUR package. It declares the package name, version, dependencies, and a VCS source pointing to the upstream GitHub repository at `https://github.com/ast-grep/ast-grep-mcp.git`. The `sha256sums = SKIP` is expected for VCS sources and is not a sign of malice. No dangerous commands, obfuscation, or unexpected behavior is present. The file contains only declarative information and does not execute any code or perform any network requests beyond referencing the package's own upstream source.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file with no malicious content.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file with no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a Python package from a VCS source. It fetches the source from the official upstream GitHub repository (`https://github.com/ast-grep/ast-grep-mcp`), uses `sha256sums=('SKIP')` which is expected for VCS packages, and performs normal build (`python -m build --wheel --no-isolation`) and installation (`python -m installer`) steps. No suspicious network requests, obfuscated code, dangerous commands, or unexpected file operations are present. The only dependencies are legitimate Python packages (pydantic, mcp, yaml) and build tools. The package does nothing beyond its declared purpose of building and installing the `ast-grep-mcp` project.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with no malicious indicators.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no malicious indicators.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 9,458
  Completion Tokens: 2,475
  Total Tokens: 11,933
  Total Cost: $0.001297
  Execution Time: 18.80 seconds

Final Status: SAFE


No issues found.
