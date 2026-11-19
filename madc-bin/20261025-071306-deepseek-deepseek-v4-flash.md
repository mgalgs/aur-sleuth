---
package: madc-bin
pkgver: 0.106.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 13384
completion_tokens: 4538
total_tokens: 17922
cost: 0.002043860
execution_time: 49.29
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-25T07:13:05Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore with no malicious content.
  - file: .SRCINFO
    status: safe
    summary: Standard metadata with pinned hashes; no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR binary PKGBUILD, no malicious behavior.
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config tracking upstream releases. SAFE.
---

Materializing madc-bin from local mirror...
Materialized madc-bin
Analyzing madc-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's top-level code consists only of variable definitions (pkgver, pkgdesc, arch, source, sha256sums, etc.) and a `case` statement that sets `_CARCH` based on the build architecture. No command substitutions, eval, downloads, or other dangerous operations are executed at global scope. Running `makepkg --printsrcinfo` will safely source this file without triggering any malicious behavior.
</details>
<evidence></evidence>
<summary>No dangerous top-level code found.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code found.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .nvchecker.toml...
[0/4] Reviewing .SRCINFO, .nvchecker.toml, .gitignore...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` configuration used to control which files are tracked by Git. It ignores all files (`*`) and selectively un-ignores only the packaging metadata files: `.nvchecker.toml`, `.gitignore`, `PKGBUILD`, and `.SRCINFO`. This pattern is typical for AUR repositories that use `nvchecker` for automatic version updates, where only the core packaging files should be versioned. The file contains no executable commands, no network operations, no obfuscation, no file modifications, and no other suspicious behavior. It is a plain-text configuration file with no security implications.
</details>
<evidence></evidence>
<summary>Standard .gitignore with no malicious content.</summary>
</security_assessment>

[1/4] Reviewing .SRCINFO, .nvchecker.toml...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore with no malicious content.
[1/4] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a metadata file that defines the package source locations and checksums. All sources point to the official GitHub repository (derekbsnider/madc) via HTTPS. The binary tarball is fetched from the project's GitHub Releases page and its SHA256 checksum is provided and pinned. There is no obfuscated code, no suspicious network destinations, no commands to execute, and no deviation from standard Arch packaging practices. The file contains no code of any kind, only structured metadata.
</details>
<evidence></evidence>
<summary>Standard metadata with pinned hashes; no malicious content.</summary>
</security_assessment>

[2/4] Reviewing .nvchecker.toml, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata with pinned hashes; no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard binary-release package for the AUR. It fetches a precompiled tarball and documentation from the project&#8217;s own GitHub repository via pinned versions and checksummed sources (`sha256sums` and `sha256sums_x86_64` are pinned, not `SKIP`). The `package()` function extracts and installs binaries, libraries, documentation, and an AppArmor profile into the package directory using ordinary `install` and `cp` commands. There are no network requests to unexpected hosts, no obfuscated/encoded code execution, no base64/curl|bash patterns, and no modifications to system files outside the package&#8217;s own scope. The configuration and AppArmor profile serve the application&#8217;s stated purpose (a C/C++ language tool with WebKit-based windows requiring user namespaces). Everything is consistent with normal packaging practices; no supply-chain attack indicators are present.
</details>
<evidence></evidence>
<summary>Standard AUR binary PKGBUILD, no malicious behavior.</summary>
</security_assessment>

[3/4] Reviewing .nvchecker.toml...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR binary PKGBUILD, no malicious behavior.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `.nvchecker.toml` is a standard configuration file for the `nvchecker` tool, which is commonly used in the AUR ecosystem to automatically check for new upstream releases of a package. This specific configuration directs `nvchecker` to monitor the `derekbsnider/madc` GitHub repository for the latest release tag prefixed with &#x27;v&#x27;. This is a routine and transparent packaging practice. The file contains no executable code, no obfuscation, no unexpected network destinations (it points to the package&#x27;s own declared upstream source), and no file operations. It does not download or execute any code itself, nor does it exfiltrate data.
</details>
<evidence>
</evidence>
<summary>Standard nvchecker config tracking upstream releases. SAFE.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config tracking upstream releases. SAFE.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,384
  Completion Tokens: 4,538
  Total Tokens: 17,922
  Total Cost: $0.002044
  Execution Time: 49.29 seconds

Final Status: SAFE


No issues found.
