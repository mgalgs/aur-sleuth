---
package: mcpp-bin
pkgver: 2026.9.18.2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 10622
completion_tokens: 2037
total_tokens: 12659
cost: 0.001302153776
execution_time: 70.64
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-18T07:15:50Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file with no malicious content.
  - file: mcpp.sh
    status: safe
    summary: Standard launcher wrapper; no malicious behavior.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD for prebuilt binary; no malicious behavior found.
---

Materializing mcpp-bin from local mirror...
Materialized mcpp-bin
Analyzing mcpp-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The top-level (global) scope of this PKGBUILD contains only standard variable assignments (pkgname, pkgver, source arrays, checksums, etc.) and comments. There are no command substitutions (backtick or $()), no eval, no function calls, no network requests, and no dangerous operations that would execute when the file is sourced. All variable values are plain strings or arrays of strings with normal parameter expansion. No code in the global scope performs any downloads, file writes, or system modifications.

The `sha256sums` for the shared source is set to `SKIP`, but that is irrelevant at this gate because no sources are downloaded or verified during `makepkg --printsrcinfo`. The downstream full PKGBUILD audit will handle any concerns about unpinned sources.

Therefore, running `makepkg --printsrcinfo` on this PKGBUILD is safe.
</details>
<evidence></evidence>
<summary>No dangerous global-scope code executed during metadata parsing.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous global-scope code executed during metadata parsing.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, mcpp.sh...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The provided file `.SRCINFO` is a standard AUR package metadata file. It contains no executable code, obfuscation, or suspicious instructions. It merely declares package sources, checksums (with one `SKIP` for a helper script `mcpp.sh`), dependencies, and architecture-specific tarballs from the project&#x27;s GitHub releases with pinned SHA256 hashes. There is no evidence of malicious payloads, data exfiltration, or unexpected behavior within this file itself. The `SKIP` checksum on `source = mcpp.sh` is a packaging hygiene choice, not a threat, and does not indicate malice. The remaining sources are properly pinned.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file with no malicious content.</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, mcpp.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file with no malicious content.
LLM auditresponse for mcpp.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `mcpp.sh` is a standard launcher wrapper for the `mcpp` binary installed under `/opt/mcpp`. It exports two environment variables (`MCPP_HOME` and `MCPP_VENDORED_XLINGS`) using shell parameter expansion so that user-defined values are respected, then executes the actual binary with `exec`. There are no network operations, no obfuscated code, no dangerous commands (e.g., `eval`, `curl`, `wget`), and no unexpected file operations. The script is transparent and well-documented. This is standard packaging practice for AUR packages that install self-contained binaries requiring per-user writable directories.
</details>
<evidence></evidence>
<summary>Standard launcher wrapper; no malicious behavior.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed mcpp.sh. Status: SAFE -- Standard launcher wrapper; no malicious behavior.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for distributing prebuilt binary releases. It downloads the upstream tarball from the official GitHub releases page of the mcpp-community/mcpp project and verifies it with SHA256 checksums. The architecture-specific tarballs have pinned checksums; only the included wrapper script `mcpp.sh` uses `SKIP`, which is normal for files provided locally by the maintainer. The `package()` function uses only standard `install` commands to place binaries, a launcher script, license, and documentation into the appropriate directories. There are no obfuscated commands, extraneous network requests, or suspicious operations. No evidence of malicious injection or supply-chain attack.
</details>
<evidence>
</evidence>
<summary>Standard PKGBUILD for prebuilt binary; no malicious behavior found.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD for prebuilt binary; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,622
  Completion Tokens: 2,037
  Total Tokens: 12,659
  Total Cost: $0.001302
  Execution Time: 70.64 seconds

Final Status: SAFE


No issues found.
