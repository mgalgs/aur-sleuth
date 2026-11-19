---
package: appattic
pkgver: 3.4.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 8722
completion_tokens: 6985
total_tokens: 15707
cost: 0.002064972
execution_time: 32.89
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-16T11:07:51Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Metadata only, pinned sources from expected origins.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with verified upstream sources.
---

Materializing appattic from local mirror...
Materialized appattic
Analyzing appattic AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` only sources the PKGBUILD's top-level scope. In this PKGBUILD, the top-level scope consists solely of static variable assignments: `pkgname`, `pkgver`, `pkgrel`, `pkgdesc`, `arch`, `url`, `license`, `depends`, `makedepends`, `source`, and `sha256sums`. There are no command substitutions, backticks, `eval`, `curl`, `wget`, base64 decoding, or any other executable constructs at the global level.

The `prepare()`, `build()`, and `package()` functions contain the interesting operations, but those are not executed by `makepkg --printsrcinfo` and are therefore out of scope for this narrow gate. The checksums are present; even if they were SKIPped, that would not affect this gate since no sources are downloaded during `--printsrcinfo`.
</details>
<evidence>
</evidence>
<summary>
Top-level PKGBUILD scope is static; printsrcinfo execution is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD scope is static; printsrcinfo execution is safe.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a `.SRCINFO` metadata document. It contains no executable code, shell commands, or logic of any kind — it only declares package metadata and sources.  

Two source tarballs are specified, both with pinned SHA‑256 checksums:  

1. The application's own upstream archive from `github.com/maci0/appattic`.  
2. A Swift compiler binary tarball from the official Swift project download server (`download.swift.org`).  

Bundling a full Swift compiler binary tarball as a dependency source is an unconventional packaging strategy (it adds significant size and pulls a pre‑compiled binary from an external host), but the source URL is the standard Swift distribution endpoint, the artifact is pinned by checksum, and it serves the legitimate build‑time dependency of a Swift‑language application.  

There is no evidence of obfuscated code, data exfiltration, unexpected network destinations, backdoors, or any genuinely malicious behavior. The file is entirely metadata, and its contents describe a perfectly standard (if slightly unusual) AUR package setup.
</details>
<evidence>
</evidence>
<summary>Metadata only, pinned sources from expected origins.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Metadata only, pinned sources from expected origins.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
No evidence of genuinely malicious behavior was found in this PKGBUILD.  
The package fetches its source from the official GitHub release tag and a Swift toolchain from the official Swift download server, both with pinned SHA-256 checksums for integrity verification.  
The `prepare()` and `build()` steps perform only standard compatibility setup (symlink for libncurses) and invoke the upstream Swift build system via a sourced script from the verified source tarball.  
The `package()` function installs the built binary, a resource file, removes RPATH, creates a symlink, and installs a man page — all normal Arch packaging operations.  
No obfuscated code, `eval`, `curl|bash`, data exfiltration, backdoors, or network requests to unexpected hosts are present.  
The use of an external Swift binary release is a practical dependency choice for a language not in the official repositories; the provided checksum mitigates supply-chain risk.  
Nothing in this file deviates from standard AUR packaging practices.
</details>
<evidence>
</evidence>
<summary>Standard PKGBUILD with verified upstream sources.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with verified upstream sources.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 8,722
  Completion Tokens: 6,985
  Total Tokens: 15,707
  Total Cost: $0.002065
  Execution Time: 32.89 seconds

Final Status: SAFE


No issues found.
