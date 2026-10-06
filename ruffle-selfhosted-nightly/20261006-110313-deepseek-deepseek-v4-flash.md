---
package: ruffle-selfhosted-nightly
pkgbase: ruffle-nightly
pkgver: 0.7.0+nightly+20261006
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 14663
completion_tokens: 2159
total_tokens: 16822
cost: 0.0031506232
execution_time: 49.29
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-06T11:03:13Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard gitignore file, no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard package metadata file with no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard nightly PKGBUILD with no malicious code detected.
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
The top-level scope of this PKGBUILD consists solely of static variable assignments, a conditional array append (`if "$_system_wasm_bindgen" then ... fi`), and string definitions for source and checksum arrays. There are no command substitutions, backticks, `eval`, `curl`, `wget`, or any other executable operations at global scope. The conditional uses a boolean variable and simply extends `makedepends` — it cannot execute anything dangerous. All potentially harmful logic (e.g., `cargo install`, `git rev-parse`, `npm ci`, `jq`, `date`, `cargo fetch`) resides inside the `prepare()`, `build()`, `check()`, or `package_*()` functions, which are not invoked during `makepkg --printsrcinfo`. Therefore, sourcing this file for metadata extraction is safe.</details>
<evidence></evidence>
<summary>No dangerous top-level code; safe for --printsrcinfo.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code; safe for --printsrcinfo.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, .gitignore...
[0/3] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.gitignore` file contains only standard ignore patterns for build artifacts (`src`, `pkg`, `*.pkg.tar.*`), log files (`*.log`), and a specific directory (`/ruffle/`). There are no commands, network requests, obfuscated content, or any deviation from normal packaging practices. The file is benign and poses no security risk.
</details>
<evidence></evidence>
<summary>Standard gitignore file, no security issues.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard gitignore file, no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.SRCINFO` file for an AUR package. It contains metadata only: package name, description, dependencies, and source references. The source is fetched from the official GitHub repository of the Ruffle project (`github.com/ruffle-rs/ruffle.git`) using a specific tag (`nightly-2026-10-06`). There are no embedded scripts, no obfuscated code, no network requests to unexpected hosts, and no file operations. The `sha256sums` entry provides a hash for the source, which is normal. No signs of supply-chain attack or malicious behavior are present.
</details>
<evidence></evidence>
<summary>Standard package metadata file with no malicious content.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard package metadata file with no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard Arch Linux packaging practices for a nightly software build from a legitimate upstream repository (ruffle-rs/ruffle on GitHub). The source is pinned to a git tag corresponding to a nightly date, and the build process uses pinned dependencies via `cargo fetch --locked` and `npm ci`. The only external tool installed at build time is `wasm-bindgen-cli`, fetched from crates.io with a version locked from the project's Cargo.lock; this is an expected dependency for building the WebAssembly target. Network destinations are all related to the project's own infrastructure (GitHub, crates.io, npm registry, Google Chrome Web Store for the extension update URL). There is no obfuscated code, no unusual encoding, no exfiltration of sensitive data, and no dynamic execution of unchecked content. The duplicate `source` array and the presence of a non-SKIP checksum for a VCS source are packaging errors (the second assignment overwrites the first, and the hash is unused for git sources), but these are not indicative of a supply-chain attack.
</details>
<evidence></evidence>
<summary>Standard nightly PKGBUILD with no malicious code detected.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard nightly PKGBUILD with no malicious code detected.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 14,663
  Completion Tokens: 2,159
  Total Tokens: 16,822
  Total Cost: $0.003151
  Execution Time: 49.29 seconds

Final Status: SAFE


No issues found.
