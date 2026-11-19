---
package: manggo
pkgver: 1.2.2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 9708
completion_tokens: 1187
total_tokens: 10895
cost: 0.001099462
execution_time: 20.87
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-29T11:10:56Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with pinned checksums; no malicious behavior found.
  - file: .SRCINFO
    status: safe
    summary: "Standard package metadata with pinned checksums from the project's own upstream releases; no malicious content detected."
---

Materializing manggo from local mirror...
Materialized manggo
Analyzing manggo AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` only sources the global/top-level scope of this PKGBUILD. The global scope contains only static variable and array assignments (pkgname, pkgver, arch, depends, source arrays, checksums, etc.). There are no top-level command substitutions, no eval, no curl/wget, no base64 decoding, and no network operations that would execute while the file is sourced.

The `package()` function contains file extraction and install/patchelf operations, but functions are not executed by `makepkg --printsrcinfo`; they will be audited in the full PKGBUILD review. The remote download URLs point to the project's own upstream release host, and the checksums are pinned rather than SKIPped, though source verification is not part of this gate anyway. No genuinely malicious top-level behavior is present.
</details>
<evidence>
</evidence>
<summary>
Top-level scope is static; no dangerous commands execute during printsrcinfo.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level scope is static; no dangerous commands execute during printsrcinfo.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a prebuilt proprietary application. It downloads the package's own upstream release artifacts (`.deb` files) from the project's official release host, with pinned `sha256sums` for both supported architectures. There is no obfuscation, no suspicious network behavior, no execution of downloaded scripts, and no tampering with unrelated system files.

The `package()` function performs ordinary packaging operations: extracting the upstream `.deb` payload into `$pkgdir`, adjusting an RPATH on a bundled library with `patchelf`, creating a symlink for the executable, and installing license files into the package's license directory. The `!strip` and `!debug` options are also normal for bundled binary packages. No malicious or supply-chain indicators were found.
</details>
<evidence>
</evidence>
<summary>
Standard PKGBUILD with pinned checksums; no malicious behavior found.</summary>
</security_assessment>

[1/2] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with pinned checksums; no malicious behavior found.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file declares a standard Arch package for the Manggo desktop translation/OCR assistant. It specifies pinned SHA-256 checksums for both architecture-specific `.deb` downloads, with sources pointing to the project's own release page on gitcode.com under the Pylogmon/Manggo repository. Dependency lists, architecture variants, and optdependencies are normal packaging metadata.

No malicious behavior is present: there are no network fetches beyond the declared upstream release artifacts, no shell code, no obfuscation, no file manipulation, and no unexpected hosts. The only minor note is that the package downloads prebuilt binaries from gitcode.com rather than building from source, but the checksums are pinned and the destination is the application's official upstream, so this is a hygiene/trust consideration rather than evidence of a supply-chain attack.
</details>
<evidence>
</evidence>
<summary>
Standard package metadata with pinned checksums from the project's own upstream releases; no malicious content detected.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard package metadata with pinned checksums from the project's own upstream releases; no malicious content detected.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 9,708
  Completion Tokens: 1,187
  Total Tokens: 10,895
  Total Cost: $0.001099
  Execution Time: 20.87 seconds

Final Status: SAFE


No issues found.
