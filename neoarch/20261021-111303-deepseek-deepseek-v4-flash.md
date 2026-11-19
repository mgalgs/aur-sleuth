---
package: neoarch
pkgver: 3.4.3
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 10669
completion_tokens: 5353
total_tokens: 16022
cost: 0.001945125
execution_time: 49.62
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 1
injection_attempts: 0
date: 2026-10-21T11:13:03Z
file_verdicts:
  - file: neoarch.install
    status: safe
    summary: Standard Flatpak remote addition, no security issues.
  - file: .SRCINFO
    status: safe
    summary: Config metadata; no executable code. Safe.
  - file: PKGBUILD
    status: safe
    summary: Standard packaging; no supply-chain attack indicators.
---

Materializing neoarch from local mirror...
Materialized neoarch
Analyzing neoarch AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources only the PKGBUILD's global/top-level scope. This PKGBUILD defines only standard metadata variables (`pkgname`, `pkgver`, `pkgdesc`, `arch`, `url`, `license`, `depends`, `optdepends`, `source`, `sha256sums`, etc.) and variable assignments containing static strings. There are no top-level command substitutions, no network requests, no downloads, no obfuscated/encoded payloads, and no file-modifying operations that would execute during sourcing.

The `package()` function contains the only real file operations, symlinks, and `sed` commands, but those do not run during `makepkg --printsrcinfo` and are out of scope for this narrow gate. The `sha256sums=(SKIP)` entry is not a concern at this step because no source is downloaded or verified during metadata printing.
</details>
<evidence>
</evidence>
<summary>
Top-level PKGBUILD scope is safe; package() code not executed during printsrcinfo.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD scope is safe; package() code not executed during printsrcinfo.
Note: 1 remote source(s) have no checksum (sha256sums=SKIP), so the bytes are not verifiable: https://github.com/neoarch712/Neoarch/archive/refs/tags/v3.4.3.tar.gz
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing PKGBUILD...
[0/3] Reviewing PKGBUILD, .SRCINFO...
[0/3] Reviewing PKGBUILD, .SRCINFO, neoarch.install...
LLM auditresponse for neoarch.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The neoarch.install script contains a post_install function that adds the official Flathub repository for Flatpak if Flatpak is installed. This is a standard packaging convenience that does not perform any dangerous operations. The URL is the official Flathub endpoint, and the command is run with --user scope and guarded by || true to avoid failures. There is no obfuscation, data exfiltration, unexpected network requests, or execution of untrusted code. This file is safe.
</details>
<evidence></evidence>
<summary>Standard Flatpak remote addition, no security issues.</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, .SRCINFO...
+ Reviewed neoarch.install. Status: SAFE -- Standard Flatpak remote addition, no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `.SRCINFO` is a static metadata file used by AUR helpers to define a package. It contains no executable code, obfuscation, or instructions that could directly manipulate a system. The source URL points to a tagged release archive on the package's own GitHub repository, which is standard practice. The use of `SKIP` for the checksum is explicitly recognized as a normal packaging choice and does not indicate malice. The listed dependencies are standard for an Arch package manager and serve its declared purpose. There is no evidence of any supply-chain attack, exfiltration, or injected malicious behavior within this file.
</details>
<evidence />
<summary>Config metadata; no executable code. Safe.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Config metadata; no executable code. Safe.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD for `neoarch` follows standard Arch Linux packaging conventions. It downloads a tagged release tarball from the project's own GitHub repository (`source=("$url/archive/refs/tags/v$pkgver.tar.gz")`). The `sha256sums` value is `'SKIP'`, which is explicitly noted in the analysis guidelines as a standard practice (common for uploaded tarballs or when the maintainer chooses not to verify a checksum in the PKGBUILD) and should not be considered malicious.

The `package()` function performs routine file installation operations: copying the source tree into `/opt/neoarch/Neoarch`, setting executable permissions on helper scripts, creating standard symlinks in `/usr/bin`, and installing the desktop file, icon, and license. The `sed` commands modify paths within the installed files to reconcile the developer's local build environment (`/home/test/New Folder/Aurora`) and upstream executable name (`aurora_home.py`) with the standard deployment paths used by the packaged application (`/opt/neoarch/Neoarch` and `-m neoarch` module invocation). This is a transparent and standard packaging fix, not an obfuscated attack.

No suspicious network calls (e.g., `curl`, `wget` to unrelated hosts), data exfiltration attempts, obfuscated code, or tampering with unrelated system files are present. All actions are confined to the package build directory and perform standard installation logic. Based on the calibrated criteria, this file is safe.
</details>
<evidence/>
<summary>Standard packaging; no supply-chain attack indicators.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard packaging; no supply-chain attack indicators.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,669
  Completion Tokens: 5,353
  Total Tokens: 16,022
  Total Cost: $0.001945
  Execution Time: 49.62 seconds

Final Status: SAFE


No issues found.
