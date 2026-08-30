---
package: rotki
pkgver: 1.44.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 16030
completion_tokens: 3458
total_tokens: 19488
cost: 0.00192103912
execution_time: 83.59
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
source_fetch: ok
upstream_files: 6383
upstream_named_files: 2
unpinned_sources: 0
date: 2026-08-29T11:23:27Z
file_verdicts:
  - file: resources-path.cjs
    status: safe
    summary: Benign Electron resources path override.
  - file: PKGBUILD
    status: safe
    summary: Safe - standard PKGBUILD with checksums, no malice.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR .SRCINFO with no malicious indicators
  - file: rotki.desktop
    status: safe
    summary: Standard desktop file, no security issues.
  - file: rotki.sh
    status: safe
    summary: Standard launch script, no malicious content.
---

Cloning https://aur.archlinux.org/rotki.git...
Cloned rotki
Analyzing rotki AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD defines standard variables and a helper function `_ensure_local_nvm()` that is only called within `prepare()`, `build()`, and `package()`. Since the commands (`makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo`) do not execute those functions, the top-level scope contains no dangerous operations. Source fetching downloads the official rotki archive from GitHub and local supporting files, all with valid b2sums. No obfuscated code, network downloads to unexpected hosts, or command execution outside of the packaging scope is present in the sourced context. The operation is safe for this limited audit gate.
</details>
<evidence>
</evidence>
<summary>No malicious code executed during fetch/source step.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code executed during fetch/source step.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: the PKGBUILD names 2 file(s) in the downloaded sources (src/rotki-1.44.0/colibri/Cargo.toml, src/rotki-1.44.0/frontend/app/public/assets/images/protocols/rotki.svg); they are upstream content and were not reviewed.
Reviewing the 5 file(s) in the AUR repository. The 6383 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, PKGBUILD...
[0/5] Reviewing .SRCINFO, PKGBUILD, resources-path.cjs...
LLM auditresponse for resources-path.cjs:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard compatibility patch for Electron applications installed via the Arch User Repository. It overrides `process.resourcesPath` to point to the current directory (`__dirname`) so that the application can locate its resources correctly when using the system-wide Electron rather than a bundled copy. The code is straightforward JavaScript with no network requests, obfuscation, dangerous commands, or data exfiltration. It performs a single property definition that is completely benign and serves only to fix the Electron resource path resolution. There is no evidence of malicious or suspicious behavior.
</details>
<evidence>
</evidence>
<summary>Benign Electron resources path override.</summary>
</security_assessment>

[0/5] Reviewing .SRCINFO, PKGBUILD, resources-path.cjs, rotki.desktop...
[1/5] Reviewing .SRCINFO, PKGBUILD, rotki.desktop...
+ Reviewed resources-path.cjs. Status: SAFE -- Benign Electron resources path override.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard Arch Linux packaging practices for building rotki, an Electron application with Rust and Python components. All source files have pinned b2 checksums (no SKIP). Build dependencies are fetched from official package managers (cargo from crates.io, pnpm from npm, uv from PyPI) which is expected for this type of project. The use of `nvm install` and `nvm use` in prepare() downloads a specific Node.js version from the official Node.js distribution — while this is an unpinned network fetch at build time, it is a common pattern for Node-based packages and not evidence of malicious intent. No obfuscated commands, suspicious network destinations, backdoors, or data exfiltration are present. The file manipulates only its own build artifacts and installs into `$pkgdir`. The package is safe.
</details>
<evidence></evidence>
<summary>Safe - standard PKGBUILD with checksums, no malice.</summary>
</security_assessment>

[1/5] Reviewing .SRCINFO, PKGBUILD, rotki.desktop, rotki.sh...
[2/5] Reviewing .SRCINFO, rotki.desktop, rotki.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Safe - standard PKGBUILD with checksums, no malice.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file contains standard AUR package metadata for the `rotki` application. All source files originate from the official GitHub repository (`https://github.com/rotki/rotki`) or are auxiliary packaging scripts provided by the AUR maintainer. Checksums (BLAKE2) are provided for every source, none are set to `SKIP`. There are no suspicious network requests, obfuscated commands, or dangerous operations. The dependencies and build dependencies are typical for this type of application. No evidence of supply-chain manipulation or malicious intent is present.
</details>
<evidence></evidence>
<summary>Standard AUR .SRCINFO with no malicious indicators</summary>
</security_assessment>

[3/5] Reviewing rotki.desktop, rotki.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR .SRCINFO with no malicious indicators
LLM auditresponse for rotki.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.desktop` file that defines the application entry for Rotki. It contains only the expected metadata fields (name, comment, icon, executable, categories) with no suspicious content. The `Exec` field specifies only the binary name `rotki` without any arguments, shell commands, or encoded payloads. No network requests, file modifications, or obfuscation are present. The file follows normal packaging practices and presents no security concerns.
</details>
<evidence></evidence>
<summary>Standard desktop file, no security issues.</summary>
</security_assessment>

[4/5] Reviewing rotki.sh...
+ Reviewed rotki.desktop. Status: SAFE -- Standard desktop file, no security issues.
LLM auditresponse for rotki.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a simple launcher script for rotki, an Electron-based application. It exports an environment variable (`APPIMAGE=1`) to prevent the electron-updater from hanging, then executes the electron runtime with the application's main entry point (`/usr/lib/rotki/app.asar`). There are no network requests, no obfuscated code, no suspicious file operations, and no system modifications beyond running the application. The use of `exec` and `--require` is standard for launching Electron apps. The HTML entity `&amp;quot;` in the file is likely an artifact of file presentation; in actual use it would be a regular double quote, which is standard shell syntax. No evidence of a supply-chain attack or malicious behavior is present.
</details>
<evidence></evidence>
<summary>Standard launch script, no malicious content.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed rotki.sh. Status: SAFE -- Standard launch script, no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 16,030
  Completion Tokens: 3,458
  Total Tokens: 19,488
  Total Cost: $0.001921
  Execution Time: 83.59 seconds

Final Status: SAFE


No issues found.
