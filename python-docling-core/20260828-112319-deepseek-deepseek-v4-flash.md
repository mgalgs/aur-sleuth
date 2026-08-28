---
package: python-docling-core
pkgver: 2.92.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 11641
completion_tokens: 1758
total_tokens: 13399
cost: 0.001343001142
execution_time: 25.38
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: ok
upstream_files: 151
upstream_named_files: 7
unpinned_sources: 0
date: 2026-08-28T11:23:19Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: Standard license file, no security concerns.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR package, no malicious code found.
  - file: .SRCINFO
    status: safe
    summary: Standard metadata file, no malicious content.
---

Cloning https://aur.archlinux.org/python-docling-core.git...
Cloned python-docling-core
Analyzing python-docling-core AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable assignments, arrays, and function definitions in its global scope. There are no command substitutions, backticks, eval, or other code execution mechanisms that would run during `makepkg --nobuild --nodeps --noprepare` or `makepkg --printsrcinfo`. The source is a single HTTPS URL to PyPI with a valid BLAKE2b checksum. No `pkgver()` function exists. The `build()`, `check()`, and `package()` functions are defined but not executed during these commands. Therefore, fetching the source and parsing the PKGBUILD poses no security risk.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD, no malicious top-level code.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Standard PKGBUILD, no malicious top-level code.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: the PKGBUILD names 7 file(s) in the downloaded sources (src/docling_core-2.92.0/test/test_base.py, src/docling_core-2.92.0/test/test_deserializer_doclang_source_mapping.py, src/docling_core-2.92.0/test/test_doc_base.py and 4 more); they are upstream content and were not reviewed.
Reviewing the 3 file(s) in the AUR repository. The 151 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, LICENSE...
[0/3] Reviewing .SRCINFO, LICENSE, PKGBUILD...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard BSD Zero Clause License. It contains only legal text (license terms) and does not include any executable code, network requests, file operations, or other potentially dangerous content. There is no evidence of malicious or suspicious behavior.
</details>
<evidence>
</evidence>
<summary>Standard license file, no security concerns.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed LICENSE. Status: SAFE -- Standard license file, no security concerns.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD for `python-docling-core` follows standard Arch Linux packaging practices. The source is fetched from the official PyPI mirror with a valid BLAKE2 checksum, ensuring integrity. Build, check, and package functions use typical tools (`python -m build`, `pytest`, `python -m installer`). No unusual network requests, obfuscated code, or dangerous commands are present. All dependencies are declared appropriately. The file contains no evidence of supply-chain compromise or malicious behavior.
</details>
<evidence>
</evidence>
<summary>Standard AUR package, no malicious code found.</summary>
</security_assessment>

[2/3] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR package, no malicious code found.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file is a standard AUR metadata description for the `python-docling-core` package. It declares the package name, version, description, upstream URL, license, architecture, and dependencies (including optional ones). The source tarball is fetched from the official Python Package Index (PyPI) mirror (files.pythonhosted.org), which is the expected and trusted upstream distribution channel for Python packages. A BLAKE2b checksum (b2sums) is provided, allowing integrity verification of the downloaded tarball. There are no executable commands, no obfuscated content, no network requests to unexpected hosts, and no deviations from standard packaging practices. The file is purely declarative and contains no security concerns.
</details>
<evidence></evidence>
<summary>Standard metadata file, no malicious content.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata file, no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 11,641
  Completion Tokens: 1,758
  Total Tokens: 13,399
  Total Cost: $0.001343
  Execution Time: 25.38 seconds

Final Status: SAFE


No issues found.
