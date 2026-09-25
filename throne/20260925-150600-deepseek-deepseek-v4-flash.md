---
package: throne
pkgver: 1.3.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 11303
completion_tokens: 5855
total_tokens: 17158
cost: 0.00112119336
execution_time: 176.93
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-25T15:05:59Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR package metadata, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD, no malicious behavior found.
  - file: throne.sh
    status: safe
    summary: Trivial application launcher; no malicious or suspicious behavior found.
---

Materializing throne from local mirror...
Materialized throne
Analyzing throne AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only variable assignments (pkgname, pkgver, source, sha256sums, etc.) at global scope. All values are plain strings or arrays of strings with standard variable expansions (e.g., `${pkgname}`). There are no top-level command substitutions, backtick expressions, eval, or any other constructs that would cause code execution when the file is sourced by `makepkg --printsrcinfo`. The functions `prepare()`, `build()`, and `package()` are defined but are not executed during this step. Therefore, running this command is safe.
</details>
<evidence></evidence>
<summary>No top-level code execution risk.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level code execution risk.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, throne.sh...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is standard AUR metadata for the `throne` package. It declares version, dependencies, and sources &mdash; all pointing to the upstream project&rsquo;s GitHub repository (a release tarball with a pinned checksum, a local script file, and a VCS source for route profiles). The VCS source uses a mutable branch (`rule-set`) and has a `SKIP` checksum, which is normal for VCS sources and not indicative of malice. No obfuscation, external downloads beyond the declared upstream, or dangerous commands are present. The file is purely declarative and poses no security threat.
</details>
<evidence>
</evidence>
<summary>Standard AUR package metadata, no security issues.</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, throne.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR package metadata, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a Go/CMake project. It fetches the application sources from the project's own GitHub repository, a VCS snapshot (with SKIP checksum, which is normal), and a helper shell script.  
The build process uses `go install ...@latest` in `prepare()` to fetch protobuf code-generation tools. While this introduces an unpinned dependency from the Go module proxy at build time, it is a common (though imperfect) practice in Go projects and not indicative of a supply-chain attack. There is no obfuscated code, no unexpected network destinations, no data exfiltration, and no instructions that deviate from the package's stated purpose.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD, no malicious behavior found.</summary>
</security_assessment>

[2/3] Reviewing throne.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD, no malicious behavior found.
LLM auditresponse for throne.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a minimal launcher script. It uses `exec` to replace the shell with the packaged Throne binary, passes the `-appdata` flag, and forwards user arguments using a quoted `"$@"`. There are no network requests, downloads, file modifications, obfuscation, eval, or references outside the package's own installed runtime path. This matches standard packaging practice for an application wrapper.
</details>
<evidence>
</evidence>
<summary>
Trivial application launcher; no malicious or suspicious behavior found.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed throne.sh. Status: SAFE -- Trivial application launcher; no malicious or suspicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 11,303
  Completion Tokens: 5,855
  Total Tokens: 17,158
  Total Cost: $0.001121
  Execution Time: 176.93 seconds

Final Status: SAFE


No issues found.
