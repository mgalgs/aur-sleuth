---
package: python-kotki
pkgbase: kotki
pkgver: 0.6.0.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 13558
completion_tokens: 1928
total_tokens: 15486
cost: 0.001584674
execution_time: 26.18
files_reviewed: 4
files_skipped: 1
maintainer_files: 5
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-16T23:12:50Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; no malicious code or suspicious behavior found.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD; pinned checksums and normal build/install steps. No security issues found.
  - file: kotki-0.6.0-1.tar.gz
    status: skipped
    summary: "Skipping binary file: kotki-0.6.0-1.tar.gz"
  - file: .gitignore
    status: safe
    summary: Standard .gitignore with packaging artifact patterns; no malicious or suspicious content found.
  - file: fix-pykotki.patch
    status: safe
    summary: Benign build-system patch enabling optional system kotki linking; no malicious behavior found.
---

python-kotki is built from kotki
Materializing python-kotki from local mirror...
Materialized python-kotki
Analyzing python-kotki AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources only the global/top-level scope of this PKGBUILD. The top-level content consists solely of standard variable and array definitions: `pkgbase`, `pkgname`, `pkgver`, `pkgdesc`, `arch`, `url`, `makedepends`, `source`, and `sha256sums`. There are no top-level command substitutions, function calls, network operations, downloads, or file modifications that would execute during sourcing.

The potentially interesting operations — `patch`, `sed`, `cmake`, `python -m build`, and `install` — are all confined within `prepare()`, `build()`, and `package_*()` functions, which are not executed by `makepkg --printsrcinfo`. Therefore, this command is safe to run. Matters such as checksum verification and source pinning are outside the scope of this gate and are not relevant to the safety of parsing the PKGBUILD.
</details>
<evidence>
</evidence>
<summary>
Top-level PKGBUILD is safe; no commands execute during printsrcinfo.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD is safe; no commands execute during printsrcinfo.
Reviewing the 5 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, PKGBUILD...
[0/5] Reviewing .SRCINFO, PKGBUILD, .gitignore...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard AUR `.SRCINFO` metadata file for the `kotki` package. It declares package metadata, dependencies, and two sources: an upstream release tarball from the project's own GitHub repository (`https://github.com/terslang/kotki/archive/refs/tags/v0.6.0-1.tar.gz`) and a local patch file, both with pinned SHA-256 checksums.

There is no executable code, no network requests beyond the declared upstream source, no obfuscation, no file operations, and no system modifications. The checksums are non-`SKIP`, and the source URL matches the package's stated upstream project. This is consistent with normal AUR packaging practice and contains no evidence of malicious behavior.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata; no malicious code or suspicious behavior found.</summary>
</security_assessment>

[1/5] Reviewing PKGBUILD, .gitignore...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; no malicious code or suspicious behavior found.
[1/5] Reviewing PKGBUILD, .gitignore, fix-pykotki.patch...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Arch packaging practices for a project with a C++ engine and Python bindings. The source is fetched over HTTPS from the project's own upstream GitHub repository, and both the source tarball and the bundled patch have pinned SHA-256 checksums. The `prepare()` function applies a local patch and uses `sed` to adjust upstream build flags, which is a routine packaging step. `build()` runs the project's normal CMake and Python build tooling, and the package functions install files only into `$pkgdir`.

There are no suspicious network requests, no downloaded-and-executed code, no obfuscated commands, no exfiltration of local data, and no modification of system files outside the package installation scope. The use of `patch` and `sed` is consistent with normal AUR maintenance. No evidence of injected malicious code was found in this file.
</details>
<evidence>
</evidence>
<summary>
Standard AUR PKGBUILD; pinned checksums and normal build/install steps. No security issues found.
</summary>
</security_assessment>

[1/5] Reviewing PKGBUILD, .gitignore, fix-pykotki.patch, kotki-0.6.0-1.tar.gz...
[2/5] Reviewing .gitignore, fix-pykotki.patch, kotki-0.6.0-1.tar.gz...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD; pinned checksums and normal build/install steps. No security issues found.
[3/5] Reviewing .gitignore, fix-pykotki.patch...
! Reviewed kotki-0.6.0-1.tar.gz. Status: SKIPPED -- Skipping binary file: kotki-0.6.0-1.tar.gz
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` used in an Arch Linux packaging repository. It contains only glob patterns for ignoring build artifacts and packaging byproducts (database files, package archives, source directories, chroot directories, and makepkg output). There is no executable code, no network access, no obfuscation, and no file operations. It is entirely consistent with normal AUR repository maintenance and presents no security concerns.
</details>
<evidence>
</evidence>
<summary>
Standard .gitignore with packaging artifact patterns; no malicious or suspicious content found.</summary>
</security_assessment>

[4/5] Reviewing fix-pykotki.patch...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore with packaging artifact patterns; no malicious or suspicious content found.
LLM auditresponse for fix-pykotki.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch adjusts the build configuration of the `python-kotki` package. It removes an include of `kotki/project_version.h` and modifies `CMakeLists.txt` so the Python bindings can link against either a system-installed `kotki::kotki-lib-SHARED` target or the vendored `kotki-lib` target, depending on the `VENDORED_LIBS` option. 

There is no suspicious network access, no encoded or obfuscated commands, no file exfiltration, no execution of downloaded content, and no modification of files outside the package build. The change is a normal packaging/build-system adaptation to support linking against system libraries instead of vendored ones. No security issue is present.
</details>
<evidence>
</evidence>
<summary>
Benign build-system patch enabling optional system kotki linking; no malicious behavior found.
</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed fix-pykotki.patch. Status: SAFE -- Benign build-system patch enabling optional system kotki linking; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
(Skipped 1 file: kotki-0.6.0-1.tar.gz)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,558
  Completion Tokens: 1,928
  Total Tokens: 15,486
  Total Cost: $0.001585
  Execution Time: 26.18 seconds

Final Status: SAFE


No issues found.


Audit Skips:

kotki-0.6.0-1.tar.gz: [SKIPPED] Skipping binary file: kotki-0.6.0-1.tar.gz
