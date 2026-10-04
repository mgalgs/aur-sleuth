---
package: ruffle-selfhosted-nightly
pkgbase: ruffle-nightly
pkgver: 0.7.0+nightly+20261001
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 14728
completion_tokens: 14124
total_tokens: 28852
cost: 0.001804992
execution_time: 344.08
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-01T11:16:05Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore; no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no security issues.
  - file: PKGBUILD
    status: safe
    summary: No malicious behavior found; standard Ruffle nightly packaging workflow.
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
Running `makepkg --printsrcinfo` sources the PKGBUILD and executes only top-level code. The visible top-level scope contains variable and array assignments (`pkgname`, `pkgver`, `arch`, `makedepends`, `source`, `sha256sums`, etc.) and a conditional source-selection block. The condition uses the literal variable `_system_wasm_bindgen=false`, so it invokes the standard `false` command and does not reach any dangerous branch. I found no top-level command substitution that downloads or executes remote content, no obfuscated code, no `eval`/`base64`/`curl`/`wget` at the top level, and no file-modifying statements outside function bodies. Commands such as `cargo`, `npm`, `jq`, and `install` appear inside `prepare()`, `build()`, and `package_*()` functions, which are not executed by `--printsrcinfo` and are outside the scope of this gate. Unpinned or mutable source references and checksum concerns are not executable at this step and should be evaluated in the full PKGBUILD audit.
</details>
<evidence></evidence>
<summary>No top-level malicious behavior is present; the file is SAFE for `makepkg --printsrcinfo`.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level malicious behavior is present; the file is SAFE for `makepkg --printsrcinfo`.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, .gitignore...
[0/3] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` file for an AUR package build directory. It contains only patterns to ignore build artifacts (`src`, `pkg`, `*.pkg.tar.*`, `*.log`, `/ruffle/`). There is no code, no network operations, no obfuscation, and no deviation from normal packaging practices.

Since the file content is trivially benign, no malicious behavior is present.
</details>
<evidence>
</evidence>
<summary>Standard .gitignore; no security concerns.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore; no security concerns.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.SRCINFO` metadata file for the AUR package `ruffle-nightly`. It declares the package source from the official `ruffle-rs/ruffle` GitHub repository, pinned to a specific nightly tag (`nightly-2026-10-01`). A SHA-256 checksum is provided for the source tarball. All dependencies are build tools required for compiling the Rust project. No executable code, network requests, obfuscation, or unexpected operations are present. The file conforms to normal AUR packaging practices.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file, no security issues.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a conventional multi-package build for the Ruffle nightly project from the upstream ruffle-rs/ruffle Git repository. It fetches the tagged source, runs cargo and npm build/test steps, and installs the resulting desktop, web, and browser-extension artifacts into `$pkgdir`. Network destinations are standard upstream hosts: GitHub for the source, crates.io for Rust dependencies and build tooling, the npm registry through `npm ci`, and Google's Chrome Web Store update endpoint for the Chromium extension metadata. No obfuscation, eval, base64 decoding, backdoor, reverse shell, credential collection, or writes outside the package's application scope were found.

A few packaging hygiene notes are present but do not indicate malice: the `source` array is assigned twice, with the first assignment (including a `chromium-extension-ruffle.key` entry) immediately overwritten and unused; the `sha256sums` entry is not `SKIP` despite a VCS source; and `cargo install wasm-bindgen-cli` fetches a build-time tool from crates.io, though the version is pinned from the upstream `Cargo.lock`. These are reproducibility and trust considerations, not evidence of an injected supply-chain attack.
</details>
<evidence>
</evidence>
<summary>
No malicious behavior found; standard Ruffle nightly packaging workflow.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- No malicious behavior found; standard Ruffle nightly packaging workflow.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 14,728
  Completion Tokens: 14,124
  Total Tokens: 28,852
  Total Cost: $0.001805
  Execution Time: 344.08 seconds

Final Status: SAFE


No issues found.
