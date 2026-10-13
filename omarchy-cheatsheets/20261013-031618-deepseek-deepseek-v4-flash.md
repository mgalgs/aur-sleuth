---
package: omarchy-cheatsheets
pkgver: 0.4.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 10244
completion_tokens: 1305
total_tokens: 11549
cost: 0.00197772
execution_time: 20.3
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-13T03:16:16Z
file_verdicts:
  - file: omarchy-cheatsheets.install
    status: safe
    summary: Install script only echoes help text; no malicious behavior found.
  - file: PKGBUILD
    status: safe
    summary: Standard Rust packaging workflow; no malicious behavior or injected code found.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with pinned checksum; no malicious behavior detected.
---

Materializing omarchy-cheatsheets from local mirror...
Materialized omarchy-cheatsheets
Analyzing omarchy-cheatsheets AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources only the top-level of the PKGBUILD, and this file contains only standard variable definitions and a source array. There are no top-level command substitutions, no `eval`, no `curl`/`wget` execution outside of comments, and no code that downloads or executes payloads during sourcing. The `prepare`, `build`, `check`, and `package` functions are not executed by `makepkg --printsrcinfo`, so their contents are out of scope for this gate.

The comment mentioning `curl` to query the AUR RPC is just documentation and is not executed. The `sha256sums` entry is a normal checksum and does not affect the safety of parsing metadata. No malicious, obfuscated, or data-exfiltrating top-level behavior is present.
</details>
<evidence>
</evidence>
<summary>
Top-level PKGBUILD contains only standard metadata; no code executes during printsrcinfo.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD contains only standard metadata; no code executes during printsrcinfo.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, omarchy-cheatsheets.install...
LLM auditresponse for omarchy-cheatsheets.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The install script only contains `post_install()` and `post_upgrade()` functions. `post_install` prints two informational messages to the console, and `post_upgrade` simply calls `post_install`. There are no file operations, network requests, command execution, obfuscated content, or system modifications.

The reference to `omarchy-cheatsheets --install-bindings` is only descriptive text in an `echo` statement; it does not execute that command. This is a normal, harmless package install script with no evidence of malicious behavior.
</details>
<evidence>
</evidence>
<summary>
Install script only echoes help text; no malicious behavior found.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed omarchy-cheatsheets.install. Status: SAFE -- Install script only echoes help text; no malicious behavior found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Arch packaging practices for a Rust/Qt6 application. It downloads the upstream source tarball from the project's own GitHub repository, verifies it with a pinned sha256sum, and then uses standard `cargo fetch`, `cargo build`, `cargo test`, and `install` commands to compile and package the application. There are no suspicious network requests, no obfuscated code, and no execution of downloaded scripts.

The `cargo fetch --locked` call fetches dependencies from crates.io as part of the normal Rust build workflow, and the `install` commands place files only into `$pkgdir`. The comment mentioning `curl` to query the AUR RPC is documentation only and is not executed. There are no signs of data exfiltration, backdoors, credential theft, or tampering with files outside the package's own scope. The file is consistent with ordinary, non-malicious packaging.
</details>
<evidence>
</evidence>
<summary>
Standard Rust packaging workflow; no malicious behavior or injected code found.
</summary>
</security_assessment>

[2/3] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard Rust packaging workflow; no malicious behavior or injected code found.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file describes a standard AUR package for omarchy-cheatsheets. It declares the package metadata, dependencies, build options, and a single source tarball downloaded from the project's own GitHub releases URL (`https://github.com/akitaonrails/omarchy-cheatsheets/archive/refs/tags/v0.4.0.tar.gz`). The `sha256sums` entry is pinned to a concrete hash rather than `SKIP`, which is good hygiene.

There are no suspicious network requests, no obfuscated code, no dangerous commands, and no unexpected file operations. The source URL matches the package's declared upstream project, and the dependencies (`cargo`, `clang`, `cmake`, Qt6, etc.) are consistent with a Qt6/QML + Rust application. The referenced `omarchy-cheatsheets.install` file is not included in the provided content, but its presence alone is a normal AUR packaging practice. No evidence of injected malicious code or supply-chain attack behavior was found.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata with pinned checksum; no malicious behavior detected.
</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with pinned checksum; no malicious behavior detected.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,244
  Completion Tokens: 1,305
  Total Tokens: 11,549
  Total Cost: $0.001978
  Execution Time: 20.30 seconds

Final Status: SAFE


No issues found.
