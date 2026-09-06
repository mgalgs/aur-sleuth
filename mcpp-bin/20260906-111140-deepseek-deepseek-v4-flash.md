---
package: mcpp-bin
pkgver: 2026.9.6.3
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 10704
completion_tokens: 2198
total_tokens: 12902
cost: 0.00121977800
execution_time: 28.27
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-06T11:11:40Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard metadata file, no malicious code.
  - file: mcpp.sh
    status: safe
    summary: "Benign launcher: sets per-user environment variables and execs the package binary."
  - file: PKGBUILD
    status: safe
    summary: Standard AUR prebuilt binary package, no malicious code.
---

Materializing mcpp-bin from local mirror...
Materialized mcpp-bin
Analyzing mcpp-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard top-level variable definitions, comments, and function declarations (`package()`). No command substitutions (`$()`, backticks), direct execution of external commands (`curl`, `wget`, `eval`, etc.), or obfuscated code is present in the global scope. The `_relbase` variable simply holds a URL string, and the `source` arrays are just string definitions that are not fetched or executed when sourcing the file. Since `makepkg --printsrcinfo` only sources this PKGBUILD and does not run `pkgver()`, `prepare()`, `build()`, or `package()`, there is no opportunity for malicious code to execute during this step.
</details>
<evidence></evidence>
<summary>Top-level code is benign; no execution risk.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level code is benign; no execution risk.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, mcpp.sh...
[0/3] Reviewing .SRCINFO, mcpp.sh, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file is a metadata descriptor for the AUR package `mcpp-bin`. It contains no executable code, only declarations of package name, version, dependencies, architecture, and upstream source URLs with their checksums.  

The source array includes a `mcpp.sh` script with `sha256sums = SKIP`. While this is a minor supply-chain hygiene concern (the script is not verified), the instructions explicitly state that a SKIP checksum is a trust/hygiene choice, not evidence of malice, and should not trigger an UNSAFE decision. The binary tarballs for both architectures have pinned SHA-256 checksums and point to the official GitHub releases (`https://github.com/mcpp-community/mcpp/releases/...`).  

No obfuscated code, dangerous commands, unusual network requests, or system modifications are present. The file is purely declarative and follows standard AUR packaging practices.
</details>
<evidence></evidence>
<summary>Standard metadata file, no malicious code.</summary>
</security_assessment>

[1/3] Reviewing mcpp.sh, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata file, no malicious code.
LLM auditresponse for mcpp.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a simple POSIX shell launcher for the mcpp-bin package. It does not perform any network operations, download or execute remote code, use obfuscation, or modify system files. It only sets two environment variables (`MCPP_HOME` and `MCPP_VENDORED_XLINGS`) with user-respecting defaults, then uses `exec` to run the package's own binary at `/opt/mcpp/bin/mcpp` with the original arguments. This is consistent with standard packaging practice for a wrapper that needs to redirect writable runtime data to a per-user directory.
</details>
<evidence>
</evidence>
<summary>
Benign launcher: sets per-user environment variables and execs the package binary.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed mcpp.sh. Status: SAFE -- Benign launcher: sets per-user environment variables and execs the package binary.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard prebuilt binary package for the mcpp tool from the official GitHub repository. It downloads release tarballs from the project's own GitHub releases, provides pinned sha256sums for the binary archives, and only installs binaries and documentation into standard system paths. The SKIP checksum on the main `source` array is acceptable because it applies only to the local file `mcpp.sh`, which is distributed with the AUR package itself. There are no suspicious network requests, no obfuscated code, no dangerous commands (eval, curl|bash, etc.), and no modifications to user data or system configuration outside the package's scope. The package does exactly what a prebuilt binary package should: fetch the upstream binary, verify its integrity, and install it.
</details>
<evidence>
</evidence>
<summary>Standard AUR prebuilt binary package, no malicious code.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR prebuilt binary package, no malicious code.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,704
  Completion Tokens: 2,198
  Total Tokens: 12,902
  Total Cost: $0.001220
  Execution Time: 28.27 seconds

Final Status: SAFE


No issues found.
