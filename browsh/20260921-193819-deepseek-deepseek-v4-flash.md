---
package: browsh
pkgver: 1.8.3
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 8326
completion_tokens: 1921
total_tokens: 10247
cost: 0.00067459392
execution_time: 67.44
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-21T19:38:18Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD, no malicious code detected.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no security issues.
---

Materializing browsh from local mirror...
Materialized browsh
Analyzing browsh AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
 <security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD contains only top-level variable assignments, arrays, and function definitions (`prepare()`, `build()`, `package()`). Sourcing it with `makepkg --printsrcinfo` will not execute the function bodies, and none of the global statements contain command substitution, `eval`, `curl`, `wget`, base64 decoding, or any other code execution. The `source` array simply declares remote tarballs; they are not downloaded or verified during this step. The optional `upx` usage in `build()` is out of scope for this gate and is not run during metadata printing.
</details>
<evidence>

</evidence>
<summary>
Top-level scope is declarative only; no malicious code executes during `--printsrcinfo`.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level scope is declarative only; no malicious code executes during `--printsrcinfo`.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a Go application. All source tarballs are downloaded from the official GitHub repository (`github.com/browsh-org/browsh`) with pinned SHA256 checksums, ensuring supply-chain integrity. The `prepare()`, `build()`, and `package()` functions perform routine operations: setting up a GOPATH, symlinking source code, building with `go build`, stripping the binary, optionally compressing with UPX, and installing the resulting binary. There are no obfuscated commands, no unexpected network requests, no execution of remotely fetched scripts, and no manipulations of system files outside the package scope. The build step may trigger Go module downloads, but this is normal for Go packaging and not evidence of malicious intent.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD, no malicious code detected.</summary>
</security_assessment>

[1/2] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD, no malicious code detected.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a metadata definition for the AUR package `browsh`. It contains only declarative fields: package name, description, version, dependencies, architecture support, license, options, source URLs from the official GitHub repository, and pinned SHA-256 checksums. There are no scripts, commands, or executable content present. Both source URLs point to the project's own GitHub releases over HTTPS, and checksums are provided (not `SKIP`). No obfuscation, network requests outside the declared sources, or dangerous operations exist. This is a standard, well-formed AUR package definition with no evidence of a supply-chain attack.
</details>
<evidence></evidence>
<summary>Standard AUR metadata, no security issues.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 8,326
  Completion Tokens: 1,921
  Total Tokens: 10,247
  Total Cost: $0.000675
  Execution Time: 67.44 seconds

Final Status: SAFE


No issues found.
