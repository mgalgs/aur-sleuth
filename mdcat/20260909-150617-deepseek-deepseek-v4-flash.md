---
package: mdcat
pkgver: 2.16.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 14526
completion_tokens: 3552
total_tokens: 18078
cost: 0.00185023020
execution_time: 40.78
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-09T15:06:17Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: License file with no executable content.
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config; no security issues.
  - file: REUSE.toml
    status: safe
    summary: Benign REUSE configuration file; no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Standard package metadata, no security issues.
  - file: PKGBUILD
    status: safe
    summary: PKGBUILD is standard; source fork is a trust concern.
---

Materializing mdcat from local mirror...
Materialized mdcat
Analyzing mdcat AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The top-level (global) scope of this PKGBUILD contains only standard variable assignments (pkgname, pkgver, source, checksums, etc.) and function definitions for `prepare()`, `build()`, `check()`, and `package()`. No command substitutions, `eval`, `curl`, `wget`, or other dangerous constructs are present at global scope. The `source` array is defined as a template string but no download or execution occurs when sourcing the file for `makepkg --printsrcinfo`. Functions are defined but not invoked during this step. There is no evidence of code that would exfiltrate data, download and execute untrusted payloads, or perform any other malicious action during parsing. While the upstream URL points to a fork (`BIRSAx2/mdcat`) rather than the original repository, that is a packaging choice and does not trigger any dangerous behavior at parse time. The file is safe for the narrow operation of running `makepkg --printsrcinfo`.
</details>
<evidence></evidence>
<summary>No dangerous code at global scope; safe to parse.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous code at global scope; safe to parse.
Reviewing the 5 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, .nvchecker.toml...
[0/5] Reviewing .SRCINFO, .nvchecker.toml, LICENSE...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a plain text license (ISC-style) granting permission to use, copy, modify, and distribute the software. It contains no executable code, no network requests, no obfuscation, and no file operations. There are no security concerns whatsoever.
</details>
<evidence>
</evidence>
<summary>License file with no executable content.</summary>
</security_assessment>

[0/5] Reviewing .SRCINFO, .nvchecker.toml, LICENSE, PKGBUILD...
[1/5] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD...
+ Reviewed LICENSE. Status: SAFE -- License file with no executable content.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `.nvchecker.toml` is a configuration file for `nvchecker`, a tool used to check for new upstream releases. It defines the source for the `mdcat` package as a Git repository hosted on GitHub under the official project URL (`https://github.com/swsnr/mdcat.git`). It sets a version prefix (`mdcat-`) and excludes tags matching `mdless-.*`. This is a standard and expected use of `nvchecker` in AUR packaging. There is no executable code, no network requests beyond specifying the upstream URL, and no obfuscation or suspicious content. The file is purely declarative and poses no security risk.
</details>
<evidence></evidence>
<summary>Standard nvchecker config; no security issues.</summary>
</security_assessment>

[2/5] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config; no security issues.
[2/5] Reviewing .SRCINFO, PKGBUILD, REUSE.toml...
LLM auditresponse for REUSE.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `REUSE.toml` is a configuration file for the REUSE compliance tool. It declares copyright and license annotations for a list of file paths. There is no executable code, no network requests, no file operations, no obfuscation, and no deviation from standard packaging practices. The content is purely metadata and poses no security risk.
</details>
<evidence></evidence>
<summary>Benign REUSE configuration file; no security concerns.</summary>
</security_assessment>

[3/5] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed REUSE.toml. Status: SAFE -- Benign REUSE configuration file; no security concerns.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file contains only standard package metadata (name, version, description, dependencies, source URL, and checksum). The source is fetched from the project's own GitHub repository with a pinned SHA256 checksum. No scripts, commands, or executable code are present. There is no evidence of obfuscation, unexpected network requests, or system modifications. The integrity of the source is verified by the provided checksum.
</details>
<evidence></evidence>
<summary>Standard package metadata, no security issues.</summary>
</security_assessment>

[4/5] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard package metadata, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Arch packaging practices for a Rust (cargo) project. It pins the source tarball with a SHA-256 checksum, uses `cargo fetch --locked` and `cargo build --frozen`, and installs the binary and supporting files appropriately. The `package()` function runs the built binary to generate shell completions, which is normal.

**Potential concern:** The upstream URL (`https://github.com/BIRSAx2/mdcat`) points to a fork of mdcat rather than the official repository (typically `https://github.com/swsnr/mdcat` or `https://github.com/wezm/mdcat`). This could indicate a supply-chain risk if the fork contains unauthorized modifications. However, the PKGBUILD itself does not contain any obfuscated code, unexpected network requests, or other malicious behavior. The source is pinned via checksum, and the build process is transparent. The use of a fork may be a hygiene or trust concern, but it does not amount to a genuine threat in the PKGBUILD file itself. The absence of any dangerous commands (eval, curl, base64, etc.) means the file is safe under the given criteria.
</details>
<evidence>
</evidence>
<summary>PKGBUILD is standard; source fork is a trust concern.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- PKGBUILD is standard; source fork is a trust concern.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 14,526
  Completion Tokens: 3,552
  Total Tokens: 18,078
  Total Cost: $0.001850
  Execution Time: 40.78 seconds

Final Status: SAFE


No issues found.
