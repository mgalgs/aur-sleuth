---
package: pi-coding-agent
pkgver: 0.84.4
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 13117
completion_tokens: 2556
total_tokens: 15673
cost: 0.00146998656
execution_time: 191.96
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: ok
upstream_files: 1451
upstream_named_files: 1
unpinned_sources: 0
date: 2026-08-30T03:24:29Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file with no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with pinned checksum, no malicious content.
  - file: update.sh
    status: safe
    summary: Standard AUR update helper script, no malicious behavior.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR package with pinned source hash.
---

Cloning https://aur.archlinux.org/pi-coding-agent.git...
Cloned pi-coding-agent
Analyzing pi-coding-agent AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only variable assignments and function definitions at the top level. No `pkgver()` function is present—the version is a static variable. There is no top-level command execution, network requests beyond the declared source download, or obfuscated code. The source is fetched from the official GitHub releases URL with a provided SHA256 checksum. Since `makepkg --nobuild --nodeps --noprepare` only sources the PKGBUILD (running global scope and `pkgver()` if present) and downloads/extracts the source, no dangerous code executes during this step. The `prepare()`, `build()`, and `package()` functions are not executed due to the flags provided.
</details>
<evidence></evidence>
<summary>No malicious code runs at source fetching stage</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code runs at source fetching stage
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: the PKGBUILD names 1 file(s) in the downloaded sources (src/pi-0.84.4/scripts/build-binaries.sh); they are upstream content and were not reviewed.
Reviewing the 4 file(s) in the AUR repository. The 1451 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .gitignore...
[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` used in AUR or general Git repositories to exclude build artifacts and temporary files from version control. It contains no executable code, no network requests, no file operations, and no obfuscated content. It poses no security risk.
</details>
<evidence></evidence>
<summary>Standard .gitignore file with no security concerns.</summary>
</security_assessment>

[1/4] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore file with no security concerns.
[1/4] Reviewing .SRCINFO, PKGBUILD, update.sh...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.SRCINFO` metadata file for the AUR package `pi-coding-agent`. It contains no executable code, only declarative fields: package name, version, dependencies, source URL, and checksum. The source is a tarball from the official GitHub releases page (`github.com/earendil-works/pi/releases/download/v0.84.4/pi-0.84.4-source.tar.gz`) with a pinned SHA256 checksum. There are no suspicious network requests, obfuscated commands, or system modifications. The metadata follows standard AUR packaging practices and does not contain any indicators of malicious behavior. The dependencies (`fd`, `ripgrep`, `glibc`, `gcc-libs`) are legitimate system tools. No evidence of a supply-chain attack or injection.
</details>
<evidence></evidence>
<summary>Standard AUR metadata with pinned checksum, no malicious content.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, update.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with pinned checksum, no malicious content.
LLM auditresponse for update.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a routine AUR maintainer helper script that automates version bumping and checksum updates for the `pi-coding-agent` package. It fetches the latest release tag from the official GitHub repository (`earendil-works/pi`), downloads the corresponding source tarball, computes its SHA256, and updates the `PKGBUILD` and `.SRCINFO` files accordingly. All network operations target the project's own upstream GitHub API and releases URL, which is expected behavior. There is no obfuscation, no execution of untrusted code, and no data exfiltration. The script follows standard AUR packaging practices.
</details>
<evidence></evidence>
<summary>Standard AUR update helper script, no malicious behavior.</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed update.sh. Status: SAFE -- Standard AUR update helper script, no malicious behavior.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard Arch packaging practices for a Node.js-based CLI tool from the declared upstream (GitHub). The source tarball is pinned with a specific SHA-256 checksum, ensuring integrity of the downloaded code. The `npm ci --ignore-scripts` command in `prepare()` installs dependencies without executing arbitrary lifecycle scripts, which is a recommended security practice. The build step runs the upstream build script with documented flags, and the package step installs files into standard locations. No suspicious network requests, obfuscation, or data exfiltration is present. The use of `npm ci` does involve network access to the npm registry, but this is an expected part of building a Node.js package from source and is explicitly permitted by Arch packaging guidelines. Overall, the package shows no signs of a supply chain attack or malicious behavior.
</details>
<evidence>
</evidence>
<summary>Standard AUR package with pinned source hash.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR package with pinned source hash.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,117
  Completion Tokens: 2,556
  Total Tokens: 15,673
  Total Cost: $0.001470
  Execution Time: 191.96 seconds

Final Status: SAFE


No issues found.
