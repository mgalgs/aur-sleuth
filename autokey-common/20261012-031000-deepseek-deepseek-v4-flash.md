---
package: autokey-common
pkgbase: autokey
pkgver: 0.96.0
pkgrel: 10
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 22547
completion_tokens: 7743
total_tokens: 30290
cost: 0.0102064057
execution_time: 52.07
files_reviewed: 7
files_skipped: 0
maintainer_files: 7
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-12T03:09:59Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard metadata file, no security issues
  - file: .nvchecker.toml
    status: safe
    summary: "Non-executable nvchecker config referencing the package's official upstream git repository. Safe."
  - file: .gitignore
    status: safe
    summary: Standard AUR .gitignore; no security concerns found.
  - file: LICENSE
    status: safe
    summary: Plain license text only; no malicious or suspicious behavior found.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no malicious behavior.
  - file: syntax.patch
    status: safe
    summary: Patch contains only a Python 3 iterator compatibility fix; no security concerns.
  - file: imghdr.patch
    status: safe
    summary: Legitimate imghdr-to-python-magic compatibility patch; no malicious behavior found.
---

autokey-common is built from autokey
Materializing autokey-common from local mirror...
Materialized autokey-common
Analyzing autokey-common AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global scope contains only standard variable and array definitions (`pkgname`, `pkgver`, `source`, `sha256sums`, `url`, etc.) and function declarations (`prepare`, `build`, `package_*`). There are no top-level command substitutions, no `eval`/`exec`/`curl`/`wget` calls, and no other code that would execute malicious actions when the file is sourced. All file-manipulation and build logic is safely enclosed within functions that are not executed by `makepkg --printsrcinfo`. The checksums are hardcoded hex strings without any `SKIP` values, but even if they were `SKIP`, that would not affect the safety of sourcing this file.
</details>
<evidence></evidence>
<summary>No dangerous code in global scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous code in global scope.
Reviewing the 7 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/7] Reviewing .SRCINFO...
[0/7] Reviewing .SRCINFO, .gitignore...
[0/7] Reviewing .SRCINFO, .gitignore, .nvchecker.toml...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is a standard metadata file used by AUR helpers to describe package structure and dependencies. It contains no executable code, no network requests, no file operations, and no obfuscated content. The sources point to the package&#x27;s own upstream GitHub repository (autokey/autokey) at a specific tag (v0.96.0), with SHA256 checksums provided for verification. Two patch files are also listed with checksums. The subpackages (autokey-common, autokey-gtk) declare legitimate dependencies such as python-dbus, python-xlib, python-gobject, and others that are expected for a desktop automation utility. There is no evidence of any supply-chain attack, malicious injection, or deviation from standard packaging practices.
</details>
<evidence></evidence>
<summary>Standard metadata file, no security issues</summary>
</security_assessment>

[0/7] Reviewing .SRCINFO, .gitignore, .nvchecker.toml, LICENSE...
[1/7] Reviewing .gitignore, .nvchecker.toml, LICENSE...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata file, no security issues
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is an nvchecker configuration for tracking upstream releases of the autokey project. It declares a git source pointing to the project's official GitHub repository (`https://github.com/autokey/autokey.git`) and a version prefix of `v`. This is standard, non-executable configuration metadata used during package version checks. There are no network redirects, no code execution, no obfuscation, and no suspicious file operations. The URL matches the package's own upstream project, so this is consistent with normal AUR maintenance workflow.
</details>
<evidence>
</evidence>
<summary>
Non-executable nvchecker config referencing the package's official upstream git repository. Safe.</summary>
</security_assessment>

[1/7] Reviewing .gitignore, .nvchecker.toml, LICENSE, PKGBUILD...
[2/7] Reviewing .gitignore, LICENSE, PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Non-executable nvchecker config referencing the package's official upstream git repository. Safe.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` for an AUR package repository. It ignores all files by default and then whitelists the packaging files needed for the AUR (`.gitignore`, `PKGBUILD`, `.SRCINFO`, `.nvchecker.toml`, `LICENSE`, and patch files). There is no malicious code, no network access, no file operations outside the repository, no obfuscation, and no deviation from normal packaging practices. It is purely a version-control configuration file.
</details>
<evidence>
</evidence>
<summary>Standard AUR .gitignore; no security concerns found.</summary>
</security_assessment>

[3/7] Reviewing LICENSE, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard AUR .gitignore; no security concerns found.
[3/7] Reviewing LICENSE, PKGBUILD, imghdr.patch...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a plain ISC-style license text attributed to Arch Linux Contributors. It contains only standard license language granting permission to use, copy, modify, and distribute the software, along with the usual disclaimer of warranties. There is no executable code, no network access, no file operations, no obfuscation, and no suspicious content. The file is consistent with a normal LICENSE file included in a package and poses no supply-chain security risk.
</details>
<evidence>
</evidence>
<summary>
Plain license text only; no malicious or suspicious behavior found.</summary>
</security_assessment>

[3/7] Reviewing LICENSE, PKGBUILD, imghdr.patch, syntax.patch...
[4/7] Reviewing PKGBUILD, imghdr.patch, syntax.patch...
+ Reviewed LICENSE. Status: SAFE -- Plain license text only; no malicious or suspicious behavior found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Arch packaging practices for a Python package that is split into multiple subpackages. The upstream source tarball is pinned to a specific version from the project&#39;s official GitHub repository, and all sources (the tarball and two patches) have SHA‑256 checksums, preventing unexpected content substitution. The `prepare()` and `build()` functions apply the patches and build a Python wheel without external network access or execution of untrusted code. The `package_*` functions install the wheel and then remove unwanted files to create the common, GTK, and Qt subpackages — a routine splitting technique.

The loop in `build()` that removes lines containing `/usr/bin/env` from Python library files is unusual, but its effect is limited to removing shebang lines from library modules within the build directory; it does not alter runtime behavior or access the network. There is no obfuscated code, no hidden network requests, no attempt to exfiltrate data, and no use of dangerous commands such as `eval`, `base64`, `curl`, or `wget`. The file presents no evidence of a supply‑chain attack and behaves consistently with the stated purpose of packaging the autokey project.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with no malicious behavior.</summary>
</security_assessment>

[5/7] Reviewing imghdr.patch, syntax.patch...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no malicious behavior.
LLM auditresponse for syntax.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a small source patch for the AutoKey project that updates a single line in `lib/autokey/gtkui/dialogs.py`. It replaces the removed Python 2 style iterator method `i.next()` with the Python 3 compatible built-in `next(i)`. This is a routine compatibility fix and contains no suspicious behavior.

There are no network operations, file modifications, obfuscated code, or execution of external content. The patch does not introduce backdoors, data exfiltration, or unexpected system changes. It is consistent with standard packaging and upstream bug-fix practices.
</details>
<evidence>
</evidence>
<summary>
Patch contains only a Python 3 iterator compatibility fix; no security concerns.
</summary>
</security_assessment>

[6/7] Reviewing imghdr.patch...
+ Reviewed syntax.patch. Status: SAFE -- Patch contains only a Python 3 iterator compatibility fix; no security concerns.
LLM auditresponse for imghdr.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch updates autokey's PNG-dimension helper to replace the removed/legacy `imghdr` module with `python-magic`, which is required for newer Python versions (Python 3.13 removed `imghdr`). The change opens the target file read-only, checks that its MIME type is `image/png`, and reads 24 bytes to unpack the PNG width/height. There is no network access, no code execution, no encoded/obfuscated content, and no modification of system files or data outside the package's normal operation.

The only noteworthy point is that it introduces a dependency on `python-magic`; that is an ordinary packaging dependency rather than a security concern. No supply-chain red flags were found.
</details>
<evidence>
</evidence>
<summary>
Legitimate imghdr-to-python-magic compatibility patch; no malicious behavior found.</summary>
</security_assessment>

[7/7] Reviewing ...
+ Reviewed imghdr.patch. Status: SAFE -- Legitimate imghdr-to-python-magic compatibility patch; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 22,547
  Completion Tokens: 7,743
  Total Tokens: 30,290
  Total Cost: $0.010206
  Execution Time: 52.07 seconds

Final Status: SAFE


No issues found.
