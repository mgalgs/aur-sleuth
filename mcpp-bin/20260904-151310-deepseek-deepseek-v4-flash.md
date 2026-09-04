---
package: mcpp-bin
pkgver: 2026.9.4.3
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 10795
completion_tokens: 2739
total_tokens: 13534
cost: 0.00143300038
execution_time: 45.19
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-04T15:13:10Z
file_verdicts:
  - file: mcpp.sh
    status: safe
    summary: Standard environment wrapper; no malicious behavior.
  - file: .SRCINFO
    status: safe
    summary: "SAFE: Standard AUR prebuilt binary metadata with upstream GitHub sources and pinned checksums."
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD; no malicious code detected.
---

Materializing mcpp-bin from local mirror...
Materialized mcpp-bin
Analyzing mcpp-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources the PKGBUILD and executes only its top-level scope. This PKGBUILD's top-level scope contains only variable assignments, array definitions, and a `package()` function definition. There are no command substitutions, no calls to `eval`, `curl`, `wget`, `base64`, or any other executable code at top level, and no network requests or file operations that would run during sourcing.

The `source` arrays reference the package's own upstream GitHub releases, but `makepkg --printsrcinfo` does not download or verify sources. The `sha256sums` entry of `SKIP` for `mcpp.sh` is also irrelevant at this stage and is not grounds for an UNSAFE decision. The contents of `package()` are out of scope for this narrow gate and will require review in the full PKGBUILD audit.
</details>
<evidence>
</evidence>
<summary>
Top-level PKGBUILD contains only variable definitions; printsrcinfo is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD contains only variable definitions; printsrcinfo is safe.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, mcpp.sh...
[0/3] Reviewing .SRCINFO, mcpp.sh, PKGBUILD...
LLM auditresponse for mcpp.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard launcher wrapper script for the mcpp-bin AUR package. It sets two environment variables (`MCPP_HOME` and `MCPP_VENDORED_XLINGS`) to point to appropriate paths for the application, respecting any pre-existing user exports. It then executes the mcpp binary from `/opt/mcpp/bin/mcpp`. There are no network operations, no obfuscated code, no dangerous command execution, no file modifications beyond the expected launch of the application. The script is straightforward and follows typical packaging practices for self-contained binaries installed under `/opt`.
</details>
<evidence>
</evidence>
<summary>Standard environment wrapper; no malicious behavior.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed mcpp.sh. Status: SAFE -- Standard environment wrapper; no malicious behavior.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO describes a prebuilt binary AUR package for `mcpp`, pulling x86_64 and aarch64 tarballs from the project's own GitHub releases with pinned checksums. No suspicious network hosts, no obfuscation, no unexpected file operations, and no install-time code execution is declared in this metadata. The `source = mcpp.sh` entry is a local file included in the AUR package; its `sha256sums = SKIP` is a checksum hygiene issue rather than evidence of malice, and should not by itself be treated as a supply-chain attack.

The package depends on `git` and conflicts with other mcpp variants, which is consistent with the stated purpose of a package manager for C++ projects. Overall, this metadata is routine AUR packaging practice. If `mcpp.sh` is an installer or helper script, it should be reviewed separately, but nothing in the .SRCINFO itself indicates malicious behavior.
</details>
<evidence>
</evidence>
<summary>SAFE: Standard AUR prebuilt binary metadata with upstream GitHub sources and pinned checksums.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- SAFE: Standard AUR prebuilt binary metadata with upstream GitHub sources and pinned checksums.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a prebuilt binary release. The binary tarballs are downloaded from the project's official GitHub releases and have pinned SHA256 checksums for each architecture. The local shell wrapper `mcpp.sh` uses a SKIP checksum, which is normal for local files included in the AUR repository. No suspicious network requests, obfuscation, dangerous commands (`eval`, `curl|bash`, base64 decoding, etc.), or system modifications beyond normal installation into `/opt` and `/usr/bin` are present. The package depends on `git` for legitimate package-index sync as stated, and the build/install steps are straightforward and transparent. There is no evidence of exfiltration, backdoors, or supply-chain attack patterns.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD; no malicious code detected.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD; no malicious code detected.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,795
  Completion Tokens: 2,739
  Total Tokens: 13,534
  Total Cost: $0.001433
  Execution Time: 45.19 seconds

Final Status: SAFE


No issues found.
