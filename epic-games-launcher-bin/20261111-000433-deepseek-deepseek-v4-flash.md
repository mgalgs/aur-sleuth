---
package: epic-games-launcher-bin
pkgver: 0.114.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 9283
completion_tokens: 2073
total_tokens: 11356
cost: 0.00120861
execution_time: 21.81
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-11T00:04:32Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Metadata only, pinned source from official domain.
  - file: PKGBUILD
    status: safe
    summary: Clean binary package from official source.
---

Materializing epic-games-launcher-bin from local mirror...
Materialized epic-games-launcher-bin
Analyzing epic-games-launcher-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global/top-level scope contains only variable definitions (strings, arrays, and standard metadata fields). There are no command substitutions, backtick executions, eval calls, or any other code that would execute when the file is sourced by `makepkg --printsrcinfo`. The `prepare()` and `package()` functions are defined but are not invoked during this step, so they are out of scope for this safety gate. The source URL points to Epic Games' official CDN and does not contain any suspicious patterns.</details>
<evidence></evidence>
<summary>No dangerous code executes during sourcing.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous code executes during sourcing.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file contains only package metadata for the Epic Games Store launcher. The source is a prebuilt .deb fetched from the official Epic Games CDN (`content-download-egs.distro.on.epicgames.com`) with a fixed checksum (`sha256sums` is not `SKIP`). There are no executable commands, no obfuscation, and no suspicious operations. The dependencies and options are standard for a packaged binary application. No evidence of a supply-chain attack is present.
</details>
<evidence>
</evidence>
<summary>Metadata only, pinned source from official domain.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Metadata only, pinned source from official domain.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD downloads the official Epic Games Launcher binary from Epic's own content distribution server (`content-download-egs.distro.on.epicgames.com`). The download is protected by a pinned SHA‑256 checksum, ensuring integrity. The build process simply extracts the `.deb` archive, installs the binary and a small wrapper script that disables self‑update (a standard practice for version‑managed packages), and copies supporting files (icons, desktop entry, licenses). There are no suspicious network requests, obfuscated code, backdoors, or unexpected file operations. The wrapper script is static and does not fetch or execute any remote content. All operations are confined to normal packaging steps and the expected upstream source.
</details>
<evidence></evidence>
<summary>Clean binary package from official source.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Clean binary package from official source.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 9,283
  Completion Tokens: 2,073
  Total Tokens: 11,356
  Total Cost: $0.001209
  Execution Time: 21.81 seconds

Final Status: SAFE


No issues found.
