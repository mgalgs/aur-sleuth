---
package: leaf-markdown-viewer-bin
pkgver: 1.28.2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 21381
completion_tokens: 4880
total_tokens: 26261
cost: 0.002759279446
execution_time: 360.63
files_reviewed: 8
files_skipped: 0
maintainer_files: 8
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 6
injection_attempts: 0
date: 2026-09-14T07:18:48Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: Standard license file, no malicious content.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file, no security issues.
  - file: LICENSE
    status: safe
    summary: Plain license file, no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; no code or malicious behavior.
  - file: REUSE.toml
    status: safe
    summary: Static metadata file with no security risk.
  - file: leaf-markdown-viewer.changelog
    status: safe
    summary: Static changelog reference file, no security issues.
  - file: LICENSES/MIT.txt
    status: safe
    summary: Standard license file, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD, no malicious content.
---

Materializing leaf-markdown-viewer-bin from local mirror...
Materialized leaf-markdown-viewer-bin
Analyzing leaf-markdown-viewer-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains no top-level code that executes external commands, network requests, or file operations during sourcing. The maintainer email obfuscation is inside a comment (`#`), so the command substitution is never executed. All global scope statements are variable and array definitions, and the `build()` and `package()` functions are only defined, not invoked. Therefore, running `makepkg --printsrcinfo` is safe.
</details>
<evidence>
</evidence>
<summary>No top-level execution risks found.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level execution risks found.
Note: 6 remote source(s) have no checksum (sha256sums=SKIP), so the bytes are not verifiable: LICENSE-MIT.txt::https://raw.githubusercontent.com/RivoLink/leaf/refs/heads/main/LICENSE, CHANGELOG-1.28.2.md::https://raw.githubusercontent.com/RivoLink/leaf/refs/heads/main/CHANGELOG.md, CONTRIBUTING-1.28.2.md::https://raw.githubusercontent.com/RivoLink/leaf/refs/heads/main/CONTRIBUTING.md, README-1.28.2.md::https://raw.githubusercontent.com/RivoLink/leaf/refs/heads/main/README.md, SECURITY-1.28.2.md::https://raw.githubusercontent.com/RivoLink/leaf/refs/heads/main/SECURITY.md, TESTING-1.28.2.md::https://raw.githubusercontent.com/RivoLink/leaf/refs/heads/main/TESTING.md
Reviewing the 8 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/8] Reviewing .SRCINFO...
[0/8] Reviewing .SRCINFO, .gitignore...
[0/8] Reviewing .SRCINFO, .gitignore, LICENSE...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard open-source license file (ISC-style) attributed to Arch Linux Contributors. It contains only legal text granting permissions and disclaiming warranties. There is no executable code, no network requests, no obfuscation, and no system modifications. It poses no security risk.
</details>
<evidence></evidence>
<summary>Standard license file, no malicious content.</summary>
</security_assessment>

[1/8] Reviewing .SRCINFO, .gitignore...
+ Reviewed LICENSE. Status: SAFE -- Standard license file, no malicious content.
[1/8] Reviewing .SRCINFO, .gitignore, LICENSE...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` file used to exclude common build artifacts and temporary files from version control. It contains no executable code, no network requests, no obfuscation, and no system-modifying commands. The patterns listed are entirely conventional for an AUR package repository (e.g., `pkg`, `src`, `*.pkg.tar.zst`). There is no evidence of malicious behavior.
</details>
<evidence></evidence>
<summary>Standard .gitignore file, no security issues.</summary>
</security_assessment>

[2/8] Reviewing .SRCINFO, LICENSE...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore file, no security issues.
[2/8] Reviewing .SRCINFO, LICENSE, LICENSES/MIT.txt...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a software license (ISC-style) attributed to "Arch Linux Contributors". It contains no executable code, no network requests, no obfuscation, and no system-modifying instructions. It is a standard plaintext legal document with no security implications.
</details>
<evidence></evidence>
<summary>Plain license file, no security concerns.</summary>
</security_assessment>

[2/8] Reviewing .SRCINFO, LICENSE, LICENSES/MIT.txt, PKGBUILD...
[3/8] Reviewing .SRCINFO, LICENSES/MIT.txt, PKGBUILD...
+ Reviewed LICENSE. Status: SAFE -- Plain license file, no security concerns.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a metadata descriptor for the Arch User Repository (AUR). It contains no executable code, scripts, or network calls. The only external references are source URLs pointing to the project's official GitHub repository and the GitHub raw content domain, which is standard practice for fetching documentation. The binary tarball has a pinned checksum; the documentation files have SKIP checksums, which is a common trust/hygiene choice and explicitly not considered malicious by the instructions. No obfuscation, unexpected hosts, dangerous commands, or exfiltration techniques are present. The file is consistent with legitimate AUR packaging practices.
</details>
<evidence></evidence>
<summary>Standard AUR metadata; no code or malicious behavior.</summary>
</security_assessment>

[4/8] Reviewing LICENSES/MIT.txt, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; no code or malicious behavior.
[4/8] Reviewing LICENSES/MIT.txt, PKGBUILD, REUSE.toml...
LLM auditresponse for REUSE.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard configuration for the REUSE tool, which manages copyright and license annotations. It contains only metadata fields: version and a list of file paths with associated SPDX identifiers. There is no executable content, no network requests, no obfuscated code, and no system operations. It does not deviate from expected packaging practices.</details>
<evidence></evidence>
<summary>Static metadata file with no security risk.</summary>
</security_assessment>

[4/8] Reviewing LICENSES/MIT.txt, PKGBUILD, REUSE.toml, leaf-markdown-viewer.changelog...
[5/8] Reviewing LICENSES/MIT.txt, PKGBUILD, leaf-markdown-viewer.changelog...
+ Reviewed REUSE.toml. Status: SAFE -- Static metadata file with no security risk.
LLM auditresponse for leaf-markdown-viewer.changelog:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `leaf-markdown-viewer.changelog` is a static text file that contains only informational content. It directs users to the package documentation (`/usr/share/doc/leaf-markdown-viewer/CHANGELOG.md`) and to the official GitHub releases page (`https://github.com/RivoLink/leaf/releases/tag/1.28.2`) for change logs. There is no code, no executable instructions, no obfuscation, and no network requests or system modifications. The content is entirely benign and follows standard packaging practices for providing changelog information.
</details>
<evidence>
</evidence>
<summary>Static changelog reference file, no security issues.</summary>
</security_assessment>

[6/8] Reviewing LICENSES/MIT.txt, PKGBUILD...
+ Reviewed leaf-markdown-viewer.changelog. Status: SAFE -- Static changelog reference file, no security issues.
LLM auditresponse for MIT.txt:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard MIT License text. No executable code, network requests, obfuscation, or any other security concerns are present. It is a plain text file used for licensing purposes.
</details>
<evidence/>
<summary>Standard license file, no security issues.</summary>
</security_assessment>

[7/8] Reviewing PKGBUILD...
+ Reviewed LICENSES/MIT.txt. Status: SAFE -- Standard license file, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a precompiled binary package. It downloads the application's binary and documentation from the project's own GitHub repository, with the binary checksum pinned. The generation of shell completions by executing the binary is normal functionality. The maintainer email obfuscation uses a simple, non-malicious transformation to prevent spam. No network requests to unexpected hosts, no obfuscated code, no dangerous commands, and no indicators of supply-chain injection are present. The only minor hygiene note is that the documentation files are fetched from a mutable branch (main) with SKIP checksums, but this does not constitute malicious behavior per the auditing guidelines.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD, no malicious content.</summary>
</security_assessment>

[8/8] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD, no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 21,381
  Completion Tokens: 4,880
  Total Tokens: 26,261
  Total Cost: $0.002759
  Execution Time: 360.63 seconds

Final Status: SAFE


No issues found.
