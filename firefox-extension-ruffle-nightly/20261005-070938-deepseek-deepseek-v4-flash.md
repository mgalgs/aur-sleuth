---
package: firefox-extension-ruffle-nightly
pkgbase: ruffle-nightly
pkgver: 0.7.0+nightly+20261005
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 14732
completion_tokens: 6328
total_tokens: 21060
cost: 0.00854180
execution_time: 79.0
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-05T07:09:38Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore with no malicious content.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Normal AUR build package; no injected malicious behavior found.
---

firefox-extension-ruffle-nightly is built from ruffle-nightly
Materializing firefox-extension-ruffle-nightly from local mirror...
Materialized firefox-extension-ruffle-nightly
Analyzing firefox-extension-ruffle-nightly AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The global/top-level scope of this PKGBUILD contains only variable definitions, an `if` condition that appends to `makedepends` based on a boolean variable, and `source` array assignments pointing to the project&#8217;s own upstream repository. There are no command substitutions, `eval`, `curl`, `wget`, or any other code that executes during sourcing. Functions (`pkgver()`, `prepare()`, `build()`, `package_*()`) are defined but not executed by `makepkg --printsrcinfo`. No data exfiltration, network requests, or code execution occurs at parse time.
</details>
<evidence></evidence>
<summary>No malicious code at global scope; only variable definitions.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code at global scope; only variable definitions.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, .gitignore...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a simple .gitignore file for a typical AUR package. It excludes common build directories (`src`, `pkg`), compiled package archives (`*.pkg.tar.*`), log files (`*.log`), and a specific directory (`/ruffle/`). There is no executable code, network requests, obfuscation, or any commands present. This file is a routine part of version control hygiene and poses no security threat.</details>
<evidence></evidence>
<summary>Standard .gitignore with no malicious content.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore with no malicious content.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is standard AUR metadata describing the `ruffle-nightly` package and its subpackages. It defines sources, dependencies, and package splits. The specified source (`git+https://github.com/ruffle-rs/ruffle.git#tag=nightly-2026-10-05`) points to a pinned tag on the official Ruffle GitHub repository, which is the project's upstream. There are no suspicious network requests, obfuscated code, dangerous commands, or file operations. The checksums are provided (though VCS sources typically use SKIP, this does not indicate malice). No evidence of exfiltration, backdoors, or supply-chain injection. The file adheres to normal packaging practices.
</details>
<evidence></evidence>
<summary>Standard AUR metadata, no security issues.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD builds the Ruffle nightly from the project's official GitHub repository and packages the resulting desktop, web, self-hosted, Firefox, and Chromium artifacts. Build steps use standard Rust/cargo/npm tooling: `cargo fetch`, `cargo build`, `cargo test`, `npm ci`, and `npm run build:repro`. The only network fetches are the upstream git tag, crates.io for wasm-bindgen-cli, and npm dependencies, all normal for this project. No curl/wget, base64, eval, obfuscated code, or data exfiltration is present.

The package functions install only files built from the upstream source into `$pkgdir`, along with desktop files, licenses, and a standard Chromium external-extension JSON pointing at `clients2.google.com`. There are a couple of hygiene concerns but nothing malicious: the `source` array is assigned twice, with the second assignment overwriting the first and dropping a key file, and a VCS source normally uses `SKIP` in `sha256sums` rather than a concrete hash. These are maintainability issues, not evidence of a supply-chain attack.
</details>
<evidence></evidence>
<summary>Normal AUR build package; no injected malicious behavior found.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Normal AUR build package; no injected malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 14,732
  Completion Tokens: 6,328
  Total Tokens: 21,060
  Total Cost: $0.008542
  Execution Time: 79.00 seconds

Final Status: SAFE


No issues found.
