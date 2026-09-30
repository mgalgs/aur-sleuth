---
package: biri-altinstall-git
pkgver: 26.04.r517.g7ba4192
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 11267
completion_tokens: 1997
total_tokens: 13264
cost: 0.00071787744
execution_time: 26.08
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-26T11:45:12Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO metadata, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Renamed AUR package with standard VCS practices, no malice.
---

Materializing biri-altinstall-git from local mirror...
Materialized biri-altinstall-git
Analyzing biri-altinstall-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's top-level scope contains only standard variable declarations (pkgname, pkgver, source, etc.), a default assignment via `: ${_sccache:=}`, and a conditional appending to `makedepends` based on that variable. No commands are executed that download, run, or exfiltrate data. All operations that interact with external resources or modify files (git fetch, sed, cargo fetch/build) are defined inside the `pkgver()`, `prepare()`, `build()`, and `package()` functions, which are **not** executed when sourcing the file for `makepkg --printsrcinfo`. Therefore, running this command is safe.
</details>
<evidence></evidence>
<summary>No dangerous top-level code executes.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code executes.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.SRCINFO` metadata file for an AUR VCS package (`biri-altinstall-git`). It declares its source as a git repository from `https://github.com/barrulus/biri.git`, which is the package's own upstream. The `b2sums = SKIP` is expected for VCS sources. The list of dependencies and options is standard and does not contain any malicious instructions, encoded payloads, or unexpected network requests. There is no evidence of supply-chain attack, data exfiltration, or code execution outside normal packaging practices.
</details>
<evidence></evidence>
<summary>Standard .SRCINFO metadata, no malicious content.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO metadata, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is for a renamed soft-fork of the niri compositor, intended to coexist with the original. The `pkgver()` function fetches tags from the upstream niri repository (`niri-wm/niri`) to compute a descriptive version string; this does not pull executable code into the build and is a standard practice for VCS packages whose fork lacks its own tags. The `prepare()` stage performs systematic sed renames of user-visible names (niri → biri) and verifies they took effect with grep checks, aborting on failure. The `build()` stage uses `cargo build --frozen --release`, pinning dependencies via Cargo.lock and preventing network access. The `package()` stage installs only renamed binaries and resources. No obfuscated commands, unexpected network destinations, or exfiltration logic are present. The behaviour is consistent with legitimate packaging.
</details>
<evidence></evidence>
<summary>Renamed AUR package with standard VCS practices, no malice.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Renamed AUR package with standard VCS practices, no malice.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 11,267
  Completion Tokens: 1,997
  Total Tokens: 13,264
  Total Cost: $0.000718
  Execution Time: 26.08 seconds

Final Status: SAFE


No issues found.
