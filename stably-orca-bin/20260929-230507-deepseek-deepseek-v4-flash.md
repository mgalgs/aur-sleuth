---
package: stably-orca-bin
pkgver: 1.4.217
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 13612
completion_tokens: 1830
total_tokens: 15442
cost: 0.0013178536
execution_time: 19.15
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-29T23:05:06Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO metadata with pinned checksums, official source, no malicious behavior.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR packaging script; all operations confined to srcdir/pkgdir; no malicious behavior found.
  - file: stably-orca.sh
    status: safe
    summary: Safe wrapper launching the packaged Orca AppRun with standard environment configuration.
  - file: stably-orca.desktop
    status: safe
    summary: Standard desktop entry; no security issues.
---

Materializing stably-orca-bin from local mirror...
Materialized stably-orca-bin
Analyzing stably-orca-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` only sources the global/top-level scope of the PKGBUILD. In this file, the global scope consists solely of standard variable definitions: `pkgname`, `pkgver`, `pkgdesc`, `arch`, `url`, `license`, `depends`, `source`, `sha256sums`, `noextract`, etc. There are no top-level command substitutions, no `eval`, no network calls, no file operations, and no other code that executes while the PKGBUILD is sourced. All potentially active logic lives inside `prepare()` and `package()` functions, which are not executed by `--printsrcinfo` and will be audited later.

The `prepare()` and `package()` functions extract and install the upstream AppImage into the package directory — a standard pattern for prebuilt binary packages. The checksums are pinned (not SKIP), and the source points to the project's official GitHub releases. There is nothing that would execute malicious code during the metadata-parsing step.
</details>
<evidence>

</evidence>
<summary>
No top-level execution risk; sourcing is safe for `makepkg --printsrcinfo`.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level execution risk; sourcing is safe for `makepkg --printsrcinfo`.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, PKGBUILD...
[0/4] Reviewing .SRCINFO, PKGBUILD, stably-orca.desktop...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a standard Arch package metadata file for a prebuilt Electron-based IDE (stably-orca-bin). It declares a single source tarball/AppImage downloaded from the project's official GitHub releases URL (`https://github.com/stablyai/orca/releases/download/v1.4.217/orca-linux.AppImage`), along with a launcher shell script and a desktop entry. All three sources have pinned SHA-256 checksums, which is good supply-chain hygiene.

No suspicious commands, network behavior, obfuscation, or file operations are present. This metadata file only describes the package structure and dependencies. The `noextract`, `options`, and dependency declarations are routine packaging practice. There is no evidence of injected malicious code or anything deviating from normal AUR packaging.
</details>
<evidence>
</evidence>
<summary>
Standard .SRCINFO metadata with pinned checksums, official source, no malicious behavior.
</summary>
</security_assessment>

[1/4] Reviewing PKGBUILD, stably-orca.desktop...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO metadata with pinned checksums, official source, no malicious behavior.
[1/4] Reviewing PKGBUILD, stably-orca.desktop, stably-orca.sh...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard AUR packaging script for a prebuilt Electron AppImage. It declares the upstream source (a GitHub release AppImage), pins SHA256 checksums for all fetched files, extracts the AppImage with `--appimage-extract` in `prepare()`, and in `package()` copies the extracted tree and helper scripts/desktop file into the package directory. All operations (`chmod`, `install`, `cp`, icon discovery loops) are ordinary packaging steps confined to `$srcdir` and `$pkgdir`. There are no network fetches outside the declared source, no encoded/obfuscated commands, no execution of arbitrary downloaded content, and no manipulation of files outside the package's own staging directories. The `chmod -R u+rwX,go+rX` on `/opt/stably-orca` is a benign permissions fix so non-root users can launch the app. The comment about AppImageLauncher and binfmt_misc is explanatory and not suspicious. No supply-chain attack indicators are present.
</details>
<evidence>
</evidence>
<summary>
Standard AUR packaging script; all operations confined to srcdir/pkgdir; no malicious behavior found.
</summary>
</security_assessment>

[2/4] Reviewing stably-orca.desktop, stably-orca.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR packaging script; all operations confined to srcdir/pkgdir; no malicious behavior found.
LLM auditresponse for stably-orca.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a straightforward shell wrapper for launching the Stably AI Orca application from /opt/stably-orca. It sets the APPDIR environment variable to the correct installation path, optionally adjusts Chromium/Electron flags for Vulkan/Wayland compatibility, and execs the application&apos;s AppRun binary with all user-supplied arguments passed through.

There is no evidence of malicious behavior: no network requests, no downloads, no obfuscation, no file system modifications outside the package&apos;s own runtime directory, and no execution of third-party or attacker-controlled code. The commented-out Wayland option is a normal runtime configuration convenience. The wrapper is consistent with standard packaging practice for an extracted AppImage-based application.
</details>
<evidence>
</evidence>
<summary>
Safe wrapper launching the packaged Orca AppRun with standard environment configuration.</summary>
</security_assessment>

[3/4] Reviewing stably-orca.desktop...
+ Reviewed stably-orca.sh. Status: SAFE -- Safe wrapper launching the packaged Orca AppRun with standard environment configuration.
LLM auditresponse for stably-orca.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.desktop` file used by the Linux desktop environment to register an application menu entry. It defines metadata (name, icon, categories) and the command to launch the application (`stably-orca`). The `Exec=stably-orca %U` line is normal for applications that can handle URLs (common for IDEs and text editors). There are no suspicious commands, obfuscated payloads, network requests, or file operations. The file is purely declarative and contains no executable logic beyond a simple launch command. This is an ordinary packaging artifact with no evidence of supply-chain compromise.
</details>
<evidence></evidence>
<summary>Standard desktop entry; no security issues.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed stably-orca.desktop. Status: SAFE -- Standard desktop entry; no security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,612
  Completion Tokens: 1,830
  Total Tokens: 15,442
  Total Cost: $0.001318
  Execution Time: 19.15 seconds

Final Status: SAFE


No issues found.
