---
package: koboldcpp-bin
pkgver: 1.121
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 9611
completion_tokens: 2192
total_tokens: 11803
cost: 0.001240040970
execution_time: 33.58
files_reviewed: 3
files_skipped: 1
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-16T07:32:56Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard package metadata with pinned checksums; no security issues.
  - file: koboldcpp.png
    status: skipped
    summary: "Skipping binary file: koboldcpp.png"
  - file: koboldcpp.desktop
    status: safe
    summary: Benign, standard desktop launcher file. No malicious or suspicious content found.
  - file: PKGBUILD
    status: safe
    summary: "Benign PKGBUILD: pinned release, checksums, standard installs only. No malicious behavior found."
---

Materializing koboldcpp-bin from local mirror...
Materialized koboldcpp-bin
Analyzing koboldcpp-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard top-level variable definitions (pkgname, pkgver, pkgrel, arch, url, license, depends, conflicts, provides, source, sha256sums) and a package() function. There are no command substitutions, eval calls, or any code that executes in the global scope. Running `makepkg --printsrcinfo` would only source these variable definitions, which is safe. The package() function is not executed during this step and will be audited separately.</details>
<evidence></evidence>
<summary>No top-level code execution; sourcing is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level code execution; sourcing is safe.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, koboldcpp.desktop...
[0/4] Reviewing .SRCINFO, koboldcpp.desktop, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a standard AUR metadata file that declares package name, version, dependencies, and source URLs with pinned SHA256 checksums. All sources point to the official GitHub repository of the project (LostRuins/koboldcpp). The checksums are provided and not set to SKIP, ensuring integrity of the downloaded artifacts. There is no obfuscated code, no suspicious network requests, no unexpected file operations, and nothing that deviates from standard packaging practices. This file is safe.
</details>
<evidence></evidence>
<summary>Standard package metadata with pinned checksums; no security issues.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, koboldcpp.desktop, PKGBUILD, koboldcpp.png...
[1/4] Reviewing koboldcpp.desktop, PKGBUILD, koboldcpp.png...
+ Reviewed .SRCINFO. Status: SAFE -- Standard package metadata with pinned checksums; no security issues.
[2/4] Reviewing koboldcpp.desktop, PKGBUILD...
! Reviewed koboldcpp.png. Status: SKIPPED -- Skipping binary file: koboldcpp.png
LLM auditresponse for koboldcpp.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard freedesktop.org desktop entry that creates a launcher for the installed KoboldCpp application. The Exec line invokes /usr/bin/koboldcpp, which is the package's own binary installed via the PKGBUILD. There is no network activity, no encoded or obfuscated commands, no file manipulation, and no reference to any external or unexpected host.

The `&amp;apos;` sequence in the Comment field is simply XML-style entity escaping for an apostrophe, which is a normal way to represent special characters in desktop entry files and is not an indication of obfuscation. The remaining keys (Icon, StartupNotify, Terminal, Type, Categories) are all standard desktop entry attributes. Terminal=true is reasonable for a launcher that runs a server-style application. No security concerns are present.
</details>
<evidence>
</evidence>
<summary>
Benign, standard desktop launcher file. No malicious or suspicious content found.
</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed koboldcpp.desktop. Status: SAFE -- Benign, standard desktop launcher file. No malicious or suspicious content found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a straightforward binary package for koboldcpp. It downloads a pinned release artifact from the project&apos;s official GitHub releases URL, along with a desktop entry and icon. All three source files have specific SHA-256 checksums, and the `package()` function only installs the binary and supporting files into the package directory with standard `install` commands.

There are no suspicious network requests at build time, no eval/base64/curl-piped-to-shell constructs, no obfuscation, no manipulation of files outside the package directory, and no execution of downloaded code during the build. The use of a prebuilt binary is normal for a `-bin` package. The file is consistent with ordinary AUR packaging practices.
</details>
<evidence>
</evidence>
<summary>
Benign PKGBUILD: pinned release, checksums, standard installs only. No malicious behavior found.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Benign PKGBUILD: pinned release, checksums, standard installs only. No malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
(Skipped 1 file: koboldcpp.png)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 9,611
  Completion Tokens: 2,192
  Total Tokens: 11,803
  Total Cost: $0.001240
  Execution Time: 33.58 seconds

Final Status: SAFE


No issues found.


Audit Skips:

koboldcpp.png: [SKIPPED] Skipping binary file: koboldcpp.png
