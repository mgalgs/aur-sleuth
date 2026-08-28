---
package: mcpp-bin
pkgver: 2026.8.28.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 10902
completion_tokens: 2326
total_tokens: 13228
cost: 0.0011649946
execution_time: 106.1
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: ok
upstream_files: 7
upstream_named_files: 2
unpinned_sources: 0
date: 2026-08-27T23:15:06Z
file_verdicts:
  - file: mcpp.sh
    status: safe
    summary: Standard launcher wrapper, no malicious behavior.
  - file: PKGBUILD
    status: safe
    summary: Standard binary AUR package, no threats found.
  - file: .SRCINFO
    status: safe
    summary: Metadata-only AUR file; upstream GitHub sources with pinned checksums; no malicious behavior.
---

Cloning https://aur.archlinux.org/mcpp-bin.git...
Cloned mcpp-bin
Analyzing mcpp-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard packaging constructs: variable assignments, source URLs pointing to the project's own GitHub releases, local file references, and checksum arrays. No code executes in the global scope beyond variable expansion, and no dangerous commands (eval, curl, wget, etc.) are present. The `source` entries are either local files or HTTPS downloads from the upstream repository. The `sha256sums` for the per-arch tarballs are pinned; the SKIP for the local file `mcpp.sh` is normal. There is no `pkgver()` function or other top-level execution that could trigger malicious behavior during sourcing. Thus, running `makepkg --nobuild --nodeps --noprepare` or `makepkg --printsrcinfo` poses no security risk.
</details>
<evidence></evidence>
<summary>No malicious code in global scope; safe to fetch sources.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code in global scope; safe to fetch sources.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: the PKGBUILD names 2 file(s) in the downloaded sources (src/mcpp-2026.8.28.1-linux-x86_64/bin/mcpp, src/mcpp-2026.8.28.1-linux-x86_64/registry/bin/xlings); they are upstream content and were not reviewed.
Reviewing the 3 file(s) in the AUR repository. The 7 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, mcpp.sh...
LLM auditresponse for mcpp.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard launcher wrapper script for the mcpp-bin AUR package. It sets two environment variables (`MCPP_HOME` and `MCPP_VENDORED_XLINGS`) with safe defaults that the user can override, then executes the mcpp binary from `/opt/mcpp`. No network requests, obfuscation, or unexpected system modifications are present. The script&#39;s purpose is to work around a path resolution issue (the binary reads its real path from `/proc/self/exe`, which would resolve the symlink and point to the read-only install tree). This is a legitimate packaging concern and not a supply-chain attack.
</details>
<evidence></evidence>
<summary>Standard launcher wrapper, no malicious behavior.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed mcpp.sh. Status: SAFE -- Standard launcher wrapper, no malicious behavior.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for distributing prebuilt binaries. All upstream source tarballs are downloaded from the project&#x27;s official GitHub releases (`github.com/mcpp-community/mcpp/releases`) and have pinned SHA-256 checksums. The only source with a `SKIP` checksum is the local `mcpp.sh` file, which is expected for files included in the AUR repository itself and is not a VCS source. The package function installs files conventionally under `/opt/mcpp` and `/usr/bin`, with proper ownership (`755`/`644`). There is no obfuscation, no unexpected network requests, no execution of downloaded scripts, and no manipulation of system files outside the application&#x27;s scope. No signs of supply-chain compromise or malicious intent are present.
</details>
<evidence>
</evidence>
<summary>Standard binary AUR package, no threats found.</summary>
</security_assessment>

[2/3] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard binary AUR package, no threats found.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is pure package metadata: it defines pkgbase/pkgname, dependencies, architecture, and source URLs. It contains no executable code, shell commands, or post-install logic. The binary tarballs are fetched from the project's own GitHub releases repository (mcpp-community/mcpp) and have pinned sha256 checksums for both x86_64 and aarch64.

The only unverified source entry is `source = mcpp.sh` with `sha256sums = SKIP`. No content for this file is present in the .SRCINFO, and a SKIP checksum is a trust/hygiene concern rather than evidence of malice. The `depends = git`, `conflicts`, and `options = !strip` entries are normal packaging declarations for a prebuilt binary package.
</details>
<evidence>
</evidence>
<summary>
Metadata-only AUR file; upstream GitHub sources with pinned checksums; no malicious behavior.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Metadata-only AUR file; upstream GitHub sources with pinned checksums; no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,902
  Completion Tokens: 2,326
  Total Tokens: 13,228
  Total Cost: $0.001165
  Execution Time: 106.10 seconds

Final Status: SAFE


No issues found.
