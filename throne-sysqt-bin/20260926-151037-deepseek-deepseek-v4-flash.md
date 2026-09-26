---
package: throne-sysqt-bin
pkgver: 1.3.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 15040
completion_tokens: 2512
total_tokens: 17552
cost: 0.00094381056
execution_time: 49.63
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-26T15:10:37Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: Plain license file, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR binary packaging with pinned checksums from upstream GitHub releases. No malicious behavior found.
  - file: .SRCINFO
    status: safe
    summary: Standard metadata file, no malicious content.
  - file: Throne.desktop
    status: safe
    summary: Standard desktop launcher file; no suspicious or malicious behavior found.
  - file: Throne.sh
    status: safe
    summary: No malicious code found; standard launch script.
---

Materializing throne-sysqt-bin from local mirror...
Materialized throne-sysqt-bin
Analyzing throne-sysqt-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The global (top-level) scope of this PKGBUILD only contains standard variable assignments (`pkgname`, `pkgver`, `pkgdesc`, `arch`, `url`, `license`, `depends`, `source`, `sha256sums`, etc.) and function definitions (`prepare()`, `package()`). There are no command substitutions, backticks, or function calls that would execute during sourcing. The `sha256sums` are present (not `SKIP`), but even if they were skipped, this would not affect safety of `makepkg --printsrcinfo`. No code runs in the global scope that could exfiltrate data, download payloads, or modify the system. Therefore, parsing this PKGBUILD with `makepkg --printsrcinfo` is safe. Note: The `prepare()` and `package()` functions will be audited separately in the full review.
</details>
<evidence></evidence>
<summary>No top-level dangerous code execution.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level dangerous code execution.
Reviewing the 5 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, LICENSE...
[0/5] Reviewing .SRCINFO, LICENSE, PKGBUILD...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a plain text license file (LICENSE). It contains no executable code, no network requests, no file operations, and no obfuscation. It simply states a permissive license and does not present any security concerns. There is no evidence of malicious behavior.
</details>
<evidence></evidence>
<summary>Plain license file, no security issues.</summary>
</security_assessment>

[0/5] Reviewing .SRCINFO, LICENSE, PKGBUILD, Throne.desktop...
[1/5] Reviewing .SRCINFO, PKGBUILD, Throne.desktop...
+ Reviewed LICENSE. Status: SAFE -- Plain license file, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard AUR binary package. It downloads a prebuilt `.deb` from the project&apos;s own GitHub releases page, verifies all sources with pinned SHA-256 checksums, extracts the archive with `bsdtar`, and installs the application binaries, launcher script, desktop entry, and icon into the package directory. There is no execution of fetched scripts, no network access outside the declared upstream source, no obfuscated commands, and no modification of files outside the package&apos;s own installed paths.
</details>
<evidence>
</evidence>
<summary>
Standard AUR binary packaging with pinned checksums from upstream GitHub releases. No malicious behavior found.
</summary>
</security_assessment>

[1/5] Reviewing .SRCINFO, PKGBUILD, Throne.desktop, Throne.sh...
[2/5] Reviewing .SRCINFO, Throne.desktop, Throne.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR binary packaging with pinned checksums from upstream GitHub releases. No malicious behavior found.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a metadata file for the AUR package `throne-sysqt-bin`. It contains only package description, dependencies, source URLs, and checksums. There are no executable commands, no obfuscated code, no network requests beyond the declared upstream source URLs (GitHub releases), and no attempts to exfiltrate data or modify the system. All source files have explicit SHA-256 checksums, and the package version is pinned to a specific release. The file conforms to standard AUR packaging practices and presents no security issues.
</details>
<evidence></evidence>
<summary>Standard metadata file, no malicious content.</summary>
</security_assessment>

[3/5] Reviewing Throne.desktop, Throne.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata file, no malicious content.
LLM auditresponse for Throne.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard freedesktop.org .desktop launcher file for a GUI application. It only defines desktop entry metadata such as the application name, icon, category, and the executable command `throne`. There are no network operations, file manipulations, obfuscated content, or any other potentially malicious behavior. The file is limited to launching the application and contains no code execution beyond the expected `Exec=throne` line.
</details>
<evidence></evidence>
<summary>Standard desktop launcher file; no suspicious or malicious behavior found.</summary>
</security_assessment>

[4/5] Reviewing Throne.sh...
+ Reviewed Throne.desktop. Status: SAFE -- Standard desktop launcher file; no suspicious or malicious behavior found.
LLM auditresponse for Throne.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a standard launch wrapper for the Throne application (a Nekoray fork). It performs routine file operations: creating/migrating the config directory, backing up old JSON configs to SQLite, and removing broken symlinks to geo asset files. It then executes the application binary. No network requests, downloads, obfuscation, or system modifications outside the application's own data directory are present. The behavior is consistent with a legitimate AUR package launch script.
</details>
<evidence></evidence>
<summary>No malicious code found; standard launch script.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed Throne.sh. Status: SAFE -- No malicious code found; standard launch script.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 15,040
  Completion Tokens: 2,512
  Total Tokens: 17,552
  Total Cost: $0.000944
  Execution Time: 49.63 seconds

Final Status: SAFE


No issues found.
