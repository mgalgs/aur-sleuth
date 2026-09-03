---
package: wooting-bg-service
pkgver: 0.5.0
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: b9e20f728bbe0de1871ebaca31738c802edc31f8
prompt_tokens: 12377
completion_tokens: 2832
total_tokens: 15209
cost: 0.00145987772
execution_time: 66.29
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: ok
upstream_files: 1
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-08-31T23:21:56Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore with no security concerns.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR AppImage packaging with pinned checksum; no malicious behavior found.
  - file: .SRCINFO
    status: safe
    summary: Standard vendor AppImage packaging with pinned checksum; no suspicious behavior found.
  - file: NOTICE.md
    status: safe
    summary: Informational notice file, no security issues.
---

Cloning https://aur.archlinux.org/wooting-bg-service.git...
Cloned wooting-bg-service
Analyzing wooting-bg-service AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only defines variables and a `source` array pointing to the official Wooting API (https://api.wooting.io). The sha256sums entry is fixed, allowing integrity verification upon download. No top-level commands, `pkgver()` function, or other code execution occurs during `makepkg --nobuild --nodeps --noprepare` / `makepkg --printsrcinfo`. The `prepare()`, `build()`, and `package()` functions are not executed by these commands, so their content (which includes AppImage extraction and file manipulation) is out of scope for this safety gate. The download and verification of the AppImage from the official upstream is standard and does not introduce a supply-chain risk at this stage.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with verified source download from official domain.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Standard PKGBUILD with verified source download from official domain.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Reviewing the 4 file(s) in the AUR repository. The 1 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .gitignore...
[0/4] Reviewing .SRCINFO, .gitignore, NOTICE.md...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` used in version-controlled repositories to exclude certain files and directories from tracking. It lists common build artifacts, archive formats, IDE configuration directories, and CMake-generated files. There is no executable code, no network or file operations, no obfuscation, and no indication of malicious intent. This is normal packaging infrastructure, not a security threat.
</details>
<evidence>

</evidence>
<summary>Standard .gitignore with no security concerns.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, .gitignore, NOTICE.md, PKGBUILD...
[1/4] Reviewing .SRCINFO, NOTICE.md, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore with no security concerns.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows a standard AUR packaging pattern for distributing a prebuilt upstream AppImage. It downloads the package's own declared binary from the vendor's HTTPS API (`api.wooting.io`), verifies it with a pinned SHA-256 checksum, extracts the expected `usr/share/applications` and `usr/share/icons` directories from the AppImage using its standard `--appimage-extract` flag, and installs the binary, symlink, desktop entry, and icons into the package directory. No suspicious network endpoints, obfuscated code, encoded payloads, eval-style execution, or unrelated file operations are present.

The `prepare()` step copies the AppImage and makes it executable before extraction; this is a common workaround for build directories mounted with `noexec` and is not malicious. The build-time `sed` and `chmod` adjustments only modify the packaged desktop file and permissions within the extracted application tree. The use of `license=(unknown)` and installation of an upstream binary AppImage are packaging hygiene considerations, not evidence of a supply-chain attack. The pinned checksum and official upstream source are consistent with safe packaging practices.
</details>
<evidence>
</evidence>
<summary>
Standard AUR AppImage packaging with pinned checksum; no malicious behavior found.</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, NOTICE.md...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR AppImage packaging with pinned checksum; no malicious behavior found.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO is standard Arch package metadata for a prebuilt vendor binary (the Wooting Background Service for Wootility). The source is fetched over HTTPS from the vendor's own API domain (api.wooting.io) with a pinned version (0.5.0) and a pinned SHA-256 checksum, so the download is attributable to the upstream vendor and integrity-checked. The `noextract` and `!strip` options are ordinary for AppImage-based packaging.

No malicious behavior is present: there are no encoded or obfuscated commands, no unexpected network endpoints, no file-exfiltration operations, no build-time code fetching, and no tampering with system files. At most, the opaque prebuilt AppImage and the "unknown" license are hygiene/auditability concerns inherent to distributing a vendor binary, not evidence of a supply-chain attack.
</details>
<evidence>

</evidence>
<summary>Standard vendor AppImage packaging with pinned checksum; no suspicious behavior found.</summary>
</security_assessment>

[3/4] Reviewing NOTICE.md...
+ Reviewed .SRCINFO. Status: SAFE -- Standard vendor AppImage packaging with pinned checksum; no suspicious behavior found.
LLM auditresponse for NOTICE.md:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a plain Markdown notice stating that the package is built and published from a GitHub repository. It contains no executable code, commands, network requests, or any other potentially malicious content. It is purely informational and follows standard packaging practices.
</details>
<evidence></evidence>
<summary>Informational notice file, no security issues.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed NOTICE.md. Status: SAFE -- Informational notice file, no security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,377
  Completion Tokens: 2,832
  Total Tokens: 15,209
  Total Cost: $0.001460
  Execution Time: 66.29 seconds

Final Status: SAFE


No issues found.
