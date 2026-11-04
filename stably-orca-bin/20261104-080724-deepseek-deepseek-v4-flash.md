---
package: stably-orca-bin
pkgver: 1.4.248
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 13471
completion_tokens: 1695
total_tokens: 15166
cost: 0.001534351
execution_time: 35.29
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-04T08:07:24Z
file_verdicts:
  - file: stably-orca.desktop
    status: safe
    summary: Standard .desktop file, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with pinned source and checksums.
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO, no malicious content.
  - file: stably-orca.sh
    status: safe
    summary: Clean wrapper script with no malicious behavior.
---

Materializing stably-orca-bin from local mirror...
Materialized stably-orca-bin
Analyzing stably-orca-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's top-level (global) scope contains only ordinary metadata and source declarations: `pkgname`, `pkgver`, `pkgdesc`, `arch`, `depends`, `provides`, `conflicts`, `options`, a `source` array, `sha256sums`, and `noextract`. There are no command substitutions, no `eval`, no encoded/obfuscated strings, no background processes, and no network or file-system operations executed while the file is sourced. Nothing in the global scope would download or exfiltrate data during `makepkg --printsrcinfo`.

The single remote artifact is fetched from the package's own declared upstream (`https://github.com/stablyai/orca/releases/download/v${pkgver}/orca-linux.AppImage`), which is exactly the expected origin for this package. All three sources carry fixed SHA-256 checksums (no `SKIP`), which is good hygiene. The only other sources are the maintainer-supplied `stably-orca.sh` and `stably-orca.desktop` files.

The code inside `prepare()` and `package()` (chmod, running the AppImage's built-in `--appimage-extract`, copying `squashfs-root` into `$pkgdir`, installing the script/desktop file and icons) is routine packaging and is out of scope for this gate in any case. No supply-chain red flags were identified for the `--printsrcinfo` step.
</details>
<evidence>
</evidence>
<summary>Top-level scope is plain metadata; no execution occurs during printsrcinfo.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level scope is plain metadata; no execution occurs during printsrcinfo.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, PKGBUILD...
[0/4] Reviewing .SRCINFO, PKGBUILD, stably-orca.desktop...
LLM auditresponse for stably-orca.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.desktop` file for the stably-orca application. It contains no executable code, only metadata such as application name, categories, icon reference, and the command to launch the program (`stably-orca %U`). There are no suspicious network requests, obfuscated content, file operations, or any other indicators of a supply-chain attack. The file follows the standard freedesktop.org desktop entry specification and is benign.
</details>
<evidence></evidence>
<summary>Standard .desktop file, no security issues.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, PKGBUILD, stably-orca.desktop, stably-orca.sh...
[1/4] Reviewing .SRCINFO, PKGBUILD, stably-orca.sh...
+ Reviewed stably-orca.desktop. Status: SAFE -- Standard .desktop file, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard AUR package for a prebuilt Electron-based application. It downloads the upstream AppImage from the official GitHub releases URL with a pinned version and a valid SHA-256 checksum. The `prepare()` function extracts the AppImage using `--appimage-extract`, which is normal for packaging extracted AppImage contents. The `package()` function installs the extracted files into the package directory, sets permissions, and installs a launcher script and desktop file. There are no suspicious network requests, obfuscated commands, or operations outside of standard packaging practices. No malicious behavior is present.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with pinned source and checksums.</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, stably-orca.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with pinned source and checksums.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.SRCINFO` metadata file for an AUR package. It defines package dependencies, sources, and checksums. All three source files have non-SKIP SHA-256 checksums, indicating the maintainer has pinned the expected downloads. The only remote source is the official GitHub release tarball from the project's own repository. There are no commands, obfuscated code, suspicious network destinations, or unexpected operations. This file poses no security risk; it is a clean packaging manifest.
</details>
<evidence>
</evidence>
<summary>Standard .SRCINFO, no malicious content.</summary>
</security_assessment>

[3/4] Reviewing stably-orca.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO, no malicious content.
LLM auditresponse for stably-orca.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a simple wrapper that sets the `APPDIR` environment variable to the application&#39;s installation path and executes the upstream `AppRun` binary with a `--disable-features=Vulkan` flag. There are no network requests, obfuscated commands, suspicious file operations, or any deviation from normal packaging practices. The comments explain the purpose of each environment variable and flag. No supply-chain attack indicators are present.
</details>
<evidence></evidence>
<summary>Clean wrapper script with no malicious behavior.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed stably-orca.sh. Status: SAFE -- Clean wrapper script with no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,471
  Completion Tokens: 1,695
  Total Tokens: 15,166
  Total Cost: $0.001534
  Execution Time: 35.29 seconds

Final Status: SAFE


No issues found.
