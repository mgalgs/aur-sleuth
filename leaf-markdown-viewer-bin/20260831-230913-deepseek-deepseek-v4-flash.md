---
package: leaf-markdown-viewer-bin
pkgver: 1.28.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: b9e20f728bbe0de1871ebaca31738c802edc31f8
prompt_tokens: 21332
completion_tokens: 2792
total_tokens: 24124
cost: 0.00213659208
execution_time: 66.82
files_reviewed: 8
files_skipped: 0
maintainer_files: 8
source_fetch: ok
upstream_files: 7
upstream_named_files: 0
unpinned_sources: 6
injection_attempts: 0
date: 2026-08-31T23:09:13Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard AUR .gitignore with no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Standard metadata file, no malicious code or operations.
  - file: LICENSE
    status: safe
    summary: Standard ISC license file; no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR binary package, no security issues found.
  - file: REUSE.toml
    status: safe
    summary: REUSE.toml is a metadata-only configuration file with no security concerns.
  - file: leaf-markdown-viewer.changelog
    status: safe
    summary: Plain-text changelog reference, no security concerns.
  - file: LICENSES/MIT.txt
    status: safe
    summary: Standard MIT license text, no security concerns.
  - file: LICENSE
    status: safe
    summary: Standard license file, no security concerns.
---

Cloning https://aur.archlinux.org/leaf-markdown-viewer-bin.git...
Cloned leaf-markdown-viewer-bin
Analyzing leaf-markdown-viewer-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD sources a binary from the official GitHub releases of the upstream project and documentation files from the same repository's raw content URLs. No suspicious network destinations or download sources are present. The top-level code consists only of variable assignments and a trivial maintainer email obfuscation using `echo` and `tr` — this is not malicious and does not exfiltrate data, download unexpected payloads, or execute arbitrary commands beyond the scope of string manipulation. There is no `pkgver()` function. The commands `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo` will only fetch the declared sources and source the PKGBUILD, which is safe.
</details>
<evidence></evidence>
<summary>Safe: No malicious code in top-level scope or sources.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe: No malicious code in top-level scope or sources.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: 6 remote source(s) have no checksum (sha256sums=SKIP), so the fetched bytes are not verifiable and can change without any AUR update: LICENSE-MIT.txt::https://raw.githubusercontent.com/RivoLink/leaf/refs/heads/main/LICENSE, CHANGELOG-1.28.1.md::https://raw.githubusercontent.com/RivoLink/leaf/refs/heads/main/CHANGELOG.md, CONTRIBUTING-1.28.1.md::https://raw.githubusercontent.com/RivoLink/leaf/refs/heads/main/CONTRIBUTING.md, README-1.28.1.md::https://raw.githubusercontent.com/RivoLink/leaf/refs/heads/main/README.md, SECURITY-1.28.1.md::https://raw.githubusercontent.com/RivoLink/leaf/refs/heads/main/SECURITY.md, TESTING-1.28.1.md::https://raw.githubusercontent.com/RivoLink/leaf/refs/heads/main/TESTING.md
Reviewing the 8 file(s) in the AUR repository. The 7 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/8] Reviewing .SRCINFO...
[0/8] Reviewing .SRCINFO, .gitignore...
[0/8] Reviewing .SRCINFO, .gitignore, LICENSE...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` for an AUR package repository. It excludes common build artifacts and local files such as `pkg`, `src`, `*.pkg.tar.zst`, `*.sh`, and editor backups. No commands, network access, obfuscation, or file-modifying behavior is present. There is no evidence of malicious or dangerous activity.
</details>
<evidence>
</evidence>
<summary>
Standard AUR .gitignore with no security concerns.</summary>
</security_assessment>

[0/8] Reviewing .SRCINFO, .gitignore, LICENSE, LICENSE...
[1/8] Reviewing .SRCINFO, LICENSE, LICENSE...
+ Reviewed .gitignore. Status: SAFE -- Standard AUR .gitignore with no security concerns.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is metadata describing package sources and dependencies. All source URLs point to the upstream project's GitHub repository (github.com/RivoLink/leaf). The binary source has a valid SHA256 checksum; the other sources (LICENSE, README, etc.) have `SKIP` checksums, which is a standard AUR practice for raw GitHub content and does not indicate malice. No obfuscation, suspicious network requests, or unexpected operations are present. The file contains no executable code and does not perform any actions—it is purely declarative.
</details>
<evidence></evidence>
<summary>Standard metadata file, no malicious code or operations.</summary>
</security_assessment>

[2/8] Reviewing LICENSE, LICENSE...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata file, no malicious code or operations.
[2/8] Reviewing LICENSE, LICENSE, LICENSES/MIT.txt...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard ISC license text, commonly used in open source projects. It contains no executable code, no suspicious network requests, no obfuscation, and no system modifications. The content is purely legal documentation and poses no security risk.
</details>
<evidence></evidence>
<summary>Standard ISC license file; no security issues.</summary>
</security_assessment>

[3/8] Reviewing LICENSE, LICENSES/MIT.txt...
+ Reviewed LICENSE. Status: SAFE -- Standard ISC license file; no security issues.
[3/8] Reviewing LICENSE, LICENSES/MIT.txt, PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD installs a pre-compiled binary of the Leaf markdown viewer from the official GitHub releases page. The binary has a pinned SHA256 checksum. Several documentation files are fetched from the upstream repository&#39;s main branch with SKIP checksums, which is a hygiene concern but not malicious. The build() runs the downloaded binary to generate shell completions – a standard and expected practice. The maintainer email is obfuscated via a simple `tr` transformation to deter spam harvesters, not to hide malicious payloads. No suspicious network requests, encoded commands, or unexpected file operations are present. The package follows normal AUR packaging conventions for a binary package.
</details>
<evidence></evidence>
<summary>Standard AUR binary package, no security issues found.</summary>
</security_assessment>

[3/8] Reviewing LICENSE, LICENSES/MIT.txt, PKGBUILD, REUSE.toml...
[4/8] Reviewing LICENSE, LICENSES/MIT.txt, REUSE.toml...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR binary package, no security issues found.
LLM auditresponse for REUSE.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `REUSE.toml` is a standard configuration file for the REUSE initiative, which helps manage copyright and license information in project files. It contains only metadata declarations: a version number and an annotation block that assigns copyright and license to a list of files (PKGBUILD, README.md, .SRCINFO, etc.). There are no executable commands, network requests, obfuscated content, or any operations that could modify the system or exfiltrate data. It is entirely benign and follows standard packaging practices.</details>
<evidence></evidence>
<summary>REUSE.toml is a metadata-only configuration file with no security concerns.</summary>
</security_assessment>

[4/8] Reviewing LICENSE, LICENSES/MIT.txt, REUSE.toml, leaf-markdown-viewer.changelog...
[5/8] Reviewing LICENSE, LICENSES/MIT.txt, leaf-markdown-viewer.changelog...
+ Reviewed REUSE.toml. Status: SAFE -- REUSE.toml is a metadata-only configuration file with no security concerns.
LLM auditresponse for leaf-markdown-viewer.changelog:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a plain-text changelog reference that only contains two lines directing users to the packaged documentation and the project's official GitHub releases page. It contains no executable code, no network requests, no file operations, and no obfuscation. There is no evidence of any supply-chain attack or malicious behavior.
</details>
<evidence></evidence>
<summary>Plain-text changelog reference, no security concerns.</summary>
</security_assessment>

[6/8] Reviewing LICENSE, LICENSES/MIT.txt...
+ Reviewed leaf-markdown-viewer.changelog. Status: SAFE -- Plain-text changelog reference, no security concerns.
LLM auditresponse for MIT.txt:
<security_assessment>
<decision>SAFE</decision>
<details>
The file "LICENSES/MIT.txt" is a standard MIT license text. It contains no executable code, no network requests, no file operations, and no obfuscated or dangerous commands. It is a static text file that only provides the license terms for the packaged software. There is no indication of any supply-chain attack or malicious behavior.
</details>
<evidence></evidence>
<summary>Standard MIT license text, no security concerns.</summary>
</security_assessment>

[7/8] Reviewing LICENSE...
+ Reviewed LICENSES/MIT.txt. Status: SAFE -- Standard MIT license text, no security concerns.
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard ISC-style license file. It contains no executable code, no network requests, no obfuscation, and no system modifications. There is nothing suspicious or malicious in this file.
</details>
<evidence></evidence>
<summary>Standard license file, no security concerns.</summary>
</security_assessment>

[8/8] Reviewing ...
+ Reviewed LICENSE. Status: SAFE -- Standard license file, no security concerns.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 21,332
  Completion Tokens: 2,792
  Total Tokens: 24,124
  Total Cost: $0.002137
  Execution Time: 66.82 seconds

Final Status: SAFE


No issues found.
