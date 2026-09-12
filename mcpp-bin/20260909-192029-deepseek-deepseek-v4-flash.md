---
package: mcpp-bin
pkgver: 2026.9.10.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 10634
completion_tokens: 1724
total_tokens: 12358
cost: 0.00098574
execution_time: 26.26
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-09T19:20:28Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR SRCINFO with pinned binary sources.
  - file: mcpp.sh
    status: safe
    summary: Standard launcher script, no malicious behavior
  - file: PKGBUILD
    status: safe
    summary: Standard prebuilt binary AUR package with no malicious behavior.
---

Materializing mcpp-bin from local mirror...
Materialized mcpp-bin
Analyzing mcpp-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only defines variables and a single `package()` function. During `makepkg --printsrcinfo`, only the global/top-level code is sourced, which consists entirely of variable assignments (strings, arrays) and a function definition. There are no command substitutions, no invocations of `curl`, `wget`, `eval`, `base64`, or any other potentially dangerous commands. The `_relbase` variable expands `${pkgver}` from an immediately preceding literal assignment, so there is no risk of unintended code execution. No downloads, no data exfiltration, no backdoors occur during this sourcing step.
</details>
<evidence>
</evidence>
<summary>No top-level execution – only variable assignments</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level execution – only variable assignments
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, mcpp.sh...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a standard AUR metadata file. It defines a package called `mcpp-bin` that downloads prebuilt binaries from the official GitHub releases of the mcpp-community/mcpp project. The source URLs are pinned to specific version tags, and checksums are provided for the binary tarballs (SHA256). The `mcpp.sh` file has a `SKIP` checksum, which is normal for local helper scripts included in the AUR repo and does not indicate malice. There is no embedded code, obfuscation, or reference to untrusted external resources. The file is purely declarative and follows standard AUR packaging practices.
</details>
<evidence></evidence>
<summary>Standard AUR SRCINFO with pinned binary sources.</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, mcpp.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR SRCINFO with pinned binary sources.
LLM auditresponse for mcpp.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard launcher wrapper for the mcpp application. It sets two environment variables (`MCPP_HOME` and `MCPP_VENDORED_XLINGS`) to redirect runtime writable data to per-user locations and then executes the binary from `/opt/mcpp/bin/mcpp`. The script uses only basic POSIX shell commands (`set`, `export`, `exec`) with no network access, no file modification outside the package's own scope, and no obfuscation or encoded content. The comments clearly explain the rationale for the wrapper. There is no evidence of malicious or dangerous behavior.
</details>
<evidence>
</evidence>
<summary>Standard launcher script, no malicious behavior</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed mcpp.sh. Status: SAFE -- Standard launcher script, no malicious behavior
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard practices for a prebuilt binary package in the AUR. It downloads tarballs from the project's own GitHub releases, provides SHA-256 checksums for each architecture-specific source, and installs static binaries into `/opt/mcpp` with a wrapper script on `PATH`. There are no suspicious network requests, obfuscated code, unexpected file operations, or dangerous commands. The `SKIP` checksum for the local `mcpp.sh` is normal (it is a file distributed with the AUR source, not a remote download). The package does not execute any fetched content outside of `makepkg`&apos;s standard download-and-extract pipeline. No evidence of supply-chain tampering or malicious intent.
</details>
<evidence></evidence>
<summary>Standard prebuilt binary AUR package with no malicious behavior.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard prebuilt binary AUR package with no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,634
  Completion Tokens: 1,724
  Total Tokens: 12,358
  Total Cost: $0.000986
  Execution Time: 26.26 seconds

Final Status: SAFE


No issues found.
