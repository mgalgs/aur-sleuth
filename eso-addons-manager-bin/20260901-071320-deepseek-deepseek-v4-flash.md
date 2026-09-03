---
package: eso-addons-manager-bin
pkgver: 0.4.23
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: b9e20f728bbe0de1871ebaca31738c802edc31f8
prompt_tokens: 12298
completion_tokens: 1982
total_tokens: 14280
cost: 0.00131592104
execution_time: 30.11
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: ok
upstream_files: 2
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-01T07:13:20Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with pinned checksums; no malicious content.
  - file: NOTICE.md
    status: safe
    summary: Benign markdown notice file, no security issues.
  - file: com.arviceblot.eso-addon-manager.desktop
    status: safe
    summary: Standard desktop entry file with no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard -bin PKGBUILD extracting pinned upstream AppImage; no malicious behavior found.
---

Cloning https://aur.archlinux.org/eso-addons-manager-bin.git...
Cloned eso-addons-manager-bin
Analyzing eso-addons-manager-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains top-level variable assignments and function definitions. No code is executed at source time beyond normal PKGBUILD parsing. The source array points to the official GitHub releases and license file over HTTPS, with explicit checksums. There is no `pkgver()` function, and no dangerous commands (eval, curl|bash, base64 decode, etc.) in the global scope. The prepare(), build(), and package() functions are not run by the commands in question. Therefore, fetching sources and parsing the PKGBUILD is safe.
</details>
<evidence></evidence>
<summary>No malicious code in scope for this gate.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code in scope for this gate.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Reviewing the 4 file(s) in the AUR repository. The 2 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, NOTICE.md...
[0/4] Reviewing .SRCINFO, NOTICE.md, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a metadata file used by the Arch User Repository to describe the package. It contains standard fields: package name, version, description, upstream URL, dependencies, and source URLs with pinned SHA256 checksums. The sources are fetched from the official GitHub releases of the upstream project, and both have explicit checksums that match known hashes. There are no embedded commands, scripts, or dynamic operations here — it's purely declarative configuration. No suspicious URLs, obfuscation, or unexpected behavior is present.
</details>
<evidence></evidence>
<summary>Standard AUR metadata with pinned checksums; no malicious content.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, NOTICE.md, PKGBUILD, com.arviceblot.eso-addon-manager.desktop...
[1/4] Reviewing NOTICE.md, PKGBUILD, com.arviceblot.eso-addon-manager.desktop...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with pinned checksums; no malicious content.
LLM auditresponse for NOTICE.md:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `NOTICE.md` is a simple markdown file containing a brief notice about the package&#x27;s build origin and a contribution invitation. It references the upstream GitHub repository at `https://github.com/parzival-space/pacman-pkgs`, which is a legitimate and expected URL for an AUR package. There is no executable code, no obfuscation, no network requests, no file operations, and no system modifications. The content is entirely benign and poses no security threat.
</details>
<evidence></evidence>
<summary>Benign markdown notice file, no security issues.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, com.arviceblot.eso-addon-manager.desktop...
+ Reviewed NOTICE.md. Status: SAFE -- Benign markdown notice file, no security issues.
LLM auditresponse for com.arviceblot.eso-addon-manager.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Linux desktop entry file (`.desktop`). It contains only metadata fields (Name, Comment, Exec, Type, Icon, Categories) that define how the application appears in the desktop environment. There is no executable code, no network requests, no obfuscation, and no attempt to modify system files or perform any dangerous operations. The `Exec` line simply points to the application binary `eso-addon-manager`, which is expected behavior for a desktop entry. No security concerns are present.
</details>
<evidence></evidence>
<summary>Standard desktop entry file with no security issues.</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed com.arviceblot.eso-addon-manager.desktop. Status: SAFE -- Standard desktop entry file with no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging for a prebuilt AppImage. It downloads the application's own release AppImage and LICENSE from the project's GitHub repository, with pinned sha256 checksums. The prepare() function extracts three specific files from the AppImage using `--appimage-extract`; this is the normal way to unpack AppImages and does not execute the application. build() only adjusts permissions. package() installs the binary, desktop entry, and icon into the package directory. No suspicious network endpoints, obfuscated commands, eval/base64/curl|bash patterns, or out-of-scope system modifications are present. Blaming upstream AppImage contents is not warranted. The only minor note is that the prebuilt binary's contents are not audited by the PKGBUILD, but this is inherent to a -bin package and is not malicious packaging.
</details>
<evidence></evidence>
<summary>Standard -bin PKGBUILD extracting pinned upstream AppImage; no malicious behavior found.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard -bin PKGBUILD extracting pinned upstream AppImage; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,298
  Completion Tokens: 1,982
  Total Tokens: 14,280
  Total Cost: $0.001316
  Execution Time: 30.11 seconds

Final Status: SAFE


No issues found.
