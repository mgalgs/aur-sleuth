---
package: stoke-qt
pkgver: 0.3.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 7940
completion_tokens: 1477
total_tokens: 9417
cost: 0.000305032
execution_time: 26.88
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-03T19:10:26Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with pinned source; no malicious indicators.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no red flags.
---

Materializing stoke-qt from local mirror...
Materialized stoke-qt
Analyzing stoke-qt AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable assignments (pkgname, pkgver, source, sha256sums, etc.) and function definitions (build, package) in its top-level scope. No code with side effects such as command substitutions, eval, or network calls exists outside of functions. The `source` array is assigned a string, not executed. Therefore sourcing this PKGBUILD for `makepkg --printsrcinfo` is safe; no malicious code runs at source time.
</details>
<evidence>
</evidence>
<summary>No dangerous top-level execution.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level execution.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard, transparent build recipe. It downloads a specific version of the upstream source from the project's official GitHub releases with a pinned SHA256 checksum. The build and package steps use cmake and install typical files under `/usr`. The only non‑standard operations are creating symlinks for the former package names `fubuki-qt` and `fubuki-ui`, which is normal compatibility handling for a renamed package. There are no hidden network requests, dangerous command execution, encoded payloads, or file operations that extend beyond the package's own scope.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with pinned source; no malicious indicators.</summary>
</security_assessment>

[1/2] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with pinned source; no malicious indicators.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard .SRCINFO file for the stoke-qt AUR package. It defines package metadata (name, version, license, description), build and runtime dependencies, and a source tarball fetched via HTTPS from the official GitHub repository of the project. The source is pinned to a specific version tag (v0.3.0) with a proper SHA256 checksum. No suspicious network requests, encoded commands, obfuscated code, or unusual system modifications are present. The file is purely declarative metadata used by AUR helpers and does not contain any executable code. All content conforms to standard AUR packaging practices.
</details>
<evidence></evidence>
<summary>Standard AUR metadata, no red flags.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no red flags.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 7,940
  Completion Tokens: 1,477
  Total Tokens: 9,417
  Total Cost: $0.000305
  Execution Time: 26.88 seconds

Final Status: SAFE


No issues found.
