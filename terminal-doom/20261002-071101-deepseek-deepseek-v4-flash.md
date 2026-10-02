---
package: terminal-doom
pkgver: 0.1.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 11898
completion_tokens: 2914
total_tokens: 14812
cost: 0.000744492
execution_time: 66.51
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-02T07:11:01Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with pinned sources and checksums; no malicious behavior found.
  - file: .gitignore
    status: safe
    summary: Standard AUR .gitignore with no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Legitimate Zig package build with pinned checksummed sources and a normal launcher; no malicious behavior found.
---

Materializing terminal-doom from local mirror...
Materialized terminal-doom
Analyzing terminal-doom AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The global/top-level scope of this PKGBUILD only contains variable assignments and function definitions (prepare, build, package). No command substitutions, backtick expressions, or function calls appear outside of function bodies, so sourcing this file to run `makepkg --printsrcinfo` would not execute any potentially malicious code. The `source`, `noextract`, and `sha256sums` arrays are simple literal assignments. There is no evidence of obfuscation, network requests, data exfiltration, or any executable payload in the global scope.
</details>
<evidence/>
<summary>No executable code in global scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No executable code in global scope.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, .gitignore...
[0/3] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is standard AUR package metadata (.SRCINFO). It declares the `terminal-doom` package, its homepage, supported architectures, dependencies, and four upstream source tarballs from the project's own GitHub repository and its declared dependencies (libvaxis, zigimg, uucode). All four sources use pinned commit/tag references and all four have concrete SHA-256 checksums, which is good packaging hygiene. The dependency `zig&gt;=0.16.0` is an ordinary versioned build dependency.

No suspicious network endpoints, encoded commands, file operations, or executable content are present. The file contains only declarative metadata; there is no code to execute. It does not fetch unchecked mutable refs, nor does it attempt to hide anything. This appears to be a legitimate AUR package definition.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata with pinned sources and checksums; no malicious behavior found.
</summary>
</security_assessment>

[1/3] Reviewing .gitignore, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with pinned sources and checksums; no malicious behavior found.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file for an AUR package repository. It sets a blanket ignore (`*`) and then whitelists specific file types and directories commonly found in AUR packages (PKGBUILD, .SRCINFO, install scripts, patches, config files, licenses, and various source code extensions). It also ignores build artifacts (`pkg/`, `src/`, `*.pkg.tar*`, `*.o`, `*.so*`, etc.). There are no executable commands, network requests, obfuscated code, or system modifications. The file is purely declarative and serves only to define git ignore rules. No security concerns are present.
</details>
<evidence></evidence>
<summary>Standard AUR .gitignore with no malicious content.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard AUR .gitignore with no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a straightforward Zig-based build package for the terminal-doom game. All source tarballs are fetched over HTTPS from GitHub from the project&apos;s own upstream or pinned dependency archives, and all are covered by fixed SHA-256 checksums. The `prepare()` and `build()` functions use `zig fetch` and `zig build` with a local cache directory, which is normal Zig build behavior.

The `package()` function installs the compiled binary, a WAD file, sound assets, documentation, licenses, and a simple `/bin/sh` launcher. The launcher only sets `DOOMWADDIR` and `exec`s the installed binary. There is no use of `eval`, `curl`, `wget`, `base64`, obfuscated commands, reverse shells, credential access, or unexpected file operations outside the package directory. The `sed` command adjusts sound asset paths inside the source tree, which is a normal packaging adjustment.

Overall, this PKGBUILD shows no evidence of injected or malicious behavior. It follows standard AUR packaging practices for a Zig project with pinned dependency tarballs and checksums.
</details>
<evidence>
</evidence>
<summary>
Legitimate Zig package build with pinned checksummed sources and a normal launcher; no malicious behavior found.
</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Legitimate Zig package build with pinned checksummed sources and a normal launcher; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 11,898
  Completion Tokens: 2,914
  Total Tokens: 14,812
  Total Cost: $0.000744
  Execution Time: 66.51 seconds

Final Status: SAFE


No issues found.
