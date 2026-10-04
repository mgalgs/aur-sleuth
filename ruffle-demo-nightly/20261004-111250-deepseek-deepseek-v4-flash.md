---
package: ruffle-demo-nightly
pkgbase: ruffle-nightly
pkgver: 0.7.0+nightly+20261004
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 14829
completion_tokens: 3608
total_tokens: 18437
cost: 0.0049504096
execution_time: 148.99
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-04T11:12:49Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore for AUR builds, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard nightly AUR build with no malicious or suspicious behavior.
  - file: .SRCINFO
    status: safe
    summary: Standard nightly package, no security issues.
---

ruffle-demo-nightly is built from ruffle-nightly
Materializing ruffle-demo-nightly from local mirror...
Materialized ruffle-demo-nightly
Analyzing ruffle-demo-nightly AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources only the PKGBUILD's top-level scope. In this PKGBUILD, that scope consists of variable and array assignments, the `source` and `sha256sums` arrays, `options`, and a simple `if "$_system_wasm_bindgen"` conditional. The conditional executes the command `false` because `_system_wasm_bindgen=false`, which is harmless. There are no top-level command substitutions, network downloads, encoded payloads, or data-exfiltration attempts.

The potentially heavier operations (`cargo install`, `npm ci`, `cargo build`, `npm run build`, file installation into `$pkgdir`) all appear inside `prepare()`, `build()`, `check()`, and `package_*()` functions, which are not executed by `makepkg --printsrcinfo`. Those will need separate review, but they do not affect this narrow gate.
</details>
<evidence>
</evidence>
<summary>
Top-level PKGBUILD sourcing is safe; no malicious code executes during printsrcinfo.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD sourcing is safe; no malicious code executes during printsrcinfo.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, .gitignore...
[0/3] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.gitignore` file contains standard ignore patterns for AUR package builds. It excludes the `src` and `pkg` directories, built package archives (`*.pkg.tar.*`), log files, and a `/ruffle/` directory. There is no code execution, network activity, or any indication of malicious intent. It is a routine packaging artifact.
</details>
<evidence></evidence>
<summary>Standard .gitignore for AUR builds, no malicious content.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore for AUR builds, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows the standard AUR pattern for a nightly upstream build of Ruffle. It clones the project from the official GitHub repository at a dated tag, fetches Rust/Node dependencies through the normal lockfile-based toolchains, runs the upstream build/test commands, and installs the resulting artifacts into `$pkgdir`. No exfiltration, no obfuscated commands, no unexpected network destinations, and no execution of downloaded scripts from unrelated hosts are present. The `cargo install wasm-bindgen-cli` step fetches a pinned version from crates.io based on the project's `Cargo.lock`, which is an ordinary Rust build-time dependency operation.

There are minor hygiene concerns, but none rises to the level of malice. The `source` array is assigned twice, with the second assignment overriding the first and dropping the listed `chromium-extension-ruffle.key` entry; this is confusing but not harmful because the effective source is still the official upstream repository. The VCS source relies on a tag rather than a pinned commit, which is common for nightly packages and is not itself malicious. The Chromium extension policy file uses the standard Google extension update URL (`clients2.google.com`), which is expected for that package.
</details>
<evidence>
</evidence>
<summary>
Standard nightly AUR build with no malicious or suspicious behavior.</summary>
</security_assessment>

[2/3] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard nightly AUR build with no malicious or suspicious behavior.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
No evidence of malicious behavior. This is a standard `.SRCINFO` file for a nightly AUR package. The source points to the official Ruffle GitHub repository with a pinned tag. All entries are normal packaging metadata (dependencies, licenses, subpackages). There are no obfuscated commands, unexpected network requests, or file operations. The checksum is provided (not SKIP) and the source is appropriately pinned.
</details>
<evidence></evidence>
<summary>Standard nightly package, no security issues.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard nightly package, no security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 14,829
  Completion Tokens: 3,608
  Total Tokens: 18,437
  Total Cost: $0.004950
  Execution Time: 148.99 seconds

Final Status: SAFE


No issues found.
