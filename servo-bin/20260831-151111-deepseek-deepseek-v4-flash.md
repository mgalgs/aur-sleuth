---
package: servo-bin
pkgver: 0.5.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 10099
completion_tokens: 1402
total_tokens: 11501
cost: 0.00110372262
execution_time: 41.25
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: ok
upstream_files: 36
upstream_named_files: 1
unpinned_sources: 0
date: 2026-08-31T15:11:11Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: No malicious content; standard AUR metadata.
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config for upstream version checking.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD, no security issues found.
---

Cloning https://aur.archlinux.org/servo-bin.git...
Cloned servo-bin
Analyzing servo-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only static variable assignments, a source entry pointing to the official Servo GitHub release, and a checksum that is not skipped. There is no top-level code execution, no command substitution, no `pkgver()` function, and no dangerous operations (e.g., `curl`, `eval`, base64 decoding) that would execute during the `makepkg` commands specified. The `prepare()`, `build()`, and `package()` functions are excluded from execution by `--nobuild` and `--noprepare`, so they are out of scope for this gate. Therefore, fetching sources and sourcing the PKGBUILD is safe.
</details>
<evidence></evidence>
<summary>No malicious code in top-level scope or pkgver().</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code in top-level scope or pkgver().
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: the PKGBUILD names 1 file(s) in the downloaded sources (src/servo/resources/org.servo.Servo.desktop); they are upstream content and were not reviewed.
Reviewing the 3 file(s) in the AUR repository. The 36 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, .nvchecker.toml...
[0/3] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.SRCINFO` file for the `servo-bin` AUR package. It declares metadata such as version, dependencies, and a source tarball from the official GitHub releases page (`https://github.com/servo/servo/releases/download/v0.5.0/servo-x86_64-linux-gnu.tar.gz`). The source is pinned to a specific version with a valid SHA-256 checksum. There is no executable code, network requests beyond the declared source, obfuscated content, or any other suspicious patterns. This file conforms to normal AUR packaging practices.
</details>
<evidence></evidence>
<summary>No malicious content; standard AUR metadata.</summary>
</security_assessment>

[1/3] Reviewing .nvchecker.toml, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- No malicious content; standard AUR metadata.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard configuration for `nvchecker`, a tool that monitors upstream software releases. It defines how to check for new versions of the `servo` browser: by watching the `https://github.com/servo/servo.git` repository for new Git tags prefixed with `v`. This is a normal and expected packaging practice for AUR maintainers who want to automate version bump detection. There is no code execution, no network requests to unexpected hosts, and no obfuscated or dangerous content. The file is entirely benign.
</details>
<evidence></evidence>
<summary>Standard nvchecker config for upstream version checking.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config for upstream version checking.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a binary release. The source is pinned to a specific version with a fixed checksum, and all operations in prepare() and package() are legitimate — fixing a desktop file Exec path, installing the binary, creating a symlink, copying resources, and installing icons. There is no obfuscated code, no unexpected network requests, and no commands that deviate from packaging norms.
</details>
<evidence>

</evidence>
<summary>Standard PKGBUILD, no security issues found.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD, no security issues found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,099
  Completion Tokens: 1,402
  Total Tokens: 11,501
  Total Cost: $0.001104
  Execution Time: 41.25 seconds

Final Status: SAFE


No issues found.
