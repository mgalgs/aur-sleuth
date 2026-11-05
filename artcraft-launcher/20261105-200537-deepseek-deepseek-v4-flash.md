---
package: artcraft-launcher
pkgver: 0.14.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 9882
completion_tokens: 2592
total_tokens: 12474
cost: 0.001371006
execution_time: 19.8
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-05T20:05:37Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard package metadata, no security issues.
  - file: .nvchecker.toml
    status: safe
    summary: A static version-checker configuration; no malicious behavior.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD, no security issues.
---

Materializing artcraft-launcher from local mirror...
Materialized artcraft-launcher
Analyzing artcraft-launcher AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable assignments, function definitions, and array declarations in the global scope. No command substitutions, backtick execution, or other constructs that would execute code during sourcing are present. The functions `_srcenv`, `prepare`, `build`, and `package` are merely defined and are not invoked at the top level, so they cannot execute during `makepkg --printsrcinfo`. The source URL and checksum values are static strings and pose no risk at parse time.
</details>
<evidence></evidence>
<summary>No malicious top-level code; safe to parse.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious top-level code; safe to parse.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing PKGBUILD...
[0/3] Reviewing PKGBUILD, .SRCINFO...
[0/3] Reviewing PKGBUILD, .SRCINFO, .nvchecker.toml...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file contains standard package metadata for artcraft-launcher. The source is fetched from the official GitHub repository with a pinned version tag (v0.14.1) and a SHA-256 checksum is provided (not SKIP). Dependencies are typical for a Rust-based application (glibc, hicolor-icon-theme, libgcc). No suspicious URLs, code execution, obfuscated content, or unusual directives are present. This file is purely declarative and poses no security risk.
</details>
<evidence></evidence>
<summary>Standard package metadata, no security issues.</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, .nvchecker.toml...
+ Reviewed .SRCINFO. Status: SAFE -- Standard package metadata, no security issues.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a configuration file for `nvchecker`, a tool that checks for new upstream versions of a package. It defines a single check target (`artcraft-launcher`) that polls a Git repository (`https://github.com/storytold/craft-launcher.git`) and expects version tags prefixed with `v`. The file contains no executable code, no network requests triggered by the file itself (it is merely static data consumed by nvchecker), no obfuscation, no dangerous commands, and no attempt to download or execute anything. Pointing to a specific upstream repository is normal and expected for a version-checking configuration. There is no evidence of malicious or suspicious behavior in this file.
</details>
<evidence></evidence>
<summary>A static version-checker configuration; no malicious behavior.
</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- A static version-checker configuration; no malicious behavior.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices. It downloads a pinned release tarball from the official GitHub repository with a valid SHA-256 checksum. The build process uses `cargo fetch --locked` and `cargo build --frozen`, ensuring deterministic dependency resolution and no unexpected network calls. The package installs only its intended binary, desktop file, icons, and licenses. There is no obfuscation, no use of dangerous commands (eval, curl, wget, etc.), and no exfiltration of data. All operations are consistent with the application&#x27;s stated purpose.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD, no security issues.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD, no security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 9,882
  Completion Tokens: 2,592
  Total Tokens: 12,474
  Total Cost: $0.001371
  Execution Time: 19.80 seconds

Final Status: SAFE


No issues found.
