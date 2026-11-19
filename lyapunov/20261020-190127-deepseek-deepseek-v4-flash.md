---
package: lyapunov
pkgver: 0.1.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 7621
completion_tokens: 1357
total_tokens: 8978
cost: 0.000940485
execution_time: 24.15
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-20T19:01:25Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with pinned upstream source; no malicious indicators found.
  - file: PKGBUILD
    status: safe
    summary: Standard Rust/Qt PKGBUILD with pinned checksum; no malicious behavior found.
---

Materializing lyapunov from local mirror...
Materialized lyapunov
Analyzing lyapunov AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` only sources the PKGBUILD and executes top-level code. In this PKGBUILD, the top-level scope consists of standard variable assignments: `pkgname`, `pkgver`, `pkgrel`, `pkgdesc`, `arch`, `url`, `license`, `depends`, `makedepends`, `optdepends`, `source`, and `sha256sums`. There are no command substitutions, external downloads, encoded payloads, or file-modifying operations at the top level.

The `build()`, `check()`, and `package()` functions are defined but not executed during `makepkg --printsrcinfo`; they will be evaluated in the fuller audit. The `source` entry points to the project's own GitHub release tarball, which is normal packaging practice, and the checksum is pinned rather than skipped.
</details>
<evidence>
</evidence>
<summary>
Top-level PKGBUILD scope is benign; only static metadata and standard source definitions execute.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD scope is benign; only static metadata and standard source definitions execute.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file is standard Arch package metadata. It declares a single package `lyapunov` built from an upstream GitHub release tarball (`Chaos-Tic/Lyapunov` tag `v0.1.0`) with a pinned SHA-256 checksum. The dependencies, optional dependencies, architecture, and license fields are all normal packaging declarations.

No malicious behavior is present: there are no network requests beyond the declared source tarball, no encoded or obfuscated commands, no unexpected file operations, and no downloads from unrelated hosts. The source URL points to the project's own upstream repository, and the checksum is pinned rather than skipped. This file contains only metadata; the packaging logic itself would live in a PKGBUILD, which was not provided for review.
</details>
<evidence>

</evidence>
<summary>
Standard AUR metadata with pinned upstream source; no malicious indicators found.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with pinned upstream source; no malicious indicators found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Arch packaging practice for a Rust/Qt application. The source is a release tarball from the project's own GitHub repository and is pinned with a specific `sha256sums` value, providing integrity verification. No sources are skipped and no unexpected download hosts are used.

The `build()` function runs `cargo build --release --locked` and `cmake`, which are normal upstream build steps. The `check()` function runs the project's test suite, also standard. The `package()` function invokes `packaging/linux/stage.sh` from the upstream source tarball with the package directory as an argument; this is consistent with using the project's own packaging script and is not inherently suspicious.

There is no evidence of obfuscated code, network exfiltration, backdoors, or execution of code from unrelated hosts. All observed behavior is consistent with legitimate packaging.
</details>
<evidence>
</evidence>
<summary>
Standard Rust/Qt PKGBUILD with pinned checksum; no malicious behavior found.
</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard Rust/Qt PKGBUILD with pinned checksum; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 7,621
  Completion Tokens: 1,357
  Total Tokens: 8,978
  Total Cost: $0.000940
  Execution Time: 24.15 seconds

Final Status: SAFE


No issues found.
