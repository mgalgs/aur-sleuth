---
package: ckb-next-git
pkgver: 0.6.2.r70.g02c2f2df
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 10483
completion_tokens: 1690
total_tokens: 12173
cost: 0.001261533
execution_time: 40.15
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-08T12:08:27Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no security issues.
  - file: ckb-next-git.install
    status: safe
    summary: Benign install script; prints a systemd service reminder only. No security concerns.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR VCS PKGBUILD; no malicious code.
---

Materializing ckb-next-git from local mirror...
Materialized ckb-next-git
Analyzing ckb-next-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global scope contains only standard variable assignments (package metadata, dependencies, source arrays) and function definitions (`pkgver()`, `build()`, `package()`). No command substitutions, `eval`, `curl`, `wget`, or other dangerous operations are present in the global scope. The `sha256sums` are set to `SKIP`, which is expected for a VCS package and does not pose a risk during the `--printsrcinfo` step since no sources are downloaded or verified. Running `makepkg --printsrcinfo` will safely source the file and print metadata without executing any malicious code.
</details>
<evidence></evidence>
<summary>Global scope contains only safe variable assignments.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Global scope contains only safe variable assignments.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing PKGBUILD...
[0/3] Reviewing PKGBUILD, .SRCINFO...
[0/3] Reviewing PKGBUILD, .SRCINFO, ckb-next-git.install...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file is a standard AUR metadata descriptor. It declares the package source as the upstream `ckb-next` GitHub repository and an auxiliary helper source from the same organization. Both sources use `git+https` and have `sha256sums = SKIP`, which is perfectly normal for VCS packages. There are no executable instructions, no network requests beyond standard source fetching, no obfuscation, and no operations that could exfiltrate data or execute untrusted code. The file is entirely declarative and consistent with legitimate AUR packaging practices.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata, no security issues.</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, ckb-next-git.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no security issues.
LLM auditresponse for ckb-next-git.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Arch Linux package install script (`.install`) for ckb-next-git. It defines simple colored output helpers and a `post_install()` hook that prints a message telling the user to enable the ckb-next-daemon systemd service. There are no network operations, no downloads, no execution of fetched code, no file system modifications, no obfuscation, and no data exfiltration. The script only prints informational text during package installation, which is normal packaging practice.
</details>
<evidence>
</evidence>
<summary>
Benign install script; prints a systemd service reminder only. No security concerns.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed ckb-next-git.install. Status: SAFE -- Benign install script; prints a systemd service reminder only. No security concerns.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR practices for a VCS package. It fetches the source from the project's own GitHub repositories (ckb-next/ckb-next and ckb-next/AUR-wrapper), which is expected. The build process uses cmake and installs files into `$pkgdir`. The only notable deviation is renaming the main binary and installing a wrapper script from the AUR-wrapper repository, but this is a deliberate packaging design and not inherently malicious—the wrapper comes from the same GitHub organization as the main project. No suspicious commands (eval, base64, curl, wget) or obfuscated code are present. SHA256 sums are set to SKIP, which is required for VCS sources. No evidence of data exfiltration, backdoors, or unauthorized network connections.
</details>
<evidence></evidence>
<summary>Standard AUR VCS PKGBUILD; no malicious code.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR VCS PKGBUILD; no malicious code.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,483
  Completion Tokens: 1,690
  Total Tokens: 12,173
  Total Cost: $0.001262
  Execution Time: 40.15 seconds

Final Status: SAFE


No issues found.
