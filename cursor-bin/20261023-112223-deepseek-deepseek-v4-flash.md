---
package: cursor-bin
pkgver: 3.27.12
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 13076
completion_tokens: 6110
total_tokens: 19186
cost: 0.002301936
execution_time: 85.8
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-23T11:22:22Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with no malicious indicators.
  - file: .SRCINFO
    status: safe
    summary: Standard metadata file, no malicious content.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file with no security issues.
  - file: rg.sh
    status: safe
    summary: Benign wrapper script for ripgrep argument substitution.
---

Materializing cursor-bin from local mirror...
Materialized cursor-bin
Analyzing cursor-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only performs standard top‑level variable assignments (`pkgname`, `pkgver`, `arch`, `source`, `sha512sums`, `depends`, `noextract`, etc.) and defines a single function `package()`.  No command substitution (`$(` or backtick), no `eval`, and no function calls exist in the global scope.  When `makepkg --printsrcinfo` sources the file, it merely populates these variables; the `package()` function body is parsed but never executed.  There is no mechanism at the top level that could download, exfiltrate data, or run arbitrary code during the sourcing step.
</details>
<evidence></evidence>
<summary>No malicious code in global scope</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code in global scope
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .gitignore...
[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard Arch packaging practices for a binary package. The source tarball is downloaded from the official Cursor downloads domain (downloads.cursor.com), and auxiliary scripts (code.sh, code.mjs) are fetched from the Arch Linux GitLab infrastructure, which is trustworthy. Checksums are provided for all sources (the .deb initially had `SKIP` but is immediately overridden with a valid sha512sum). The `package()` function only performs conventional extraction, symlink creation, and branding‑related sed substitutions. There are no obfuscated commands, unexpected network requests, executable downloads, or attempts to access sensitive data outside the package’s own scope. All operations are either routine packaging steps or light string replacement in upstream scripts.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with no malicious indicators.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD, rg.sh...
[1/4] Reviewing .SRCINFO, .gitignore, rg.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with no malicious indicators.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a metadata-only descriptor for the AUR package `cursor-bin`. It defines the package name, version, dependencies, source URLs, and checksums. All source URLs point to expected locations: the official Cursor download server (`downloads.cursor.com`) and the Arch Linux packaging repository on GitLab (`gitlab.archlinux.org`). The fourth source is a local file `rg.sh` included in the AUR source. Checksums are provided for every source, and none are set to `SKIP`. There is no embedded code, no commands to execute, and no evidence of malicious behavior. This file simply describes how to build/install the package.
</details>
<evidence></evidence>
<summary>Standard metadata file, no malicious content.</summary>
</security_assessment>

[2/4] Reviewing .gitignore, rg.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata file, no malicious content.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard .gitignore file for an AUR package repository. It lists build artifacts (AppImage, package tarball, extracted files in pkg/ and src/) that should be ignored by version control. There is no executable code, no network requests, no obfuscation, and no dangerous operations. The file is harmless and follows normal packaging conventions.
</details>
<evidence></evidence>
<summary>Standard .gitignore file with no security issues.</summary>
</security_assessment>

[3/4] Reviewing rg.sh...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore file with no security issues.
LLM auditresponse for rg.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a simple wrapper script for ripgrep (`/usr/bin/rg`). It replaces the argument `--cursor-ignore` with `--ignore-file` using bash's parameter substitution (`${@/.../...}`) and then executes the real `rg` via `exec`. No obfuscation, network requests, file operations, or dangerous commands are present. The use of `&amp;quot;` in the provided text is likely an HTML escaping artifact and not part of the actual file; even if present, it would not execute malicious code—only break the script. The script performs a straightforward and expected transformation for integrating with Cursor IDE, consistent with standard packaging practices.
</details>
<evidence></evidence>
<summary>Benign wrapper script for ripgrep argument substitution.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed rg.sh. Status: SAFE -- Benign wrapper script for ripgrep argument substitution.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,076
  Completion Tokens: 6,110
  Total Tokens: 19,186
  Total Cost: $0.002302
  Execution Time: 85.80 seconds

Final Status: SAFE


No issues found.
