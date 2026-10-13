---
package: ksh93-git
pkgver: r2281.99771b01
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 17665
completion_tokens: 1960
total_tokens: 19625
cost: 0.001964235
execution_time: 56.53
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-13T19:07:51Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file, no malicious content.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD for ksh93-git.
  - file: sample.kshrc
    status: safe
    summary: Standard ksh93 configuration file, no security concerns.
  - file: ksh93.install
    status: safe
    summary: Standard shell package install script, no security issues.
---

Materializing ksh93-git from local mirror...
Materialized ksh93-git
Analyzing ksh93-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Sourcing this PKGBUILD for `makepkg --printsrcinfo` only evaluates top-level statements. The top-level scope contains only standard variable assignments (`pkgname`, `pkgver`, `source`, `sha512sums`, etc.) and function definitions (`pkgver`, `build`, `package`). No top-level command substitutions, downloads, eval, obfuscated code, or file-modifying operations are present. The `pkgver()` function uses `git` commands, but it is not executed during `--printsrcinfo`, so it is out of scope for this gate. The SKIP checksum for the VCS source is normal for git packages and does not affect this step since no sources are fetched or verified.
</details>
<evidence>
</evidence>
<summary>
Top-level PKGBUILD scope is safe; no dangerous code executes during printsrcinfo.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD scope is safe; no dangerous code executes during printsrcinfo.
Reviewing the 5 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, .gitignore...
[0/5] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` listing common build artifacts (`pkg/`, `src/`, `ksh93/`, `*.zst`) to exclude them from version control. There are no commands, network operations, encoded data, or any other security-relevant content. It poses no risk.
</details>
<evidence></evidence>
<summary>Standard .gitignore file, no malicious content.</summary>
</security_assessment>

[0/5] Reviewing .SRCINFO, .gitignore, PKGBUILD, ksh93.install...
[1/5] Reviewing .SRCINFO, PKGBUILD, ksh93.install...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore file, no malicious content.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file is standard AUR package metadata. It defines the package `ksh93-git`, which fetches the upstream repository from `https://github.com/ksh93/ksh` (the legitimate project URL). The VCS source (`git+https://...`) has its checksum set to `SKIP`, which is required and expected for git sources. A supplementary file `sample.kshrc` has a proper SHA-512 checksum, ensuring integrity. There are no unusual network destinations, obfuscated commands, or operations that deviate from normal packaging practices. No evidence of malicious code injection or supply-chain attack.
</details>
<evidence></evidence>
<summary>Standard AUR metadata, no security issues.</summary>
</security_assessment>

[1/5] Reviewing .SRCINFO, PKGBUILD, ksh93.install, sample.kshrc...
[2/5] Reviewing PKGBUILD, ksh93.install, sample.kshrc...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a VCS (git) package. It clones the upstream repository from the official GitHub project (ksh93/ksh) on the `dev` branch, builds with the upstream `bin/package` script, and installs to the package directory. There is no obfuscated code, no unexpected network requests, no eval of untrusted content, and no file operations outside of the standard build/install workflow. The only notable points are:
- The source is an unpinned branch (`dev`), which is normal for `-git` packages.
- The optional PGO step runs the project's own regression tests (`./bin/shtests -u`), which is legitimate upstream functionality.
No evidence of supply-chain compromise or malicious behavior is present.
</details>
<evidence>
</evidence>
<summary>Standard AUR PKGBUILD for ksh93-git.</summary>
</security_assessment>

[3/5] Reviewing ksh93.install, sample.kshrc...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD for ksh93-git.
LLM auditresponse for sample.kshrc:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a sample <code>.kshrc</code> configuration file for the Korn shell (ksh93). It sets shell options, defines a tilde expansion hook, declares color codes, and customizes the prompt. There are no network requests, no obfuscated or encoded commands, no unexpected file operations, and no references to external scripts or binaries. The content is entirely consistent with ordinary user-level shell configuration and does not exhibit any signs of malicious behavior or supply-chain tampering.
</details>
<evidence>
</evidence>
<summary>Standard ksh93 configuration file, no security concerns.</summary>
</security_assessment>

[4/5] Reviewing ksh93.install...
+ Reviewed sample.kshrc. Status: SAFE -- Standard ksh93 configuration file, no security concerns.
LLM auditresponse for ksh93.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Arch Linux package install script for the ksh93 shell. It performs routine operations: adding shell entries to `/etc/shells` on install/upgrade, and removing them on removal. It safely changes root's shell to `/bin/sh` if it was set to ksh (to prevent loss of access during removal) and warns about other users still using ksh. No suspicious network requests, obfuscated code, or unexpected file modifications are present. The script follows normal packaging best practices.
</details>
<evidence>
</evidence>
<summary>Standard shell package install script, no security issues.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed ksh93.install. Status: SAFE -- Standard shell package install script, no security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 17,665
  Completion Tokens: 1,960
  Total Tokens: 19,625
  Total Cost: $0.001964
  Execution Time: 56.53 seconds

Final Status: SAFE


No issues found.
