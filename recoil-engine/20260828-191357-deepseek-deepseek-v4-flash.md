---
package: recoil-engine
pkgver: VERSION
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 23749
completion_tokens: 3259
total_tokens: 27008
cost: 0.0026271756
execution_time: 68.34
files_reviewed: 6
files_skipped: 0
maintainer_files: 6
source_fetch: failed
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
date: 2026-08-28T19:13:56Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: Plain license text only; no executable or malicious content found.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no security issues.
  - file: buildcache.patch
    status: safe
    summary: Standard patch for build cache correctness; no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR VCS package, no malicious behavior.
  - file: REUSE.toml
    status: safe
    summary: REUSE compliance metadata, no security concerns.
  - file: guard-invalid-ray-length.patch
    status: safe
    summary: Legitimate bug-fix patch for Spring engine; no malicious content.
---

Cloning https://aur.archlinux.org/recoil-engine.git...
Cloned recoil-engine
Analyzing recoil-engine AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's top-level scope contains only variable definitions and function declarations. The `pkgver()` function, which is executed during `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo`, makes a `curl` request to the official GitHub API (`https://api.github.com/repos/beyond-all-reason/RecoilEngine/releases`) and pipes the result to `jq` to extract the latest stable release tag. This is a standard, non-malicious practice for VCS-based packages that need to determine the latest version dynamically. The `source` array contains a git repository URL (with an optional tag or commit) and two patch files with verified checksums. There is no obfuscated code, no exfiltration of data, no downloading or execution of arbitrary code from untrusted sources, and no dangerous top-level command substitutions. The `--nobuild` and `--noprepare` flags prevent execution of the `prepare()`, `build()`, and `package()` functions, which are audited separately. The only code that runs during the requested commands is the `pkgver()` function, which is benign.
</details>
<evidence>
</evidence>
<summary>No malicious code executed during source fetch and pkgver().
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code executed during source fetch and pkgver().
Downloading sources (attempt 1/3)...
Retrying in 2s...
Downloading sources (attempt 2/3)...
Retrying in 4s...
Downloading sources (attempt 3/3)...
makepkg --nobuild could not fetch all upstream sources; continuing with the AUR repository files, which are the complete maintainer-controlled audit boundary. Downloaded-source facts are unavailable.

makepkg --nobuild could not fetch all upstream sources; continuing with the AUR repository files, which are the complete maintainer-controlled audit boundary. Downloaded-source facts are unavailable.
Reviewing the 6 file(s) in the AUR repository. No downloaded files are included in the review.
Reviewing the AUR repository's files...
[0/6] Reviewing .SRCINFO...
[0/6] Reviewing .SRCINFO, LICENSE...
[0/6] Reviewing .SRCINFO, LICENSE, PKGBUILD...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a plain text license file (ISC-style license attributed to Arch Linux Contributors). It contains no executable code, no network requests, no file operations, no obfuscated content, and no packaging logic. It is a standard permissive software license and poses no security risk.
</details>
<evidence></evidence>
<summary>Plain license text only; no executable or malicious content found.</summary>
</security_assessment>

[0/6] Reviewing .SRCINFO, LICENSE, PKGBUILD, REUSE.toml...
[1/6] Reviewing .SRCINFO, PKGBUILD, REUSE.toml...
+ Reviewed LICENSE. Status: SAFE -- Plain license text only; no executable or malicious content found.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is a standard AUR package metadata file. It defines the package `recoil-engine` with sources from the official upstream GitHub repository (`https://github.com/beyond-all-reason/RecoilEngine.git`) and two patch files with pinned sha256sums. The VCS source has `sha256sums = SKIP`, which is normal and required for git sources. There are no network requests, obfuscated code, or dangerous commands. All dependencies are standard libraries/tools for building a game engine. No evidence of malicious behavior.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata file, no security issues.</summary>
</security_assessment>

[1/6] Reviewing .SRCINFO, PKGBUILD, REUSE.toml, buildcache.patch...
[2/6] Reviewing PKGBUILD, REUSE.toml, buildcache.patch...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no security issues.
LLM auditresponse for buildcache.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a conventional source code patch for the Spring RTS engine. It adds a missing hash combine to prevent cache collisions for buildings with different footprints at the same position, and adds a safety check with logging if the cached status buffer is too small. No network requests, obfuscation, or system-level modifications are present. The changes improve correctness and safety of the application, and are entirely appropriate for their intended purpose.
</details>
<evidence></evidence>
<summary>Standard patch for build cache correctness; no malicious content.</summary>
</security_assessment>

[2/6] Reviewing PKGBUILD, REUSE.toml, buildcache.patch, guard-invalid-ray-length.patch...
[3/6] Reviewing PKGBUILD, REUSE.toml, guard-invalid-ray-length.patch...
+ Reviewed buildcache.patch. Status: SAFE -- Standard patch for build cache correctness; no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard Arch User Repository package for the Recoil Engine RTS game engine. All source code is fetched from the official upstream GitHub repository (`github.com/beyond-all-reason/RecoilEngine`). The `pkgver()` function uses `curl` to query the GitHub API for the latest stable release tag, which is a common pattern for VCS packages that track releases. The retrieved tag is then used in `build()` for `git checkout`, which is the intended mechanism. The build process applies two pinned patches with valid SHA-256 checksums, runs the upstream CMake/Ninja build system, and installs files into the package directory. No obfuscated commands, no unexpected network destinations, no data exfiltration, and no execution of untrusted code are present. The behaviour is consistent with legitimate packaging practices.
</details>
<evidence>
</evidence>
<summary>Standard AUR VCS package, no malicious behavior.</summary>
</security_assessment>

[4/6] Reviewing REUSE.toml, guard-invalid-ray-length.patch...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR VCS package, no malicious behavior.
LLM auditresponse for REUSE.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a REUSE.toml configuration used to declare copyright and license information for a set of files in the package repository. It contains no executable code, no network requests, no file manipulation, and no obfuscated content. The file is purely declarative metadata and poses no security risk.
</details>
<evidence></evidence>
<summary>REUSE compliance metadata, no security concerns.</summary>
</security_assessment>

[5/6] Reviewing guard-invalid-ray-length.patch...
+ Reviewed REUSE.toml. Status: SAFE -- REUSE compliance metadata, no security concerns.
LLM auditresponse for guard-invalid-ray-length.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch is a standard defensive programming fix for the Spring engine (RecoilEngine fork). It guards against invalid ray lengths (NaN or negative) that could cause crashes in hardened builds. The changes include adding necessary headers (`&lt;cmath&gt;` and `&lt;Log/ILog.h&gt;`) and implementing validation checks that clamp invalid lengths to zero while logging an error. There is no evidence of malicious behavior: no network access, obfuscation, backdoors, or unexpected system modifications. The patch references a legitimate GitHub issue and follows normal packaging practices for source code patches.
</details>
<evidence>

</evidence>
<summary>Legitimate bug-fix patch for Spring engine; no malicious content.</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed guard-invalid-ray-length.patch. Status: SAFE -- Legitimate bug-fix patch for Spring engine; no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 23,749
  Completion Tokens: 3,259
  Total Tokens: 27,008
  Total Cost: $0.002627
  Execution Time: 68.34 seconds

Final Status: SAFE


No issues found.
