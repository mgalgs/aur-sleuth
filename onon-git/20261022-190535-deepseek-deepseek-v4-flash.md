---
package: onon-git
pkgver: 0.9.4.r0.g49e499b
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 7910
completion_tokens: 1068
total_tokens: 8978
cost: 0.000914186
execution_time: 14.25
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-22T19:05:34Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard VCS package metadata; no malicious or suspicious behavior found.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR VCS PKGBUILD; no malicious behavior found.
---

Materializing onon-git from local mirror...
Materialized onon-git
Analyzing onon-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable assignments and function definitions at the top level. There are no command substitutions, backtick executions, or other executable statements outside of the function bodies. The `source` array uses a git URL, which is normal for VCS packages, and the SHA256 checksum is SKIP, which is expected for git sources and does not cause any execution during `makepkg --printsrcinfo`. The functions `pkgver()`, `prepare()`, `build()`, and `package()` are not executed during this command. Therefore, running `makepkg --printsrcinfo` is safe.
</details>
<evidence></evidence>
<summary>No dangerous top-level code; sourcing PKGBUILD is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code; sourcing PKGBUILD is safe.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR `.SRCINFO` file for a `-git` package. It declares the upstream project source as a git repository from the package's own official GitHub URL, and the `sha256sums = SKIP` entry is the normal and required practice for VCS sources. No suspicious commands, network endpoints, file operations, or obfuscated content are present. The file only contains package metadata, dependency declarations, and source location.
</details>
<evidence>
</evidence>
<summary>
Standard VCS package metadata; no malicious or suspicious behavior found.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard VCS package metadata; no malicious or suspicious behavior found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Arch User Repository packaging practices for a VCS/git package. It clones the package's own declared upstream repository (`https://github.com/Aethar01/onon.git`), computes a version from `git describe`, downloads Go module dependencies, builds the project with `go build`, and installs the resulting binary and supporting files into the package directory. There are no unexpected network destinations, no obfuscated commands, no encoded payloads, and no execution of arbitrary fetched scripts.

The `sha256sums=('SKIP')` entry is expected for VCS sources and is not a security concern by itself. The built source follows an unpinned git branch, which is normal for `-git` packages, but it does mean the exact upstream commit is not pinned; this is a reproducibility consideration rather than evidence of malice. Overall, nothing in this file indicates injection, exfiltration, backdoors, or tampering beyond the package's stated upstream build workflow.
</details>
<evidence>
</evidence>
<summary>
Standard AUR VCS PKGBUILD; no malicious behavior found.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR VCS PKGBUILD; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 7,910
  Completion Tokens: 1,068
  Total Tokens: 8,978
  Total Cost: $0.000914
  Execution Time: 14.25 seconds

Final Status: SAFE


No issues found.
