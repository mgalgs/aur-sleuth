---
package: t3code-nightly-bin
pkgver: 0.1.10_nightly.20261114.4682
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 9987
completion_tokens: 4577
total_tokens: 14564
cost: 0.00172269
execution_time: 25.56
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-14T12:07:59Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no security concerns.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR repackage, pinned hashes, no threats.
---

Materializing t3code-nightly-bin from local mirror...
Materialized t3code-nightly-bin
Analyzing t3code-nightly-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only static variable assignments and function definitions in its top-level scope. No command substitutions, backticks, evals, or other executable constructs are present at the global level. The `source` array defines URLs as plain strings, but those are not downloaded or executed during `makepkg --printsrcinfo`. All potentially dangerous operations (AppImage extraction, file copying, etc.) are confined to the `prepare()` and `package()` functions, which are not invoked by `--printsrcinfo`. Therefore, sourcing this file for metadata parsing is safe.
</details>
<evidence></evidence>
<summary>No malicious top-level code; safe to source.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious top-level code; safe to source.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.SRCINFO` metadata file for an AUR package. It declares package name, version, dependencies, sources (an AppImage and a LICENSE file from the official GitHub repository), and SHA-256 checksums for both sources. No executable code, obfuscation, or suspicious operations are present. The file contains only declarative metadata; there are no instructions, commands, or network requests that could introduce malicious behavior. The checksums are pinned (not SKIP), and the sources point to the upstream project&#x27;s own GitHub releases. This file presents no supply-chain risk.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file, no security concerns.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no security concerns.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard binary repackaging of the upstream `T3-Code` AppImage from GitHub (`pingdotgg/t3code`). The source file is pinned with a SHA-256 checksum ensuring integrity. No insecure protocols (plain HTTP for the main tarball), no `SKIP` checksums, and no obfuscated code are present.

The `prepare()` function extracts the AppImage into `squashfs-root` and verifies the launcher and sandbox are present, which is standard for AppImage-based packages. The `package()` function copies these files, sets the expected permissions (including 4755 on `chrome-sandbox`, which is standard for Chromium sandbox binaries), and creates a wrapper script. The wrapper script exports the `APPDIR` environment variable (a known workaround for running AppImages from a fixed non-standard path) and executes the upstream launcher.

There are no network fetches from unexpected origins, no `eval`/`base64` decoding, no exfiltration of local data, and no modifications to system files outside the package&#8217;s own `/opt` directory. The code is fully consistent with the declared purpose and exhibits no characteristics of a supply-chain attack.
</details>
<evidence>
</evidence>
<summary>Standard AUR repackage, pinned hashes, no threats.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR repackage, pinned hashes, no threats.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 9,987
  Completion Tokens: 4,577
  Total Tokens: 14,564
  Total Cost: $0.001723
  Execution Time: 25.56 seconds

Final Status: SAFE


No issues found.
