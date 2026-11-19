---
package: ahk-git
pkgver: 0.5.0.r0.ga0c3b01a
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 7967
completion_tokens: 1158
total_tokens: 9125
cost: 0.00092547
execution_time: 16.27
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-17T12:23:42Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard VCS package build, no malicious content.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; no executable code or threats found.
---

Materializing ahk-git from local mirror...
Cloning https://aur.archlinux.org/ahk-git.git...
Cloned ahk-git
Analyzing ahk-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
No dangerous top-level code is executed when this PKGBUILD is sourced. All assignments are static strings or arrays, and no command substitutions, function calls, or dangerous operations exist in the global scope. The potentially risky operations (git describe, cargo build, etc.) are confined to functions (pkgver(), build(), package()) which are not executed by `makepkg --printsrcinfo`.
</details>
<evidence></evidence>
<summary>No dangerous top-level code executes during sourcing.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code executes during sourcing.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a VCS-based Rust package. It clones from the upstream repository, builds with `cargo build --release`, and installs the resulting binary along with documentation and desktop files. There is no obfuscated code, no unexpected network requests, no attempts to exfiltrate data, and no execution of untrusted content outside the normal build pipeline. The `sha256sums` are set to `SKIP`, which is required for VCS sources and is not a security concern. All operations serve the package&apos;s stated purpose of building an AutoHotkey interpreter from source.
</details>
<evidence></evidence>
<summary>Standard VCS package build, no malicious content.</summary>
</security_assessment>

[1/2] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard VCS package build, no malicious content.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a metadata-only manifest for the AUR `ahk-git` package. It defines standard packaging fields (pkgdesc, version, dependencies, source URL, etc.) and contains no executable code. The `sha256sums = SKIP` entry is normal and expected for VCS (`-git`) packages, as the source is fetched directly from the Git repository at build time. The source URL (`https://github.com/danalec/ahk.git`) points to the package's own upstream repository. No suspicious operations, network requests beyond the declared upstream source, obfuscation, or backdoors are present. This file poses no security risk.
</details>
<evidence></evidence>
<summary>Standard AUR metadata; no executable code or threats found.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; no executable code or threats found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 7,967
  Completion Tokens: 1,158
  Total Tokens: 9,125
  Total Cost: $0.000925
  Execution Time: 16.27 seconds

Final Status: SAFE


No issues found.
