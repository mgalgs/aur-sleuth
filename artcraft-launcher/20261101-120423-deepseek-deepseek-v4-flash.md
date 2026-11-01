---
package: artcraft-launcher
pkgver: 0.12.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 9833
completion_tokens: 1511
total_tokens: 11344
cost: 0.001169805
execution_time: 20.09
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-01T12:04:21Z
file_verdicts:
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config, no malicious content.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD for a Rust application.
---

Materializing artcraft-launcher from local mirror...
Materialized artcraft-launcher
Analyzing artcraft-launcher AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's top-level scope only defines standard packaging metadata: pkgname, pkgver, pkgrel, url, pkgdesc, arch, license, dependencies, source, checksum, a helper function `_srcenv()`, and an icon size array. No top-level command substitutions, network requests, file downloads, obfuscated code, or data exfiltration are present. `makepkg --printsrcinfo` sources the file but does not execute `prepare()`, `build()`, or `package()`, so the cargo-related operations inside those functions are out of scope for this gate. The source URL points to the project's own GitHub upstream and the tarball has a pinned checksum. Nothing here would execute malicious code during metadata parsing.
</details>
<evidence>
</evidence>
<summary>
Top-level PKGBUILD metadata only; no dangerous execution during printsrcinfo.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD metadata only; no dangerous execution during printsrcinfo.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, .nvchecker.toml...
[0/3] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard configuration file for `nvchecker`, a tool used to monitor upstream releases. It specifies a Git source (`https://github.com/storytold/craft-launcher.git`) and a version prefix (`v`). There is no embedded code, no network requests beyond the expected upstream repository, and no suspicious or obfuscated content. The file is entirely benign and follows normal packaging practices.
</details>
<evidence>
</evidence>
<summary>Standard nvchecker config, no malicious content.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config, no malicious content.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a standard AUR package metadata file. It declares the package name, version, dependencies, and a single source tarball from the project's official GitHub repository (`https://github.com/storytold/craft-launcher/archive/refs/tags/v0.12.0/craft-launcher-0.12.0.tar.gz`). The checksum (`sha256sums`) is pinned to a specific value, not skipped. No dangerous commands, network requests, or encoded content are present. There is no evidence of malicious or supply-chain attack behavior.
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
This PKGBUILD follows standard AUR packaging practices for a Rust application. It fetches a tarball from the official GitHub repository with a pinned checksum, uses `cargo fetch --locked` and `cargo build --frozen` to ensure reproducible builds, and installs the binary along with icons, a desktop file, and licenses. There is no obfuscated code, no unexpected network requests, no exfiltration of data, and no execution of untrusted content from external sources. The file does not contain any malicious or dangerous behavior.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD for a Rust application.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD for a Rust application.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 9,833
  Completion Tokens: 1,511
  Total Tokens: 11,344
  Total Cost: $0.001170
  Execution Time: 20.09 seconds

Final Status: SAFE


No issues found.
