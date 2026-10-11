---
package: solidcraft-git
pkgver: 0.2.1.r33.gd8beaed
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 9928
completion_tokens: 2815
total_tokens: 12743
cost: 0.00390104
execution_time: 29.43
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-11T23:03:02Z
file_verdicts:
  - file: .nvchecker.toml
    status: safe
    summary: Trivial nvchecker config declaring manual version tracking; no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file; VCS source from upstream, no malicious behavior.
  - file: PKGBUILD
    status: safe
    summary: Standard Rust VCS PKGBUILD with no signs of malicious behavior or injected code.
---

Materializing solidcraft-git from local mirror...
Materialized solidcraft-git
Analyzing solidcraft-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only variable assignments, an array definition, and function definitions at the global scope. No top-level command substitutions, backticks, `eval`, or other executable code that would run during `makepkg --printsrcinfo`. All potentially dangerous operations (git describe, cargo fetch/build, install) are inside functions that are not executed during this step. Therefore, sourcing this PKGBUILD is safe.
</details>
<evidence></evidence>
<summary>No top-level execution, safe to source.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level execution, safe to source.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, .nvchecker.toml...
[0/3] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a `.nvchecker.toml` configuration used by AUR maintainers to automate version checking. The content simply declares that the `solidcraft-git` package uses a `manual` source, meaning the maintainer updates the version information by hand rather than through an automated version-checking backend.

There is no executable code, no network activity, no file operations, no obfuscation, and no deviation from standard packaging tooling. This is entirely benign and consistent with normal AUR maintenance practices.
</details>
<evidence>
</evidence>
<summary>
Trivial nvchecker config declaring manual version tracking; no security concerns.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Trivial nvchecker config declaring manual version tracking; no security concerns.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard AUR `.SRCINFO` metadata file for a `-git` package. It declares the package name, description, URL, licenses, dependencies, and a VCS source pulled from the project's own GitHub repository (`https://github.com/bherbruck/solidcraft.git`). There are no functions, scripts, or executable hooks in this file, so no malicious code can be executed from it directly.

The `sha256sums = SKIP` entry is expected for VCS sources and is not a security concern by itself. The dependencies (`glibc`, `libgcc`, `libgcc_s.so`) and the `provides`/`conflicts` entries are normal packaging metadata. Nothing in this file attempts to download additional code, exfiltrate data, obfuscate behavior, or modify system files outside standard packaging practices.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata file; VCS source from upstream, no malicious behavior.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file; VCS source from upstream, no malicious behavior.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR VCS packaging for a Rust project. It clones the declared upstream GitHub repository (`git+https://github.com/bherbruck/solidcraft.git`), then runs normal `cargo fetch`, `cargo build --frozen`, and `install` commands into `$pkgdir`. No remote downloads from unexpected hosts, no `eval`, `base64`, `curl|bash`, or obfuscated code are present. The `sha256sums=('SKIP')` is normal and required for VCS sources, and the unpinned git HEAD is typical for `-git` packages.

The only minor oddity is that `package()` reassigns `_pkgname=solvecraft` before installing binaries and desktop files. This is consistent with the upstream project exposing binaries named `solvecraft`, so it appears to be a naming quirk rather than malicious behavior. The `--target host-tuple` argument in `cargo fetch` may be a typo, but it is not a security issue.
</details>
<evidence>
</evidence>
<summary>
Standard Rust VCS PKGBUILD with no signs of malicious behavior or injected code.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard Rust VCS PKGBUILD with no signs of malicious behavior or injected code.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 9,928
  Completion Tokens: 2,815
  Total Tokens: 12,743
  Total Cost: $0.003901
  Execution Time: 29.43 seconds

Final Status: SAFE


No issues found.
