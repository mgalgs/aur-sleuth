---
package: obs-advanced-scene-switcher
pkgver: 1.36.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 17935
completion_tokens: 3312
total_tokens: 21247
cost: 0.0021317212
execution_time: 85.5
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
source_fetch: ok
upstream_files: 2259
upstream_named_files: 2
unpinned_sources: 0
date: 2026-08-28T19:07:59Z
file_verdicts:
  - file: DetectLibraryType.cmake
    status: safe
    summary: Standard CMake function, no security issues.
  - file: FindTesseract.cmake
    status: safe
    summary: Standard CMake find module; no security issues.
  - file: FindLeptonica.cmake
    status: safe
    summary: Standard CMake finder module with no malicious behavior.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no malicious content detected.
  - file: PKGBUILD
    status: safe
    summary: No malicious code detected; PKGBUILD is safe.
---

Cloning https://aur.archlinux.org/obs-advanced-scene-switcher.git...
Cloned obs-advanced-scene-switcher
Analyzing obs-advanced-scene-switcher AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only variable assignments and function definitions at the top level. No command substitutions, backtick executions, or function calls are present outside of `prepare()`, `build()`, or `package()`, which are not executed by `makepkg --nobuild --nodeps --noprepare` or `makepkg --printsrcinfo`. The source array uses git+https URLs to fetch from the project’s own GitHub repository and a related library, plus three cmake files from a separate upstream (crow-translate). All sources are fetched over HTTPS from well-known hosts (github.com). The single `SKIP` checksum is acceptable for VCS sources and does not represent a threat for this narrow gate. No obfuscated or dangerous top-level code is present.
</details>
<evidence></evidence>
<summary>Top-level code is benign; only fetch and parse.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level code is benign; only fetch and parse.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: the PKGBUILD names 2 file(s) in the downloaded sources (src/obs-advanced-scene-switcher/cmake/common/advss_helpers.cmake, src/obs-advanced-scene-switcher/plugins/video/CMakeLists.txt); they are upstream content and were not reviewed.
Reviewing the 5 file(s) in the AUR repository. The 2259 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, DetectLibraryType.cmake...
[0/5] Reviewing .SRCINFO, DetectLibraryType.cmake, FindLeptonica.cmake...
LLM auditresponse for DetectLibraryType.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This CMake file defines a utility function `detect_library_type` that determines whether a given library file is shared (DLL/import library) or static. It uses standard CMake commands (`execute_process`, `find_program`, `string` operations) and the MSVC `dumpbin` tool to inspect library headers. There is no network activity, no obfuscated code, no file writing, and no execution of arbitrary or untrusted content. The function operates entirely on the provided library path and returns results via CMake variable scoping. This is a normal, benign build system helper with no security concerns.</details>
<evidence></evidence>
<summary>Standard CMake function, no security issues.</summary>
</security_assessment>

[0/5] Reviewing .SRCINFO, DetectLibraryType.cmake, FindLeptonica.cmake, FindTesseract.cmake...
[1/5] Reviewing .SRCINFO, FindLeptonica.cmake, FindTesseract.cmake...
+ Reviewed DetectLibraryType.cmake. Status: SAFE -- Standard CMake function, no security issues.
LLM auditresponse for FindTesseract.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard CMake find module for locating the Tesseract OCR library. It uses typical CMake commands such as `find_package`, `pkg_check_modules`, `find_path`, `find_library`, and `target_link_libraries`. It correctly depends on Leptonica. There is no obfuscated code, no unexpected network requests, no system modification attempts, and no use of dangerous commands like `eval`, `curl`, or `wget`. The code follows standard packaging practices for a CMake find module and does not exhibit any signs of malicious or suspicious behavior.
</details>
<evidence></evidence>
<summary>Standard CMake find module; no security issues.</summary>
</security_assessment>

[2/5] Reviewing .SRCINFO, FindLeptonica.cmake...
+ Reviewed FindTesseract.cmake. Status: SAFE -- Standard CMake find module; no security issues.
[2/5] Reviewing .SRCINFO, FindLeptonica.cmake, PKGBUILD...
LLM auditresponse for FindLeptonica.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard CMake finder module for the Leptonica library, used as a dependency for Tesseract in the obs-advanced-scene-switcher project. It performs typical CMake operations: finding headers and libraries via pkg-config and standard find commands, creating an imported target, and conditionally linking additional dependencies when the library is static. There is no obfuscated code, no network requests to unexpected hosts, no dangerous command execution (eval, curl, wget, base64), and no system modifications outside of normal CMake packaging practices. The file is consistent with legitimate CMake module authorship and contains no evidence of malicious intent.
</details>
<evidence>
</evidence>
<summary>Standard CMake finder module with no malicious behavior.</summary>
</security_assessment>

[3/5] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed FindLeptonica.cmake. Status: SAFE -- Standard CMake finder module with no malicious behavior.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is a standard AUR metadata document for the `obs-advanced-scene-switcher` package. It declares sources from the project&#x27;s own GitHub repository (tagged release), along with two auxiliary libraries (libremidi, cpp-httplib) from their upstream repos, and three local CMake detection files with pinned checksums.  

- All network sources point to legitimate GitHub repositories under their expected owners (WarmUpTill, celtera, yhirose).  
- The use of `SKIP` on `cpp-httplib` (a VCS source tracking a branch) is normal and not evidence of malice.  
- No download‑and‑execute patterns, obfuscated code, or references to external hosts beyond the package&#x27;s own upstream are present.  
- The file contains no executable logic and does not instruct any runtime behavior beyond describing package dependencies and build sources.  

There are no indicators of a supply‑chain attack. The packaging follows standard AUR conventions, and the contents are consistent with the stated purpose of the application.
</details>
<evidence></evidence>
<summary>Standard AUR metadata, no malicious content detected.</summary>
</security_assessment>

[4/5] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no malicious content detected.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR PKGBUILD for the obs-advanced-scene-switcher plugin. It fetches the main source and two submodules as local git repositories, then overrides the submodule URLs to point to the local copies (a common Arch practice to avoid network fetches and pin submodule versions). The prepare() function also applies normal sed patches to adapt CMakeLists.txt to system packages. The build() and package() functions use cmake with standard flags. No suspicious network requests (curl, wget), no obfuscated code, no exfiltration, no backdoors, and no unexpected system modifications. The SKIP checksum for the cpp-httplib source is a normal practice for VCS sources and does not indicate malice. The file is consistent with legitimate upstream packaging and contains no injected malicious operations.
</details>
<evidence></evidence>
<summary>No malicious code detected; PKGBUILD is safe.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- No malicious code detected; PKGBUILD is safe.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 17,935
  Completion Tokens: 3,312
  Total Tokens: 21,247
  Total Cost: $0.002132
  Execution Time: 85.50 seconds

Final Status: SAFE


No issues found.
