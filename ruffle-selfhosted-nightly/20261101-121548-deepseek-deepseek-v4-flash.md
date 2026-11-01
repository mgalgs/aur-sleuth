---
package: ruffle-selfhosted-nightly
pkgbase: ruffle-nightly
pkgver: 0.8.0+nightly+20261101
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 14658
completion_tokens: 1793
total_tokens: 16451
cost: 0.001660204
execution_time: 39.8
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-01T12:15:48Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no malicious content.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file, no security concerns.
  - file: PKGBUILD
    status: safe
    summary: Legitimate PKGBUILD for Ruffle nightly; no malicious code detected.
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
The PKGBUILD's top-level scope contains only variable definitions and a conditional array appending to `makedepends`. There are no command substitutions, backticks, `eval`, or any code that would execute external commands during sourcing. The `pkgver` uses only shell parameter expansion (no command substitution). All function bodies (`prepare`, `build`, `check`, `package_*`) are defined but not executed during `makepkg --printsrcinfo`. Therefore, sourcing this file for metadata extraction presents no risk of malicious code execution.
</details>
<evidence>
</evidence>
<summary>No dangerous top-level code execution.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code execution.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, .gitignore...
[0/3] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard .SRCINFO metadata file for an AUR package. It defines multiple packages based on the Ruffle Flash Player emulator from the official GitHub repository (`ruffle-rs/ruffle`). The source is pinned to a specific nightly tag with an SHA-256 checksum provided. There are no executable commands, no network requests beyond the declared upstream source, and no obfuscated or encoded content. The file simply declares package names, descriptions, dependencies, and source information. No signs of supply-chain attack or malicious behavior are present.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata file, no malicious content.</summary>
</security_assessment>

[1/3] Reviewing .gitignore, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no malicious content.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.gitignore` file contains standard git ignore patterns for an AUR package build environment: `src`, `pkg`, `*.pkg.tar.*`, `*.log`, and `/ruffle/`. These are normal entries to avoid committing build artifacts and external source copies. There is no executable code, network requests, obfuscation, or any other malicious behavior. The file is entirely benign.
</details>
<evidence></evidence>
<summary>Standard .gitignore file, no security concerns.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore file, no security concerns.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard Arch Linux packaging practices for a nightly Rust project. It fetches the source from the official GitHub repository using a hash-pinned tag, builds the Rust and web components with standard tools (cargo, npm), and installs the resulting binaries and artifacts into expected locations. There are no suspicious network requests to unexpected hosts, no obfuscated code, no eval statements, no attempts to exfiltrate data, and no manipulation of files outside the package's own scope. The `cargo install wasm-bindgen-cli` call is standard for projects requiring wasm-bindgen. The duplicate `source` array assignment (first with a key file, then overwritten) is likely a bug but not a security issue. The Chromium extension policy file points to the official Chrome Web Store update URL, which is normal. All operations are consistent with the stated purpose of packaging a Flash Player emulator.
</details>
<evidence>
</evidence>
<summary>Legitimate PKGBUILD for Ruffle nightly; no malicious code detected.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Legitimate PKGBUILD for Ruffle nightly; no malicious code detected.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 14,658
  Completion Tokens: 1,793
  Total Tokens: 16,451
  Total Cost: $0.001660
  Execution Time: 39.80 seconds

Final Status: SAFE


No issues found.
