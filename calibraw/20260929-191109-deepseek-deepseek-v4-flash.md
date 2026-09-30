---
package: calibraw
pkgver: 1.1.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 9882
completion_tokens: 1680
total_tokens: 11562
cost: 0.0010103646
execution_time: 43.5
files_reviewed: 3
files_skipped: 1
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-29T19:11:09Z
file_verdicts:
  - file: CalibRawIcon.png
    status: skipped
    summary: "Skipping binary file: CalibRawIcon.png"
  - file: PKGBUILD
    status: safe
    summary: No malicious behavior found; standard Rust AUR package with pinned checksums.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with pinned checksums; no malicious behavior found.
  - file: calibraw.desktop
    status: safe
    summary: Standard desktop entry file for RAW photo app; no malicious behavior found.
---

Materializing calibraw from local mirror...
Materialized calibraw
Analyzing calibraw AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable assignments and function definitions at the global scope. No command substitutions, backticks, or other top-level code that could execute during `makepkg --printsrcinfo`. The `source` array and checksums are defined but not downloaded or verified at this stage. The `build()` and `package()` functions are defined but not executed during the `--printsrcinfo` step. There is no malicious top-level code.</details>
<evidence></evidence>
<summary>No dangerous top-level code; safe to source.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code; safe to source.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, CalibRawIcon.png...
[0/4] Reviewing .SRCINFO, CalibRawIcon.png, PKGBUILD...
[0/4] Reviewing .SRCINFO, CalibRawIcon.png, PKGBUILD, calibraw.desktop...
[1/4] Reviewing .SRCINFO, PKGBUILD, calibraw.desktop...
! Reviewed CalibRawIcon.png. Status: SKIPPED -- Skipping binary file: CalibRawIcon.png
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Arch packaging practices. It downloads the upstream CalibRaw source tarball from the project's official GitHub repository, along with a local icon and desktop file, and provides pinned sha256 checksums for all three sources. The build step runs a standard `cargo build` for the upstream Rust application, and the package step installs only the compiled binary, icon, and desktop entry into the package directory.
</details>
<evidence>
</evidence>
<summary>
No malicious behavior found; standard Rust AUR package with pinned checksums.</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, calibraw.desktop...
+ Reviewed PKGBUILD. Status: SAFE -- No malicious behavior found; standard Rust AUR package with pinned checksums.
LLM auditresponse for .SRCINFO:
 <security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a standard AUR package metadata file. It defines a package named calibraw, its upstream GitHub URL, dependencies, and three source files: an upstream source tarball, an icon, and a desktop entry file. All three sources have pinned SHA-256 checksums, and the tarball is fetched from the project's own GitHub releases URL.

There is no embedded code, no build or install logic, no network requests beyond the declared source URL, and no use of eval, base64, curl, wget, or any other potentially dangerous constructs. The file contains only declarative PKGBUILD metadata. The checksums are set to real hashes rather than SKIP, and there is nothing indicating obfuscation, exfiltration, or unexpected system modification.
</details>
<evidence></evidence>
<summary>Standard AUR metadata with pinned checksums; no malicious behavior found.</summary>
</security_assessment>

[3/4] Reviewing calibraw.desktop...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with pinned checksums; no malicious behavior found.
LLM auditresponse for calibraw.desktop:
 <security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Linux desktop entry file for a RAW photo development application. The `Exec=calibraw %F` line launches the application's own binary and passes any opened file paths to it, which is the conventional pattern for GUI applications registered as file handlers. The `MimeType` list associates the application with common digital camera RAW formats, which directly matches the application's stated purpose of developing RAW photos. There are no network operations, no encoded or obfuscated commands, no unusual file operations, and no references to external hosts. The file contains no behavior beyond declaring the application's desktop integration metadata.
</details>
<evidence>
</evidence>
<summary>
Standard desktop entry file for RAW photo app; no malicious behavior found.
</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed calibraw.desktop. Status: SAFE -- Standard desktop entry file for RAW photo app; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
(Skipped 1 file: CalibRawIcon.png)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 9,882
  Completion Tokens: 1,680
  Total Tokens: 11,562
  Total Cost: $0.001010
  Execution Time: 43.50 seconds

Final Status: SAFE


No issues found.


Audit Skips:

CalibRawIcon.png: [SKIPPED] Skipping binary file: CalibRawIcon.png
