---
package: artcraft
pkgver: 0.41.0
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 10282
completion_tokens: 1455
total_tokens: 11737
cost: 0.0018665128
execution_time: 24.08
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-06T19:03:12Z
file_verdicts:
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Clean PKGBUILD with standard practices, no malicious elements.
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO metadata, no security concerns.
---

Materializing artcraft from local mirror...
Materialized artcraft
Analyzing artcraft AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only defines variables and functions at the global scope. No command substitutions, backtick executions, or other active code exist outside function definitions. All functions (`_srcenv`, `prepare`, `build`, `package`) are defined but not invoked during `makepkg --printsrcinfo`. The source array and other variables are standard string assignments. No risk of executing malicious behavior during the parsing step.
</details>
<evidence></evidence>
<summary>No malicious global code; safe to parse.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious global code; safe to parse.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .nvchecker.toml...
[0/3] Reviewing .nvchecker.toml, .SRCINFO...
[0/3] Reviewing .nvchecker.toml, .SRCINFO, PKGBUILD...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a configuration file for `nvchecker`, a tool used to monitor upstream releases of software packages. It defines the source as a git repository (`https://github.com/storytold/artcraft.git`), a version prefix (`artcraft-v`), and a regex pattern to match version tags. This is standard practice for AUR maintainers to automatically detect new versions. There is no embedded code, no network requests beyond specifying the upstream URL, and no suspicious behavior. The configuration is entirely benign and serves a legitimate packaging maintenance purpose.
</details>
<evidence>
</evidence>
<summary>Standard nvchecker config, no malicious content.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard Arch packaging practices for a Rust application built with Tauri. It fetches a release tarball from the official GitHub repository with a pinned checksum. The build uses `cargo fetch --locked` and `cargo build --frozen`, which are typical and secure. There is no obfuscation, no unexpected network requests, no execution of downloaded code (beyond the declared source), and no exfiltration or system tampering. All operations are confined to building and installing the package. No evidence of malicious code injection or supply-chain attack was found.</details>
<evidence></evidence>
<summary>Clean PKGBUILD with standard practices, no malicious elements.</summary>
</security_assessment>

[2/3] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Clean PKGBUILD with standard practices, no malicious elements.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a declarative metadata file for the AUR package. It contains no executable code or instructions. The source URL points to the official GitHub repository archive with a fixed tag and a provided SHA256 checksum. Dependencies are standard system libraries. There are no suspicious commands, obfuscated content, or network calls beyond the expected source fetch. No evidence of a supply chain attack.
</details>
<evidence></evidence>
<summary>Standard .SRCINFO metadata, no security concerns.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO metadata, no security concerns.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,282
  Completion Tokens: 1,455
  Total Tokens: 11,737
  Total Cost: $0.001867
  Execution Time: 24.08 seconds

Final Status: SAFE


No issues found.
