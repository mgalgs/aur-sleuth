---
package: windows95-git
pkgver: 6.0.0.r0.g051065e
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: f47e5ed5e9b50f484d29402229454e7d1b1d7cdb
prompt_tokens: 14128
completion_tokens: 3664
total_tokens: 17792
cost: 0.00170618112
execution_time: 54.76
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
upstream_files: 460
upstream_named_files: 2
unpinned_sources: 1
date: 2026-08-27T11:36:20Z
file_verdicts:
  - file: windows95.sh
    status: safe
    summary: Standard Electron launcher script, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD; no malicious indicators found.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; no malicious indicators.
---

Cloning https://aur.archlinux.org/windows95-git.git...
Cloned windows95-git
Analyzing windows95-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD&#39;s global scope contains only variable assignments, function definitions, and a standard `source` array. The `pkgver()` function runs benign `git describe` commands. All potentially sensitive operations (network requests via `curl`, shell sourcing, etc.) are confined to `prepare()`, `build()`, and `package()` functions, which are **not** executed by `makepkg --nobuild --nodeps --noprepare` or `makepkg --printsrcinfo`. The source array fetches a git repository and an RPM from the project&#39;s own GitHub releases, which is normal. No malicious code activates during this narrow gate.
</details>
<evidence></evidence>
<summary>No executable threats in global or pkgver() scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No executable threats in global or pkgver() scope.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: 1 remote source(s) have no checksum (sha256sums=SKIP), so the fetched bytes are not verifiable and can change without any AUR update: windows95.git.rpm::https://github.com/felixrieseberg/windows95/releases/download/v5.0.1/windows95-5.0.1-1.x86_64.rpm
Note: the PKGBUILD names 2 file(s) in the downloaded sources (src/windows95.git/assets/icon.icns, src/windows95.git/forge.config.js); they are upstream content and were not reviewed.
Reviewing the 3 file(s) in the AUR repository. The 460 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, windows95.sh...
LLM auditresponse for windows95.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a standard Electron application launcher. It sets environment variables for compatibility, loads optional user-defined flags from configuration files under `$XDG_CONFIG_HOME` (which are user-controlled, not part of the package), adjusts sandbox behavior for root, and then executes the packaged Electron binary. There are no network requests, no encoded or obfuscated commands, no suspicious file operations, and no execution of external untrusted code. The script only reads user-owned config files and passes their contents as arguments to Electron, which is a common and safe pattern. No genuine supply-chain attack indicators are present.</details>
<evidence></evidence>
<summary>Standard Electron launcher script, no malicious content.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed windows95.sh. Status: SAFE -- Standard Electron launcher script, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a VCS package. It builds from the upstream GitHub repository, uses npm/yarn for dependencies, and installs the application into standard locations.  

The use of `ipinfo.io` in `_set_build_env()` to detect a Chinese IP address and set mirror registries is a minor privacy concern (it leaks the builder's IP to a third party), but it does not exfiltrate sensitive data, execute downloaded code, or perform any malicious action. The check is purely for geolocation-based mirror selection, which is a common optimization in many AUR packages.  

The RPM source is a prebuilt binary downloaded from the official GitHub releases with a SKIP checksum. While this bypasses integrity verification, the instructions clarify that SKIP checksums are not themselves evidence of malice, and the RPM is only used to extract static assets (icons/images) for the build. The main application code is compiled from source. No obfuscated code, backdoors, reverse shells, or unexpected network destinations are present.  
</details>
<evidence>
</evidence>
<summary>Standard AUR PKGBUILD; no malicious indicators found.</summary>
</security_assessment>

[2/3] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD; no malicious indicators found.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a metadata file for the AUR package `windows95-git`. It declares sources, dependencies, and build metadata. All sources point to the official upstream GitHub repository (`felixrieseberg/windows95`), including a git clone URL and a release RPM from the same project. The RPM source from `v5.0.1` is an unconventional mix with a `-git` package, but it originates from the official project repository and does not indicate malicious activity. The `windows95.sh` script is pinned with a SHA256 checksum. The use of `SKIP` for checksums on VCS and prebuilt binary sources is standard for AUR `-git` packages and not a security issue. No suspicious network destinations, obfuscation, or dangerous commands are present.
</details>
<evidence></evidence>
<summary>Standard AUR metadata; no malicious indicators.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; no malicious indicators.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 14,128
  Completion Tokens: 3,664
  Total Tokens: 17,792
  Total Cost: $0.001706
  Execution Time: 54.76 seconds

Final Status: SAFE


No issues found.
