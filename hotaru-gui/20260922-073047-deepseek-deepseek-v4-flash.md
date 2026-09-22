---
package: hotaru-gui
pkgbase: hotaru
pkgver: 0.1.4
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 10386
completion_tokens: 1388
total_tokens: 11774
cost: 0.001166232172
execution_time: 37.79
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-22T07:30:47Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO with pinned source and checksum.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with pinned source, no malicious behavior.
---

hotaru-gui is built from hotaru
Materializing hotaru-gui from local mirror...
Materialized hotaru-gui
Analyzing hotaru-gui AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global/top-level scope contains only static variable assignments (strings, arrays) and comments. There are no command substitutions ($() or backticks), no calls to `curl`, `wget`, `eval`, or any other external commands that would execute at source time. The `source` array simply constructs a URL string from pre-defined variables, which is standard practice and does not fetch or execute anything during `makepkg --printsrcinfo`. All function definitions (`prepare`, `build`, `check`, `package_hotaru`, `package_hotaru-gui`) are only defined and not called, so they are out of scope for this gate. No malicious code is executed when sourcing this PKGBUILD for metadata generation.
</details>
<evidence></evidence>
<summary>No dangerous code at global scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous code at global scope.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is a standard AUR metadata descriptor. It sources the package from the official GitHub repository (ushineko/hotaru) at a tagged release (v0.1.4) with a pinned SHA256 checksum. There are no suspicious URLs, no obfuscated code, no unexpected commands, and no attempts to exfiltrate data or inject malicious code. The file only declares package metadata, dependencies, and a single source tarball with a valid checksum. No supply-chain attack indicators are present.
</details>
<evidence></evidence>
<summary>Standard .SRCINFO with pinned source and checksum.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO with pinned source and checksum.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard Arch packaging practices for a Go-based project. The source is pinned via a specific tag and SHA-256 checksum, network requests are limited to `go mod download` (standard for Go dependencies), and all package functions install files from the local build tree or the packaged source. There is no obfuscated code, no execution of remote scripts, no unusual file operations, and no data exfiltration. The custom build tag `migrated_fynedo` is explained in a comment as a safe performance optimization and does not indicate malicious intent. The udev rules file is a normal configuration for hardware access. No evidence of a supply-chain attack was found.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with pinned source, no malicious behavior.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with pinned source, no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,386
  Completion Tokens: 1,388
  Total Tokens: 11,774
  Total Cost: $0.001166
  Execution Time: 37.79 seconds

Final Status: SAFE


No issues found.
