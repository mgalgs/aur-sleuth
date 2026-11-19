---
package: koral-bin
pkgver: 1.0.3
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 7575
completion_tokens: 2511
total_tokens: 10086
cost: 0.001146327
execution_time: 24.96
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-01T16:20:07Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR .SRCINFO; pinned checksum, upstream GitHub source only, no malicious indicators.
  - file: PKGBUILD
    status: safe
    summary: Benign PKGBUILD with pinned upstream release and standard local installs.
---

Materializing koral-bin from local mirror...
Materialized koral-bin
Analyzing koral-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD file's top-level scope (which is executed during `makepkg --printsrcinfo`) consists entirely of static variable assignments and one function definition. There are no command substitutions, backticks, `eval` statements, or calls to external binaries (like `curl`, `wget`, `bash`) that would execute when the file is sourced. The `source` array defines a URL string, and `sha256sums` provides a checksum; neither triggers downloads during this parsing step. The `package()` function definition is not invoked by `--printsrcinfo`, so its contents are inert here. There is no obfuscated code or any attempt to exfiltrate data or run untrusted payloads at top level.
</details>
<evidence></evidence>
<summary>No dangerous top-level code executed.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code executed.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, .SRCINFO...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.SRCINFO` metadata file for `koral-bin`, a binary package for a Rust terminal emulator. It declares the package description, version (1.0.3), architecture (x86_64), license (GPL-3.0-only), runtime dependencies (glibc, gcc-libs, wayland, vulkan-icd-loader, etc.), optional dependencies, and package metadata such as `provides`/`conflicts`.

There is a single source entry, `koral-1.0.3.tar.gz::https://github.com/mafuzyk/koral/releases/download/v1.0.3/koral-x86_64-linux.tar.gz`, which is a prebuilt tarball fetched over HTTPS from the project's own GitHub releases page (matching the `url` field, `https://github.com/mafuzyk/koral`). This is the expected upstream source for a `-bin` package. The tarball is pinned by a SHA-256 checksum (`sha256sums = 4c5c7106d84785666b415883b8f109933d6cd5d6f2be09f10d6af2b1aea00394`), so it is integrity-checked rather than set to `SKIP`.

No network requests to unexpected hosts, no obfuscated/encoded content, no `eval`/`base64`/`curl`/`wget` usage, no file or system modifications, and no install hooks or scripts are present. Nothing deviates from ordinary AUR metadata for a binary package. No evidence of malicious behavior.
</details>
<evidence>
</evidence>
<summary>
Standard AUR .SRCINFO; pinned checksum, upstream GitHub source only, no malicious indicators.
</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR .SRCINFO; pinned checksum, upstream GitHub source only, no malicious indicators.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD defines a prebuilt koral binary sourced from the upstream GitHub release URL and pins it with a SHA-256 checksum. The package() function only installs the binary, desktop file, icon, and license into $pkgdir. There is no obfuscated code, no eval or encoded command execution, no unexpected network access, and no modification of unrelated system files. Using a prebuilt binary is normal for a -bin package, and the checksum is present rather than skipped.
</details>
<evidence>
</evidence>
<summary>
Benign PKGBUILD with pinned upstream release and standard local installs.
</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Benign PKGBUILD with pinned upstream release and standard local installs.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 7,575
  Completion Tokens: 2,511
  Total Tokens: 10,086
  Total Cost: $0.001146
  Execution Time: 24.96 seconds

Final Status: SAFE


No issues found.
