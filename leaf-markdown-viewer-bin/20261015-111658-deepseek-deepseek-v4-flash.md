---
package: leaf-markdown-viewer-bin
pkgver: 1.29.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 21699
completion_tokens: 3981
total_tokens: 25680
cost: 0.002699151
execution_time: 53.46
files_reviewed: 8
files_skipped: 0
maintainer_files: 8
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 6
injection_attempts: 0
date: 2026-10-15T11:16:58Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: Standard permissive license text; no code or malicious behavior present.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file with no security concerns; safe.
  - file: LICENSE
    status: safe
    summary: Standard ISC license text only; no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO metadata; sources match upstream; no malicious or suspicious behavior found.
  - file: LICENSES/MIT.txt
    status: safe
    summary: Standard MIT license text; no malicious or suspicious content found.
  - file: REUSE.toml
    status: safe
    summary: Innocuous licensing metadata; no security concerns found.
  - file: leaf-markdown-viewer.changelog
    status: safe
    summary: Changelog pointer file with static text; no malicious behavior found.
  - file: PKGBUILD
    status: safe
    summary: No malicious behavior; only unpinned doc checksums and comment obfuscation.
---

Materializing leaf-markdown-viewer-bin from local mirror...
Materialized leaf-markdown-viewer-bin
Analyzing leaf-markdown-viewer-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The top-level scope of this PKGBUILD only contains variable assignments, source array definitions, and function definitions. No command substitutions or other executable statements are present outside of function bodies. The maintainer email line is a comment (preceded by `#`), so it is not executed. Therefore, running `makepkg --printsrcinfo` to source this PKGBUILD poses no risk.
</details>
<evidence></evidence>
<summary>No dangerous top-level code execution.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code execution.
Note: 6 remote source(s) have no checksum (sha256sums=SKIP), so the bytes are not verifiable: LICENSE-MIT.txt::https://raw.githubusercontent.com/RivoLink/leaf/refs/heads/main/LICENSE, CHANGELOG-1.29.1.md::https://raw.githubusercontent.com/RivoLink/leaf/refs/heads/main/CHANGELOG.md, CONTRIBUTING-1.29.1.md::https://raw.githubusercontent.com/RivoLink/leaf/refs/heads/main/CONTRIBUTING.md, README-1.29.1.md::https://raw.githubusercontent.com/RivoLink/leaf/refs/heads/main/README.md, SECURITY-1.29.1.md::https://raw.githubusercontent.com/RivoLink/leaf/refs/heads/main/SECURITY.md, TESTING-1.29.1.md::https://raw.githubusercontent.com/RivoLink/leaf/refs/heads/main/TESTING.md
Reviewing the 8 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/8] Reviewing .SRCINFO...
[0/8] Reviewing .SRCINFO, LICENSE...
[0/8] Reviewing .SRCINFO, LICENSE, .gitignore...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file contains only a standard permissive software license text (ISC-style, attributed to Arch Linux Contributors). It contains no code, no network operations, no file modifications, and no executable content. There is no evidence of malicious or suspicious behavior.
</details>
<evidence>
</evidence>
<summary>
Standard permissive license text; no code or malicious behavior present.</summary>
</security_assessment>

[0/8] Reviewing .SRCINFO, LICENSE, .gitignore, LICENSE...
[1/8] Reviewing .SRCINFO, .gitignore, LICENSE...
+ Reviewed LICENSE. Status: SAFE -- Standard permissive license text; no code or malicious behavior present.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` used in an AUR git repository. It excludes common build artifacts (`pkg`, `src`), editor/backup files, package binaries (`*.pkg.tar.zst`), shell scripts, templates, license files, and generated checksum/namcap output files. There is no executable code, no network access, no file system manipulation beyond standard ignore patterns, and no indication of malicious or injected behavior. It is consistent with ordinary AUR packaging practices.
</details>
<evidence>
</evidence>
<summary>
Standard .gitignore file with no security concerns; safe.</summary>
</security_assessment>

[1/8] Reviewing .SRCINFO, .gitignore, LICENSE, LICENSES/MIT.txt...
[2/8] Reviewing .SRCINFO, LICENSE, LICENSES/MIT.txt...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore file with no security concerns; safe.
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard ISC-style software license text attributed to Arch Linux Contributors. It contains no executable code, no network operations, no file manipulation, and no obfuscated content. It is a routine license file included with a package.
</details>
<evidence></evidence>
<summary>Standard ISC license text only; no security concerns.</summary>
</security_assessment>

[2/8] Reviewing .SRCINFO, LICENSE, LICENSES/MIT.txt, PKGBUILD...
[3/8] Reviewing .SRCINFO, LICENSES/MIT.txt, PKGBUILD...
+ Reviewed LICENSE. Status: SAFE -- Standard ISC license text only; no security concerns.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Arch Linux `.SRCINFO` metadata file. It contains only package declarations: name, version, URL, dependencies, conflicts, source URLs, and checksums. There is no executable code, no `prepare()`/`build()`/`package()` logic, and no shell commands.

All sources point to the project’s own upstream GitHub repository (`RivoLink/leaf`), which matches the package’s stated homepage and purpose. The precompiled binary has a pinned SHA-256 checksum, and the remaining sources are documentation files (LICENSE, CHANGELOG, README, etc.) with `SKIP` checksums. Skipping checksums on non-executable documentation is a hygiene concern only and is explicitly not a reason to mark the package unsafe. Nothing here attempts to download code from an unexpected host, exfiltrate data, or execute hidden commands.
</details>
<evidence>
</evidence>
<summary>
Standard .SRCINFO metadata; sources match upstream; no malicious or suspicious behavior found.</summary>
</security_assessment>

[3/8] Reviewing .SRCINFO, LICENSES/MIT.txt, PKGBUILD, REUSE.toml...
[4/8] Reviewing LICENSES/MIT.txt, PKGBUILD, REUSE.toml...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO metadata; sources match upstream; no malicious or suspicious behavior found.
LLM auditresponse for MIT.txt:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard MIT License text. It contains no executable code, no network requests, no file operations, and no obfuscated content. It is a routine license file included with the package and presents no security concerns.
</details>
<evidence>
</evidence>
<summary>
Standard MIT license text; no malicious or suspicious content found.</summary>
</security_assessment>

[4/8] Reviewing LICENSES/MIT.txt, PKGBUILD, REUSE.toml, leaf-markdown-viewer.changelog...
[5/8] Reviewing PKGBUILD, REUSE.toml, leaf-markdown-viewer.changelog...
+ Reviewed LICENSES/MIT.txt. Status: SAFE -- Standard MIT license text; no malicious or suspicious content found.
LLM auditresponse for REUSE.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a REUSE.toml configuration used for software licensing compliance. It declares a copyright and license annotation for standard packaging files such as PKGBUILD, README.md, .SRCINFO, and install scripts. There are no commands, network operations, file modifications, or encoded content of any kind. This is an innocuous metadata file consistent with standard packaging practices.
</details>
<evidence>
</evidence>
<summary>
Innocuous licensing metadata; no security concerns found.</summary>
</security_assessment>

[6/8] Reviewing PKGBUILD, leaf-markdown-viewer.changelog...
+ Reviewed REUSE.toml. Status: SAFE -- Innocuous licensing metadata; no security concerns found.
LLM auditresponse for leaf-markdown-viewer.changelog:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a plain-text changelog pointer. It contains only static informational text directing users to the installed package documentation at /usr/share/doc/leaf-markdown-viewer/CHANGELOG.md and to the upstream project's GitHub releases page. There is no executable code, no network requests, no file manipulation, no obfuscation, and no encoding tricks. The referenced URL (github.com/RivoLink/leaf) is the package's own upstream repository, which is a standard and expected destination for change information.

The file performs no actions whatsoever and contains no logic that could exfiltrate data, download or execute code, or modify the system. It is consistent with ordinary packaging documentation and shows no signs of a supply-chain attack.
</details>
<evidence>
</evidence>
<summary>
Changelog pointer file with static text; no malicious behavior found.</summary>
</security_assessment>

[7/8] Reviewing PKGBUILD...
+ Reviewed leaf-markdown-viewer.changelog. Status: SAFE -- Changelog pointer file with static text; no malicious behavior found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD downloads the official precompiled leaf binary from the project's GitHub releases URL with a pinned SHA256 checksum, and fetches documentation/license files from the project's own `raw.githubusercontent.com` main branch with `SKIP` checksums. The mutable `main` ref and `SKIP` checksums for docs are hygiene/reproducibility concerns, but not evidence of malicious behavior. The docs are installed as static files and are not executed.

The `build()` function runs the downloaded binary to generate shell completions (`./leaf --auto-complete ...`). While this does execute a downloaded binary during packaging, it is the package's declared upstream, checksum-pinned artifact, and the invocation directly serves the application's stated purpose. `package()` only installs files into `$pkgdir` and creates symlinks. There are no obfuscated commands, no `eval`/`base64`/`curl`/`wget`, no writes outside the build/package directories, and no data exfiltration or backdoor behavior. The unusual maintainer line contains a command substitution that looks obfuscated, but it is inside a comment and is never executed by makepkg; it is simply an email-spam obfuscation trick.
</details>
<evidence>
</evidence>
<summary>
No malicious behavior; only unpinned doc checksums and comment obfuscation.
</summary>
</security_assessment>

[8/8] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- No malicious behavior; only unpinned doc checksums and comment obfuscation.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 21,699
  Completion Tokens: 3,981
  Total Tokens: 25,680
  Total Cost: $0.002699
  Execution Time: 53.46 seconds

Final Status: SAFE


No issues found.
