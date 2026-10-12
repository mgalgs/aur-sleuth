---
package: artcraft-launcher-git
pkgver: 0.3.2.r29.g78ef4a8
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 10804
completion_tokens: 2247
total_tokens: 13051
cost: 0.00320028
execution_time: 32.0
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-12T11:10:10Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR VCS metadata; upstream git source only; no malicious behavior found.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore excluding build artifacts and packages; no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard Rust AUR git package; no malicious behavior or injection found.
---

Materializing artcraft-launcher-git from local mirror...
Materialized artcraft-launcher-git
Analyzing artcraft-launcher-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources only the top-level scope of this PKGBUILD. That scope contains ordinary variable and array assignments (`pkgname`, `pkgver`, `pkgdesc`, `depends`, `source`, etc.) plus function definitions for `pkgver()`, `prepare()`, `build()`, `check()`, and `package()`. No top-level command substitution, network fetch, `eval`, `base64`, `curl`, `wget`, or file-modifying command executes during sourcing.

The `sha256sums=(SKIP)` entry is a standard VCS-source practice and does not affect this safety gate because no source is downloaded or verified during `--printsrcinfo`. The contents of the build/package functions will run only during later makepkg stages and are outside the scope of this narrow check; they appear to be a routine Cargo/Rust build and install flow for the package's own upstream repository.
</details>
<evidence>
</evidence>
<summary>
Top-level PKGBUILD scope contains only normal variables and function definitions; no malicious code executes during printsrcinfo.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD scope contains only normal variables and function definitions; no malicious code executes during printsrcinfo.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, .gitignore...
[0/3] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file contains only standard package metadata for an AUR VCS package (`artcraft-launcher-git`). It declares the upstream source as a git repository from the project's own GitHub URL (`https://github.com/storytold/craft-launcher.git`), which is expected behavior for a `-git` package.

The `sha256sums = SKIP` entry is normal and required for VCS sources; it is not evidence of malice. Dependencies, optional dependencies, licenses, and architecture declarations are all routine packaging metadata. There are no suspicious network requests, no encoded/obfuscated commands, no unexpected file operations, and no executable content. Nothing in this file deviates from standard AUR packaging practices.
</details>
<evidence>
</evidence>
<summary>
Standard AUR VCS metadata; upstream git source only; no malicious behavior found.
</summary>
</security_assessment>

[1/3] Reviewing .gitignore, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR VCS metadata; upstream git source only; no malicious behavior found.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` for an AUR package repository. It excludes build artifacts (`src/`, `pkg/`), the checkout directory (`artcraft-launcher/`), and packaged binary archives (`*.pkg.tar.zst`). There is no executable code, no network activity, no file modification outside normal version-control ignore patterns, and no obfuscation. This is routine packaging hygiene with no security concerns.
</details>
<evidence>
</evidence>
<summary>
Standard .gitignore excluding build artifacts and packages; no security issues.
</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore excluding build artifacts and packages; no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard AUR `-git` package for a Rust launcher. It clones the declared upstream GitHub repository, fetches Rust dependencies with `cargo fetch --locked`, builds with `cargo build --frozen`, and installs the resulting binary, desktop entry, metainfo, icons, docs, and licenses into `$pkgdir`. There are no suspicious network requests, no encoded or obfuscated commands, no use of `eval`, `curl`, `wget`, or `git pull`/`reset --hard`, and no file operations outside the normal package build/install scope.

The `SKIP` checksum and unpinned git source are normal for a VCS package, though they mean the exact commit is not independently verified at build time; this is a hygiene consideration, not evidence of malice. The `sed`/`date`/`git log` usage in `package()` only generates version and date placeholders for the metainfo file. Overall, the file is consistent with ordinary AUR packaging practices.
</details>
<evidence>
</evidence>
<summary>Standard Rust AUR git package; no malicious behavior or injection found.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard Rust AUR git package; no malicious behavior or injection found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,804
  Completion Tokens: 2,247
  Total Tokens: 13,051
  Total Cost: $0.003200
  Execution Time: 32.00 seconds

Final Status: SAFE


No issues found.
