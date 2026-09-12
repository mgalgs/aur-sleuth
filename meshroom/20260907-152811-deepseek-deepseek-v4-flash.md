---
package: meshroom
pkgver: 2025.1.8
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 19682
completion_tokens: 3196
total_tokens: 22878
cost: 0.002310312844
execution_time: 83.8
files_reviewed: 7
files_skipped: 0
maintainer_files: 7
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-07T15:28:11Z
file_verdicts:
  - file: .shellcheckrc
    status: safe
    summary: Trivial ShellCheck configuration file; no security concerns found.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file with no security issues.
  - file: Meshroom.desktop
    status: safe
    summary: Standard .desktop file with no security concerns.
  - file: fix-qt-errors.patch
    status: safe
    summary: Patch is a harmless debugging addition, no security risk.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR package build; no evidence of malicious or injected code.
  - file: meshroom.sh
    status: safe
    summary: Just Qt environment path exports.
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO metadata; no security issues.
---

Materializing meshroom from local mirror...
Materialized meshroom
Analyzing meshroom AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only global variable assignments (package metadata, dependencies, source URLs, and checksums) and function definitions (`prepare`, `build`, `package`). There is no top-level command substitution, function call, or other executable code that would run during `makepkg --printsrcinfo`. Sourcing this file to extract metadata poses no risk of executing malicious code.
</details>
<evidence></evidence>
<summary>Sourcing PKGBUILD for printsrcinfo is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Sourcing PKGBUILD for printsrcinfo is safe.
Reviewing the 7 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/7] Reviewing .gitignore...
[0/7] Reviewing .gitignore, .SRCINFO...
[0/7] Reviewing .gitignore, .SRCINFO, .shellcheckrc...
LLM auditresponse for .shellcheckrc:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a `.shellcheckrc` configuration file used to suppress specific ShellCheck lint warnings (`SC2164`, `SC2034`, `SC2154`). These are common warnings encountered when linting PKGBUILD scripts, where variables such as `pkgname`, `pkgver`, `srcdir`, and `pkgdir` are provided by the packaging environment and intentional `cd` usage is normal. There is no executable code, no network activity, no file manipulation, and nothing resembling malicious or obfuscated behavior. This is a standard helper configuration file for AUR package development.
</details>
<evidence>
</evidence>
<summary>
Trivial ShellCheck configuration file; no security concerns found.</summary>
</security_assessment>

[0/7] Reviewing .gitignore, .SRCINFO, .shellcheckrc, Meshroom.desktop...
[1/7] Reviewing .gitignore, .SRCINFO, Meshroom.desktop...
+ Reviewed .shellcheckrc. Status: SAFE -- Trivial ShellCheck configuration file; no security concerns found.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This .gitignore file contains a list of directory names (meshroom, qmlAlembic, QtOIIO, voctree, src). It is a standard configuration file for Git to ignore those directories. There is no executable code, no network requests, no obfuscation, and no indication of any malicious activity. The file is entirely benign and follows normal packaging practices.
</details>
<evidence></evidence>
<summary>Standard .gitignore file with no security issues.</summary>
</security_assessment>

[1/7] Reviewing .gitignore, .SRCINFO, Meshroom.desktop, PKGBUILD...
[2/7] Reviewing .SRCINFO, Meshroom.desktop, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore file with no security issues.
LLM auditresponse for Meshroom.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.desktop` file that declares application metadata for the Meshroom 3D reconstruction software. It contains only static key-value pairs: `Type`, `Encoding`, `Name`, `Comment`, `Exec`, `Icon`, and `Terminal`. No executable commands, network requests, obfuscation, or system modifications are present. The file adheres to normal packaging practices and poses no security risk.
</details>
<evidence>
</evidence>
<summary>Standard .desktop file with no security concerns.</summary>
</security_assessment>

[3/7] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed Meshroom.desktop. Status: SAFE -- Standard .desktop file with no security concerns.
[3/7] Reviewing .SRCINFO, PKGBUILD, fix-qt-errors.patch...
LLM auditresponse for fix-qt-errors.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
The patch adds a single line logging the error string of a QML component during object creation. This is a standard debugging practice to help diagnose Qt/QML runtime errors. There is no malicious content — no network requests, obfuscation, file operations, or execution of arbitrary code. The change is consistent with a routine bug fix for Qt errors.
</details>
<evidence>
</evidence>
<summary>Patch is a harmless debugging addition, no security risk.</summary>
</security_assessment>

[3/7] Reviewing .SRCINFO, PKGBUILD, fix-qt-errors.patch, meshroom.sh...
[4/7] Reviewing .SRCINFO, PKGBUILD, meshroom.sh...
+ Reviewed fix-qt-errors.patch. Status: SAFE -- Patch is a harmless debugging addition, no security risk.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows normal AUR packaging practices for a complex upstream application. It clones the project&apos;s own upstream repositories (alicevision/meshroom, alicevision/QtAliceVision, alicevision/trainedVocabularyTreeData), applies a patch for Qt6/PySide6 compatibility, builds with cmake/make, and installs files into `$pkgdir`. There is no obfuscated code, no suspicious network behavior beyond the declared upstream sources, no `eval`/`base64`/`curl|bash` usage, and no attempt to exfiltrate data or modify unrelated system files.

The `voctree` source is an unpinned git checkout with a `SKIP` checksum; this is standard for VCS sources and is a reproducibility/hygiene matter, not evidence of malice. The shebang rewrite using `env -S LD_PRELOAD=/usr/lib/libjemalloc.so` is unconventional but is a known workaround style for memory allocator issues and loads a system library, not an attacker-controlled blob. Installing a profile script under `/etc/profile.d/` is a minor system-wide environment modification, but the script itself is part of the package source and is not inherently malicious; its contents were not shown in this file for review. No genuinely malicious or dangerous behavior is present.
</details>
<evidence>
</evidence>
<summary>
Standard AUR package build; no evidence of malicious or injected code.</summary>
</security_assessment>

[5/7] Reviewing .SRCINFO, meshroom.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR package build; no evidence of malicious or injected code.
LLM auditresponse for meshroom.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The file contains only two standard environment variable exports (`export QML2_IMPORT_PATH=...` and `export QT_PLUGIN_PATH=...`) used to direct QML and Qt plugin loading to the system-installed directories under `/usr/lib/qt`. There is no code execution, no network access, no obfuscation, and no indication of malicious intent. This is a typical configuration snippet shipped with many Qt-based AUR packages.
</details>
<evidence>
</evidence>
<summary>Just Qt environment path exports.</summary>
</security_assessment>

[6/7] Reviewing .SRCINFO...
+ Reviewed meshroom.sh. Status: SAFE -- Just Qt environment path exports.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is a standard AUR package metadata descriptor. It defines dependencies, sources, and checksums for the meshroom package. All source URLs point to the package's official upstream repositories (GitHub/GitLab). One source (voctree) uses `SKIP` for its checksum, which is normal for VCS sources and not a security concern. No executable code, obfuscation, suspicious network destinations, or unusual operations are present. The file conforms to expected packaging practices.
</details>
<evidence>
</evidence>
<summary>Standard .SRCINFO metadata; no security issues.</summary>
</security_assessment>

[7/7] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO metadata; no security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 19,682
  Completion Tokens: 3,196
  Total Tokens: 22,878
  Total Cost: $0.002310
  Execution Time: 83.80 seconds

Final Status: SAFE


No issues found.
