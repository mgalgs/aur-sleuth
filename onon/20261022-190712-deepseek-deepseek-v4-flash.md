---
package: onon
pkgver: 0.9.4
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 7654
completion_tokens: 1052
total_tokens: 8706
cost: 0.000887978
execution_time: 17.64
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-22T19:07:11Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard Go AUR package with no malicious indicators.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no security issues.
---

Materializing onon from local mirror...
Materialized onon
Analyzing onon AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global scope contains only static variable assignments (pkgname, pkgver, source, etc.) and array definitions. There are no command substitutions, backtick executions, or any invocations of external commands at the top level. The source array uses string interpolation of previously defined variables, which is normal and not dangerous. Since `makepkg --printsrcinfo` only executes the global/top-level scope, and there is no malicious code there, sourcing this PKGBUILD is safe.
</details>
<evidence></evidence>
<summary>No dangerous top-level code; static variables only.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code; static variables only.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a Go application. The source is downloaded from the official GitHub repository with a pinned version tag and a SHA-256 checksum. The build steps use `go mod download`, `go build`, and standard `install` commands. No suspicious network requests, obfuscation, or data exfiltration is present. All operations are confined to building and installing the package as expected.
</details>
<evidence></evidence>
<summary>Standard Go AUR package with no malicious indicators.</summary>
</security_assessment>

[1/2] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard Go AUR package with no malicious indicators.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file contains standard package metadata for the AUR package `onon`. It declares a fixed version (0.9.4), a source tarball from the project's own GitHub repository, and includes a SHA-256 checksum (not skipped). The dependencies (`sdl3`, `libmupdf`, `gtk3`) and build dependencies (`go`, `pkgconf`) are appropriate for a PDF reader with Lua scripting. There are no scripts, commands, or encoded content; the file is purely declarative. No malicious behavior or supply-chain attack indicators are present.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file, no security issues.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 7,654
  Completion Tokens: 1,052
  Total Tokens: 8,706
  Total Cost: $0.000888
  Execution Time: 17.64 seconds

Final Status: SAFE


No issues found.
