---
package: ladybird
pkgver: 20260808
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 16464
completion_tokens: 2414
total_tokens: 18878
cost: 0.0018481456
execution_time: 344.59
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
source_fetch: ok
upstream_files: 40680
upstream_named_files: 5
unpinned_sources: 0
date: 2026-08-28T19:28:50Z
file_verdicts:
  - file: gcc-build.patch
    status: safe
    summary: Benign build patch adding a compiler warning suppression flag.
  - file: .SRCINFO
    status: safe
    summary: Metadata file, no executable or malicious content.
  - file: hb-fc-whole-archive.patch
    status: safe
    summary: Standard linker patch, no malicious behavior.
  - file: new-tab.patch
    status: safe
    summary: Benign HTML/CSS patch to the new-tab page; no security issues found.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD for Ladybird browser; no malicious code found.
---

Cloning https://aur.archlinux.org/ladybird.git...
Cloned ladybird
Analyzing ladybird AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only variable assignments and function definitions (prepare, build, package) that will not execute under `--nobuild --noprepare`. There is no top-level command substitution, no dangerous system calls, and no `pkgver()` function that might run untrusted code. The source array fetches from the official LadybirdBrowser GitHub repository and Microsoft's vcpkg repository, both legitimate upstreams. Patch files are pinned with SHA256 checksums. No exfiltration, backdoors, or obfuscated commands are present. Running the specified makepkg commands is safe.
</details>
<evidence></evidence>
<summary>Safe to fetch sources and source PKGBUILD.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe to fetch sources and source PKGBUILD.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: the PKGBUILD names 5 file(s) in the downloaded sources (src/ladybird/Base/res/ladybird/about-pages/newtab.html, src/ladybird/LICENSE, src/ladybird/Meta/CMake/compile_options.cmake and 2 more); they are upstream content and were not reviewed.
Reviewing the 5 file(s) in the AUR repository. The 40680 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, PKGBUILD...
[0/5] Reviewing .SRCINFO, PKGBUILD, gcc-build.patch...
LLM auditresponse for gcc-build.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a patch that adds `-Wno-restrict` to the C++ compile options in the Ladybird build system. It is a routine build compatibility change, likely intended to suppress a GCC warning/error related to the `-Werror` flag. There is no network activity, no obfuscation, no execution of downloaded code, and no modification of files outside the build configuration. This is standard packaging and build-system maintenance.
</details>
<evidence>
</evidence>
<summary>
Benign build patch adding a compiler warning suppression flag.</summary>
</security_assessment>

[0/5] Reviewing .SRCINFO, PKGBUILD, gcc-build.patch, hb-fc-whole-archive.patch...
[1/5] Reviewing .SRCINFO, PKGBUILD, hb-fc-whole-archive.patch...
+ Reviewed gcc-build.patch. Status: SAFE -- Benign build patch adding a compiler warning suppression flag.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a metadata file that describes the package sources, dependencies, and checksums. It contains no executable code. The sources are from the official upstream repositories (LadybirdBrowser and Microsoft vcpkg), and the patches are normal build patches with valid SHA256 checksums. The SKIP checksums on the git sources are standard for VCS sources in the AUR. There is no evidence of exfiltration, backdoors, or any malicious behavior. The content is purely descriptive and does not perform any actions.
</details>
<evidence></evidence>
<summary>Metadata file, no executable or malicious content.</summary>
</security_assessment>

[2/5] Reviewing PKGBUILD, hb-fc-whole-archive.patch...
+ Reviewed .SRCINFO. Status: SAFE -- Metadata file, no executable or malicious content.
[2/5] Reviewing PKGBUILD, hb-fc-whole-archive.patch, new-tab.patch...
LLM auditresponse for hb-fc-whole-archive.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch modifies the `CMakeLists.txt` for the Qt UI component of Ladybird to add linker flags `-Wl,--whole-archive harfbuzz fontconfig -Wl,--no-whole-archive`. This is a standard technique in packaging to force the linker to include all symbols from static libraries (harfbuzz and fontconfig) into the final binary, which is often necessary when those libraries are not directly referenced by the application but are needed for runtime behavior (e.g., font handling). There is no obfuscation, network access, code execution, or any behavior that deviates from legitimate packaging. The patch is straightforward and serves a clear technical purpose.
</details>
<evidence></evidence>
<summary>Standard linker patch, no malicious behavior.</summary>
</security_assessment>

[3/5] Reviewing PKGBUILD, new-tab.patch...
+ Reviewed hb-fc-whole-archive.patch. Status: SAFE -- Standard linker patch, no malicious behavior.
LLM auditresponse for new-tab.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch modifies only the Ladybird browser's new-tab HTML page, replacing the inline style block with a light/dark theme and adding a simple informational card. The changes are static HTML/CSS and contain no scripts, network requests, file system access, command execution, or obfuscated content. The displayed text about a pinned commit and recommending the `ladybird-git` AUR package is UI copy consistent with packaging information and is not an indicator of malicious behavior.

There are no suspicious destinations, encoded payloads, or operations outside the scope of the application's own about page. The patch is a routine visual/content change to an upstream resource file and does not introduce any supply-chain risk.
</details>
<evidence>
</evidence>
<summary>
Benign HTML/CSS patch to the new-tab page; no security issues found.
</summary>
</security_assessment>

[4/5] Reviewing PKGBUILD...
+ Reviewed new-tab.patch. Status: SAFE -- Benign HTML/CSS patch to the new-tab page; no security issues found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for the Ladybird web browser. All source repositories are pinned to specific commits, and all patch files have valid checksums. The `prepare()` function applies patches using standard `patch` commands and performs a benign `sed` substitution to embed build metadata (commit hash and date) into a new-tab page—this is a common upstream practice. The build and install steps are standard CMake invocations with no suspicious file operations or network activity beyond fetching the declared sources. No obfuscated code, dangerous commands (eval, base64, curl, wget), exfiltration attempts, or backdoors are present. The use of `SKIP` checksums for VCS sources is normal and not a security issue.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD for Ladybird browser; no malicious code found.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD for Ladybird browser; no malicious code found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 16,464
  Completion Tokens: 2,414
  Total Tokens: 18,878
  Total Cost: $0.001848
  Execution Time: 344.59 seconds

Final Status: SAFE


No issues found.
