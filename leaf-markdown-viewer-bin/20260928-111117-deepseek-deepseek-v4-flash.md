---
package: leaf-markdown-viewer-bin
pkgver: 1.28.3
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 21231
completion_tokens: 4868
total_tokens: 26099
cost: 0.00433538
execution_time: 56.86
files_reviewed: 8
files_skipped: 0
maintainer_files: 8
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 6
injection_attempts: 0
date: 2026-09-28T11:11:17Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore with no security-relevant behavior; assessment is SAFE.
  - file: LICENSE
    status: safe
    summary: A standard license file with no security concerns.
  - file: LICENSES/MIT.txt
    status: safe
    summary: Standard MIT license text, no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file with upstream sources.
  - file: REUSE.toml
    status: safe
    summary: REUSE.toml is metadata-only, no security concerns.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD; no malicious content found.
  - file: LICENSE
    status: safe
    summary: Pure license file, no security concerns.
  - file: leaf-markdown-viewer.changelog
    status: safe
    summary: Informational changelog file, no malicious content.
---

Materializing leaf-markdown-viewer-bin from local mirror...
Materialized leaf-markdown-viewer-bin
Analyzing leaf-markdown-viewer-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Sourcing this PKGBUILD for `--printsrcinfo` only executes variable and array assignments in the global scope. The global scope defines `pkgname`, `pkgver`, `source`, `sha256sums`, and other standard metadata – none of which introduces dangerous operations. The maintainer line contains an obfuscated email via a command substitution, but it is inside a shell comment (`#`), so the shell never evaluates it. No network requests (`curl`, `wget`), `eval`, `exec`, or other dangerous commands are executed during the sourcing phase. The `build()` and `package()` functions, which perform the actual application logic (downloading the binary, generating completions), are only *defined* at the top level and are **not executed** by `makepkg --printsrcinfo`. Therefore, running this command to parse metadata presents no immediate security risk.
</details>
<evidence>
</evidence>
<summary>Top-level scope is standard; no malicious code executed during sourcing.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level scope is standard; no malicious code executed during sourcing.
Note: 6 remote source(s) have no checksum (sha256sums=SKIP), so the bytes are not verifiable: LICENSE-MIT.txt::https://raw.githubusercontent.com/RivoLink/leaf/refs/heads/main/LICENSE, CHANGELOG-1.28.3.md::https://raw.githubusercontent.com/RivoLink/leaf/refs/heads/main/CHANGELOG.md, CONTRIBUTING-1.28.3.md::https://raw.githubusercontent.com/RivoLink/leaf/refs/heads/main/CONTRIBUTING.md, README-1.28.3.md::https://raw.githubusercontent.com/RivoLink/leaf/refs/heads/main/README.md, SECURITY-1.28.3.md::https://raw.githubusercontent.com/RivoLink/leaf/refs/heads/main/SECURITY.md, TESTING-1.28.3.md::https://raw.githubusercontent.com/RivoLink/leaf/refs/heads/main/TESTING.md
Reviewing the 8 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/8] Reviewing .SRCINFO...
[0/8] Reviewing .SRCINFO, .gitignore...
[0/8] Reviewing .SRCINFO, .gitignore, LICENSE...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` for an AUR package repository. It excludes common build artifacts (`pkg`, `src`, `*.pkg.tar.zst`), editor/backup files (`*~`, `*.old`), generated checksum/namcap output, license files, scripts, and templates. There is no executable code, no network access, no file system modification outside normal repository hygiene, and nothing that could exfiltrate data or execute untrusted content. This is consistent with ordinary AUR packaging practice.
</details>
<evidence>
</evidence>
<summary>
Standard .gitignore with no security-relevant behavior; assessment is SAFE.</summary>
</security_assessment>

[1/8] Reviewing .SRCINFO, LICENSE...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore with no security-relevant behavior; assessment is SAFE.
[1/8] Reviewing .SRCINFO, LICENSE, LICENSE...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard ISC license text, commonly used in open-source projects. It contains no executable code, no network operations, no file modifications, and no obfuscation. It is purely a legal notice and poses no security risk.
</details>
<evidence>
</evidence>
<summary>A standard license file with no security concerns.</summary>
</security_assessment>

[1/8] Reviewing .SRCINFO, LICENSE, LICENSE, LICENSES/MIT.txt...
[2/8] Reviewing .SRCINFO, LICENSE, LICENSES/MIT.txt...
+ Reviewed LICENSE. Status: SAFE -- A standard license file with no security concerns.
LLM auditresponse for MIT.txt:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard MIT License text. It contains no executable code, no network requests, no obfuscation, and no system modification instructions. It is purely a license file.
</details>
<evidence>
</evidence>
<summary>Standard MIT license text, no security issues.</summary>
</security_assessment>

[3/8] Reviewing .SRCINFO, LICENSE...
+ Reviewed LICENSES/MIT.txt. Status: SAFE -- Standard MIT license text, no security issues.
[3/8] Reviewing .SRCINFO, LICENSE, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a standard metadata file for an AUR package. It defines sources from the official upstream GitHub repository (RivoLink/leaf). The binary source has a pinned SHA256 checksum, while the documentation files (LICENSE, CHANGELOG, etc.) have checksums set to SKIP, which is a common practice for non-executable auxiliary files. There is no evidence of malicious behavior: no suspicious network destinations, no obfuscated code, no dangerous commands, and no deviation from typical packaging practices.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata file with upstream sources.</summary>
</security_assessment>

[4/8] Reviewing LICENSE, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file with upstream sources.
[4/8] Reviewing LICENSE, PKGBUILD, REUSE.toml...
LLM auditresponse for REUSE.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a REUSE compliance configuration file (REUSE.toml). It declares licensing and copyright metadata for files in the repository. It contains no executable code, no network requests, no obfuscated strings, and no operations that could modify the system or exfiltrate data. It is purely descriptive and follows standard packaging practices for documenting license information. There is no evidence of malicious or dangerous behavior.
</details>
<evidence></evidence>
<summary>REUSE.toml is metadata-only, no security concerns.</summary>
</security_assessment>

[5/8] Reviewing LICENSE, PKGBUILD...
+ Reviewed REUSE.toml. Status: SAFE -- REUSE.toml is metadata-only, no security concerns.
[5/8] Reviewing LICENSE, PKGBUILD, leaf-markdown-viewer.changelog...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR PKGBUILD for a pre-compiled binary package. It downloads the binary from the project's official GitHub releases page (with a valid SHA256 checksum) and documentation from the same upstream repository's raw content. The build step generates shell completions by invoking the downloaded binary, which is expected upstream functionality. The maintainer's email obfuscation is harmless. There is no evidence of malicious code such as data exfiltration, execution of untrusted downloaded content, or any dangerous commands outside the normal packaging workflow.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD; no malicious content found.</summary>
</security_assessment>

[6/8] Reviewing LICENSE, leaf-markdown-viewer.changelog...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD; no malicious content found.
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a plain-text license file (ISC style) with no executable code, network requests, obfuscation, or any operations. It contains only legal text granting permission to use and distribute the software. There is no evidence of malicious or dangerous behavior.
</details>
<evidence></evidence>
<summary>Pure license file, no security concerns.</summary>
</security_assessment>

[7/8] Reviewing leaf-markdown-viewer.changelog...
+ Reviewed LICENSE. Status: SAFE -- Pure license file, no security concerns.
LLM auditresponse for leaf-markdown-viewer.changelog:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a plain-text changelog reference. It contains only static informational text pointing to the local documentation path and the official upstream GitHub releases page. There is no code, no commands, no network requests, no obfuscation, and no system modifications. No security issues are present.
</details>
<evidence>
</evidence>
<summary>Informational changelog file, no malicious content.</summary>
</security_assessment>

[8/8] Reviewing ...
+ Reviewed leaf-markdown-viewer.changelog. Status: SAFE -- Informational changelog file, no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 21,231
  Completion Tokens: 4,868
  Total Tokens: 26,099
  Total Cost: $0.004335
  Execution Time: 56.86 seconds

Final Status: SAFE


No issues found.
