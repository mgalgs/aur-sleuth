---
package: leaf-markdown-viewer-bin
pkgver: 1.29.2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 21072
completion_tokens: 3416
total_tokens: 24488
cost: 0.002539264
execution_time: 32.18
files_reviewed: 8
files_skipped: 0
maintainer_files: 8
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 6
injection_attempts: 0
date: 2026-10-26T15:14:09Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: Standard license file, no security concerns.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore with no malicious content.
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO with upstream sources, no malicious content.
  - file: LICENSE
    status: safe
    summary: Standard ISC license file; no security concerns.
  - file: LICENSES/MIT.txt
    status: safe
    summary: Standard MIT license text, no security issues.
  - file: REUSE.toml
    status: safe
    summary: Standard license metadata file, no security issues.
  - file: leaf-markdown-viewer.changelog
    status: safe
    summary: Plain text changelog reference, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD, no malicious code found.
---

Materializing leaf-markdown-viewer-bin from local mirror...
Materialized leaf-markdown-viewer-bin
Analyzing leaf-markdown-viewer-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's top-level scope contains only standard variable assignments and array definitions. No dangerous commands (e.g., `curl`, `wget`, `eval`, base64 decode) or command substitutions that execute external code are present. The maintainer email in the comment is obfuscated but comments are not executed. The `source` array references GitHub URLs, but these are not fetched during `makepkg --printsrcinfo`. All potentially dangerous code is inside `build()` and `package()` functions, which are out of scope for this gate.</details>
<evidence></evidence>
<summary>No dangerous code in global scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous code in global scope.
Note: 6 remote source(s) have no checksum (sha256sums=SKIP), so the bytes are not verifiable: LICENSE-MIT.txt::https://raw.githubusercontent.com/RivoLink/leaf/refs/heads/main/LICENSE, CHANGELOG-1.29.2.md::https://raw.githubusercontent.com/RivoLink/leaf/refs/heads/main/CHANGELOG.md, CONTRIBUTING-1.29.2.md::https://raw.githubusercontent.com/RivoLink/leaf/refs/heads/main/CONTRIBUTING.md, README-1.29.2.md::https://raw.githubusercontent.com/RivoLink/leaf/refs/heads/main/README.md, SECURITY-1.29.2.md::https://raw.githubusercontent.com/RivoLink/leaf/refs/heads/main/SECURITY.md, TESTING-1.29.2.md::https://raw.githubusercontent.com/RivoLink/leaf/refs/heads/main/TESTING.md
Reviewing the 8 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/8] Reviewing .SRCINFO...
[0/8] Reviewing .SRCINFO, .gitignore...
[0/8] Reviewing .SRCINFO, .gitignore, LICENSE...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a plain-text license file (ISC-style). It contains no executable code, no network requests, no file operations, and no obfuscation. There is no evidence of malicious behavior.
</details>
<evidence></evidence>
<summary>Standard license file, no security concerns.</summary>
</security_assessment>

[1/8] Reviewing .SRCINFO, .gitignore...
+ Reviewed LICENSE. Status: SAFE -- Standard license file, no security concerns.
[1/8] Reviewing .SRCINFO, .gitignore, LICENSE...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` for an AUR package. It lists typical patterns such as `pkg`, `src`, `*~`, `*.bin`, `*.md`, `*.old`, `*.pkg.tar.zst`, `*.sh`, `*.template`, `LICENSE-*`, `checksums.txt`, `namcap.txt`, and `.jj`. None of these entries indicate any malicious activity. The file contains no executable code, network requests, obfuscation, or system modifications. It is a harmless configuration file used to exclude build artifacts and temporary files from version control.
</details>
<evidence></evidence>
<summary>Standard .gitignore with no malicious content.</summary>
</security_assessment>

[2/8] Reviewing .SRCINFO, LICENSE...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore with no malicious content.
[2/8] Reviewing .SRCINFO, LICENSE, LICENSES/MIT.txt...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is a standard AUR package metadata file. It defines the package `leaf-markdown-viewer-bin`, a pre-compiled binary from the upstream GitHub repository `RivoLink/leaf`. All sources are fetched from the official project URLs: the binary from a pinned release tag, and documentation files from the upstream repository&#x27;s main branch. The binary is validated by a SHA-256 checksum; the documentation files have `SKIP` checksums, which is a common (though imperfect) practice but not evidence of malice. There are no suspicious network destinations, obfuscated code, dangerous commands, or any deviation from normal packaging practices. The file contains only declarative metadata and no executable instructions.
</details>
<evidence></evidence>
<summary>Standard .SRCINFO with upstream sources, no malicious content.</summary>
</security_assessment>

[2/8] Reviewing .SRCINFO, LICENSE, LICENSES/MIT.txt, PKGBUILD...
[3/8] Reviewing LICENSE, LICENSES/MIT.txt, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO with upstream sources, no malicious content.
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard ISC license text, commonly used in open-source projects. It contains no executable code, no network requests, no obfuscation, and no file operations. It is purely a legal notice and poses no security risk.
</details>
<evidence>
</evidence>
<summary>Standard ISC license file; no security concerns.</summary>
</security_assessment>

[4/8] Reviewing LICENSES/MIT.txt, PKGBUILD...
+ Reviewed LICENSE. Status: SAFE -- Standard ISC license file; no security concerns.
[4/8] Reviewing LICENSES/MIT.txt, PKGBUILD, REUSE.toml...
LLM auditresponse for MIT.txt:
<security_assessment>
<decision>SAFE</decision>
<details>
This file contains only the MIT License text, which is a standard open-source license. There is no executable code, no network operations, no obfuscated strings, and no system modifications. It is a static license file with no security implications.
</details>
<evidence></evidence>
<summary>Standard MIT license text, no security issues.</summary>
</security_assessment>

[5/8] Reviewing PKGBUILD, REUSE.toml...
+ Reviewed LICENSES/MIT.txt. Status: SAFE -- Standard MIT license text, no security issues.
[5/8] Reviewing PKGBUILD, REUSE.toml, leaf-markdown-viewer.changelog...
LLM auditresponse for REUSE.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a simple REUSE configuration file used for declaring copyright and license metadata for files in the package. It contains no executable code, no network operations, no file modifications, and no obfuscated content. It is a standard metadata file with no security implications.
</details>
<evidence>
</evidence>
<summary>Standard license metadata file, no security issues.</summary>
</security_assessment>

[6/8] Reviewing PKGBUILD, leaf-markdown-viewer.changelog...
+ Reviewed REUSE.toml. Status: SAFE -- Standard license metadata file, no security issues.
LLM auditresponse for leaf-markdown-viewer.changelog:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `leaf-markdown-viewer.changelog` is a plain-text document that simply directs users to the project's changelog, either via a local file path or an upstream GitHub releases URL. It contains no executable code, no network requests, no obfuscated content, and no system operations. This is a standard documentation file with no security implications.
</details>
<evidence></evidence>
<summary>Plain text changelog reference, no security issues.</summary>
</security_assessment>

[7/8] Reviewing PKGBUILD...
+ Reviewed leaf-markdown-viewer.changelog. Status: SAFE -- Plain text changelog reference, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices. The binary is downloaded from the project's own GitHub releases with a pinned SHA-256 checksum. Documentation files are fetched from the project's upstream repository on a mutable branch (`main`), but they are non-executable markdown files and this is a common hygiene choice rather than a supply-chain attack. The `build()` function executes the binary only to generate shell completions, which is expected behavior for a CLI tool. No obfuscated code, unexpected network requests, unauthorized file operations, or exfiltration attempts are present. The maintainer email obfuscation is a standard anti-spam technique and not malicious.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD, no malicious code found.</summary>
</security_assessment>

[8/8] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD, no malicious code found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 21,072
  Completion Tokens: 3,416
  Total Tokens: 24,488
  Total Cost: $0.002539
  Execution Time: 32.18 seconds

Final Status: SAFE


No issues found.
