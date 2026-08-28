---
package: stably-orca-bin
pkgver: 1.4.191
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 13638
completion_tokens: 2441
total_tokens: 16079
cost: 0.00160235040
execution_time: 253.26
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: ok
upstream_files: 3
upstream_named_files: 0
unpinned_sources: 0
date: 2026-08-28T23:14:06Z
file_verdicts:
  - file: stably-orca.desktop
    status: safe
    summary: Standard desktop entry, no malicious content.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with no malicious indicators.
  - file: stably-orca.sh
    status: safe
    summary: Safe wrapper, no malicious code.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD, no malicious code.
---

Cloning https://aur.archlinux.org/stably-orca-bin.git...
Cloned stably-orca-bin
Analyzing stably-orca-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable assignments and arrays in its global scope. There is no `pkgver()` function defined. The `source` array consists of an AppImage from a GitHub release URL (with a pinned SHA-256 checksum) and two local files (`stably-orca.sh` and `stably-orca.desktop`) that are normal AUR packaging artifacts. The `prepare()`, `build()`, and `package()` functions are not executed during the requested commands (`--nobuild --nodeps --noprepare`). No dangerous top-level command substitutions, network requests from unexpected sources, or obfuscated code are present. The operations are safe for fetching sources and generating `.SRCINFO`.
</details>
<evidence>
</evidence>
<summary>Standard PKGBUILD; no malicious code in scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Standard PKGBUILD; no malicious code in scope.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Reviewing the 4 file(s) in the AUR repository. The 3 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, PKGBUILD...
[0/4] Reviewing .SRCINFO, PKGBUILD, stably-orca.desktop...
LLM auditresponse for stably-orca.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard .desktop entry for the Orca IDE by Stably AI. It contains only metadata fields (Name, GenericName, Comment, Exec, Terminal, Type, Icon, Categories, StartupWMClass) and no executable code, obfuscation, network requests, or unexpected file operations. The `Exec` line runs `stably-orca %U`, which is the normal way to launch the packaged application. There are no security concerns.
</details>
<evidence></evidence>
<summary>Standard desktop entry, no malicious content.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, PKGBUILD, stably-orca.desktop, stably-orca.sh...
[1/4] Reviewing .SRCINFO, PKGBUILD, stably-orca.sh...
+ Reviewed stably-orca.desktop. Status: SAFE -- Standard desktop entry, no malicious content.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is standard AUR metadata. It specifies the package name, version, dependencies, and three source files: a prebuilt AppImage from the project&#39;s official GitHub releases, a shell script, and a desktop file. All sources include SHA256 checksums. There are no unusual commands, obfuscated code, external network requests, or file operations. The content conforms to normal packaging practices and does not exhibit any indicators of a supply-chain attack.
</details>
<evidence></evidence>
<summary>Standard AUR metadata with no malicious indicators.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, stably-orca.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with no malicious indicators.
LLM auditresponse for stably-orca.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `stably-orca.sh` is a simple wrapper script that sets the `APPDIR` environment variable to `/opt/stably-orca` and launches the upstream `AppRun` binary with `--disable-features=Vulkan`. There are no network requests, obfuscated commands, dangerous operations, or deviations from normal packaging practices. The script only performs standard application launch tasks and passes user arguments along. No security issues detected.
</details>
<evidence>
</evidence>
<summary>Safe wrapper, no malicious code.</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed stably-orca.sh. Status: SAFE -- Safe wrapper, no malicious code.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a prebuilt Electron application distributed as an AppImage. The source is pinned to a specific version from the official upstream GitHub releases, with valid sha256 checksums provided for all files. The prepare() phase extracts the AppImage using the upstream binary's built-in `--appimage-extract` flag, which is a routine operation in this packaging pattern. The package() phase copies the extracted files into `/opt/stably-orca`, installs a launcher script, a .desktop file, and extracts icons—all standard install steps. There is no obfuscated code, no unexpected network requests, no execution of downloaded scripts, and no modification of system files outside the package's own install paths. No evidence of supply-chain injection or malicious intent was found.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD, no malicious code.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD, no malicious code.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,638
  Completion Tokens: 2,441
  Total Tokens: 16,079
  Total Cost: $0.001602
  Execution Time: 253.26 seconds

Final Status: SAFE


No issues found.
