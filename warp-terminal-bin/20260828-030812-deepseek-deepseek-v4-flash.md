---
package: warp-terminal-bin
pkgver: 0.2026.08.26.17.59.stable_01
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 12720
completion_tokens: 1450
total_tokens: 14170
cost: 0.001384025720
execution_time: 39.47
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: ok
upstream_files: 151
upstream_named_files: 1
unpinned_sources: 0
date: 2026-08-28T03:08:11Z
file_verdicts:
  - file: LICENSE.txt
    status: safe
    summary: Plain text license file, no security issues.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore with no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Standard metadata with pinned sources; no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR binary package with pinned upstream sources and safe extraction/install logic.
---

Cloning https://aur.archlinux.org/warp-terminal-bin.git...
Cloned warp-terminal-bin
Analyzing warp-terminal-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD sources for the narrow gate only involve downloading files from the official `releases.warp.dev` domain and extracting archives. No top-level execution of suspicious commands occurs; the `package()` function is not run during `makepkg --nobuild --nodeps --noprepare`. Checksums are present (not `SKIP`), and there is no obfuscated code, unexpected network requests, or dangerous operations in the global scope. The file is consistent with standard AUR packaging for a prebuilt binary.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD, no malicious top-level code.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Standard PKGBUILD, no malicious top-level code.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: the PKGBUILD names 1 file(s) in the downloaded sources (src/usr/bin/warp-terminal); they are upstream content and were not reviewed.
Reviewing the 4 file(s) in the AUR repository. The 151 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .gitignore...
[0/4] Reviewing .SRCINFO, .gitignore, LICENSE.txt...
LLM auditresponse for LICENSE.txt:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a plain text license statement. It contains no executable code, no commands, no network requests, and no system modifications. It is purely informational, noting that Warp is currently closed-source and referencing a public GitHub discussion about potential open sourcing. There is no evidence of malicious or suspicious activity.</details>
<evidence></evidence>
<summary>Plain text license file, no security issues.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, .gitignore, LICENSE.txt, PKGBUILD...
[1/4] Reviewing .SRCINFO, .gitignore, PKGBUILD...
+ Reviewed LICENSE.txt. Status: SAFE -- Plain text license file, no security issues.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.gitignore` file contains only standard Git ignore patterns: `pkg/`, `src/`, `*.zst`, `*.AppImage`. These are all typical entries for AUR PKGBUILD repositories, where build artifacts are placed in `pkg/` and `src/` directories, and compressed archives or AppImage binaries are common output formats. There is no executable code, no network operations, no obfuscation, and no deviation from normal packaging practices.
</details>
<evidence></evidence>
<summary>Standard .gitignore with no security concerns.</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore with no security concerns.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file is purely metadata for the AUR package `warp-terminal-bin`. It declares the package name, version, dependencies, architecture, and sources with pinned SHA-256 checksums. All sources point to the official Warp releases domain (`releases.warp.dev`), which is the expected upstream. No embedded code, no obfuscation, no suspicious commands or network behavior. The checksums are provided and are not set to `SKIP`; they pin specific binary tarballs. There are no signs of supply-chain attack or malicious intent.
</details>
<evidence></evidence>
<summary>Standard metadata with pinned sources; no malicious content.</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata with pinned sources; no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a prebuilt binary package. It fetches the upstream Warp terminal package from the official release host (`releases.warp.dev`), uses pinned versioned URLs with hardcoded SHA-256 checksums for all three source files (generic license plus per-architecture archives), and performs no downloads or executions outside of the declared upstream sources.

The `package()` function is routine: it extracts the downloaded `.pkg.tar.zst` archive with `bsdtar`, copies the contents into the package directory, installs the license file, and conditionally creates a convenience symlink for `warp-terminal`. There is no obfuscated code, no dynamic code execution, no network requests during build, no exfiltration of local data, and no modification of files outside the package installation path. The checksums are pinned and verified, so this is a well-maintained and safe packaging script.
</details>
<evidence>
</evidence>
<summary>
Standard AUR binary package with pinned upstream sources and safe extraction/install logic.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR binary package with pinned upstream sources and safe extraction/install logic.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,720
  Completion Tokens: 1,450
  Total Tokens: 14,170
  Total Cost: $0.001384
  Execution Time: 39.47 seconds

Final Status: SAFE


No issues found.
