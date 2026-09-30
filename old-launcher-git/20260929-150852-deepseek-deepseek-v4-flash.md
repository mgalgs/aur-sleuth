---
package: old-launcher-git
pkgver: r25.a98842d
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 8674
completion_tokens: 1063
total_tokens: 9737
cost: 0.0008240400
execution_time: 34.47
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-29T15:08:51Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR VCS metadata; no malicious content or suspicious behavior found.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD; no malicious indicators.
---

Materializing old-launcher-git from local mirror...
Materialized old-launcher-git
Analyzing old-launcher-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources only the top-level of this PKGBUILD. The top-level consists entirely of standard variable assignments: pkgname, pkgver, pkgdesc, arch, url, license, dependencies, options, source, and sha256sums. No command substitutions, network fetches, file writes, or code execution occur at global scope. The `pkgver()`, `prepare()`, `build()`, `check()`, and `package()` functions are defined but not executed during this step, so their contents are out of scope for this gate.

The `sha256sums=(&apos;SKIP&apos;)` entry is not relevant to `makepkg --printsrcinfo`, since no sources are downloaded or verified when printing metadata. The VCS source and unpinned nature of the package are normal for a `-git` package and will be considered in the full audit. No evidence of malicious top-level behavior was found.
</details>
<evidence>
</evidence>
<summary>
Top-level PKGBUILD is standard assignments only; printsrcinfo execution is safe.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD is standard assignments only; printsrcinfo execution is safe.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR `.SRCINFO` metadata file for a `-git` package. It declares a VCS source from the project's own GitLab repository, with `sha256sums = SKIP`, which is normal and required for VCS sources. Dependencies, optional dependencies, architecture, and package metadata are all routine. There are no network fetch-and-execute steps, no obfuscated code, no file operations, and no indication of injected malicious behavior. The unpinned VCS source is expected for a `-git` package; it is a reproducibility/hygiene consideration only, not evidence of a supply-chain attack.
</details>
<evidence>
</evidence>
<summary>
Standard AUR VCS metadata; no malicious content or suspicious behavior found.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR VCS metadata; no malicious content or suspicious behavior found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a Rust application (old-launcher-git). The source is fetched via git from the project&#39;s own GitLab repository. SHA256 sums are set to SKIP, which is normal for VCS sources. No obfuscated code, suspicious network requests, or system modifications beyond installing files into `/usr/bin`, `/usr/share/applications`, and `/usr/share/doc`. The only environment variable set during build (`OLD_LAUNCHER_INDEX_URL`) points to the upstream project&#39;s own GitLab Pages, which is expected functionality for the application&#39;s addon catalog—not a supply-chain attack. All commands (`cargo fetch`, `cargo build`, `cargo test`, `install`) are standard for building an upstream Rust crate. There is no evidence of injected malicious code, data exfiltration, or backdoors.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD; no malicious indicators.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD; no malicious indicators.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 8,674
  Completion Tokens: 1,063
  Total Tokens: 9,737
  Total Cost: $0.000824
  Execution Time: 34.47 seconds

Final Status: SAFE


No issues found.
