---
package: python-tesserocr
pkgver: 2.11.0
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 16741
completion_tokens: 3699
total_tokens: 20440
cost: 0.002138860234
execution_time: 49.83
files_reviewed: 6
files_skipped: 0
maintainer_files: 6
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-14T07:26:49Z
file_verdicts:
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config; no malicious behavior detected.
  - file: .gitignore
    status: safe
    summary: Standard AUR .gitignore; no malicious or suspicious behavior found.
  - file: LICENSE
    status: safe
    summary: Plain license text; no executable or suspicious content.
  - file: .SRCINFO
    status: safe
    summary: Clean metadata, standard packaging, no issues.
  - file: cython-3.2.patch
    status: safe
    summary: Benign packaging patch relaxing a Cython version constraint.
  - file: PKGBUILD
    status: safe
    summary: Standard Python package build with verified upstream sources; no malicious behavior found.
---

Materializing python-tesserocr from local mirror...
Materialized python-tesserocr
Analyzing python-tesserocr AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global/top-level scope contains only standard variable definitions (`pkgname`, `pkgver`, `arch`, `depends`, `source`, `b2sums`, etc.) and comments. There are no command substitutions, eval statements, network requests, or any other code that executes during sourcing. Since `makepkg --printsrcinfo` only sources the PKGBUILD and does not call `pkgver()`, `prepare()`, `build()`, or `package()`, there is no risk of executing malicious code at this stage. The file follows standard AUR packaging practices with pinned checksums.
</details>
<evidence></evidence>
<summary>No top-level executable code; safe to source.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level executable code; safe to source.
Reviewing the 6 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/6] Reviewing .SRCINFO...
[0/6] Reviewing .SRCINFO, .gitignore...
[0/6] Reviewing .SRCINFO, .gitignore, .nvchecker.toml...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard nvchecker configuration used by AUR maintainers to monitor upstream releases of the python-tesserocr project. It defines the package name, a git source type, the upstream repository URL, and a version prefix filter. No malicious behavior is present: there are no network requests beyond declaring the project's own upstream repository, no code execution, no file operations, and no obfuscation. Fetching version information from the package's official upstream GitHub repository is normal and expected packaging practice.
</details>
<evidence>
</evidence>
<summary>
Standard nvchecker config; no malicious behavior detected.</summary>
</security_assessment>

[0/6] Reviewing .SRCINFO, .gitignore, .nvchecker.toml, LICENSE...
[1/6] Reviewing .SRCINFO, .gitignore, LICENSE...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config; no malicious behavior detected.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file used in an AUR git repository. It ignores all files except the packaging-related files that should be tracked: `.gitignore`, `PKGBUILD`, `.SRCINFO`, `.nvchecker.toml`, `LICENSE`, and a patch file. There is no executable code, no network activity, no file modification beyond ignoring files in version control, and no indication of malicious or suspicious behavior. It conforms to normal AUR packaging practices.
</details>
<evidence>
</evidence>
<summary>
Standard AUR .gitignore; no malicious or suspicious behavior found.</summary>
</security_assessment>

[1/6] Reviewing .SRCINFO, .gitignore, LICENSE, PKGBUILD...
[2/6] Reviewing .SRCINFO, LICENSE, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard AUR .gitignore; no malicious or suspicious behavior found.
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a plain license text (ISC-style license granting permission to use, copy, modify, and distribute the software). It contains no executable code, no references to external resources, no file operations, and no obfuscated content. There is no evidence of malicious or dangerous behavior. It is a standard packaging component.
</details>
<evidence></evidence>
<summary>Plain license text; no executable or suspicious content.</summary>
</security_assessment>

[2/6] Reviewing .SRCINFO, LICENSE, PKGBUILD, cython-3.2.patch...
[3/6] Reviewing .SRCINFO, PKGBUILD, cython-3.2.patch...
+ Reviewed LICENSE. Status: SAFE -- Plain license text; no executable or suspicious content.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.SRCINFO` metadata file for the `python-tesserocr` AUR package. The upstream source is pinned to a specific version tag (`v2.11.0`) on GitHub, and both the main source tarball and the provided patch have explicit BLAKE2 checksums configured. No obfuscated code, suspicious network requests, or dangerous commands are present. The dependencies are standard for the package's stated purpose of wrapping the tesseract-ocr API. This file conforms to standard, secure AUR packaging practices and contains no indicators of a supply chain attack.
</details>
<evidence>
</evidence>
<summary>Clean metadata, standard packaging, no issues.</summary>
</security_assessment>

[4/6] Reviewing PKGBUILD, cython-3.2.patch...
+ Reviewed .SRCINFO. Status: SAFE -- Clean metadata, standard packaging, no issues.
LLM auditresponse for cython-3.2.patch:
 <security_assessment>
<decision>SAFE</decision>
<details>
This file is a simple patch to `setup.py` that relaxes the Cython version constraint in `setup_requires` from `Cython&gt;=3.0.0,&lt;3.2.0` to `Cython&gt;=3.0.0`. This is a standard, benign packaging change intended to allow newer Cython releases. There is no obfuscated code, no network activity, no execution of downloaded content, no suspicious file operations, and nothing that deviates from normal packaging practices.
</details>
<evidence>
</evidence>
<summary>
Benign packaging patch relaxing a Cython version constraint.</summary>
</security_assessment>

[5/6] Reviewing PKGBUILD...
+ Reviewed cython-3.2.patch. Status: SAFE -- Benign packaging patch relaxing a Cython version constraint.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard Python package build for the `python-tesserocr` AUR package. It downloads the upstream source tarball from the project&apos;s official GitHub URL, verifies both source and patch files with b2 checksums, applies a Cython compatibility patch, builds a wheel with `python -m build`, and installs it with `python -m installer`. These are all normal packaging operations.

There is no suspicious network activity, no execution of fetched scripts, no obfuscated or encoded commands, and no file operations outside the package build/install scope. The patch application and license installation are routine. Nothing in this file indicates malicious or supply-chain behavior.
</details>
<evidence>
</evidence>
<summary>
Standard Python package build with verified upstream sources; no malicious behavior found.</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard Python package build with verified upstream sources; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 16,741
  Completion Tokens: 3,699
  Total Tokens: 20,440
  Total Cost: $0.002139
  Execution Time: 49.83 seconds

Final Status: SAFE


No issues found.
