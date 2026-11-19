---
package: softty-git
pkgver: r6.b0ff8a6
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 7200
completion_tokens: 3916
total_tokens: 11116
cost: 0.0051104000
execution_time: 38.53
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-13T03:09:11Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR VCS package metadata; no malicious behavior detected.
  - file: PKGBUILD
    status: safe
    summary: Standard -git Rust PKGBUILD; no malicious or suspicious behavior found.
---

Materializing softty-git from local mirror...
Materialized softty-git
Analyzing softty-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The provided file content contains only standard PKGBUILD elements. The global scope, which is sourced when running `makepkg --printsrcinfo`, consists entirely of straightforward variable assignments (e.g., `pkgname`, `pkgver`, `url`, `depends`) and function definitions (`pkgver()`, `build()`, `package()`). No commands such as `curl`, `wget`, `eval`, or `base64` are invoked at the top level. The `pkgver()` function contains command substitutions that retrieve git information, but during `makepkg --printsrcinfo` this function is only *defined*, not *called*, so its contents are out of scope for this safety gate. The HTML entities (`&amp;`, `&quot;`, `&apos;`) present in the prompt are standard AUR web display encoding and do not represent malicious obfuscation or executable code in the actual file.
</details>
<evidence>
</evidence>
<summary>No dangerous top-level code execution.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code execution.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO describes a standard AUR VCS package (`softty-git`) for a Wayland terminal emulator. The source is the project's own upstream Git repository (`git+https://github.com/socatlolmeow/softty.git`), and the `sha256sums = SKIP` entry is normal and required for VCS sources. Dependencies, licenses, and build options are consistent with a Rust-based terminal emulator package. No suspicious network endpoints, obfuscated commands, unexpected file operations, or executable payloads are present. This file contains only packaging metadata and shows no evidence of a supply-chain attack.
</details>
<evidence>
</evidence>
<summary>
Standard AUR VCS package metadata; no malicious behavior detected.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR VCS package metadata; no malicious behavior detected.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard Rust/Cargo -git package. It declares the upstream GitHub repository as its only source, uses a normal `pkgver()` function to derive a version from git history, builds with `cargo build --release --locked`, and installs the resulting binary into `/usr/bin`. There is no obfuscation, no suspicious network behavior, no hidden file operations, and no execution of downloaded scripts.

The `sha256sums` entry is `SKIP`, which is expected and required for VCS sources such as `git+...`; it is not a sign of malice. The git source is unpinned (tracks the repository default branch), which is ordinary for `-git` packages and may reduce reproducibility, but it is not a supply-chain attack by itself. `cargo build --locked` may fetch crates from crates.io, which is normal Cargo packaging practice. The package installs only the project&apos;s own built binary and does not modify unrelated system files.
</details>
<evidence>
</evidence>
<summary>
Standard -git Rust PKGBUILD; no malicious or suspicious behavior found.
</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard -git Rust PKGBUILD; no malicious or suspicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 7,200
  Completion Tokens: 3,916
  Total Tokens: 11,116
  Total Cost: $0.005110
  Execution Time: 38.53 seconds

Final Status: SAFE


No issues found.
