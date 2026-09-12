---
package: paru-git
pkgver: 2.1.0.r41.g789bead
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 8209
completion_tokens: 1522
total_tokens: 9731
cost: 0.00097991124
execution_time: 56.07
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-08T15:21:24Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard metadata file, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD for a known AUR helper; no malice found.
---

Materializing paru-git from local mirror...
Materialized paru-git
Analyzing paru-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only top-level variable assignments and function definitions. No command substitutions, backticks, or other executable constructs appear in the global scope. The source array is a simple URL string. All potentially harmful operations are confined within the function bodies of `prepare()`, `build()`, `package()`, and `pkgver()`, which are **not** executed by `makepkg --printsrcinfo`. Therefore, sourcing this PKGBUILD for metadata extraction is safe.
</details>
<evidence></evidence>
<summary>No dangerous top-level code in PKGBUILD</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code in PKGBUILD
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `.SRCINFO` is a metadata file describing the paru-git package. It contains standard fields such as package name, version, description, architecture support, dependencies, and source location. The source uses a git+https URL pointing to the official upstream repository on GitHub. The checksum is set to SKIP, which is normal and required for VCS (git) sources. There is no executable code, no network requests beyond the declared source, no obfuscation, and no signs of malicious or supply-chain attack behavior. Every element is consistent with legitimate AUR packaging practices.
</details>
<evidence>
</evidence>
<summary>Standard metadata file, no security issues.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata file, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard AUR VCS package for the `paru` AUR helper. It clones the official upstream repository from GitHub (`git+https://github.com/morganamilo/paru`), uses `cargo` to build the Rust project, and installs the resulting binary, configuration file, man pages, and completions. The `sha256sums` are set to `SKIP`, which is normal and required for VCS sources. There are no obfuscated commands, unexpected network requests (beyond the declared upstream git clone), dangerous operations (like `eval`, `curl`, `wget`), or exfiltration of data. The `prepare()`, `build()`, `package()`, and `pkgver()` functions all perform routine packaging tasks consistent with the package's purpose. No supply-chain attack indicators are present.
</details>
<evidence>

</evidence>
<summary>Standard PKGBUILD for a known AUR helper; no malice found.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD for a known AUR helper; no malice found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 8,209
  Completion Tokens: 1,522
  Total Tokens: 9,731
  Total Cost: $0.000980
  Execution Time: 56.07 seconds

Final Status: SAFE


No issues found.
