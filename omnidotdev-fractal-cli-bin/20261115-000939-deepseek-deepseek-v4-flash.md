---
package: omnidotdev-fractal-cli-bin
pkgver: 0.1.0.14
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 8404
completion_tokens: 4404
total_tokens: 12808
cost: 0.00154908
execution_time: 29.59
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-15T00:09:39Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard binary package metadata, no issues.
  - file: PKGBUILD
    status: safe
    summary: Standard pre-built binary package with pinned checksums.
---

Materializing omnidotdev-fractal-cli-bin from local mirror...
Materialized omnidotdev-fractal-cli-bin
Analyzing omnidotdev-fractal-cli-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This gate only evaluates code that runs <strong>during</strong> the sourcing of the PKGBUILD (the global scope), not the build or package functions. The global scope of this PKGBUILD consists entirely of variable assignments and a single function definition (`package() { … }`). There are no top-level command substitutions (`$(…)` or backticks), no `eval` invocations, no `source`/`.` calls, and no execution of external commands like `curl`, `wget`, or `bash` that could exfiltrate data or run untrusted payloads. The parameters `_build=${pkgver##*.}` and `_release="https://…"` use only standard parameter expansion and string concatenation, which are inert.

The mutable release tag (`cli-v${_build}`) in the `source` array is an unpinned dependency—a genuine supply-chain concern during the download/build phase—but it is out of scope for this narrow parsing gate because `makepkg --printsrcinfo` does not fetch sources or execute the `build`/`package` functions. No malicious code executes at parse time.
</details>
<evidence>
</evidence>
<summary>No malicious top-level code executes during parsing.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious top-level code executes during parsing.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a standard AUR package metadata file for a pre-built binary CLI tool. All sources are pinned with explicit SHA256 checksums, none are skipped. The download URLs point to the project's official GitHub releases and a license file from the upstream repository. No obfuscation, dangerous commands, or suspicious destinations are present. This file conforms to normal packaging practices and contains no evidence of supply-chain attacks.
</details>
<evidence>
</evidence>
<summary>Standard binary package metadata, no issues.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard binary package metadata, no issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a pre-built binary package. It downloads the `fractal` CLI binary and its license from the package's own GitHub releases, with pinned SHA-256 checksums for both architectures. There are no unexpected network requests, obfuscated code, dangerous command invocations (eval, curl|bash, etc.), or file operations outside the package's scope. The `package()` function only installs the pre-fetched files into `/usr/bin` and `/usr/share/licenses`. No supply-chain attack vectors are present.
</details>
<evidence></evidence>
<summary>Standard pre-built binary package with pinned checksums.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard pre-built binary package with pinned checksums.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 8,404
  Completion Tokens: 4,404
  Total Tokens: 12,808
  Total Cost: $0.001549
  Execution Time: 29.59 seconds

Final Status: SAFE


No issues found.
