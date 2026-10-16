---
package: goman-git
pkgver: 0.4.0.r4.ged8e53a
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 7386
completion_tokens: 1058
total_tokens: 8444
cost: 0.000864682
execution_time: 25.6
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-16T19:16:56Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR package definition, no malicious indicators found.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR VCS package, no malicious code detected.
---

Materializing goman-git from local mirror...
Materialized goman-git
Analyzing goman-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` only sources the PKGBUILD's top-level scope. This PKGBUILD contains only standard variable assignments, the `source` array, `sha256sums`, and function definitions for `pkgver()`, `prepare()`, `build()`, and `package()`. No top-level command substitution, network fetch, file modification, or code execution outside the normal metadata definitions is present. The `SKIP` checksum for the git source is normal for VCS packages and is not relevant to this parsing step, and the raw GitHub license URL is a standard source declaration. The contents of the build/package functions are out of scope for this gate and contain nothing that would execute during `--printsrcinfo`.
</details>
<evidence>
</evidence>
<summary>
Top-level PKGBUILD parsing is safe; only standard definitions and function declarations exist.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD parsing is safe; only standard definitions and function declarations exist.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file follows standard AUR packaging conventions. It declares the package source from the project's own GitHub repository (git+https://github.com/appliedgocode/goman), which is expected. The second source is a raw GitHub link for a LICENSE file with a pinned SHA256 checksum, ensuring integrity. There are no obfuscated commands, unexpected network destinations, or malicious operations. All attributes (arch, depends, provides, conflicts) are typical. The SKIP checksum for the VCS source is standard and not a security concern.
</details>
<evidence></evidence>
<summary>Standard AUR package definition, no malicious indicators found.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR package definition, no malicious indicators found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Arch VCS package guidelines. The git source uses `SKIP` for the checksum, which is normal and required for VCS packages. The license file is fetched from the upstream project's repository with a pinned SHA-256 checksum, ensuring integrity. The build and install steps are straightforward: `go mod tidy`, `go build`, and copying the binary and license into the package directory. There are no unusual commands (no curl|bash, no base64/hex encoding, no reversed shell, no data exfiltration, no fetching of code from unexpected hosts). All operations serve the stated purpose of building and packaging the application. No supply-chain attack indicators are present.
</details>
<evidence>
</evidence>
<summary>Standard AUR VCS package, no malicious code detected.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR VCS package, no malicious code detected.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 7,386
  Completion Tokens: 1,058
  Total Tokens: 8,444
  Total Cost: $0.000865
  Execution Time: 25.60 seconds

Final Status: SAFE


No issues found.
