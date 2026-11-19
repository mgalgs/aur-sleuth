---
package: figcraft-git
pkgver: 0.5.1.r25.ge56856f
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 10150
completion_tokens: 1214
total_tokens: 11364
cost: 0.001144598
execution_time: 25.96
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-13T15:08:52Z
file_verdicts:
  - file: .nvchecker.toml
    status: safe
    summary: Configuration file only; no malicious or suspicious behavior found.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR VCS Rust package, no malicious indicators.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no malicious content.
---

Materializing figcraft-git from local mirror...
Materialized figcraft-git
Analyzing figcraft-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources the PKGBUILD and executes only its top-level scope. In this PKGBUILD, the top-level statements are limited to ordinary variable assignments, the `source` array pointing to the project's own GitHub repository, and function definitions (`_srcenv`, `prepare`, `pkgver`, `build`, `package`). None of these function bodies execute during `--printsrcinfo`. There are no top-level command substitutions, no downloads, no `eval`, no `curl`/`wget` pipelines, and no obfuscated or encoded commands. The `sha256sums` entry is `SKIP`, but that is not relevant to this gate because no sources are fetched or verified during `--printsrcinfo`. The content is consistent with standard AUR packaging practices.
</details>
<evidence>
</evidence>
<summary>
Top-level PKGBUILD scope is benign; no code executes during printsrcinfo.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD scope is benign; no code executes during printsrcinfo.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, .nvchecker.toml...
[0/3] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a minimal nvchecker configuration that declares a single package entry `figcraft-git` with a manual source. It contains no commands, network operations, obfuscated code, or references to external files. A manual source simply means the version is updated manually by the maintainer, which is an accepted AUR packaging practice and poses no security risk.

There are no suspicious strings, no executable content, no downloads, and no deviations from expected packaging tooling configuration.
</details>
<evidence>
</evidence>
<summary>
Configuration file only; no malicious or suspicious behavior found.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Configuration file only; no malicious or suspicious behavior found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging conventions for a Rust VCS package. The source is pulled from the declared upstream GitHub repository. Cargo fetch and build are normal operations. The package only installs binaries, icons, desktop file, MIME XML, and licenses—no unexpected file operations or system modifications. There are no obfuscated commands, suspicious network destinations, or backdoors. The SKIP checksum is expected for a VCS source. No security issues present.
</details>
<evidence></evidence>
<summary>Standard AUR VCS Rust package, no malicious indicators.</summary>
</security_assessment>

[2/3] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR VCS Rust package, no malicious indicators.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard .SRCINFO file for an AUR VCS package.  It defines the package metadata, dependencies, and a VCS source (`git+https://github.com/storytold/figcraft.git`) that points to the project's own GitHub repository. The `sha256sums = SKIP` is normal and required for VCS sources.  There is no embedded code, no unusual network requests, no obfuscation, and no other signs of malicious activity. The file is purely declarative metadata.
</details>
<evidence></evidence>
<summary>Standard AUR metadata, no malicious content.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,150
  Completion Tokens: 1,214
  Total Tokens: 11,364
  Total Cost: $0.001145
  Execution Time: 25.96 seconds

Final Status: SAFE


No issues found.
