---
package: helcanium
pkgver: 157.0.8103.78
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 24375
completion_tokens: 3716
total_tokens: 28091
cost: 0.00286263
execution_time: 27.67
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-17T16:08:43Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Metadata file with standard sources, no malicious content found.
  - file: PKGBUILD
    status: safe
    summary: Legitimate Chromium fork PKGBUILD; no malicious code.
---

Materializing helcanium from local mirror...
Materialized helcanium
Analyzing helcanium AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's top-level (global) scope consists only of variable assignments, a conditional block that modifies source/makedepends arrays, and a command substitution that expands keys of an associative array with `printf` and `sed`. None of these operations perform network requests, execute untrusted binaries, or exfiltrate data. The `$(...)` in `_unwanted_bundled_libs` merely processes statically-defined variable names; no external input or dangerous command is involved. No malicious code exists at global scope that would execute during `makepkg --printsrcinfo`.
</details>
<evidence></evidence>
<summary>No malicious top-level code; sourcing is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious top-level code; sourcing is safe.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a metadata file describing the `helcanium` AUR package—it contains no executable code. All listed dependencies and sources appear consistent with building a Chromium-based browser with Vulkan and Wayland support.  

The `source` array includes several component tarballs with pinned SHA256 hashes and two VCS sources (helium-linux and vulcanium) with `SKIP` checksums, which is standard for VCS-based sources. One VCS source (`vulcanium`) is unpinned (no commit), which is a reproducibility concern but not, by itself, evidence of a supply-chain attack. The remaining sources are fetched from the project’s own upstream or from well-known chromium-related repositories (chromium.googlesource.com, github.com/imputnet, github.com/foutrelis).  

No obfuscated commands, unexpected network endpoints, exfiltration scripts, or dangerous build-time overrides are present. The file describes standard packaging practice for a complex browser fork.  
</details>
<evidence></evidence>
<summary>Metadata file with standard sources, no malicious content found.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Metadata file with standard sources, no malicious content found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard build script for the Helcanium browser (a Chromium fork with Vulkan/Wayland support). It fetches source code from the project's own upstream repositories (GitHub, Chromium Googlesource, imput.net tarballs) and applies a series of patches from the pinned `helium` and unpinned `vulcanium` repos. All operations serve the stated purpose of building and packaging the browser.  

Key observations:  
- Checksums are either pinned (SHA256) or `SKIP` for VCS sources – standard AUR practice.  
- The `prepare()` function runs Python scripts from the pinned `helium` repo to download dependencies, prune binaries, apply patches, and substitute branding – all part of the upstream build workflow for the Helium modifications.  
- The `vulcanium` source is unpinned (VCS, `SKIP` checksum), which is a supply‑chain hygiene concern but not inherently malicious. The patches applied from it modify source code; no direct execution of attacker‑controlled scripts occurs.  
- No obfuscated commands, base64/curl|bash patterns, data exfiltration, or system tampering outside the package scope are present.  

The file exhibits no genuinely malicious behavior such as backdoors, credential theft, or execution of untrusted remote payloads. It is a complex but legitimate PKGBUILD for a Chromium derivative.
</details>
<evidence></evidence>
<summary>Legitimate Chromium fork PKGBUILD; no malicious code.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Legitimate Chromium fork PKGBUILD; no malicious code.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 24,375
  Completion Tokens: 3,716
  Total Tokens: 28,091
  Total Cost: $0.002863
  Execution Time: 27.67 seconds

Final Status: SAFE


No issues found.
