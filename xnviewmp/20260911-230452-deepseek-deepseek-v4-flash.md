---
package: xnviewmp
pkgver: 1.11.6
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 12604
completion_tokens: 1633
total_tokens: 14237
cost: 0.00107312940
execution_time: 25.6
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-11T23:04:52Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: No security issues in .gitignore
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with pinned checksums and official upstream source; no malicious behavior found.
  - file: XnView.desktop
    status: safe
    summary: Standard .desktop file, no malicious content.
---

Materializing xnviewmp from local mirror...
Materialized xnviewmp
Analyzing xnviewmp AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard top-level variable assignments (`pkgname`, `pkgver`, `pkgrel`, `source`, `sha256sums`, etc.) and the definition of the `package()` function. No global-scope command substitutions, external network fetches, or executable statements are present, so sourcing the PKGBUILD during `makepkg --printsrcinfo` will not execute any malicious code. The `package()` function is not executed during `--printsrcinfo` and will be covered in the full audit separately. The source URL points to the application&apos;s official upstream domain, and checksums are provided.
</details>
<evidence>
</evidence>
<summary>
No top-level malicious code; sourcing PKGBUILD for printsrcinfo is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level malicious code; sourcing PKGBUILD for printsrcinfo is safe.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing PKGBUILD...
[0/4] Reviewing PKGBUILD, .SRCINFO...
[0/4] Reviewing PKGBUILD, .SRCINFO, .gitignore...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.gitignore` file is a standard configuration file for Git repositories. It lists common build artifacts (`*.tgz`, `*.tar.xz`, `pkg`, `src`) that appear when building or downloading an AUR package. There are no network requests, command executions, encoded payloads, or any other unexpected operations. The content is entirely benign and consistent with routine packaging practices.
</details>
<evidence></evidence>
<summary>No security issues in .gitignore</summary>
</security_assessment>

[1/4] Reviewing PKGBUILD, .SRCINFO...
+ Reviewed .gitignore. Status: SAFE -- No security issues in .gitignore
[1/4] Reviewing PKGBUILD, .SRCINFO, XnView.desktop...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a standard metadata file for Arch Linux AUR packages. It contains the package declaration, version, description, dependencies, and source URLs. The source tarball is fetched from the official XnView website (`download.xnview.com`), which is the project's legitimate upstream. Both sources include SHA-256 checksums for integrity verification. There are no embedded commands, obfuscated code, suspicious network requests, or any operations beyond normal packaging metadata. The file is purely declarative and poses no security threat.
</details>
<evidence>

</evidence>
<summary>Standard AUR metadata file, no malicious content.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, XnView.desktop...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard packaging script for the XnView MP application. It downloads the official upstream tarball from download.xnview.com, verifies it with pinned SHA-256 checksums, and installs the prebuilt application files into `/opt/xnviewmp`, creates a symlink in `/usr/bin`, installs a desktop entry, and installs the upstream license file. There are no suspicious network operations, no obfuscated commands, no dynamic code execution, and no modifications outside the package's own install directories.

The file follows normal AUR packaging practices: copying files into `$pkgdir`, setting permissions, and cleaning up a bundled desktop file that is replaced by the packaged one. No evidence of exfiltration, backdoors, credential theft, or execution of untrusted downloaded content was found. The use of the official upstream URL and fixed checksums further supports that this is a legitimate package.
</details>
<evidence>
</evidence>
<summary>
Standard PKGBUILD with pinned checksums and official upstream source; no malicious behavior found.
</summary>
</security_assessment>

[3/4] Reviewing XnView.desktop...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with pinned checksums and official upstream source; no malicious behavior found.
LLM auditresponse for XnView.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard freedesktop.org .desktop entry for XnView MP. It defines the application name, icon, execution command, MIME types, and categories. There is no embedded code, no network requests, no obfuscation, and no suspicious operations. The `Exec` line uses `/usr/bin/xnviewmp %F`, which is the normal invocation for a desktop application that accepts file arguments. The file contains no malicious or unexpected content.
</details>
<evidence></evidence>
<summary>Standard .desktop file, no malicious content.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed XnView.desktop. Status: SAFE -- Standard .desktop file, no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,604
  Completion Tokens: 1,633
  Total Tokens: 14,237
  Total Cost: $0.001073
  Execution Time: 25.60 seconds

Final Status: SAFE


No issues found.
