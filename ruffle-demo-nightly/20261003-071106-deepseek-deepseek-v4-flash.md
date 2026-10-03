---
package: ruffle-demo-nightly
pkgbase: ruffle-nightly
pkgver: 0.7.0+nightly+20261003
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 14751
completion_tokens: 2421
total_tokens: 17172
cost: 0.000548604
execution_time: 68.31
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-03T07:11:06Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR .SRCINFO with no security issues.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore for build artifacts; no security concerns found.
  - file: PKGBUILD
    status: safe
    summary: Standard nightly PKGBUILD; no malicious code detected.
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
The PKGBUILD's global/top-level scope consists only of variable definitions (e.g., `_system_wasm_bindgen`, `_version`, `_channel`, `_date`, `pkgver`, `pkgbase`, `pkgname`, `arch`, `pkgdesc`, `url`, `license`, `makedepends`, `source`, `sha256sums`, `options`, and `_FIREFOX_EXTENSION_ID`). The `if` block conditionally appends to `makedepends` but executes no commands — it is purely shell variable assignment. There are no command substitutions (backticks or `$()`), no `eval`, no `curl`, `wget`, `base64`, or other dangerous operations at the top level. The `pkgver` line uses a shell parameter expansion (`${_date//-}`) which is a text substitution, not a command execution. The `source` array contains a static URL string. All function definitions (`prepare()`, `build()`, `check()`, `package_*()`) are only parsed, not executed. Therefore, sourcing this PKGBUILD for `makepkg --printsrcinfo` is safe.
</details>
<evidence></evidence>
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
The file is a standard .SRCINFO metadata file for an AUR package. It declaratively describes the package structure, dependencies, and source (a pinned nightly tag from the official Ruffle GitHub repository). There are no executable instructions, no suspicious network requests beyond the stated source, no obfuscation, and no system-level commands. The sha256sum is provided and matches a specific commit; no checksums are skipped. The subpackages appear legitimate. No signs of supply-chain tampering or malicious behavior are present.
</details>
<evidence></evidence>
<summary>Standard AUR .SRCINFO with no security issues.</summary>
</security_assessment>

[1/3] Reviewing .gitignore, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR .SRCINFO with no security issues.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` used to exclude build artifacts and local directories (`src`, `pkg`, package tarballs, logs, and `/ruffle/`) from version control. It contains no commands, no network operations, no file manipulation beyond typical ignore patterns, and no obfuscation or suspicious content. This is consistent with normal AUR packaging practices.
</details>
<evidence>
</evidence>
<summary>
Standard .gitignore for build artifacts; no security concerns found.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore for build artifacts; no security concerns found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a nightly build. It fetches the Ruffle source from the official upstream GitHub repository using a tag referencing the nightly channel and date. All build steps (`cargo build`, `npm run build`, `cargo test`) are routine operations on the fetched source. The package functions install compiled binaries, web app files, extensions, and configuration within normal system paths (`/usr/bin`, `/usr/share/webapps`, `/usr/lib/node_modules`, `/usr/share/chromium/extensions`). The Chromium extension configuration uses the official Google update URL (`https://clients2.google.com/service/update2/crx`), which is standard for Chromium extensions and not a supply-chain attack. There are no suspicious network requests, obfuscated code, unexpected system modifications, or exfiltration attempts. The double `source` array (first includes a key file, second overrides it) is a packaging quirk but not malicious. The `sha256sums` for a git source may be incorrect (VCS sources typically use `SKIP`), but this is a hygiene issue, not evidence of malware. No genuinely malicious behavior is present.
</details>
<evidence></evidence>
<summary>Standard nightly PKGBUILD; no malicious code detected.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard nightly PKGBUILD; no malicious code detected.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 14,751
  Completion Tokens: 2,421
  Total Tokens: 17,172
  Total Cost: $0.000549
  Execution Time: 68.31 seconds

Final Status: SAFE


No issues found.
