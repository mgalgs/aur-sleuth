---
package: wadsmith-bin
pkgver: 0.0.5
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 9916
completion_tokens: 2658
total_tokens: 12574
cost: 0.0035321396
execution_time: 23.52
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-12T23:03:47Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO for upstream binary package with pinned checksum; no malicious behavior found.
  - file: PKGBUILD
    status: safe
    summary: Safe AUR binary package; official source, pinned checksum, standard build and install steps.
---

Materializing wadsmith-bin from local mirror...
Materialized wadsmith-bin
Analyzing wadsmith-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD declares only standard packaging variables (pkgname, pkgver, etc.) and function definitions (prepare(), package()) at the top level. No command substitutions, backtick expressions, eval calls, or other executable code appear in the global scope that would run when the file is sourced for `makepkg --printsrcinfo`. All assignments use simple quoted strings. There is no risk of malicious code execution during this command.
</details>
<evidence></evidence>
<summary>No malicious top-level code in PKGBUILD.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious top-level code in PKGBUILD.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO describes a standard AUR binary package (`wadsmith-bin`) for the WadSmith map editor. It declares metadata, dependencies, optdepends, and a single source tarball downloaded from the project's official GitHub releases page. The source has a pinned version (`v0.0.5`) and a specific sha256 checksum rather than `SKIP`, which is good practice.

There is no suspicious content: no install scripts, no build functions, no network operations beyond the declared upstream source, no encoded or obfuscated commands, and no references to unrelated hosts. The `noextract` option and `!strip` are normal packaging choices for a prebuilt binary package. The optdepends entries simply point users to related tools like GZDoom and SDL2. Nothing here indicates malicious or dangerous behavior.
</details>
<evidence>
</evidence>
<summary>
Standard .SRCINFO for upstream binary package with pinned checksum; no malicious behavior found.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO for upstream binary package with pinned checksum; no malicious behavior found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a straightforward AUR binary repackage of an official GitHub release. It downloads the pinned version tarball over HTTPS from the project's own releases URL and verifies it with a fixed sha256 checksum. prepare() simply extracts the tarball with bsdtar; package() copies the staged payload into /usr/lib/wadsmith, creates two standard exec wrappers, performs sanity checks on the payload, and installs the icon, documentation, license, and desktop file. There are no network requests beyond the declared source, no eval/encoded commands, no writes outside $srcdir/$pkgdir, and nothing that exfiltrates data or executes attacker-controlled content. The apostrophe-quoting in the sdl2 optdepends is only shell quoting to produce "object's", not obfuscation. This is normal packaging practice.
</details>
<evidence>
</evidence>
<summary>Safe AUR binary package; official source, pinned checksum, standard build and install steps.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Safe AUR binary package; official source, pinned checksum, standard build and install steps.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 9,916
  Completion Tokens: 2,658
  Total Tokens: 12,574
  Total Cost: $0.003532
  Execution Time: 23.52 seconds

Final Status: SAFE


No issues found.
