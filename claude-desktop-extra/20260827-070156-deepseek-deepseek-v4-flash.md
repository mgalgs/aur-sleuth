---
package: claude-desktop-extra
pkgver: 1.37937.3
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: f47e5ed5e9b50f484d29402229454e7d1b1d7cdb
prompt_tokens: 16753
completion_tokens: 2758
total_tokens: 19511
cost: 0.00177083088
execution_time: 98.06
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
upstream_files: 3051
upstream_named_files: 1
unpinned_sources: 0
date: 2026-08-27T07:01:55Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: "Standard AUR metadata with pinned checksums from the project's own GitHub releases. No security issues found."
  - file: claude-desktop-extra.install
    status: safe
    summary: Standard post-install script, no malicious behavior.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with pinned checksums; no malicious indicators
---

Cloning https://aur.archlinux.org/claude-desktop-extra.git...
Cloned claude-desktop-extra
Analyzing claude-desktop-extra AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only variable assignments and function definitions (package()) in its top-level scope. No `pkgver()` function is defined. No command substitutions, backtick expressions, or dangerous invocations (`eval`, `curl`, `wget`, `base64`, etc.) exist outside of `package()`, which is not executed under `--nobuild`. The `source` arrays use standard GitHub release URLs from the package's own upstream repository. Sourcing this PKGBUILD and fetching its declared sources via `makepkg --nobuild --nodeps --noprepare` poses no risk of executing malicious code at this stage. The full review of `package()` will follow separately, but it is out of scope for this gate.
</details>
<evidence></evidence>
<summary>Safe: no executable code in global scope or pkgver().</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe: no executable code in global scope or pkgver().
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: the PKGBUILD names 1 file(s) in the downloaded sources (src/launcher/claude-desktop); they are upstream content and were not reviewed.
Reviewing the 3 file(s) in the AUR repository. The 3051 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, claude-desktop-extra.install...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file contains only standard package metadata: name, description, version, dependencies, architecture, and pinned source tarballs with SHA-256 checksums. The sources are downloaded from the project's own GitHub releases, which is the expected upstream location for this package. The checksums are concrete hashes rather than SKIP, so integrity of the downloaded archives is verified at build time.

No suspicious network hosts, obfuscated commands, unexpected file operations, or executable content are present. The file is consistent with normal AUR packaging practice and contains no evidence of malicious or injected code.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata with pinned checksums from the project's own GitHub releases. No security issues found.
</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, claude-desktop-extra.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with pinned checksums from the project's own GitHub releases. No security issues found.
LLM auditresponse for claude-desktop-extra.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The script performs standard post-install tasks for a desktop application: setting SUID on the chrome-sandbox binary (required for Chromium's sandbox), installing an AppArmor profile that allows unconfined userns access (a known workaround for kernel namespace restrictions on newer systems), and refreshing desktop/icon caches. No network requests, no obfuscated code, no data exfiltration, and no execution of untrusted downloaded content. The comments clearly explain each action, and all operations are local system administration tasks that align with the package's stated purpose.
</details>
<evidence></evidence>
<summary>Standard post-install script, no malicious behavior.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed claude-desktop-extra.install. Status: SAFE -- Standard post-install script, no malicious behavior.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD for `claude-desktop-extra` follows standard Arch packaging practices. It downloads a pre-built tarball from the maintainer's GitHub repository with pinned SHA-256 checksums, installs files into standard system directories (`/usr/lib/claude-desktop`, `/usr/bin`, `/usr/share/applications`, `/usr/share/icons`, `/usr/share/licenses`), and sets the SUID bit on `chrome-sandbox` (required for Chromium's sandbox). There are no suspicious network requests, obfuscated code, `eval`/`base64`/`curl`/`wget` commands, or tampering with files outside the package's scope. The `package()` function does not fetch or execute untrusted content from the tarball during build; it copies files verbatim. The use of a third-party pre-patched binary is noted as a trust choice, but the checksums provide integrity verification, and the behavior is consistent with the package's stated purpose of providing extra features. The `.install` file is not included in this analysis but is a common AUR convention. No evidence of a supply-chain attack or malicious injection is present.
</details>
<evidence>
</evidence>
<summary>Standard AUR PKGBUILD with pinned checksums; no malicious indicators</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with pinned checksums; no malicious indicators
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 16,753
  Completion Tokens: 2,758
  Total Tokens: 19,511
  Total Cost: $0.001771
  Execution Time: 98.06 seconds

Final Status: SAFE


No issues found.
