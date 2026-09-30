---
package: moarchy-launches
pkgver: 0.2.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 8226
completion_tokens: 1574
total_tokens: 9800
cost: 0.00159236
execution_time: 44.26
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-28T11:09:13Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with pinned checksum and normal install steps; no malicious behavior found.
  - file: .SRCINFO
    status: safe
    summary: Standard, verifiable AUR metadata; no signs of malicious content.
---

Materializing moarchy-launches from local mirror...
Materialized moarchy-launches
Analyzing moarchy-launches AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable definitions and function declarations at the top level. No commands (such as `eval`, `curl`, `wget`, or command substitutions) are executed during sourcing. The `source` array uses a simple variable expansion (`$pkgver`) which is safe and expected. There is no risk of executing malicious code during `makepkg --printsrcinfo` because the global scope contains only data assignments and function stubs that are not invoked at parse time.
</details>
<evidence></evidence>
<summary>No dangerous top-level code; safe to parse.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code; safe to parse.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard, transparent Arch packaging practices. It downloads a release tarball from the project's own GitHub releases URL with a pinned sha256sum, declares a normal dependency set (quickshell, curl, Nerd Font, icon theme), runs an offscreen QML test runner in check(), and installs QML assets, a launcher binary, desktop entry, icon, and license into the package directory. There is no obfuscated code, no suspicious network behavior, no build-time fetching of mutable refs, and no modification of files outside the package's own install scope. The `curl` dependency is for the application's stated purpose of querying Launch Library 2, which is upstream functionality, not a supply-chain concern.
</details>
<evidence>
</evidence>
<summary>
Standard PKGBUILD with pinned checksum and normal install steps; no malicious behavior found.
</summary>
</security_assessment>

[1/2] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with pinned checksum and normal install steps; no malicious behavior found.
LLM auditresponse for .SRCINFO:
 <security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR `.SRCINFO` metadata file for the `moarchy-launches` package. It contains only declarative metadata: package name, version, description, upstream URL, license, architecture, dependencies, and source/checksum entries. There are no functions (prepare, build, package), no commands to execute, no file operations, and no network logic — the file is purely descriptive.

The source tarball is fetched over HTTPS from the project's own GitHub releases page (`github.com/SimonSchubert/moarchy-apps/releases/...`), which matches the declared upstream URL `https://github.com/SimonSchubert/moarchy-apps`. The `sha256sums` entry is a pinned cryptographic hash rather than `SKIP`, so the downloaded tarball is verifiable — this is a positive sign, not a red flag. Dependencies (`quickshell`, `curl`, fonts, icon theme) are all plausible runtime requirements for a Quickshell widget. No suspicious, obfuscated, or encoded content is present.
</details>
<evidence>
</evidence>
<summary>Standard, verifiable AUR metadata; no signs of malicious content.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard, verifiable AUR metadata; no signs of malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 8,226
  Completion Tokens: 1,574
  Total Tokens: 9,800
  Total Cost: $0.001592
  Execution Time: 44.26 seconds

Final Status: SAFE


No issues found.
