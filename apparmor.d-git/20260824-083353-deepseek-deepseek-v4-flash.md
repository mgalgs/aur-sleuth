---
package: apparmor.d-git
pkgver: v0.4910.0.r155.g95da007
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 56580919ea5cd225cb34031d0932798021e4a0d8
prompt_tokens: 13635
completion_tokens: 3344
total_tokens: 16979
cost: 0.0011665402
execution_time: 135.87
files_reviewed: 3
files_skipped: 0
files_unauditable: 8
unpinned_sources: 0
date: 2026-08-24T08:33:53Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard AUR git package, no security issues.
  - file: apparmor.d.install
    status: safe
    summary: No malicious behavior detected; script only prints warnings.
  - file: src/apparmor.d-git/PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD, no malicious code found.
---

Cloning https://aur.archlinux.org/apparmor.d-git.git...
Cloned apparmor.d-git
Analyzing apparmor.d-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard VCS package (apparmor.d-git). The source array fetches from the project's official GitHub repository using git+https, which is normal and expected. The `pkgver()` function runs `cd "$srcdir/$pkgname"` and `git describe`, which are standard operations for git-based packages and only query metadata from the local clone. There are no command substitutions, no calls to curl/wget, no obfuscated code, and no data exfiltration in the global scope or `pkgver()`. The `build()` and `package_*()` functions are not executed by the requested `makepkg` commands (`--noprepare` and `--nobuild` prevent their execution). The SKIP checksum is typical and permissible for VCS packages. No evidence of supply-chain attack or malicious code in the scopes that will be triggered.
</details>
<evidence></evidence>
<summary>Standard VCS PKGBUILD; no dangerous top-level or pkgver() code.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Standard VCS PKGBUILD; no dangerous top-level or pkgver() code.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/1] Reviewing PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard Arch User Repository package for the `apparmor.d-git` package. It clones the upstream Git repository, builds it using the `just` build tool, and installs profiles, base abstractions, and tools into the package directory. There are no suspicious network requests, obfuscated code, unexpected file operations, or system modifications beyond standard packaging practices. The SKIP checksum is normal for VCS sources. No evidence of a supply-chain attack or injected malicious code is present.
</details>
<evidence>
</evidence>
<summary>Standard AUR git package, no security issues.</summary>
</security_assessment>

[1/1] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR git package, no security issues.
Reviewed all required files.
Deciding which files to review next...
Note: 8 compiled/archived file(s) cannot be audited as text and were not reviewed (src/apparmor.d-git/tests/testdata/logs/audit.log, src/apparmor.d-git/tests/testdata/logs/systemd.log, src/apparmor.d-git/tests/testdata/paths/broken_symlink/dir_1/broken_link and 5 more). For a package that ships prebuilt binaries, the audit covers the packaging, not the payload.
Note: 2609 files available for selection; offering the 50 highest-priority to the model. 2424 lower-priority file(s) were not offered.
LLM response for file selection:
apparmor.d.install
share/libalpm/hooks/apparmor.hook
dists/docker.sh
dists/docstring.sh
src/apparmor.d-git/PKGBUILD
! Note: the model selected 3 path(s) not present in the package; these do not exist and were not reviewed: share/libalpm/hooks/apparmor.hook, dists/docker.sh, dists/docstring.sh
Decided to review 2 additional files: apparmor.d.install, src/apparmor.d-git/PKGBUILD
Reviewing additional files...
Reviewing additional files...
[0/2] Reviewing src/apparmor.d-git/PKGBUILD...
[0/2] Reviewing src/apparmor.d-git/PKGBUILD, apparmor.d.install...
LLM auditresponse for apparmor.d.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR install script that prints a warning message about breaking changes and configuration requirements for apparmor.d. It contains only echo statements and no suspicious operations such as network requests, file modifications, or hidden code execution. The extra call to `_warning_message` at the end simply prints the warning, which is benign.
</details>
<evidence></evidence>
<summary>No malicious behavior detected; script only prints warnings.</summary>
</security_assessment>

[1/2] Reviewing src/apparmor.d-git/PKGBUILD...
+ Reviewed apparmor.d.install. Status: SAFE -- No malicious behavior detected; script only prints warnings.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard Arch Linux package definition for `apparmor.d-git`. It uses the `just` build system (a Rust-based task runner) to build and install profiles, base abstractions, and tools. No obfuscated code, suspicious network requests, or unexpected system modifications are present. The `rsync` in `prepare()` copies local build context, which is harmless. All build and install steps call only the upstream build system with standard environment variables. There is no evidence of supply-chain injection or malicious behavior.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD, no malicious code found.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed src/apparmor.d-git/PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD, no malicious code found.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,635
  Completion Tokens: 3,344
  Total Tokens: 16,979
  Total Cost: $0.001167
  Execution Time: 135.87 seconds

Final Status: SAFE


No issues found.
