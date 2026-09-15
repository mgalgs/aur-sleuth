---
package: ajantv2-tools
pkgbase: libajantv2
pkgver: 18.0.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 9329
completion_tokens: 5306
total_tokens: 14635
cost: 0.001766892246
execution_time: 206.19
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-15T05:43:24Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Ordinary pinned-source AUR PKGBUILD; no malicious behavior found.
---

ajantv2-tools is built from libajantv2
Materializing ajantv2-tools from local mirror...
Materialized ajantv2-tools
Analyzing ajantv2-tools AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global/top-level scope contains only standard variable definitions (pkgbase, pkgname, pkgdesc, etc.), a source array pointing to a pinned git commit from the project's official GitHub repository, and function definitions (prepare, build, _install, package_*). No commands, command substitutions, or potentially dangerous operations (e.g., eval, base64 decode, curl|bash, file exfiltration) execute during sourcing. The sha256sums array set to "SKIP" does not cause any code execution at this stage. Therefore, running `makepkg --printsrcinfo` poses no security risk.
</details>
<evidence></evidence>
<summary>No dangerous top-level code; safe to parse.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code; safe to parse.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file provides standard metadata for the libajantv2 AUR package. It defines three subpackages (libajantv2, ajantv2-tools, ajantv2-dkms) and sources the upstream code from the official GitHub repository of AJA Video Systems, pinned to a specific commit. The sha256sums entry is set to SKIP, which is normal for VCS sources and is not a security concern per the provided guidance. There are no executable scripts, obfuscated strings, network requests, or any commands present in this purely declarative metadata file. The content adheres to standard AUR packaging practices and contains no evidence of injected malicious behavior.
</details>
<evidence></evidence>
<summary>Standard AUR metadata, no security issues.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no security issues.
LLM auditresponse for PKGBUILD:
 <security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard AUR build script for the upstream `libajantv2` project. The source is pinned to a specific upstream commit over HTTPS from the project's own GitHub repository; the `SKIP` checksum is normal for git sources and is not a red flag. The build uses `cmake`, `make`, and standard package-phase `install`/`mv` operations, all confined to `$srcdir` and `$pkgdir` staging areas. No `eval`, `base64`, `curl`, `wget`, obfuscated strings, or unexpected network/remote execution is present.

The `prepare()` `sed` patch and the `rm -rf libajantv2/.../ntv2version.h` in the DKMS package are source-tree adjustments for the package's own declared project, not tampering with unrelated system files. The `modules-load.d` entry written by the DKMS package is consistent with installing a kernel driver and is within the package's stated purpose. The `_dkmsdir="$(ls tmp)"` idiom is fragile but appears to reference the generated DKMS directory inside the build tree; it does not exfiltrate data or execute attacker-controlled code.

Overall, no evidence of injected malicious or supply-chain behavior was found.
</details>
<evidence></evidence>
<summary>Ordinary pinned-source AUR PKGBUILD; no malicious behavior found.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Ordinary pinned-source AUR PKGBUILD; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 9,329
  Completion Tokens: 5,306
  Total Tokens: 14,635
  Total Cost: $0.001767
  Execution Time: 206.19 seconds

Final Status: SAFE


No issues found.
