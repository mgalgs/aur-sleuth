---
package: throne
pkgver: 1.3.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 11053
completion_tokens: 2121
total_tokens: 13174
cost: 0.00071947680
execution_time: 41.23
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-25T19:08:28Z
file_verdicts:
  - file: throne.sh
    status: safe
    summary: Standard launcher script, no malicious content.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; no security issues detected.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD, no malicious behavior found.
---

Materializing throne from local mirror...
Materialized throne
Analyzing throne AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The global/top-level scope of this PKGBUILD contains only standard variable and array assignments (pkgname, pkgver, source, sha256sums, etc.) and comments. There are no commands executed at parse time—no curl, wget, eval, or any other potentially dangerous operations. The `source` array defines a git repository URL and a tarball URL, but those are merely declared and are not fetched or executed during `makepkg --printsrcinfo`. The `sha256sums` entry with `'SKIP'` is benign in this context because no downloading or verification occurs at this stage. No code in `prepare()`, `build()`, or `package()` is executed, so those functions are out of scope for this gate. Therefore, sourcing this PKGBUILD for `--printsrcinfo` is safe.
</details>
<evidence></evidence>
<summary>No dangerous code in global scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous code in global scope.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, throne.sh...
LLM auditresponse for throne.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a straightforward shell script that launches the Throne application with an `-appdata` flag and passes through any user-supplied arguments. It contains no network requests, obfuscated code, file modifications, or any other malicious behavior. The script follows standard packaging conventions for providing a wrapper around a binary installed under `/usr/lib/throne/`.
</details>
<evidence></evidence>
<summary>Standard launcher script, no malicious content.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed throne.sh. Status: SAFE -- Standard launcher script, no malicious content.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is purely metadata describing the AUR package `throne`. It declares standard package fields: name, version, description, dependencies, and source URLs with checksums. The git source uses a branch (`rule-set`) with a `SKIP` checksum, which is normal for VCS sources and not evidence of malicious activity. There are no commands, network requests, obfuscated code, or attempts to modify system files. No security issues are present within this file.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata; no security issues detected.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; no security issues detected.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD builds the `throne` package from its official upstream source (GitHub) using standard AUR procedures. All sources are properly declared: a fixed version tarball with a valid SHA256 checksum, a local script `throne.sh`, and a VCS source (`routeprofiles`) from the same upstream organization with a `SKIP` checksum—standard for git sources and not suspicious.  
Build steps are typical: running `gendesk`, using `go install` to fetch protobuf code generators from Google's official Go module proxy (not an unexpected host), running `cmake` and `go build` with normal flags. No obfuscated code, no `eval`, no data exfiltration, and no downloads outside the project's own repositories or trusted Go infrastructure. No evidence of injected malicious behavior.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD, no malicious behavior found.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD, no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 11,053
  Completion Tokens: 2,121
  Total Tokens: 13,174
  Total Cost: $0.000719
  Execution Time: 41.23 seconds

Final Status: SAFE


No issues found.
