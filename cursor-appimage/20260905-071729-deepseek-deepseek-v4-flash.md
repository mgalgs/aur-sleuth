---
package: cursor-appimage
pkgver: 3.19.7
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 10827
completion_tokens: 1469
total_tokens: 12296
cost: 0.00118131230
execution_time: 136.37
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-05T07:17:29Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Benign .gitignore; no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Standard metadata file, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR AppImage package, no malicious content.
---

Materializing cursor-appimage from local mirror...
Materialized cursor-appimage
Analyzing cursor-appimage AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD contains only variable assignments and array definitions at global scope. There are no top-level command substitutions, no `eval`, `curl`, `wget`, `base64`, or other executable statements that would run during `makepkg --printsrcinfo`. Sourcing this file simply defines metadata such as `pkgname`, `pkgver`, `source`, `sha512sums`, and the `prepare()`/`package()` functions; none of the function bodies execute during `--printsrcinfo`.

The `prepare()` and `package()` functions contain AppImage extraction and packaging logic, including creation of launcher scripts and a `chmod 4755` on the Electron sandbox. These are relevant to the full audit, but they cannot execute during `makepkg --printsrcinfo`, so they are out of scope for this narrow safety gate. The download source points to the official Cursor downloads domain with a pinned commit and a checksum, which is consistent with normal packaging.
</details>
<evidence>
</evidence>
<summary>
Top-level PKGBUILD scope is safe; only variable assignments are executed by printsrcinfo.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD scope is safe; only variable assignments are executed by printsrcinfo.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, .gitignore...
[0/3] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` that ignores `*.AppImage` and `*.tar.zst` files. This is a common practice in AUR packages to avoid committing large build artifacts or downloaded binaries. There is no code, no network requests, no system modifications, and no obfuscation. The content is purely declarative and poses no security risk.
</details>
<evidence></evidence>
<summary>Benign .gitignore; no security concerns.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Benign .gitignore; no security concerns.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard AUR `.SRCINFO` metadata file. It defines package information, dependencies, and a single source with a pinned checksum (sha512sum). The source URL points to the official Cursor downloads domain (`downloads.cursor.com`), which is expected for this package. There is no executable code, no obfuscation, no network requests beyond the static source declaration, and no signs of malicious behavior. The file conforms to normal packaging practices.
</details>
<evidence></evidence>
<summary>Standard metadata file, no security issues.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata file, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for an AppImage-based package. It downloads the official Cursor AppImage from a pinned URL with a specific commit hash, verifies it with a sha512sum, extracts it, and installs the necessary files and wrappers. The launcher scripts are static and contain no dynamic code execution, network calls, or obfuscation. The chrome-sandbox setuid operation is expected for Electron apps. There are no signs of supply-chain attack: no unexpected network requests, no eval/obfuscation, no attempts to exfiltrate data, and no manipulation of files outside the application&#x27;s scope. The pinned hash and checksum provide reasonable integrity verification, and the overall behavior matches what one would expect for a repackaged Electron/AppImage application.
</details>
<evidence></evidence>
<summary>Standard AUR AppImage package, no malicious content.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR AppImage package, no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,827
  Completion Tokens: 1,469
  Total Tokens: 12,296
  Total Cost: $0.001181
  Execution Time: 136.37 seconds

Final Status: SAFE


No issues found.
