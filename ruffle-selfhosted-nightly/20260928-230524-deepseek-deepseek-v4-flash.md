---
package: ruffle-selfhosted-nightly
pkgbase: ruffle-nightly
pkgver: 0.7.0+nightly+20260928
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 14664
completion_tokens: 2305
total_tokens: 16969
cost: 0.00094172764
execution_time: 57.33
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-28T23:05:23Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore with no malicious content.
  - file: .SRCINFO
    status: safe
    summary: Declarative AUR metadata, no executable content.
  - file: PKGBUILD
    status: safe
    summary: Standard build script; no malicious behavior detected.
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
The top-level scope of this PKGBUILD contains only standard variable definitions, conditional array appends, and source/checksum arrays. There are no command substitutions, no invocations of dangerous commands (`curl`, `wget`, `eval`, `base64`, etc.), and no immediate execution of code that could exfiltrate data or download/run untrusted payloads. The conditional `if "$_system_wasm_bindgen"` is a straightforward boolean check that only modifies the `makedepends` array; this is a normal packaging pattern. Since `makepkg --printsrcinfo` only sources the global scope and does not run any function, this command is safe to execute.
</details>
<evidence></evidence>
<summary>No dangerous top-level code execution during sourcing.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code execution during sourcing.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, .gitignore...
[0/3] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file containing only patterns to exclude build artifacts and temporary files from version control. The entries (`src`, `pkg`, `*.pkg.tar.*`, `*.log`, `/ruffle/`) are all typical for an Arch User Repository package. There are no commands, network requests, obfuscated content, or any other suspicious or malicious elements.
</details>
<evidence>
</evidence>
<summary>Standard .gitignore with no malicious content.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore with no malicious content.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is purely declarative metadata for an AUR package. It specifies the package name, version, description, dependencies, and a single source (the official Ruffle project GitHub repository with a pinned tag). The sha256sums field is provided (not `SKIP`), so the source tarball has a checksum for verification. There are no executable commands, no obfuscated code, no suspicious URLs, and no operations that could exfiltrate data or install backdoors. This file is standard and benign.
</details>
<evidence></evidence>
<summary>Declarative AUR metadata, no executable content.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Declarative AUR metadata, no executable content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Arch Linux packaging practices for building a complex Rust/web project (the Ruffle Flash Player emulator) from source. All network destinations are tied to the project's own upstream or standard package registries:

- **Source**: Fetched via `git+https://github.com/ruffle-rs/ruffle.git#tag=` from the official GitHub repository -- expected and normal.
- **Build dependencies**: `cargo install wasm-bindgen-cli` downloads from crates.io at a version pinned by the project's `Cargo.lock`. While this involves network access during `prepare()`, it is a routine pattern for Rust projects requiring wasm-bindgen, and the version is locked, not arbitrary.
- **Web dependencies**: `npm ci` installs from npm based on the project's `package-lock.json` -- normal.
- **Build step**: `cargo build --frozen` prevents unpinned network fetches during compilation, which is a security-positive practice.
- **Chromium extension**: Writes a standard `external_update_url` JSON pointing to Google's official `clients2.google.com` update endpoint -- this is the normal mechanism for Chromium extension management.

There is no obfuscated code, no exfiltration of local data, no downloading of unexpected binaries, no backdoors, and no modification of files outside the package's own installation scope.
</details>
<evidence></evidence>
<summary>Standard build script; no malicious behavior detected.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard build script; no malicious behavior detected.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 14,664
  Completion Tokens: 2,305
  Total Tokens: 16,969
  Total Cost: $0.000942
  Execution Time: 57.33 seconds

Final Status: SAFE


No issues found.
