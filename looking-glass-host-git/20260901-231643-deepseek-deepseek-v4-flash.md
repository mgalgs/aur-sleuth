---
package: looking-glass-host-git
pkgbase: looking-glass-git
pkgver: B7.r826.g236efcb1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: b9e20f728bbe0de1871ebaca31738c802edc31f8
prompt_tokens: 16263
completion_tokens: 2076
total_tokens: 18339
cost: 0.00143190810
execution_time: 145.91
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: ok
upstream_files: 1602
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-01T23:16:42Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR VCS metadata; no malicious behavior detected.
  - file: host.install
    status: safe
    summary: No malicious code; only user warnings.
  - file: PKGBUILD
    status: safe
    summary: Standard upstream VCS build; no malicious or suspicious behavior found.
  - file: client.install
    status: safe
    summary: Benign install script with informational messages only.
---

looking-glass-host-git is built from looking-glass-git
Cloning https://aur.archlinux.org/looking-glass-git.git...
Cloned looking-glass-host-git
Analyzing looking-glass-host-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD sources are all from the official upstream repositories for the Looking Glass project and its dependencies (GitHub, GitLab). The `pkgver()` function only runs `git describe` to generate a version string, with no dangerous commands. No top-level code, global scope, or `pkgver()` executes any network calls, file exfiltration, or obfuscated payloads. All checksums are `SKIP`, which is standard for VCS sources and not a safety concern for this gate. Fetching the sources via `makepkg --nobuild --nodeps --noprepare` is safe.
</details>
<evidence></evidence>
<summary>Clean PKGBUILD with standard VCS sources.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Clean PKGBUILD with standard VCS sources.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Reviewing the 4 file(s) in the AUR repository. The 1602 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, PKGBUILD...
[0/4] Reviewing .SRCINFO, PKGBUILD, client.install...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard AUR `.SRCINFO` metadata file. It declares package metadata, dependencies, and VCS sources for the `looking-glass-git` package. All sources point to the project's own upstream repositories or well-known related projects (GitHub, freedesktop.org GitLab), which is normal for a `-git` package. The `sha512sums = SKIP` entries are required for VCS sources and are not evidence of malice.

No malicious behavior is present: there are no network requests beyond the declared package sources, no encoded or obfuscated commands, no file operations, and no attempts to exfiltrate data or execute untrusted code. The content is consistent with ordinary AUR packaging practice.
</details>
<evidence>
</evidence>
<summary>
Standard AUR VCS metadata; no malicious behavior detected.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, PKGBUILD, client.install, host.install...
[1/4] Reviewing PKGBUILD, client.install, host.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR VCS metadata; no malicious behavior detected.
LLM auditresponse for host.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `host.install` is a standard `.install` script for an Arch Linux package. It contains only `post_install` and `post_upgrade` functions that print a warning message to the user via `echo`. There are no network requests, file operations, encoded commands, or any other suspicious behavior. The content is straightforward and serves only to inform the user about the unmaintained status of the upstream component. This is a normal packaging practice and poses no security risk.
</details>
<evidence></evidence>
<summary>No malicious code; only user warnings.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, client.install...
+ Reviewed host.install. Status: SAFE -- No malicious code; only user warnings.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard multi-package VCS build for the Looking Glass project. All sources come from the project's own upstream repositories or from the well-known upstream repositories it depends on. The `sha512sums` are all `SKIP`, which is normal and required for VCS sources.

The `prepare()` function reconfigures git submodules to use local clones from `$srcdir` and then runs `git submodule update`. This is a legitimate technique for building a project that uses submodules while declaring each submodule as a separate VCS source. It does not fetch or execute untrusted code from unexpected hosts. The `build()` and `package_*()` functions are ordinary cmake/make/install workflows. No obfuscation, encoded payloads, suspicious network requests, or system modifications outside the package scope are present.
</details>
<evidence>
</evidence>
<summary>
Standard upstream VCS build; no malicious or suspicious behavior found.
</summary>
</security_assessment>

[3/4] Reviewing client.install...
+ Reviewed PKGBUILD. Status: SAFE -- Standard upstream VCS build; no malicious or suspicious behavior found.
LLM auditresponse for client.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The `client.install` script contains only informational echo messages displayed during package installation and upgrade. It does not perform any network requests, file operations, code execution, or system modifications. The messages direct users to the official Looking Glass downloads page and suggest an alternative AUR package, which is standard packaging practice. No malicious behavior is present.
</details>
<evidence></evidence>
<summary>Benign install script with informational messages only.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed client.install. Status: SAFE -- Benign install script with informational messages only.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 16,263
  Completion Tokens: 2,076
  Total Tokens: 18,339
  Total Cost: $0.001432
  Execution Time: 145.91 seconds

Final Status: SAFE


No issues found.
