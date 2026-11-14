---
package: bambu-studio
pkgver: 2.9.1
pkgrel: 4
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 24738
completion_tokens: 4417
total_tokens: 29155
cost: 0.00302148
execution_time: 28.27
files_reviewed: 6
files_skipped: 5
maintainer_files: 11
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-14T20:11:07Z
file_verdicts:
  - file: 0001-src-slic3r-CMakeLists.txt-avoid-linking-to-the-depre.patch
    status: skipped
    summary: "Skipping binary file: 0001-src-slic3r-CMakeLists.txt-avoid-linking-to-the-depre.patch"
  - file: 0010-use-ffmpeg-provided-by-package-manager-and-avoid-bui.patch
    status: skipped
    summary: "Skipping binary file: 0010-use-ffmpeg-provided-by-package-manager-and-avoid-bui.patch"
  - file: 0011-use-libharu-provided-by-package-manager-revert-bambu.patch
    status: skipped
    summary: "Skipping binary file: 0011-use-libharu-provided-by-package-manager-revert-bambu.patch"
  - file: 0012-use-blosc-provided-by-package-manager-explicitly-lin.patch
    status: skipped
    summary: "Skipping binary file: 0012-use-blosc-provided-by-package-manager-explicitly-lin.patch"
  - file: 0013-patch-boost-locale-source-group-to-fix-failed-deps-b.patch
    status: skipped
    summary: "Skipping binary file: 0013-patch-boost-locale-source-group-to-fix-failed-deps-b.patch"
  - file: BambuStudio.desktop
    status: safe
    summary: Standard .desktop file, no security issues.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file, no security issues.
  - file: FindBlosc.cmake
    status: safe
    summary: Standard CMake find module, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD for BambuStudio, no malicious content.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file; no malicious content found.
  - file: cgal-fix-boost-mpl-include.patch
    status: safe
    summary: Innocuous patch adding a single include.
---

Materializing bambu-studio from local mirror...
Materialized bambu-studio
Analyzing bambu-studio AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only variable declarations and function definitions in its global/top-level scope. No command substitutions, `eval`, `curl`, `wget`, or other dangerous constructs are executed during sourcing. The `source` array and `sha256sums` are simple string assignments; SKIP checksums are harmless at this stage. The `prepare()`, `build()`, and `package()` functions are not executed by `makepkg --printsrcinfo`. Therefore, running this command poses no security risk.
</details>
<evidence></evidence>
<summary>No top-level code execution risk.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level code execution risk.
Reviewing the 11 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/11] Reviewing .SRCINFO...
[0/11] Reviewing .SRCINFO, 0001-src-slic3r-CMakeLists.txt-avoid-linking-to-the-depre.patch...
[0/11] Reviewing .SRCINFO, 0001-src-slic3r-CMakeLists.txt-avoid-linking-to-the-depre.patch, .gitignore...
[0/11] Reviewing .SRCINFO, 0001-src-slic3r-CMakeLists.txt-avoid-linking-to-the-depre.patch, .gitignore, 0010-use-ffmpeg-provided-by-package-manager-and-avoid-bui.patch...
[1/11] Reviewing .SRCINFO, .gitignore, 0010-use-ffmpeg-provided-by-package-manager-and-avoid-bui.patch...
! Reviewed 0001-src-slic3r-CMakeLists.txt-avoid-linking-to-the-depre.patch. Status: SKIPPED -- Skipping binary file: 0001-src-slic3r-CMakeLists.txt-avoid-linking-to-the-depre.patch
[1/11] Reviewing .SRCINFO, .gitignore, 0010-use-ffmpeg-provided-by-package-manager-and-avoid-bui.patch, 0011-use-libharu-provided-by-package-manager-revert-bambu.patch...
[2/11] Reviewing .SRCINFO, .gitignore, 0011-use-libharu-provided-by-package-manager-revert-bambu.patch...
! Reviewed 0010-use-ffmpeg-provided-by-package-manager-and-avoid-bui.patch. Status: SKIPPED -- Skipping binary file: 0010-use-ffmpeg-provided-by-package-manager-and-avoid-bui.patch
[2/11] Reviewing .SRCINFO, .gitignore, 0011-use-libharu-provided-by-package-manager-revert-bambu.patch, 0012-use-blosc-provided-by-package-manager-explicitly-lin.patch...
[3/11] Reviewing .SRCINFO, .gitignore, 0012-use-blosc-provided-by-package-manager-explicitly-lin.patch...
! Reviewed 0011-use-libharu-provided-by-package-manager-revert-bambu.patch. Status: SKIPPED -- Skipping binary file: 0011-use-libharu-provided-by-package-manager-revert-bambu.patch
[3/11] Reviewing .SRCINFO, .gitignore, 0012-use-blosc-provided-by-package-manager-explicitly-lin.patch, 0013-patch-boost-locale-source-group-to-fix-failed-deps-b.patch...
[4/11] Reviewing .SRCINFO, .gitignore, 0013-patch-boost-locale-source-group-to-fix-failed-deps-b.patch...
! Reviewed 0012-use-blosc-provided-by-package-manager-explicitly-lin.patch. Status: SKIPPED -- Skipping binary file: 0012-use-blosc-provided-by-package-manager-explicitly-lin.patch
[4/11] Reviewing .SRCINFO, .gitignore, 0013-patch-boost-locale-source-group-to-fix-failed-deps-b.patch, BambuStudio.desktop...
[5/11] Reviewing .SRCINFO, .gitignore, BambuStudio.desktop...
! Reviewed 0013-patch-boost-locale-source-group-to-fix-failed-deps-b.patch. Status: SKIPPED -- Skipping binary file: 0013-patch-boost-locale-source-group-to-fix-failed-deps-b.patch
LLM auditresponse for BambuStudio.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Freedesktop.org `.desktop` file that registers the application icon, executable, MIME types, and URL scheme handler. It contains no executable code, no network requests, no obfuscation, and no system modification operations. The file is purely declarative metadata and follows expected packaging practices.
</details>
<evidence></evidence>
<summary>Standard .desktop file, no security issues.</summary>
</security_assessment>

[5/11] Reviewing .SRCINFO, .gitignore, BambuStudio.desktop, FindBlosc.cmake...
[6/11] Reviewing .SRCINFO, .gitignore, FindBlosc.cmake...
+ Reviewed BambuStudio.desktop. Status: SAFE -- Standard .desktop file, no security issues.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.gitignore` file contains only standard gitignore patterns for build artifacts typically produced during AUR package building (e.g., `src/`, `pkg/`, `*.log`, `*.pkg.tar*`, and a specific tarball). There is no executable code, no network requests, no obfuscation, and no commands that could be used in a supply-chain attack. The file serves solely to prevent accidental inclusion of build outputs in version control.
</details>
<evidence>
</evidence>
<summary>Standard .gitignore file, no security issues.</summary>
</security_assessment>

[7/11] Reviewing .SRCINFO, FindBlosc.cmake...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore file, no security issues.
[7/11] Reviewing .SRCINFO, FindBlosc.cmake, PKGBUILD...
LLM auditresponse for FindBlosc.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard CMake find module for the Blosc compression library. It uses conventional CMake commands (`find_path`, `find_library`, `file(STRINGS)`) to locate headers and libraries on the system, extract version information, and define an imported target. No network requests, obfuscated code, file exfiltration, backdoors, or other supply-chain attack indicators are present. The module follows normal packaging practices and does nothing beyond its intended purpose of locating an installed dependency.
</details>
<evidence></evidence>
<summary>Standard CMake find module, no security issues.</summary>
</security_assessment>

[7/11] Reviewing .SRCINFO, FindBlosc.cmake, PKGBUILD, cgal-fix-boost-mpl-include.patch...
[8/11] Reviewing .SRCINFO, PKGBUILD, cgal-fix-boost-mpl-include.patch...
+ Reviewed FindBlosc.cmake. Status: SAFE -- Standard CMake find module, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Arch Linux packaging practices for a complex application (BambuStudio). The source tarball is pinned to a specific upstream tag with a SHA256 checksum. Other sources are either local patches (SKIP checksums are normal for such files) or fetched from the project's own GitHub repository or a trusted raw.githubusercontent.com URL. The build process uses cmake, make, and standard install commands. There is no obfuscated code, no unexpected network requests, no execution of untrusted fetched content, and no exfiltration of system data. All actions are limited to building and installing the package into the specified directories (`$pkgdir`). No supply-chain attack indicators are present.
</details>
<evidence>
</evidence>
<summary>Standard PKGBUILD for BambuStudio, no malicious content.</summary>
</security_assessment>

[9/11] Reviewing .SRCINFO, cgal-fix-boost-mpl-include.patch...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD for BambuStudio, no malicious content.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR `.SRCINFO` metadata file for the `bambu-studio` package. It defines the package name, version, dependencies, and a list of source files (tarball, patches, desktop file, and a cmake module) with checksums. The use of `SKIP` for several checksums is a common AUR practice for patches and files that are expected to change or are not versioned. The external source `FindBlosc.cmake` is pulled from the official OpenVDB repository at a pinned version, which is a legitimate dependency. There are no embedded commands, obfuscated strings, or suspicious network destinations beyond the package's own upstream repository and a well-known software foundation URL. No evidence of malicious behavior such as data exfiltration, backdoors, or execution of attacker-controlled code is present.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file; no malicious content found.</summary>
</security_assessment>

[10/11] Reviewing cgal-fix-boost-mpl-include.patch...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file; no malicious content found.
LLM auditresponse for cgal-fix-boost-mpl-include.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch file modifies a single line in the CGAL library's `number_utils.h` to add an `#include &lt;boost/mpl/if.hpp&gt;` directive. It contains no executable code, no network requests, no file operations, and no obfuscation. The change appears to be a compatibility fix for building the CGAL library within the bambu-studio package. Adding an include directive is a standard packaging/upstream patch and does not, by itself, constitute malicious behavior. There is no evidence of data exfiltration, remote code execution, backdoors, or any deviation from normal build-time patches.
</details>
<evidence></evidence>
<summary>Innocuous patch adding a single include.</summary>
</security_assessment>

[11/11] Reviewing ...
+ Reviewed cgal-fix-boost-mpl-include.patch. Status: SAFE -- Innocuous patch adding a single include.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
(Skipped 5 files: 0001-src-slic3r-CMakeLists.txt-avoid-linking-to-the-depre.patch, 0010-use-ffmpeg-provided-by-package-manager-and-avoid-bui.patch, 0011-use-libharu-provided-by-package-manager-revert-bambu.patch, 0012-use-blosc-provided-by-package-manager-explicitly-lin.patch, 0013-patch-boost-locale-source-group-to-fix-failed-deps-b.patch)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 24,738
  Completion Tokens: 4,417
  Total Tokens: 29,155
  Total Cost: $0.003021
  Execution Time: 28.27 seconds

Final Status: SAFE


No issues found.


Audit Skips:

0001-src-slic3r-CMakeLists.txt-avoid-linking-to-the-depre.patch: [SKIPPED] Skipping binary file: 0001-src-slic3r-CMakeLists.txt-avoid-linking-to-the-depre.patch

0010-use-ffmpeg-provided-by-package-manager-and-avoid-bui.patch: [SKIPPED] Skipping binary file: 0010-use-ffmpeg-provided-by-package-manager-and-avoid-bui.patch

0011-use-libharu-provided-by-package-manager-revert-bambu.patch: [SKIPPED] Skipping binary file: 0011-use-libharu-provided-by-package-manager-revert-bambu.patch

0012-use-blosc-provided-by-package-manager-explicitly-lin.patch: [SKIPPED] Skipping binary file: 0012-use-blosc-provided-by-package-manager-explicitly-lin.patch

0013-patch-boost-locale-source-group-to-fix-failed-deps-b.patch: [SKIPPED] Skipping binary file: 0013-patch-boost-locale-source-group-to-fix-failed-deps-b.patch
