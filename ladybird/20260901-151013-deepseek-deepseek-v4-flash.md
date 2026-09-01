---
package: ladybird
pkgver: 20260901
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: b9e20f728bbe0de1871ebaca31738c802edc31f8
prompt_tokens: 16347
completion_tokens: 2793
total_tokens: 19140
cost: 0.00170726472
execution_time: 355.71
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
source_fetch: ok
upstream_files: 43394
upstream_named_files: 6
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-01T15:10:10Z
file_verdicts:
  - file: gcc-build.patch
    status: safe
    summary: Benign build patch; no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Metadata-only file with no executable or malicious content.
  - file: hb-fc-whole-archive.patch
    status: safe
    summary: Legitimate build patch, no malicious content.
  - file: new-tab.patch
    status: safe
    summary: Patch contains only cosmetic HTML/CSS changes, no malicious behavior.
  - file: PKGBUILD
    status: safe
    summary: Clean PKGBUILD with pinned sources and standard practices.
---

Cloning https://aur.archlinux.org/ladybird.git...
Cloned ladybird
Analyzing ladybird AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only variable assignments and array definitions in the global scope. There is no `pkgver()` function defined, and no command substitutions, eval, or dangerous operations that would execute during sourcing. The `source` array fetches the upstream ladybird repository, the vcpkg dependency, and three patch files from the AUR – all standard and expected. The `prepare()`, `build()`, and `package()` functions are not executed by `makepkg --nobuild --nodeps --noprepare` or `makepkg --printsrcinfo`. No malicious code is present in the top-level scope or `pkgver()`, so running these commands is safe.
</details>
<evidence>
</evidence>
<summary>Sourcing and fetching sources is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Sourcing and fetching sources is safe.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: the PKGBUILD names 6 file(s) in the downloaded sources (src/ladybird/Base/res/ladybird/about-pages/newtab.html, src/ladybird/LICENSE, src/ladybird/Meta/CMake/compile_options.cmake and 3 more); they are upstream content and were not reviewed.
Reviewing the 5 file(s) in the AUR repository. The 43394 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, PKGBUILD...
[0/5] Reviewing .SRCINFO, PKGBUILD, gcc-build.patch...
LLM auditresponse for gcc-build.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
The patch adds a single compiler flag `-Wno-restrict` to suppress a GCC warning about restrict qualifiers. This is a standard build-system adjustment, not malicious. No network activity, obfuscation, or system modification is present.
</details>
<evidence></evidence>
<summary>Benign build patch; no security concerns.</summary>
</security_assessment>

[0/5] Reviewing .SRCINFO, PKGBUILD, gcc-build.patch, hb-fc-whole-archive.patch...
[1/5] Reviewing .SRCINFO, PKGBUILD, hb-fc-whole-archive.patch...
+ Reviewed gcc-build.patch. Status: SAFE -- Benign build patch; no security concerns.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a metadata-only file for the AUR package. It contains no executable code, no obfuscated strings, no file operations, and no network requests. All sources point to legitimate upstream repositories (LadybirdBrowser/ladybird and microsoft/vcpkg) with pinned commits. The three patches have proper SHA256 checksums; the VCS sources correctly use `SKIP` for checksums. There are no unexpected or suspicious entries. The file adheres to standard AUR packaging practices with nothing malicious or anomalous.
</details>
<evidence></evidence>
<summary>Metadata-only file with no executable or malicious content.</summary>
</security_assessment>

[1/5] Reviewing .SRCINFO, PKGBUILD, hb-fc-whole-archive.patch, new-tab.patch...
[2/5] Reviewing PKGBUILD, hb-fc-whole-archive.patch, new-tab.patch...
+ Reviewed .SRCINFO. Status: SAFE -- Metadata-only file with no executable or malicious content.
LLM auditresponse for hb-fc-whole-archive.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a patch that modifies the CMakeLists.txt for the Qt UI component of the ladybird project. It adds `-Wl,--whole-archive harfbuzz fontconfig -Wl,--no-whole-archive` to the linker flags for the `ladybird` target. This is an upstream build system change that forces the linker to include all symbols from the harfbuzz and fontconfig static libraries. While using `--whole-archive` in this way is somewhat unusual, it is a legitimate linker technique to ensure all object code is pulled in, often needed when libraries contain global initializers or when symbol resolution would otherwise drop unreferenced sections. There is no obfuscation, network access, data exfiltration, or execution of untrusted code. This patch is consistent with standard packaging practices and does not exhibit any supply chain attack indicators.
</details>
<evidence></evidence>
<summary>Legitimate build patch, no malicious content.</summary>
</security_assessment>

[3/5] Reviewing PKGBUILD, new-tab.patch...
+ Reviewed hb-fc-whole-archive.patch. Status: SAFE -- Legitimate build patch, no malicious content.
LLM auditresponse for new-tab.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch solely modifies the appearance and content of the Ladybird browser's new tab page. It adds CSS variables for light/dark themes, a styled card layout, and an informational message about the build commit. No network requests, external resource fetches, obfuscated code, or system modifications are introduced. The text references the pinned commit and recommends the ladybird-git AUR package, but this is simply an informational message and not an attempt to execute code or exfiltrate data. The patch is consistent with standard packaging and upstream UI improvements.</details>
<evidence></evidence>
<summary>Patch contains only cosmetic HTML/CSS changes, no malicious behavior.</summary>
</security_assessment>

[4/5] Reviewing PKGBUILD...
+ Reviewed new-tab.patch. Status: SAFE -- Patch contains only cosmetic HTML/CSS changes, no malicious behavior.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR practices for a complex C++ project using vcpkg as its dependency manager. All source locations are pinned to specific commits (the main ladybird repository and the vcpkg repository), and the three local patches have verified SHA-256 checksums. The `bootstrap-vcpkg.sh` call fetches packages from the pinned vcpkg repository, which is the expected behaviour and not a supply-chain risk. There is no obfuscated code, no execution of externally fetched scripts (e.g. curl|bash), no data exfiltration, and no unexpected file operations beyond the normal build and install steps. The only network operations are cloning the two pinned git repositories and running the vcpkg bootstrap against the pinned version – both are legitimate and transparent.
</details>
<evidence></evidence>
<summary>Clean PKGBUILD with pinned sources and standard practices.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Clean PKGBUILD with pinned sources and standard practices.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 16,347
  Completion Tokens: 2,793
  Total Tokens: 19,140
  Total Cost: $0.001707
  Execution Time: 355.71 seconds

Final Status: SAFE


No issues found.
