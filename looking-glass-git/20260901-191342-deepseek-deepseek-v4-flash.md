---
package: looking-glass-git
pkgver: B7.r826.g236efcb1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: b9e20f728bbe0de1871ebaca31738c802edc31f8
prompt_tokens: 16179
completion_tokens: 2174
total_tokens: 18353
cost: 0.00150298694
execution_time: 353.42
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: ok
upstream_files: 1602
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-01T19:13:42Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard -git PKGBUILD, no signs of malicious code.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no malicious content.
  - file: host.install
    status: safe
    summary: Only informational echo commands; no malicious content.
  - file: client.install
    status: safe
    summary: Standard informational install script, no security concerns.
---

Cloning https://aur.archlinux.org/looking-glass-git.git...
Cloned looking-glass-git
Analyzing looking-glass-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is safe to process with the requested `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo` commands. The `source` array consists entirely of `git+https` clones from the project's upstream repositories and its declared dependencies (github.com, gitlab.freedesktop.org). All checksums are `SKIP`, which is standard and expected for VCS sources and is not a safety concern for this source-fetching gate.

At top level, the PKGBUILD only defines variables and functions; there are no command substitutions, downloads, or executable statements in global scope. The `pkgver()` function only runs `git describe` and `sed`/`printf` against the already-cloned repository, so it performs no network access or payload execution. The `prepare()`, `build()`, and `package_*()` functions contain potentially relevant logic, but they are not executed due to `--noprepare` and `--nobuild`, and are outside the scope of this narrow safety gate. Nothing in the commands being run will execute untrusted code or exfiltrate data.
</details>
<evidence>
</evidence>
<summary>
Source fetch and pkgver are safe; no malicious top-level execution.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Source fetch and pkgver are safe; no malicious top-level execution.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Reviewing the 4 file(s) in the AUR repository. The 1602 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, PKGBUILD...
[0/4] Reviewing .SRCINFO, PKGBUILD, client.install...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a VCS package. All source URLs point to the project&#39;s official GitHub repositories and well-known libraries (cimgui, imgui, etc.). Checksums are SKIP, which is required for VCS sources. The prepare function handles submodules by pointing them to local copies in srcdir, a common technique to avoid network fetches and ensure reproducibility within the build environment. No obfuscation, unexpected network requests, or dangerous operations are present. There is no evidence of malicious injection or exfiltration.
</details>
<evidence></evidence>
<summary>Standard -git PKGBUILD, no signs of malicious code.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, PKGBUILD, client.install, host.install...
[1/4] Reviewing .SRCINFO, client.install, host.install...
+ Reviewed PKGBUILD. Status: SAFE -- Standard -git PKGBUILD, no signs of malicious code.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file contains only package metadata such as names, dependencies, and source URLs. All source entries point to the official upstream repositories for Looking Glass and its dependencies (hosted on github.com, gitlab.freedesktop.org, and similar). The `sha512sums` are set to `SKIP`, which is standard and required for VCS (`git+`) sources – this is not a security concern. There are no build scripts, no commands (at all), no network requests, no obfuscated content, and no references to external untrusted hosts. The file is purely declarative and poses no supply‑chain risk.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata file, no malicious content.</summary>
</security_assessment>

[2/4] Reviewing client.install, host.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no malicious content.
LLM auditresponse for host.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `host.install` is a standard Arch Linux `.install` script used by PKGBUILDs. It contains only `post_install()` and `post_upgrade()` functions that print a warning message in red about the upstream maintenance status of the LookingGlass host component. There are no network requests, file manipulations, encoded commands, or any other suspicious operations. The script performs no actions beyond displaying text to the user, which is purely informational and not malicious.
</details>
<evidence></evidence>
<summary>Only informational echo commands; no malicious content.</summary>
</security_assessment>

[3/4] Reviewing client.install...
+ Reviewed host.install. Status: SAFE -- Only informational echo commands; no malicious content.
LLM auditresponse for client.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard AUR package install script that only prints informational messages to the user. It does not perform any file operations, network requests, execute commands, or modify system files. The messages direct users to the official Looking Glass downloads page and suggest an alternative package. There is no malicious or suspicious content.
</details>
<evidence></evidence>
<summary>Standard informational install script, no security concerns.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed client.install. Status: SAFE -- Standard informational install script, no security concerns.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 16,179
  Completion Tokens: 2,174
  Total Tokens: 18,353
  Total Cost: $0.001503
  Execution Time: 353.42 seconds

Final Status: SAFE


No issues found.
