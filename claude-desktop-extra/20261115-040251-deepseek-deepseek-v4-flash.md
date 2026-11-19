---
package: claude-desktop-extra
pkgver: 5.11492.5
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 20638
completion_tokens: 3169
total_tokens: 23807
cost: 0.00242784
execution_time: 28.7
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-15T04:02:51Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Clean metadata file with no malicious content.
  - file: claude-desktop-extra.install
    status: safe
    summary: Standard post-install hook with no malicious behavior.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no malicious code or network
---

Materializing claude-desktop-extra from local mirror...
Cloning https://aur.archlinux.org/claude-desktop-extra.git...
Cloned claude-desktop-extra
Analyzing claude-desktop-extra AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard top-level variable assignments (pkgname, pkgver, pkgrel, arch, depends, source arrays, checksums, etc.) and a function definition for package(). No command substitutions, backticks, eval, or any other executable code exist at the global scope. There is no top-level network access, file exfiltration, or any other dangerous operation that could execute while sourcing the PKGBUILD for `makepkg --printsrcinfo`. The package() function contains file operations, but it is not executed during this step and will be audited separately.
</details>
<evidence></evidence>
<summary>No malicious top-level code; safe to source for printsrcinfo.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious top-level code; safe to source for printsrcinfo.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, claude-desktop-extra.install...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is purely metadata describing the package dependencies, source URLs, and checksums. No executable code, obfuscated strings, or suspicious operations are present. The source tarballs are downloaded from the project&#39;s own GitHub releases with pinned SHA-256 checksums. All dependencies and optional dependencies are standard libraries or well-known tools relevant to the application&#39;s functionality (Claude Desktop). There is no evidence of malicious content.
</details>
<evidence></evidence>
<summary>Clean metadata file with no malicious content.</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, claude-desktop-extra.install...
+ Reviewed .SRCINFO. Status: SAFE -- Clean metadata file with no malicious content.
LLM auditresponse for claude-desktop-extra.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard pacman install hook for an Electron-based application. It performs routine post-install tasks: setting the SUID bit on the application's own chrome-sandbox binary, writing an AppArmor profile for the application, and refreshing desktop/icon caches. All operations target the package's own files or standard system cache directories. The informational notes printed to the user about Cowork VM dependencies and legacy repo migration are harmless messages and do not execute any untrusted code. There are no network requests, no downloads, no obfuscated commands, and no file operations outside the package's scope. The script is consistent with ordinary packaging practices.
</details>
<evidence>
</evidence>
<summary>Standard post-install hook with no malicious behavior.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed claude-desktop-extra.install. Status: SAFE -- Standard post-install hook with no malicious behavior.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a pre-built patched application. It downloads a checksum-pinned tarball from the maintainer&#x27;s own GitHub releases, installs it to `/usr/lib/claude-desktop/`, and places desktop integration files (launcher, icons, MIME types, search provider, udev rules, polkit policies) into the correct system directories. There are no network requests during `build()` or `package()` beyond what the `source` array declares. No `eval`, `curl|bash`, base64-encoded payloads, or attempts to exfiltrate data appear anywhere in the file.

All commands (`cp`, `install`, `chmod`, `printf`, `find`) are standard packaging operations. The SUID set on `chrome-sandbox` is normal for Electron apps. The release-stamp validation guards against injection in the JSON metadata. The polkit and udev files from the tarball are installed as shipped, consistent with the application&#x27;s stated Cowork/VM features.

The pre-built tarball comes from the maintainer&#x27;s GitHub rather than Anthropic&#x27;s official download, and the application&#x27;s exact contents inside the tarball are not audited here. However, the PKGBUILD itself contains no malicious logic — it transparently installs what it fetches under pinned checksums.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with no malicious code or network</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no malicious code or network
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 20,638
  Completion Tokens: 3,169
  Total Tokens: 23,807
  Total Cost: $0.002428
  Execution Time: 28.70 seconds

Final Status: SAFE


No issues found.
