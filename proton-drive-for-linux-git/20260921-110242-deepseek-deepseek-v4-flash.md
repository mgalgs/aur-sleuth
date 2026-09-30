---
package: proton-drive-for-linux-git
pkgver: 1.11.1.r0.g860d29c
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 13355
completion_tokens: 3933
total_tokens: 17288
cost: 0.001880307926
execution_time: 110.95
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-21T11:02:42Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: Simple license file, no security concerns.
  - file: .gitignore
    status: safe
    summary: Standard AUR .gitignore; no malicious content.
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO metadata, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard Rust -git PKGBUILD; no malicious or suspicious behavior found.
---

Materializing proton-drive-for-linux-git from local mirror...
Materialized proton-drive-for-linux-git
Analyzing proton-drive-for-linux-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` only sources the PKGBUILD's top-level scope. In this PKGBUILD, the top-level scope contains only standard variable and array definitions (`pkgname`, `pkgver`, `arch`, `source`, `sha256sums`, etc.) plus function definitions for `pkgver()`, `prepare()`, `build()`, `check()`, and `package()`. None of those functions execute during `--printsrcinfo`.

There is no top-level command substitution, no `eval`, no `curl`/`wget` piped to a shell, no encoded payload, and no attempt to exfiltrate data while sourcing the file. The `source` entry points to the project's own upstream GitHub repository (`git+https://github.com/narrrl/proton-drive-linux.git`), which is normal for a `-git` package. The `sha256sums=('SKIP')` entry is expected for VCS sources and does not affect this gate, since no source is downloaded or verified during `--printsrcinfo`.

Any suspicious content that might exist inside `pkgver()`, `prepare()`, `build()`, or `package()` is out of scope for this narrow command, because `makepkg --printsrcinfo` does not execute those functions. Based solely on what executes during this step, the PKGBUILD is safe to parse.
</details>
<evidence>
</evidence>
<summary>
Top-level PKGBUILD scope has only standard definitions; printsrcinfo is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD scope has only standard definitions; printsrcinfo is safe.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .gitignore...
[0/4] Reviewing .SRCINFO, .gitignore, LICENSE...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a plain-text ISC-style license file. It contains no executable code, no obfuscation, no network requests, no file operations, and no instructions. It is a standard permissive software license and poses no security risk.
</details>
<evidence></evidence>
<summary>Simple license file, no security concerns.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, .gitignore, LICENSE, PKGBUILD...
[1/4] Reviewing .SRCINFO, .gitignore, PKGBUILD...
+ Reviewed LICENSE. Status: SAFE -- Simple license file, no security concerns.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file used in AUR (Arch User Repository) packages. Its purpose is to keep the git repository clean by ignoring all files by default (`*`) and then explicitly allowing only the necessary packaging files (`.SRCINFO`, `LICENSE`, `PKGBUILD`, and `.gitignore` itself) to be tracked. There is no executable code, no network requests, no file operations beyond normal git exclusion logic, and no obfuscation or encoded commands. The pattern is typical and expected for AUR maintainers who want to avoid committing extraneous files. No security concerns are present.
</details>
<evidence></evidence>
<summary>Standard AUR .gitignore; no malicious content.</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard AUR .gitignore; no malicious content.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard .SRCINFO metadata file for the AUR package `proton-drive-for-linux-git`. It contains only package description, dependencies, and source information. The source is fetched from the project's own GitHub repository (`https://github.com/narrrl/proton-drive-linux.git`), which is expected and legitimate. The `sha256sums = SKIP` entry is standard for VCS packages and does not indicate malice. No network requests, obfuscated code, or dangerous operations are present. The file does not contain any executable instructions or suspicious content. It is purely declarative metadata.
</details>
<evidence></evidence>
<summary>Standard .SRCINFO metadata, no security issues.</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO metadata, no security issues.
LLM auditresponse for PKGBUILD:
 <security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard Rust `-git` AUR package. It clones the declared upstream repository (`https://github.com/narrrl/proton-drive-linux`), fetches Cargo dependencies with `cargo fetch --locked`, builds the expected binaries with `cargo build --frozen`, and installs only those binaries plus the expected desktop files, systemd user unit, license, and documentation into `$pkgdir`. These are all normal packaging operations for the stated application.

The `SKIP` checksum is normal and expected for VCS sources. The source is an unpinned git HEAD, which is also normal for a `-git` package and is not by itself malicious. There is no use of `eval`, `base64`, `curl|bash`, obfuscation, unusual network endpoints, writes outside `$pkgdir`, or tampering with unrelated system files. The package does exactly what a transparent AUR build recipe for this project should do.

The only mild supply-chain consideration is that `-git` packages inherently build from the latest upstream commit, so the build is not fully pinned or reproducible. That is a common trust/hygiene property of VCS AUR packages, not evidence of malicious code, and does not make the file unsafe.
</details>
<evidence>
</evidence>
<summary>
Standard Rust -git PKGBUILD; no malicious or suspicious behavior found.
</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard Rust -git PKGBUILD; no malicious or suspicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,355
  Completion Tokens: 3,933
  Total Tokens: 17,288
  Total Cost: $0.001880
  Execution Time: 110.95 seconds

Final Status: SAFE


No issues found.
