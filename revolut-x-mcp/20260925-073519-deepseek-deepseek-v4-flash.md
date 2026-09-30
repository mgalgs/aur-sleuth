---
package: revolut-x-mcp
pkgver: 1.0.50
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 9502
completion_tokens: 2539
total_tokens: 12041
cost: 0.000714420
execution_time: 36.27
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-25T07:35:19Z
file_verdicts:
  - file: revolut-x-mcp-wrapper
    status: safe
    summary: Standard Node.js wrapper script, no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; no malicious content found.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with pinned checksums, no malice found.
---

Materializing revolut-x-mcp from local mirror...
Materialized revolut-x-mcp
Analyzing revolut-x-mcp AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD defines standard metadata variables and a `latestver()` function at global scope. Function definitions in bash are inert — the body of `latestver()` is not executed when the PKGBUILD is sourced. There are no top-level command substitutions, `eval` invocations, or immediate network calls. All executable code is inside `package()` (and the unused `latestver()`), which do not run during `makepkg --printsrcinfo`. Therefore, sourcing this PKGBUILD for metadata extraction poses no immediate security risk.
</details>
<evidence></evidence>
<summary>No dangerous top-level code execution.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code execution.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, revolut-x-mcp-wrapper...
LLM auditresponse for revolut-x-mcp-wrapper:
<security_assessment>
<decision>SAFE</decision>
<details>
This wrapper script simply invokes the Node.js runtime to run the package&#8217;s main entry point (`/usr/lib/revolut-x-mcp/dist/index.js`) and passes all arguments through. There are no unconventional commands, no network access, no obfuscation, and no modifications to the system outside the expected application execution. The script follows standard AUR packaging practice for Node.js applications.
</details>
<evidence></evidence>
<summary>Standard Node.js wrapper script, no security issues.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed revolut-x-mcp-wrapper. Status: SAFE -- Standard Node.js wrapper script, no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a package metadata descriptor for the AUR. It contains standard fields: package name, version, description, URL, license, dependencies, sources, and checksums. The sources point to the project's own GitHub releases page (official repository) and a local AUR wrapper script. Checksums (SHA256) are provided for both sources, which is a good integrity practice. There is no executable code or suspicious directives in this file. The metadata does not contain any network requests, obfuscated data, or unexpected file operations. It is a normal, well-formed .SRCINFO that follows AUR conventions.
</details>
<evidence></evidence>
<summary>Standard AUR metadata; no malicious content found.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; no malicious content found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices. It downloads a prebuilt binary release from the project&#39;s official GitHub repository (`revolut-engineering/revolut-x-api`) with a pinned SHA-256 checksum, and includes a wrapper script (also checksummed). The `package()` function extracts the binary using `bsdtar`, installs the wrapper and license, and sets correct ownership. The `latestver()` helper is a convenience function not executed during the build. There is no obfuscated code, no dynamic downloads, no exfiltration, and no tampering with system files beyond installing package contents. The file contains no supply-chain attack indicators.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with pinned checksums, no malice found.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with pinned checksums, no malice found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 9,502
  Completion Tokens: 2,539
  Total Tokens: 12,041
  Total Cost: $0.000714
  Execution Time: 36.27 seconds

Final Status: SAFE


No issues found.
