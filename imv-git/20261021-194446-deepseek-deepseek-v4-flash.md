---
package: imv-git
pkgver: 5.0.1.r31.g7dc0dda
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 15743
completion_tokens: 2247
total_tokens: 17990
cost: 0.001841567
execution_time: 22.81
files_reviewed: 6
files_skipped: 0
maintainer_files: 6
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-21T19:44:46Z
file_verdicts:
  - file: .nvchecker.toml
    status: safe
    summary: Static config file, no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR .SRCINFO; no security concerns.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore, no security concerns.
  - file: LICENSE
    status: safe
    summary: Standard license file, no security issues.
  - file: REUSE.toml
    status: safe
    summary: Standard REUSE config, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR VCS PKGBUILD, no malicious indicators.
---

Materializing imv-git from local mirror...
Materialized imv-git
Analyzing imv-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains static variable definitions, comments, and function definitions. No malicious code exists in the global scope that would execute during sourcing. The `source` array uses a standard git+https URL pointing to the upstream repository, and `sha256sums` is set to `SKIP`, which is normal for VCS packages. All potentially dangerous operations are inside `pkgver()`, `prepare()`, `build()`, and `package()` functions, which are not executed by `makepkg --printsrcinfo`. Therefore, this command is safe to run.
</details>
<evidence></evidence>
<summary>No malicious top-level code; sourcing PKGBUILD is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious top-level code; sourcing PKGBUILD is safe.
Reviewing the 6 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/6] Reviewing .SRCINFO...
[0/6] Reviewing .SRCINFO, .gitignore...
[0/6] Reviewing .SRCINFO, .gitignore, .nvchecker.toml...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a configuration file for nvchecker, a tool used to check for new upstream versions. The file defines a single source entry with `source = "manual"`, meaning version checking for this package is done manually rather than automated via a VCS or release monitor. There is no executable code, no network operations, no obfuscation, and no deviation from standard packaging practices. The file poses no security risk.
</details>
<evidence></evidence>
<summary>Static config file, no security concerns.</summary>
</security_assessment>

[0/6] Reviewing .SRCINFO, .gitignore, .nvchecker.toml, LICENSE...
[1/6] Reviewing .SRCINFO, .gitignore, LICENSE...
+ Reviewed .nvchecker.toml. Status: SAFE -- Static config file, no security concerns.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is for the `imv-git` AUR package, which builds the `imv` image viewer from its official upstream Git repository at `git.sr.ht/~exec64/imv`. It contains only standard metadata fields: package name, version, dependencies, architecture, license, and one VCS source with `SHA256SUMS=SKIP` (expected for VCS packages). There are no embedded scripts, no network requests beyond declaring the upstream Git source, and no obfuscated or encoded content. The file follows normal AUR packaging conventions and does not exhibit any supply-chain attack indicators.
</details>
<evidence></evidence>
<summary>Standard AUR .SRCINFO; no security concerns.</summary>
</security_assessment>

[2/6] Reviewing .gitignore, LICENSE...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR .SRCINFO; no security concerns.
[2/6] Reviewing .gitignore, LICENSE, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.gitignore` file is a standard git configuration file that specifies intentionally untracked files. The pattern shown is typical for AUR package repositories where only the PKGBUILD, .SRCINFO, and a few other metadata files are tracked. No commands, network operations, or data manipulation occur. This file poses no security risk.
</details>
<evidence></evidence>
<summary>Standard .gitignore, no security concerns.</summary>
</security_assessment>

[3/6] Reviewing LICENSE, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore, no security concerns.
[3/6] Reviewing LICENSE, PKGBUILD, REUSE.toml...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a plain text license file (ISC-style permissive license) with no executable content, network requests, obfuscation, or system modifications. It contains only standard legal language granting permission to use, copy, modify, and distribute the software. There are no security concerns.
</details>
<evidence></evidence>
<summary>Standard license file, no security issues.</summary>
</security_assessment>

[4/6] Reviewing PKGBUILD, REUSE.toml...
+ Reviewed LICENSE. Status: SAFE -- Standard license file, no security issues.
LLM auditresponse for REUSE.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a REUSE compliance configuration file (REUSE.toml) that declares copyright and license information for various package files (PKGBUILD, README, keys, etc.). It contains no executable code, no network operations, no obfuscation, and no instructions that could affect system behavior. It is purely metadata.
</details>
<evidence></evidence>
<summary>Standard REUSE config, no security issues.</summary>
</security_assessment>

[5/6] Reviewing PKGBUILD...
+ Reviewed REUSE.toml. Status: SAFE -- Standard REUSE config, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD for imv-git follows standard AUR packaging practices for a VCS package. The source fetches from the official upstream repository (git.sr.ht/~exec64/imv), and all operations in prepare(), build(), and package() are routine: a sed substitution for a dependency name, meson build commands, and standard installation. There are no suspicious network requests, obfuscated code, dangerous commands (eval, curl, wget, base64), or anything that deviates from expected behavior for a -git package. The checksums are set to SKIP, which is required for VCS sources and not a security issue.
</details>
<evidence></evidence>
<summary>Standard AUR VCS PKGBUILD, no malicious indicators.</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR VCS PKGBUILD, no malicious indicators.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 15,743
  Completion Tokens: 2,247
  Total Tokens: 17,990
  Total Cost: $0.001842
  Execution Time: 22.81 seconds

Final Status: SAFE


No issues found.
