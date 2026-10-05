---
package: ruffle-selfhosted-nightly
pkgbase: ruffle-nightly
pkgver: 0.7.0+nightly+20261005
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 14882
completion_tokens: 4958
total_tokens: 19840
cost: 0.00679270
execution_time: 86.9
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-05T07:07:54Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore with build artifacts only; no security concerns.
  - file: PKGBUILD
    status: safe
    summary: Standard nightly PKGBUILD with no injected malicious code.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no malicious indicators.
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
The PKGBUILD's global/top-level scope contains only variable definitions, array assignments, and a conditional `if` that adds a build dependency. No command substitutions, eval, or external command executions occur during sourcing. All potentially dangerous operations (e.g., `cargo install`, `npm ci`, `jq`) reside inside functions (`prepare()`, `build()`, `check()`, `package_*()`) that are **not** executed by `makepkg --printsrcinfo`. The source array uses the package's official upstream git repository, and no network requests or file operations happen at parse time. Therefore, running this command is safe.
</details>
<evidence></evidence>
<summary>No malicious code executes at parse time.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code executes at parse time.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, .gitignore...
[0/3] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` for an AUR package build directory. It excludes common build artifacts (`src`, `pkg`, `*.pkg.tar.*`), log files, and a `/ruffle/` directory. No network operations, encoded commands, file manipulation outside the build tree, or other malicious behavior are present. This is consistent with ordinary packaging hygiene.
</details>
<evidence>
</evidence>
<summary>
Standard .gitignore with build artifacts only; no security concerns.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore with build artifacts only; no security concerns.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD builds the `ruffle` Flash emulator from the project's official GitHub repository (`https://github.com/ruffle-rs/ruffle.git#tag=nightly-2026-10-05`). The `prepare()` and `build()` functions follow standard Rust/Node.js packaging patterns: fetching dependencies with `cargo fetch`, installing a required CLI tool (`wasm-bindgen-cli`) from the same ecosystem, generating metadata with `jq`, and building with `cargo` and `npm`. The `package_*` functions merely install the resulting binaries, web assets, and browser extension files into the package directory. There are no obfuscated commands, no downloads from unexpected hosts, no attempts to exfiltrate data, and no system modifications outside the application's own scope. The Chromium extension setup configures a legitimate Google-hosted update URL (`clients2.google.com/service/update2/crx`), which is normal for distributing browser extensions. The `sha256sums` entry with a hardcoded hash is present but irrelevant for a VCS source; it could be a remnant but is not malicious. No genuinely malicious behavior is present.
</details>
<evidence></evidence>
<summary>Standard nightly PKGBUILD with no injected malicious code.</summary>
</security_assessment>

[2/3] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard nightly PKGBUILD with no injected malicious code.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR `.SRCINFO` file for the `ruffle-nightly` package and its subpackages (including `ruffle-selfhosted-nightly`). The source points to the official upstream repository (`https://github.com/ruffle-rs/ruffle.git`) with a tag reference, which is standard for nightly builds. The `sha256sums` field contains a pinned hash, providing a degree of integrity verification. No obfuscation, unexpected network destinations, dangerous commands, or system modifications are present. The file solely defines build metadata and dependencies.
</details>
<evidence/>
<summary>
Standard AUR metadata, no malicious indicators.
</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no malicious indicators.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 14,882
  Completion Tokens: 4,958
  Total Tokens: 19,840
  Total Cost: $0.006793
  Execution Time: 86.90 seconds

Final Status: SAFE


No issues found.
