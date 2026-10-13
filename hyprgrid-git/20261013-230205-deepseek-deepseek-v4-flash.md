---
package: hyprgrid-git
pkgver: 0.1.0.r2.gc60bbd3
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 7813
completion_tokens: 1154
total_tokens: 8967
cost: 0.000921011
execution_time: 25.03
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-13T23:02:05Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR VCS metadata; no malicious or suspicious behavior found.
  - file: PKGBUILD
    status: safe
    summary: Standard Rust AUR PKGBUILD; no malicious or suspicious behavior found.
---

Materializing hyprgrid-git from local mirror...
Materialized hyprgrid-git
Analyzing hyprgrid-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains standard variable assignments (pkgname, pkgver, pkgrel, pkgdesc, arch, url, license, depends, makedepends, provides, conflicts, source, sha256sums) at the global scope. The functions pkgver(), prepare(), build(), check(), and package() are defined but not executed at source time. There are no command substitutions, backtick expressions, or other dynamic code in the top-level that would run when the PKGBUILD is sourced. Therefore, running `makepkg --printsrcinfo` is safe.
</details>
<evidence></evidence>
<summary>No dangerous top-level code executes on sourcing.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code executes on sourcing.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR `.SRCINFO` metadata file for a `-git` package. It declares the upstream source as the project's own GitHub repository (`git+https://github.com/Mestik78/hyprgrid.git`), which is expected behavior for a VCS package. The `sha256sums = SKIP` entry is normal and required for VCS sources; it is a trust/hygiene consideration, not evidence of malice. The package metadata contains no network exfiltration, no code execution, no obfuscated commands, and no unexpected file operations. It only describes dependencies and build metadata.
</details>
<evidence>
</evidence>
<summary>
Standard AUR VCS metadata; no malicious or suspicious behavior found.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR VCS metadata; no malicious or suspicious behavior found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard Rust/cargo package build for the `hyprgrid-git` AUR package. It clones the package's own upstream GitHub repository, fetches crates with `cargo fetch --locked`, builds with `cargo build --frozen`, runs tests, and installs the resulting binary plus documentation/config/license files into `$pkgdir`. No suspicious network destinations, encoded payloads, shell eval, or unexpected file operations are present.

The `sha256sums` entry is `SKIP`, which is expected for VCS sources and not itself a security concern. `cargo fetch` and `cargo build` contact crates.io according to the repository's lockfile, which is normal for Rust packaging. The `RUSTUP_TOOLCHAIN=stable` export is harmless. There is no evidence of injected malicious code or behavior outside ordinary packaging practice.
</details>
<evidence>
</evidence>
<summary>
Standard Rust AUR PKGBUILD; no malicious or suspicious behavior found.
</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard Rust AUR PKGBUILD; no malicious or suspicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 7,813
  Completion Tokens: 1,154
  Total Tokens: 8,967
  Total Cost: $0.000921
  Execution Time: 25.03 seconds

Final Status: SAFE


No issues found.
