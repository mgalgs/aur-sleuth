---
package: throne
pkgver: 1.2.4
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 11235
completion_tokens: 2285
total_tokens: 13520
cost: 0.00105545790
execution_time: 44.02
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-12T11:12:09Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard package metadata, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Legitimate build fixes, no malicious behavior.
  - file: throne.sh
    status: safe
    summary: Simple wrapper script, no security concerns.
---

Materializing throne from local mirror...
Materialized throne
Analyzing throne AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains standard top-level variable assignments (pkgname, version, source, checksums, etc.). There are no command substitutions, function calls, or any other executable statements at global scope. The `skipped` checksum and VCS source are not evaluated during `makepkg --printsrcinfo`. The content inside prepare(), build(), and package() is not executed at this step, so it is out of scope. No dangerous code runs at sourcing time.
</details>
<evidence></evidence>
<summary>No top-level dangerous code.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level dangerous code.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, throne.sh...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a metadata file (.SRCINFO) for the throne package. It defines the package name, version, architecture, dependencies, and sources. The sources include a tarball from the project's own GitHub repository, a shell script (throne.sh), and a git repository (routeprofiles) from the same GitHub organization. The checksums include SHA256 hashes for the tarball and the shell script, and SKIP for the VCS source, which is standard practice for git sources. There is no executable code, no suspicious network destinations, no obfuscation, and no commands that could execute arbitrary actions. The file is purely declarative metadata and poses no security threat.
</details>
<evidence></evidence>
<summary>Standard package metadata, no security issues.</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, throne.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard package metadata, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR practices for a Go/CMake project. The `prepare()` function contains a workaround that disables Go module checksum verification (`GONOSUMDB=*`, `GONOSUMCHECK=*`, emptying `go.sum`, then running `go mod tidy`) – this weakens supply-chain integrity but is clearly intended to fix a stale upstream dependency (`cronet-go`), not to hide malicious code. The build also uses unpinned `@latest` for `protoc-gen-go`/`protoc-gen-go-grpc` and a branch‑based git source (`routeprofiles`), both common and not malicious per the guidelines. No obfuscation, network exfiltration, backdoors, or execution of untrusted external code is present. The modifications are transparent and serve a legitimate building purpose.
</details>
<evidence></evidence>
<summary>Legitimate build fixes, no malicious behavior.</summary>
</security_assessment>

[2/3] Reviewing throne.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Legitimate build fixes, no malicious behavior.
LLM auditresponse for throne.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard wrapper script that simply calls the actual binary located at `/usr/lib/throne/Throne` with the `-appdata` argument and passes any user-provided arguments. There is no obfuscation, network activity, dangerous command execution, or any deviation from typical packaging practices. The file is benign.
</details>
<evidence></evidence>
<summary>Simple wrapper script, no security concerns.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed throne.sh. Status: SAFE -- Simple wrapper script, no security concerns.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 11,235
  Completion Tokens: 2,285
  Total Tokens: 13,520
  Total Cost: $0.001055
  Execution Time: 44.02 seconds

Final Status: SAFE


No issues found.
