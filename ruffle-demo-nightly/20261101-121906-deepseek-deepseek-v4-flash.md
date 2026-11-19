---
package: ruffle-demo-nightly
pkgbase: ruffle-nightly
pkgver: 0.8.0+nightly+20261101
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 14654
completion_tokens: 2076
total_tokens: 16730
cost: 0.001711346
execution_time: 67.57
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-01T12:19:05Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard gitignore file with no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard declarative metadata; no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard nightly AUR PKGBUILD with no malicious indicators.
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
All top-level code in this PKGBUILD consists of static variable assignments and a conditional using `false` as a test command. No command substitutions, eval, network requests, or other dangerous operations are present. The conditional `if "$_system_wasm_bindgen"` safely executes the `false` command, which is standard and non-malicious. There is no risk of executing malicious code during `makepkg --printsrcinfo`.
</details>
<evidence></evidence>
<summary>No malicious top-level code; safe to source.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious top-level code; safe to source.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, .gitignore...
[0/3] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` for an AUR package. It lists common build artifacts (`src`, `pkg`, `*.pkg.tar.*`, `*.log`, `/ruffle/`) that should be ignored by version control. There is no executable code, no network operations, no obfuscation, and no deviation from normal packaging practices. This file poses no security risk.
</details>
<evidence>
</evidence>
<summary>Standard gitignore file with no security issues.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard gitignore file with no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is purely declarative metadata for the Arch User Repository. It defines the package base `ruffle-nightly` with four split packages, including `ruffle-demo-nightly`. The source points to the official Ruffle GitHub repository via a pinned tag (`nightly-2026-11-01`) with a valid SHA-256 checksum. All dependencies are standard build tools and libraries required to compile a Rust project (cargo, cmake, npm, etc.). There are no scripts, commands, or executable content in this file. No obfuscation, no network requests outside of the declared source, and no suspicious file operations. The file follows standard AUR packaging practices and contains no indicators of a supply-chain attack.
</details>
<evidence></evidence>
<summary>Standard declarative metadata; no malicious content.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard declarative metadata; no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a nightly build of the Ruffle Flash emulator. All source fetching is from the official upstream GitHub repository (`github.com/ruffle-rs/ruffle.git`). Build steps use `cargo`, `npm`, and `jq` in expected ways. The package functions install only the built application files and their associated metadata (desktop entries, licenses, web apps, browser extensions). 

The only minor anomaly is the duplicate `source` array assignment (the first includes a `.key` file that is overwritten by the second), but this is a packaging error rather than a malicious injection. There is no obfuscated code, no unexpected network requests, no execution of unvetted external scripts, and no exfiltration or backdoor mechanisms. The use of `cargo install` and `npm ci` fetches from standard registries (`crates.io` and npmjs.org respectively) as expected for a Rust/Node.js project.
</details>
<evidence></evidence>
<summary>Standard nightly AUR PKGBUILD with no malicious indicators.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard nightly AUR PKGBUILD with no malicious indicators.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 14,654
  Completion Tokens: 2,076
  Total Tokens: 16,730
  Total Cost: $0.001711
  Execution Time: 67.57 seconds

Final Status: SAFE


No issues found.
