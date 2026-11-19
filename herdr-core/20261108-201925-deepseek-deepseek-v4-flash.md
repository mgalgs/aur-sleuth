---
package: herdr-core
pkgver: 0.1.19
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 8781
completion_tokens: 1662
total_tokens: 10443
cost: 0.001101555
execution_time: 36.21
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-08T20:19:24Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard Rust/Zig PKGBUILD with pinned sources and checksums; no malicious behavior found.
---

Materializing herdr-core from local mirror...
Materialized herdr-core
Analyzing herdr-core AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources only the top-level scope of this PKGBUILD. The top-level statements are limited to standard metadata assignments (`pkgname`, `pkgver`, `pkgdesc`, `arch`, `depends`, etc.), source array definitions, checksum arrays, and variable assignments used by later build functions. No top-level command substitutions, downloads, executions, or data-exfiltrating operations are present. The functions `prepare()`, `build()`, `check()`, and `package()` are not executed during `--printsrcinfo`, so their contents are out of scope for this narrow gate.

The commented `curl` example is inert documentation and is not executed. The pinned source tarballs and checksums are normal packaging metadata and do not cause any action during this step. Nothing in the sourced scope poses a risk for this specific command.
</details>
<evidence>
</evidence>
<summary>
Top-level PKGBUILD scope is safe; no code executes during printsrcinfo parsing.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD scope is safe; no code executes during printsrcinfo parsing.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard AUR `.SRCINFO` metadata file. It declares the package name, version, dependencies, sources, and checksums.  

- All sources are pinned to specific commit hashes or tags from well-known GitHub repositories (`github.com/herdrdev/herdr-core` and `github.com/ghostty-org/ghostty`).  
- Checksums (`b2sums`) are provided and not set to `SKIP`.  
- There are no script commands, code execution, or any suspicious operations.  

No evidence of malicious or obfuscated behavior; the file simply describes the package metadata.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata, no malicious content.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows a standard Rust/Zig package build workflow. The sources are fetched from the project's official GitHub repository and from ghostty-org's GitHub repository, both with pinned versions or commit hashes, and both have non-SKIP `b2sums` checksums. The `prepare()` and `build()` functions perform normal dependency fetching and compilation using `cargo fetch`, `zig build`, and `cargo build --frozen --release`. No unexpected network requests, encoded commands, or interactive shell tricks are present.

The `package()` function only installs the compiled binary, a symlink, license, and README into the package directory. There are no hooks that modify system files, no exfiltration of local data, no downloads or execution of remote code outside the declared upstream sources, and no obfuscated content. The odd `conflicts=('herbstluftwm')` entry is unusual but does not indicate a supply-chain attack; it is at most a packaging metadata quirk.
</details>
<evidence></evidence>
<summary>
Standard Rust/Zig PKGBUILD with pinned sources and checksums; no malicious behavior found.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard Rust/Zig PKGBUILD with pinned sources and checksums; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 8,781
  Completion Tokens: 1,662
  Total Tokens: 10,443
  Total Cost: $0.001102
  Execution Time: 36.21 seconds

Final Status: SAFE


No issues found.
