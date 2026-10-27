---
package: keysharp-input-git
pkgver: v1.1.1.r0.gd57605c
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 10043
completion_tokens: 2553
total_tokens: 12596
cost: 0.00165100
execution_time: 35.59
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-27T07:12:41Z
file_verdicts:
  - file: keysharp-input.install
    status: safe
    summary: Standard install script, no malicious behavior.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no malicious content found.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no malicious indicators.
---

Materializing keysharp-input-git from local mirror...
Materialized keysharp-input-git
Analyzing keysharp-input-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources the PKGBUILD, but only executes code at the global/top-level scope. The global scope in this PKGBUILD consists solely of variable assignments (pkgname, pkgver, depends, source, etc.) and function definitions. None of the assignments contain command substitutions or backticks that would execute arbitrary commands; they use fixed strings or simple variable expansions like `${pkgname%-git}` which expand previously defined values. The functions `pkgver()`, `prepare()`, `build()`, `check()`, and `package()` are defined but not invoked during the source step. Therefore, no malicious code is executed when sourcing this PKGBUILD, and it is safe to run `makepkg --printsrcinfo`.
</details>
<evidence></evidence>
<summary>No top-level malicious code executed.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level malicious code executed.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, keysharp-input.install...
LLM auditresponse for keysharp-input.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The install script performs routine post-install and pre-removal tasks: updating the shared library cache with `ldconfig`, running the package&#39;s own `keysharp-input` binary to set up input access, and executing the package&#39;s own uninstall script from `/usr/local/share/doc/keysharp-input/uninstall.sh`. There are no network requests, no obfuscated code, no execution of untrusted external content, and no operations that deviate from standard packaging practices. The use of `/usr/local` paths is unconventional for an AUR package but not malicious.
</details>
<evidence></evidence>
<summary>Standard install script, no malicious behavior.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed keysharp-input.install. Status: SAFE -- Standard install script, no malicious behavior.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard AUR `.SRCINFO` metadata file. It contains no executable code, no obfuscated or encoded content, and no network operations beyond the expected upstream source URL. The `sha256sums` field is set to `SKIP`, which is normal for VCS-based packages and is not a security concern. All dependencies (`libevdev`, `polkit`) and the source URL point to the legitimate project repository. There is no evidence of malicious or supply-chain attack behavior.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata file, no malicious content found.
</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no malicious content found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a VCS (git) package. It sources from the official upstream repository (`keysharp-org/keysharp-input`), uses `git submodule update --init` to fetch submodules, builds with CMake, and installs via CMake and an upstream helper script (`configure-library-path.sh`). There are no suspicious network requests, obfuscated code, base64-encoded payloads, or commands that execute untrusted content from unexpected hosts. The use of `SKIP` checksums is normal for VCS sources and is not a security issue. The script `packaging/configure-library-path.sh` is part of the upstream distribution and performs a legitimate system configuration task (adding a library path to `ld.so.conf.d`). No evidence of a supply-chain attack is present.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with no malicious indicators.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no malicious indicators.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,043
  Completion Tokens: 2,553
  Total Tokens: 12,596
  Total Cost: $0.001651
  Execution Time: 35.59 seconds

Final Status: SAFE


No issues found.
