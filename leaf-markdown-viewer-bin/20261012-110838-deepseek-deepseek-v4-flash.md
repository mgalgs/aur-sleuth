---
package: leaf-markdown-viewer-bin
pkgver: 1.29.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 21778
completion_tokens: 3777
total_tokens: 25555
cost: 0.00548790
execution_time: 39.04
files_reviewed: 8
files_skipped: 0
maintainer_files: 8
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 6
injection_attempts: 0
date: 2026-10-12T11:08:37Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore with no security concerns or suspicious content.
  - file: LICENSE
    status: safe
    summary: Standard license text only; no executable or suspicious content found.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR binary package; sources from upstream GitHub, no malicious behavior found.
  - file: LICENSES/MIT.txt
    status: safe
    summary: Standard MIT license text; no malicious or suspicious content found.
  - file: LICENSE
    status: safe
    summary: Plain license text only; no code or malicious behavior present.
  - file: leaf-markdown-viewer.changelog
    status: safe
    summary: Informational changelog file; no executable or malicious content.
  - file: REUSE.toml
    status: safe
    summary: Benign REUSE license metadata; no malicious behavior or security concerns.
  - file: PKGBUILD
    status: safe
    summary: Standard -bin PKGBUILD; upstream binary is checksummed. No malicious behavior found.
---

Materializing leaf-markdown-viewer-bin from local mirror...
Materialized leaf-markdown-viewer-bin
Analyzing leaf-markdown-viewer-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources the PKGBUILD and executes only its top-level scope. The top-level content here consists entirely of normal metadata assignments (`pkgname`, `pkgver`, `arch`, `depends`, etc.), a `source` array, and `sha256sums`. No top-level command substitutions, network requests, downloads, or file-modifying operations are present.

The `$(echo ...)` expression visible in the Maintainer comment is not executed: it appears after `#`, so Bash treats the entire line as a comment. The `build()` and `package()` functions contain the only active commands in this file, and those functions are not invoked by `makepkg --printsrcinfo`; they are out of scope for this gate and will be reviewed separately. The `SKIP` checksums likewise do not matter at this step because no sources are downloaded or verified during `--printsrcinfo`.
</details>
<evidence>
</evidence>
<summary>
Sourcing this PKGBUILD only defines normal metadata; no top-level malicious commands execute.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Sourcing this PKGBUILD only defines normal metadata; no top-level malicious commands execute.
Note: 6 remote source(s) have no checksum (sha256sums=SKIP), so the bytes are not verifiable: LICENSE-MIT.txt::https://raw.githubusercontent.com/RivoLink/leaf/refs/heads/main/LICENSE, CHANGELOG-1.29.0.md::https://raw.githubusercontent.com/RivoLink/leaf/refs/heads/main/CHANGELOG.md, CONTRIBUTING-1.29.0.md::https://raw.githubusercontent.com/RivoLink/leaf/refs/heads/main/CONTRIBUTING.md, README-1.29.0.md::https://raw.githubusercontent.com/RivoLink/leaf/refs/heads/main/README.md, SECURITY-1.29.0.md::https://raw.githubusercontent.com/RivoLink/leaf/refs/heads/main/SECURITY.md, TESTING-1.29.0.md::https://raw.githubusercontent.com/RivoLink/leaf/refs/heads/main/TESTING.md
Reviewing the 8 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/8] Reviewing .SRCINFO...
[0/8] Reviewing .SRCINFO, LICENSE...
[0/8] Reviewing .SRCINFO, LICENSE, .gitignore...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` file used to exclude common build artifacts and temporary files from version control. Entries such as `pkg`, `src`, `*.pkg.tar.zst`, `*.sh`, and `checksums.txt` are routine for Arch packaging repositories. It contains no executable code, no network operations, no file manipulation, and no obfuscated content. There is nothing remotely resembling malicious or dangerous behavior.
</details>
<evidence>
</evidence>
<summary>
Standard .gitignore with no security concerns or suspicious content.</summary>
</security_assessment>

[1/8] Reviewing .SRCINFO, LICENSE...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore with no security concerns or suspicious content.
[1/8] Reviewing .SRCINFO, LICENSE, LICENSE...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a plain software license (an ISC-style permissive license attributed to Arch Linux Contributors). It contains only standard legal grant and disclaimer language. There is no executable code, no network access, no file manipulation, no obfuscation, and no packaging logic. It presents no supply-chain or security concerns.
</details>
<evidence>
</evidence>
<summary>
Standard license text only; no executable or suspicious content found.</summary>
</security_assessment>

[2/8] Reviewing .SRCINFO, LICENSE...
+ Reviewed LICENSE. Status: SAFE -- Standard license text only; no executable or suspicious content found.
[2/8] Reviewing .SRCINFO, LICENSE, LICENSES/MIT.txt...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO describes a standard AUR binary package. All sources are fetched from the project's own upstream GitHub repository (`RivoLink/leaf`), including the prebuilt binary from the official releases page and documentation files from the upstream repository. The binary has a pinned sha256 checksum; the documentation files use `SKIP` checksums, which is a trust/hygiene choice rather than evidence of malice and is not a supply-chain indicator by itself.

There are no suspicious commands, obfuscated content, unexpected network destinations, or file operations in this file. The package declares normal dependencies, provides/conflicts with the expected package names, and targets the appropriate architecture and license. Nothing here deviates from ordinary packaging practices or indicates injected malicious behavior.
</details>
<evidence>
</evidence>
<summary>
Standard AUR binary package; sources from upstream GitHub, no malicious behavior found.</summary>
</security_assessment>

[2/8] Reviewing .SRCINFO, LICENSE, LICENSES/MIT.txt, PKGBUILD...
[3/8] Reviewing LICENSE, LICENSES/MIT.txt, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR binary package; sources from upstream GitHub, no malicious behavior found.
LLM auditresponse for MIT.txt:
<security_assessment>
<decision>SAFE</decision>
<details>
This file contains the standard MIT License text. It is a plain, unmodified license document with no executable code, network requests, file operations, or any other potentially dangerous behavior. The copyright and permission notice are normal for a license file distributed with a package. No security issues are present.
</details>
<evidence>
</evidence>
<summary>
Standard MIT license text; no malicious or suspicious content found.
</summary>
</security_assessment>

[3/8] Reviewing LICENSE, LICENSES/MIT.txt, PKGBUILD, REUSE.toml...
[4/8] Reviewing LICENSE, PKGBUILD, REUSE.toml...
+ Reviewed LICENSES/MIT.txt. Status: SAFE -- Standard MIT license text; no malicious or suspicious content found.
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a plain MIT/ISC-style license text for the Arch Linux Contributors. It contains no code, no scripts, no network operations, no file modifications, and no obfuscated content. It is consistent with a standard software license file placed in an AUR package and presents no security concerns.
</details>
<evidence></evidence>
<summary>Plain license text only; no code or malicious behavior present.</summary>
</security_assessment>

[4/8] Reviewing LICENSE, PKGBUILD, REUSE.toml, leaf-markdown-viewer.changelog...
[5/8] Reviewing PKGBUILD, REUSE.toml, leaf-markdown-viewer.changelog...
+ Reviewed LICENSE. Status: SAFE -- Plain license text only; no code or malicious behavior present.
LLM auditresponse for leaf-markdown-viewer.changelog:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a simple changelog/readme note pointing users to the upstream CHANGELOG.md location and the GitHub releases page for version 1.29.0. It contains no executable code, no network requests, no obfuscation, and no file operations. It is purely informational documentation shipped with the package, which is standard packaging practice. No security concerns are present.
</details>
<evidence>
</evidence>
<summary>
Informational changelog file; no executable or malicious content.</summary>
</security_assessment>

[6/8] Reviewing PKGBUILD, REUSE.toml...
+ Reviewed leaf-markdown-viewer.changelog. Status: SAFE -- Informational changelog file; no executable or malicious content.
LLM auditresponse for REUSE.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a REUSE software licensing metadata configuration. It declares that the listed packaging files (PKGBUILD, README.md, .SRCINFO, .gitignore, changelog and install files) are licensed under the 0BSD license. There is no executable code, no download logic, no file modification behavior, and no network activity. This is an ordinary, benign packaging metadata file with no security implications.
</details>
<evidence>
</evidence>
<summary>
Benign REUSE license metadata; no malicious behavior or security concerns.</summary>
</security_assessment>

[7/8] Reviewing PKGBUILD...
+ Reviewed REUSE.toml. Status: SAFE -- Benign REUSE license metadata; no malicious behavior or security concerns.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a pre-compiled `-bin` package. It downloads the application binary from the project&apos;s own GitHub releases page, downloads documentation from the project&apos;s own GitHub repository, installs files into `$pkgdir`, and runs the freshly downloaded binary only to generate shell completions. Fetching from and executing the package&apos;s declared upstream binary is expected behavior for a `-bin` package, and the binary has a pinned SHA-256 checksum, so there is no evidence of injected malicious code.

The odd `Maintainer` line contains a shell-looking `$(echo ... | tr ...)` expression, but it appears inside a shell comment (`#`), so it is never executed. It is only an obfuscated e-mail address intended to avoid spam harvesters, not an active command. The documentation sources use the mutable `main` branch with `SKIP` checksums; this is a reproducibility/hygiene concern rather than evidence of malice. No exfiltration, backdoor, obfuscated executed payload, or unexpected network destination was found.
</details>
<evidence>
</evidence>
<summary>
Standard -bin PKGBUILD; upstream binary is checksummed. No malicious behavior found.</summary>
</security_assessment>

[8/8] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard -bin PKGBUILD; upstream binary is checksummed. No malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 21,778
  Completion Tokens: 3,777
  Total Tokens: 25,555
  Total Cost: $0.005488
  Execution Time: 39.04 seconds

Final Status: SAFE


No issues found.
