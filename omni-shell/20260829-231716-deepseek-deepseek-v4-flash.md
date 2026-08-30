---
package: omni-shell
pkgver: 0.1.6
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 8504
completion_tokens: 1087
total_tokens: 9591
cost: 0.00087004344
execution_time: 151.93
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: ok
upstream_files: 64
upstream_named_files: 2
unpinned_sources: 0
date: 2026-08-29T23:17:15Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD, pinned source, no malicious code.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file; no security issues found.
---

Cloning https://aur.archlinux.org/omni-shell.git...
Cloned omni-shell
Analyzing omni-shell AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is standard and well-formed. The global scope only contains variable definitions (pkgname, pkgver, source, checksums, etc.) and the `package()` function, which is **not** executed during `makepkg --nobuild --nodeps --noprepare` or `makepkg --printsrcinfo`. There is no `pkgver()` function containing any code. The `source` array points to a tarball from the project’s own git hosting service with a version tag, and a SHA-256 checksum is provided (not SKIP). No top-level command substitutions, obfuscated code, or network requests to unexpected hosts are present. Therefore, running the two commands to fetch sources and parse the PKGBUILD is safe.
</details>
<evidence></evidence>
<summary>Safe PKGBUILD, no risks from sourcing or source fetch.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe PKGBUILD, no risks from sourcing or source fetch.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: the PKGBUILD names 2 file(s) in the downloaded sources (src/omni-shell/bin/omni-shell, src/omni-shell/bin/omni-shell-ipc); they are upstream content and were not reviewed.
Reviewing the 2 file(s) in the AUR repository. The 64 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a straightforward packaging script. It downloads a versioned tarball from the maintainer's own git repository over HTTPS, with a pinned SHA‑256 checksum. The `package()` function installs QML, JavaScript, and binary files into standard system paths under `/usr/share/$pkgname` and `/usr/bin`. There are no unexpected network requests, obfuscated commands, or file operations outside the package’s scope. All operations are consistent with normal AUR packaging practices.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD, pinned source, no malicious code.</summary>
</security_assessment>

[1/2] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD, pinned source, no malicious code.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a standard AUR metadata file. It specifies the package name, version, description, upstream URL, dependencies, and a single source tarball with an explicit SHA-256 checksum. The source URL points to the project's own git hosting, and the checksum is pinned (not skipped). All listed dependencies are legitimate system packages (e.g., `quickshell`, `curl`, `python`). There is no executable code, obfuscation, network requests outside the declared source, or any other malicious indicators. The file conforms to normal AUR packaging practices.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file; no security issues found.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file; no security issues found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 8,504
  Completion Tokens: 1,087
  Total Tokens: 9,591
  Total Cost: $0.000870
  Execution Time: 151.93 seconds

Final Status: SAFE


No issues found.
