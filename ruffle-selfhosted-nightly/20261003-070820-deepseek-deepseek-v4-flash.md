---
package: ruffle-selfhosted-nightly
pkgbase: ruffle-nightly
pkgver: 0.7.0+nightly+20261003
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 14663
completion_tokens: 2521
total_tokens: 17184
cost: 0.000551740
execution_time: 101.87
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-03T07:08:19Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore, no security concerns.
  - file: .SRCINFO
    status: safe
    summary: A metadata-only file with no executable content.
  - file: PKGBUILD
    status: safe
    summary: Routine AUR package for nightly Ruffle builds.
---

ruffle-selfhosted-nightly is built from ruffle-nightly
Materializing ruffle-selfhosted-nightly from local mirror...
Materialized ruffle-selfhosted-nightly
Analyzing ruffle-selfhosted-nightly AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only passive variable assignments and an `if` block that appends to an array in its top-level scope. No command substitutions, function calls, or external command executions occur when the file is sourced. All potentially dangerous operations (e.g., `cargo install`, `npm ci`, `git rev-parse`) are confined within `prepare()`, `build()`, `check()`, and `package_*()` functions, which are **not** executed by `makepkg --printsrcinfo`. Therefore, sourcing this file poses no risk of executing malicious code.
</details>
<evidence>
</evidence>
<summary>No dangerous top-level code; safe to source.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code; safe to source.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, .gitignore...
[0/3] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file for an AUR package. It contains only common build artifact patterns (`src`, `pkg`, `*.pkg.tar.*`, `*.log`, `/ruffle/`). There is no obfuscated code, no network requests, no file operations, and no deviation from ordinary packaging practices. No security issues identified.
</details>
<evidence></evidence>
<summary>Standard .gitignore, no security concerns.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore, no security concerns.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.SRCINFO` metadata file for an AUR package—it contains only declarative fields (pkgbase, pkgdesc, sources, checksums, dependencies, etc.) and no executable code. The source points to a pinned Git tag (`nightly-2026-10-03`) from the official `ruffle-rs/ruffle` repository, and a SHA‑256 checksum is provided for that source. There are no obfuscated commands, unexpected network requests, or any instructions that could perform malicious actions. The file is purely metadata and follows normal AUR packaging conventions.
</details>
<evidence>
</evidence>
<summary>A metadata-only file with no executable content.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- A metadata-only file with no executable content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard AUR package for nightly builds of the Ruffle Flash player emulator. It fetches the upstream source from the official GitHub repository, builds the Rust components and web assets using cargo and npm, and installs the resulting binaries, web apps, and browser extensions into standard package directories. All network requests are expected: git clone of the project&#x27;s own repo, cargo fetching dependencies from crates.io, npm ci from the npm registry, and a standard Chromium extension update URL in a configuration file. There is no obfuscated code, no exfiltration of local data, no execution of untrusted downloaded content, and no backdoors or reverse shells. The use of ``cargo install wasm-bindgen-cli`` with a version pinned from the project&#x27;s Cargo.lock is a legitimate build dependency, not a supply-chain attack. The file is safe.
</details>
<evidence>
</evidence>
<summary>Routine AUR package for nightly Ruffle builds.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Routine AUR package for nightly Ruffle builds.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 14,663
  Completion Tokens: 2,521
  Total Tokens: 17,184
  Total Cost: $0.000552
  Execution Time: 101.87 seconds

Final Status: SAFE


No issues found.
