---
package: uzdoom-bin
pkgver: 5.0.3
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 10771
completion_tokens: 5836
total_tokens: 16607
cost: 0.00314202
execution_time: 163.85
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-29T11:14:46Z
file_verdicts:
  - file: uzdoom
    status: safe
    summary: Standard launcher script; sets library path and executes the game binary. Safe.
  - file: .SRCINFO
    status: safe
    summary: Standard package metadata, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard AppImage repackaging with pinned checksum; no malicious code found.
---

Materializing uzdoom-bin from local mirror...
Materialized uzdoom-bin
Analyzing uzdoom-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard top-level variable declarations and function definitions. No commands are executed at global scope when the file is sourced. The `package()` function contains the actual installation logic, but it is not run during `makepkg --printsrcinfo`. There are no suspicious command substitutions, network requests, obfuscated code, or file operations outside of the expected packaging workflow. The source URLs point to the project&apos;s own GitHub releases and checksums are provided, which is normal for a binary package.
</details>
<evidence>
</evidence>
<summary>
No malicious top-level code; sourcing the PKGBUILD is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious top-level code; sourcing the PKGBUILD is safe.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, uzdoom...
LLM auditresponse for uzdoom:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a simple launcher script for the uzdoom binary package. It sets `LD_LIBRARY_PATH` to include the package's bundled library directory and then `exec`s the game binary with any user-supplied arguments. This is standard packaging practice for binary games that ship private library versions, and no network access, obfuscation, file exfiltration, or execution of untrusted downloaded content is present.

The use of `LD_LIBRARY_PATH` can theoretically affect library resolution for any child process, but here the script immediately replaces itself with the uzdoom binary, and the path points to a directory owned by the package itself. This does not warrant an UNSAFE classification.
</details>
<evidence>
</evidence>
<summary>
Standard launcher script; sets library path and executes the game binary. Safe.
</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed uzdoom. Status: SAFE -- Standard launcher script; sets library path and executes the game binary. Safe.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is a standard metadata file for the uzdoom-bin AUR package. It defines package attributes, dependencies, and a source URL pointing to the official GitHub releases page for the project. The AppImage source is accompanied by a SHA256 checksum for verification. There is no indication of malicious code, obfuscated instructions, or any behavior that deviates from normal packaging practices. The file contains only declarative metadata and no executable content.
</details>
<evidence>
</evidence>
<summary>Standard package metadata, no malicious content.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard package metadata, no malicious content.
LLM auditresponse for PKGBUILD:
 <security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows normal AppImage-based packaging practice. It downloads the upstream UZDoom release from the project&#39;s own GitHub releases URL, verifies a pinned SHA-256 checksum, extracts the AppImage with `--appimage-extract`, removes conflicting MIME database files from the extracted image, moves a bundled library, and installs files into `$pkgdir`. The `rm`, `mv`, `find`, and `cp` operations are confined to `$srcdir` and `$pkgdir`, which is standard packaging behavior.

The AppImage is executed during `package()` for extraction, but this is expected for AppImage repackaging and the binary is the package&#39;s own verified upstream artifact. There is no use of `eval`, `base64`, `curl`, `wget`, obfuscated commands, or any network activity beyond the declared source. No exfiltration, backdoor, or unexpected system modification is present. The commented-out `patchelf` line is harmless.
</details>
<evidence></evidence>
<summary>
Standard AppImage repackaging with pinned checksum; no malicious code found.
</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AppImage repackaging with pinned checksum; no malicious code found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,771
  Completion Tokens: 5,836
  Total Tokens: 16,607
  Total Cost: $0.003142
  Execution Time: 163.85 seconds

Final Status: SAFE


No issues found.
