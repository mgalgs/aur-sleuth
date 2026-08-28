---
package: python-docling-parse
pkgver: 7.16.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 33547
completion_tokens: 3677
total_tokens: 37224
cost: 0.003624074006
execution_time: 53.36
files_reviewed: 9
files_skipped: 0
maintainer_files: 9
source_fetch: ok
upstream_files: 1459
upstream_named_files: 8
unpinned_sources: 0
date: 2026-08-28T11:36:21Z
file_verdicts:
  - file: CHROMIUM-LICENSE
    status: safe
    summary: Standard license file, no security concerns.
  - file: LICENSE
    status: safe
    summary: License file only; no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard package metadata, no security issues identified.
  - file: PDFIUM-LICENSE
    status: safe
    summary: Standard license file; no security concerns.
  - file: pyproject_toml_dep.patch
    status: safe
    summary: Patch comments out build dependencies; no malicious behavior.
  - file: reproducible_paths.patch
    status: safe
    summary: Build configuration patch adding optional root path override; no security concerns.
  - file: skip_uninstalled_apps.patch
    status: safe
    summary: Patch is a standard build configuration change, no security issues.
  - file: system_deps.patch
    status: safe
    summary: Patch for CMake system dependency handling is safe.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with pinned sources and no malicious content.
---

Cloning https://aur.archlinux.org/python-docling-parse.git...
Cloned python-docling-parse
Analyzing python-docling-parse AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable assignments, arrays, and function definitions. No code executes at top-level scope or in a `pkgver()` function (which is not present). The `source` array consists of trusted URLs (Python Package Index and GitHub archive tarballs) along with local patch files and license files. All source entries have valid b2sums checksums. There are no dangerous commands, obfuscated code, or unexpected network requests. The `prepare()`, `build()`, `check()`, and `package()` functions are defined but not executed by the requested commands (`makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo`). Therefore, running these commands is safe.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD, no dangerous top-level code.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Standard PKGBUILD, no dangerous top-level code.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: the PKGBUILD names 8 file(s) in the downloaded sources (src/docling_parse-7.16.0/docling_parse/pdf_resources/cmap-resources/LICENSE.md, src/docling_parse-7.16.0/tests/test_unit_actual_text.py, src/docling_parse-7.16.0/tests/test_unit_cmap_encoding.py and 5 more); they are upstream content and were not reviewed.
Reviewing the 9 file(s) in the AUR repository. The 1459 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/9] Reviewing .SRCINFO...
[0/9] Reviewing .SRCINFO, CHROMIUM-LICENSE...
[0/9] Reviewing .SRCINFO, CHROMIUM-LICENSE, LICENSE...
LLM auditresponse for CHROMIUM-LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard license file (BSD-style license) from the Chromium project. It contains no executable code, no network requests, no obfuscation, and no system modifications. It is purely a textual copyright and license notice, which is a normal and expected component of many open-source packages. No security issues are present.</details>
<evidence></evidence>
<summary>Standard license file, no security concerns.</summary>
</security_assessment>

[0/9] Reviewing .SRCINFO, CHROMIUM-LICENSE, LICENSE, PDFIUM-LICENSE...
[1/9] Reviewing .SRCINFO, LICENSE, PDFIUM-LICENSE...
+ Reviewed CHROMIUM-LICENSE. Status: SAFE -- Standard license file, no security concerns.
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard BSD Zero Clause License text. It contains no executable code, no network requests, no obfuscation, and no instructions of any kind. It is purely a legal document included with the package. There is no evidence of malicious or dangerous behavior.
</details>
<evidence>

</evidence>
<summary>License file only; no security issues.</summary>
</security_assessment>

[1/9] Reviewing .SRCINFO, LICENSE, PDFIUM-LICENSE, PKGBUILD...
[2/9] Reviewing .SRCINFO, PDFIUM-LICENSE, PKGBUILD...
+ Reviewed LICENSE. Status: SAFE -- License file only; no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a metadata file describing the AUR package. It contains no executable code, commands, or scripts. All sources are from expected origins (PyPI and GitHub), and checksums (b2sums) are provided and not set to SKIP. There are no suspicious network requests, obfuscated strings, or dangerous operations. The dependencies and patches are standard for a Python package that bundles C++ libraries for PDF parsing. No supply-chain attack indicators are present.
</details>
<evidence></evidence>
<summary>Standard package metadata, no security issues identified.</summary>
</security_assessment>

[2/9] Reviewing .SRCINFO, PDFIUM-LICENSE, PKGBUILD, pyproject_toml_dep.patch...
[3/9] Reviewing PDFIUM-LICENSE, PKGBUILD, pyproject_toml_dep.patch...
+ Reviewed .SRCINFO. Status: SAFE -- Standard package metadata, no security issues identified.
LLM auditresponse for PDFIUM-LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard license file containing the PDFium copyright notice (BSD-style) and the full text of the Apache License 2.0. It contains no executable code, network requests, obfuscation, or system-modifying instructions. The content is purely legal text used to document the licensing terms of the PDFium library, which is a normal and expected part of any software distribution. There are no security concerns.
</details>
<evidence></evidence>
<summary>Standard license file; no security concerns.</summary>
</security_assessment>

[3/9] Reviewing PDFIUM-LICENSE, PKGBUILD, pyproject_toml_dep.patch, reproducible_paths.patch...
[4/9] Reviewing PKGBUILD, pyproject_toml_dep.patch, reproducible_paths.patch...
+ Reviewed PDFIUM-LICENSE. Status: SAFE -- Standard license file; no security concerns.
LLM auditresponse for pyproject_toml_dep.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a patch file that modifies the `pyproject.toml` of an upstream package. It comments out three build dependencies (`cibuildwheel` for Python &gt;= 3.11, `delocate`, and `cmake` with a version constraint) and removes the upper bound on `cmake`. These changes are standard packaging adjustments to avoid unnecessary build tools or to relax version constraints for the AUR environment. There is no code execution, no network requests, no obfuscation, and no indication of a supply-chain attack. The patch is benign and consistent with normal AUR maintenance practices.
</details>
<evidence></evidence>
<summary>Patch comments out build dependencies; no malicious behavior.</summary>
</security_assessment>

[4/9] Reviewing PKGBUILD, pyproject_toml_dep.patch, reproducible_paths.patch, skip_uninstalled_apps.patch...
[5/9] Reviewing PKGBUILD, reproducible_paths.patch, skip_uninstalled_apps.patch...
+ Reviewed pyproject_toml_dep.patch. Status: SAFE -- Patch comments out build dependencies; no malicious behavior.
LLM auditresponse for reproducible_paths.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard CMake build-system patch for the docling-parse package. It introduces an optional `DOCLING_PARSE_ROOT_PATH` variable so that the `ROOT_PATH` compile definition can be overridden at build time, defaulting to the existing `TOPLEVEL_PREFIX_PATH` behavior. There are no network requests, no encoded or obfuscated commands, no file system modifications beyond normal build configuration, and no execution of external code. The change is consistent with ordinary packaging and build configuration practices and shows no evidence of injected malicious behavior.
</details>
<evidence>
</evidence>
<summary>
Build configuration patch adding optional root path override; no security concerns.</summary>
</security_assessment>

[5/9] Reviewing PKGBUILD, reproducible_paths.patch, skip_uninstalled_apps.patch, system_deps.patch...
[6/9] Reviewing PKGBUILD, skip_uninstalled_apps.patch, system_deps.patch...
+ Reviewed reproducible_paths.patch. Status: SAFE -- Build configuration patch adding optional root path override; no security concerns.
LLM auditresponse for skip_uninstalled_apps.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard patch file that modifies build configuration. It adds `EXCLUDE_FROM_ALL` to several `add_executable` calls, which is a common CMake practice to prevent certain targets from being built by default. The patch is well-named and matches its purpose (skip uninstalled apps). There is no evidence of malicious or dangerous behavior: no network requests, no obfuscated code, no file operations, no system modifications, and no deviation from standard packaging practices.
</details>
<evidence></evidence>
<summary>Patch is a standard build configuration change, no security issues.</summary>
</security_assessment>

[7/9] Reviewing PKGBUILD, system_deps.patch...
+ Reviewed skip_uninstalled_apps.patch. Status: SAFE -- Patch is a standard build configuration change, no security issues.
LLM auditresponse for system_deps.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
The patch modifies CMake modules to use local source directories for AsmJit, Blend2D, Loguru, and utf8cpp when `USE_SYSTEM_DEPS` is enabled. It adds checks for user-defined variables (e.g., `DOCLING_PARSE_BLEND2D_SOURCE_DIR`) and uses `add_subdirectory` to include those sources. There is no obfuscated code, no network requests, no downloads, no execution of external binaries, and no attempts to exfiltrate data. The changes are consistent with standard AUR packaging practices for building with system dependencies. No evidence of malicious or supply-chain attack behavior.
</details>
<evidence>
</evidence>
<summary>Patch for CMake system dependency handling is safe.</summary>
</security_assessment>

[8/9] Reviewing PKGBUILD...
+ Reviewed system_deps.patch. Status: SAFE -- Patch for CMake system dependency handling is safe.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard AUR packaging file for the `python-docling-parse` package. All sources are obtained from the official upstream (PyPI and GitHub) with pinned commit hashes and full BLAKE2 checksums. The build process applies local patches (shipped within the AUR source array), uses standard Python build and install tools (`python -m build`, `python -m installer`), and copies licenses from system dependency packages. There are no suspicious network requests, no use of dangerous commands like `eval`, `curl`, `wget`, `base64`, or any obfuscated code. The file contains no exfiltration, backdoors, or unexpected system modifications. It follows standard Arch packaging practices and does not exhibit any malicious behavior.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with pinned sources and no malicious content.</summary>
</security_assessment>

[9/9] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with pinned sources and no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 33,547
  Completion Tokens: 3,677
  Total Tokens: 37,224
  Total Cost: $0.003624
  Execution Time: 53.36 seconds

Final Status: SAFE


No issues found.
