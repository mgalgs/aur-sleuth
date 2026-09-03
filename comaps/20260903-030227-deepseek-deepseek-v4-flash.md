---
package: comaps
pkgver: 2026.08.31_14
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 1d6b5f000e2ff2cbdfdf4e324a3e5ac914955c8a
prompt_tokens: 15782
completion_tokens: 3304
total_tokens: 19086
cost: 0.001983888340
execution_time: 121.81
files_reviewed: 5
files_skipped: 1
maintainer_files: 6
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-03T03:02:27Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore with no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no security issues.
  - file: icon.svg
    status: skipped
    summary: "Skipping binary file: icon.svg"
  - file: comaps.desktop
    status: safe
    summary: Benign desktop entry file; static metadata only, no security issues.
  - file: relax-protobuf-version.patch
    status: safe
    summary: Routine protobuf version constraint relaxation; no malicious content found.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no malicious content.
---

Cloning https://aur.archlinux.org/comaps.git...
Cloned comaps
Analyzing comaps AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The global/top-level scope of this PKGBUILD contains only variable definitions and array assignments. There are no command substitutions, backtick executions, `eval` invocations, or calls to external programs (like `curl`, `wget`, `git`, etc.) that would execute when the file is sourced by `makepkg --printsrcinfo`. The `_tag` variable uses simple bash parameter expansion, which is safe. All other values are string literals or simple expansions. No dangerous code runs at parse time.
</details>
<evidence></evidence>
<summary>Global scope only has safe variable assignments; no execution occurs.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Global scope only has safe variable assignments; no execution occurs.
Reviewing the 6 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/6] Reviewing .SRCINFO...
[0/6] Reviewing .SRCINFO, PKGBUILD...
[0/6] Reviewing .SRCINFO, PKGBUILD, .gitignore...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The .gitignore file contains only standard ignore patterns for build directories and package output files (`*/` and `comaps*.pkg*`). These are typical entries in any AUR package repository to prevent tracking of generated artifacts. There is no obfuscated code, network requests, or system commands. No security concern exists.
</details>
<evidence></evidence>
<summary>Standard .gitignore with no security issues.</summary>
</security_assessment>

[0/6] Reviewing .SRCINFO, PKGBUILD, .gitignore, comaps.desktop...
[1/6] Reviewing .SRCINFO, PKGBUILD, comaps.desktop...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore with no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard AUR `.SRCINFO` metadata file. It contains only declarative information: package name, version, description, URL, architecture, license, dependencies, and source files with SHA256 checksums. There is no executable code, no network requests, no obfuscation, and no system modification commands. The sources (`comaps.desktop` and `relax-protobuf-version.patch`) are listed with pinned SHA256 sums, which is normal packaging practice. The package is a mapping/navigation application and the metadata is consistent with that purpose. No evidence of malicious behavior or supply-chain attack.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata, no security issues.</summary>
</security_assessment>

[1/6] Reviewing .SRCINFO, PKGBUILD, comaps.desktop, icon.svg...
[2/6] Reviewing PKGBUILD, comaps.desktop, icon.svg...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no security issues.
[2/6] Reviewing PKGBUILD, comaps.desktop, icon.svg, relax-protobuf-version.patch...
[3/6] Reviewing PKGBUILD, comaps.desktop, relax-protobuf-version.patch...
! Reviewed icon.svg. Status: SKIPPED -- Skipping binary file: icon.svg
LLM auditresponse for comaps.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard freedesktop.org `.desktop` entry file for the CoMaps offline maps application. It contains only static metadata: application name, localized comments, icon name, categories, keywords, and an `Exec=comaps` line that launches the package's own binary with no arguments.

There is no obfuscated code, no network access, no file operations, and no use of dangerous commands. The `#-data_path ~/.local/share/comaps/` fragment at the end of the Exec line is a harmless leftover from editing — in desktop entry syntax, the `#` is not a comment marker, so it would be passed as literal arguments if the application parses them, but there is no evidence of malicious intent. The `TryExec=comaps` only checks for binary existence. This file poses no security risk.
</details>
<evidence>
</evidence>
<summary>
Benign desktop entry file; static metadata only, no security issues.</summary>
</security_assessment>

[4/6] Reviewing PKGBUILD, relax-protobuf-version.patch...
+ Reviewed comaps.desktop. Status: SAFE -- Benign desktop entry file; static metadata only, no security issues.
LLM auditresponse for relax-protobuf-version.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch is a routine dependency-version relaxation for the `comaps` CMake build. It removes a hard requirement that Python protobuf be `&gt;=3.20.0` and `&lt;4.0.0`, replacing the fatal error with a status message, and shortens the "protobuf not found" error text. This is a standard AUR packaging adjustment to allow the package to build against the system's installed protobuf version instead of forcing a specific range.

There is no malicious behavior: no network requests, no encoded/obfuscated content, no execution of downloaded code, no file operations outside the build configuration, and no data exfiltration. Relaxing a version constraint is a build-compatibility tradeoff (it may weaken reproducibility or cause build failures with incompatible protobuf versions), but it is not a supply-chain attack. The patch touches only `CMakeLists.txt` and contains only CMake `message()` calls and conditional restructuring.
</details>
<evidence>
</evidence>
<summary>
Routine protobuf version constraint relaxation; no malicious content found.</summary>
</security_assessment>

[5/6] Reviewing PKGBUILD...
+ Reviewed relax-protobuf-version.patch. Status: SAFE -- Routine protobuf version constraint relaxation; no malicious content found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a VCS-based package. It clones the upstream repository from the project's own Codeberg page using a specific tag, builds the application with standard CMake/Ninja tooling, and installs the resulting binaries and data files. No suspicious network requests, obfuscated commands, or unexpected system modifications are present. The `SOURCE_URL_REWRITER` environment variable is an optional feature for maintainer convenience when building from local mirrors; it does not constitute a security threat by itself. All operations are consistent with the package's stated purpose as an offline navigation application.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with no malicious content.</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
(Skipped 1 file: icon.svg)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 15,782
  Completion Tokens: 3,304
  Total Tokens: 19,086
  Total Cost: $0.001984
  Execution Time: 121.81 seconds

Final Status: SAFE


No issues found.


Audit Skips:

icon.svg: [SKIPPED] Skipping binary file: icon.svg
