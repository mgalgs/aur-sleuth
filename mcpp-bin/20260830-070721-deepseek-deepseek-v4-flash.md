---
package: mcpp-bin
pkgver: 2026.8.30.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 10780
completion_tokens: 1954
total_tokens: 12734
cost: 0.00118444032
execution_time: 38.42
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: ok
upstream_files: 7
upstream_named_files: 2
unpinned_sources: 0
date: 2026-08-30T07:07:20Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD for prebuilt binaries, no malicious behavior.
  - file: .SRCINFO
    status: safe
    summary: Standard package metadata, no malicious content.
  - file: mcpp.sh
    status: safe
    summary: Safe launcher; no malicious content.
---

Cloning https://aur.archlinux.org/mcpp-bin.git...
Cloned mcpp-bin
Analyzing mcpp-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD defines variables and source arrays at the global scope but does **not** execute any commands, spawn subprocesses, or access network resources beyond the declared `source` entries. There is no `pkgver()` function, no top-level `eval`, `$(…)`, or backtick substitution that could run arbitrary code during sourcing. The source URLs point to the package's own upstream GitHub releases, which is standard for a `-bin` package. The `package()` function (the only place where actual file operations occur) is **not** executed by the requested commands (`--nobuild --nodeps --noprepare` only fetch sources and source the PKGBUILD). No evidence of injected malicious code exists in the global scope or `pkgver()`. SKIP checksums are not a safety concern at this gate per instructions.
</details>
<evidence>
</evidence>
<summary>No malicious code executes during source fetching or PKGBUILD sourcing.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code executes during source fetching or PKGBUILD sourcing.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: the PKGBUILD names 2 file(s) in the downloaded sources (src/mcpp-2026.8.30.1-linux-x86_64/bin/mcpp, src/mcpp-2026.8.30.1-linux-x86_64/registry/bin/xlings); they are upstream content and were not reviewed.
Reviewing the 3 file(s) in the AUR repository. The 7 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, mcpp.sh...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a prebuilt binary package. The source files are downloaded from the official GitHub releases URL of the upstream project (`https://github.com/mcpp-community/mcpp/releases/download/v...`). Checksums are provided for the architecture-specific tarballs, and the local `mcpp.sh` script is included in the source array with `SKIP` (which is acceptable for local files included in the source list). The `package()` function installs the binaries and a wrapper script into standard locations under `/opt` and `/usr/bin`. There are no obfuscated commands, suspicious network requests, or unexpected system modifications. The use of `SKIP` for the local script is a minor hygiene note but not a security threat. The package is clearly maintained and documented.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD for prebuilt binaries, no malicious behavior.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, mcpp.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD for prebuilt binaries, no malicious behavior.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.SRCINFO` metadata file for an Arch User Repository package. It declares a prebuilt binary package (`mcpp-bin`) sourced from the upstream GitHub releases, with pinned checksums for both x86_64 and aarch64 architectures. The only source without a pinned checksum is `mcpp.sh`, which is a local helper script (SHA256 set to `SKIP`); this is an ordinary practice for scripts provided alongside the PKGBUILD and does not, by itself, indicate malicious intent. No obfuscated code, dangerous commands, unexpected network requests, or exfiltration attempts are present. The file contains only declarative metadata and poses no security risk.
</details>
<evidence></evidence>
<summary>Standard package metadata, no malicious content.</summary>
</security_assessment>

[2/3] Reviewing mcpp.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard package metadata, no malicious content.
LLM auditresponse for mcpp.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a simple launcher that sets two environment variables (`MCPP_HOME` and `MCPP_VENDORED_XLINGS`) to sensible defaults if they are not already set, and then executes the mcpp binary. It uses `exec` which is standard for wrapper scripts. There are no network requests, obfuscated code, dangerous commands, or any deviation from normal packaging practice. The comments clearly explain why the wrapper is needed, and the operation is fully transparent.
</details>
<evidence>
</evidence>
<summary>Safe launcher; no malicious content.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed mcpp.sh. Status: SAFE -- Safe launcher; no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,780
  Completion Tokens: 1,954
  Total Tokens: 12,734
  Total Cost: $0.001184
  Execution Time: 38.42 seconds

Final Status: SAFE


No issues found.
