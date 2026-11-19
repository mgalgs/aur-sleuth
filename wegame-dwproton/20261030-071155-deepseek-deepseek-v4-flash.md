---
package: wegame-dwproton
pkgver: 7.06.27.1446
pkgrel: 8
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 48800
completion_tokens: 9696
total_tokens: 58496
cost: 0.006205472
execution_time: 49.06
files_reviewed: 11
files_skipped: 0
maintainer_files: 11
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-30T07:11:55Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: Plain 0BSD license text only; no security concerns detected.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore excluding build artifacts; no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; no malicious behavior detected.
  - file: WeGame-EULA.txt
    status: safe
    summary: Plain license notice; no executable or malicious content found.
  - file: README.md
    status: safe
    summary: Documentation-only README; no malicious behavior found; package integration described is legitimate.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR packaging PKGBUILD; no malicious behavior or suspicious build-time operations found.
  - file: wegame-dwproton.desktop
    status: safe
    summary: Standard desktop launcher entry; no malicious or suspicious behavior present.
  - file: wegame-dwproton.install
    status: safe
    summary: Install script only prints messages; no malicious or dangerous behavior found.
  - file: wegame-twmrc
    status: safe
    summary: Benign twm window manager configuration; no malicious or suspicious behavior found.
  - file: wegame-nested-x11-fix
    status: safe
    summary: No network, downloads, or exfiltration; normal X11 fix helper.
  - file: wegame-dwproton
    status: safe
    summary: Launcher script performs scoped Wine/Proton session management; no malicious behavior found.
---

Materializing wegame-dwproton from local mirror...
Materialized wegame-dwproton
Analyzing wegame-dwproton AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` only sources the PKGBUILD's global/top-level scope. In this PKGBUILD, the top-level scope contains only normal variable and array definitions: package metadata, dependencies, source URLs, and checksums. There are no top-level command substitutions, no network requests, no downloads, no calls to `eval`, `curl`, `wget`, or similar, and no file-modifying operations that would execute while the PKGBUILD is sourced.

The `prepare()` and `package()` functions contain file operations and extraction logic, but these functions are not executed by `makepkg --printsrcinfo`, so they are out of scope for this narrow safety gate. The `SKIP` checksums and unpinned/reproducibility concerns are not grounds to block this step, since no sources are downloaded or verified during `--printsrcinfo`.
</details>
<evidence>
</evidence>
<summary>
Top-level PKGBUILD scope is safe; only static definitions execute during printsrcinfo.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD scope is safe; only static definitions execute during printsrcinfo.
Reviewing the 11 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/11] Reviewing .SRCINFO...
[0/11] Reviewing .SRCINFO, .gitignore...
[0/11] Reviewing .SRCINFO, .gitignore, LICENSE...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a plain-text copy of the Zero-Clause BSD (0BSD) license. It contains only standard license text and no code, commands, network references, or file operations. There is no evidence of malicious, obfuscated, or unusual content. This is a normal license file for an AUR package.
</details>
<evidence>
</evidence>
<summary>
Plain 0BSD license text only; no security concerns detected.</summary>
</security_assessment>

[0/11] Reviewing .SRCINFO, .gitignore, LICENSE, PKGBUILD...
[1/11] Reviewing .SRCINFO, .gitignore, PKGBUILD...
+ Reviewed LICENSE. Status: SAFE -- Plain 0BSD license text only; no security concerns detected.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` used in AUR package repositories. It excludes build artifacts such as compiled executables, logs, package tarballs, and the `pkg/` and `src/` directories created by `makepkg`. No commands, network operations, file modifications, or obfuscated content are present. There is no evidence of malicious behavior.
</details>
<evidence>
</evidence>
<summary>
Standard .gitignore excluding build artifacts; no security concerns.</summary>
</security_assessment>

[2/11] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore excluding build artifacts; no security concerns.
[2/11] Reviewing .SRCINFO, PKGBUILD, README.md...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is standard AUR package metadata. It declares the package name, version, dependencies, source URLs, and checksums for the wegame-dwproton package. The sources point to Tencent's official WeGame download host and the project's upstream DWProton release host on dawn.wine, which are consistent with the package's stated purpose of integrating DWProton for WeGame.

The checksum values include some `SKIP` entries, particularly for the upstream DWProton tarball and several local files. As noted in the audit guidance, `SKIP` checksums are a trust/hygiene concern rather than evidence of malice, especially for externally hosted binaries. No obfuscated commands, suspicious network behavior, dangerous shell constructs, or file exfiltration logic appears in this metadata-only file. Nothing here deviates from ordinary packaging practice.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata; no malicious behavior detected.</summary>
</security_assessment>

[2/11] Reviewing .SRCINFO, PKGBUILD, README.md, WeGame-EULA.txt...
[3/11] Reviewing PKGBUILD, README.md, WeGame-EULA.txt...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; no malicious behavior detected.
LLM auditresponse for WeGame-EULA.txt:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a plain-text license notice for the WeGame package. It does not contain any executable code, shell commands, network requests, or file operations. It simply states that Tencent WeGame assets are not covered by the project's 0BSD license, directs users to Tencent's official agreement, and notes that the installer is downloaded unmodified from Tencent. There is no obfuscation, exfiltration, backdoor, or unexpected behavior. The content is consistent with standard upstream licensing documentation.
</details>
<evidence>
</evidence>
<summary>
Plain license notice; no executable or malicious content found.</summary>
</security_assessment>

[3/11] Reviewing PKGBUILD, README.md, WeGame-EULA.txt, wegame-dwproton...
[4/11] Reviewing PKGBUILD, README.md, wegame-dwproton...
+ Reviewed WeGame-EULA.txt. Status: SAFE -- Plain license notice; no executable or malicious content found.
LLM auditresponse for README.md:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a README for an unofficial AUR package that runs the Tencent WeGame client under a bundled DWProton runtime. It contains documentation only: no executable code, no shell commands that fetch and run remote content, no obfuscated strings, and no unexpected system modifications. The described downloads come from Tencent and Dawn Winery, the package's own upstream sources, and the README states those downloads are verified with pinned cryptographic digests.

The update-recovery behavior described is confined to the WeGame installation inside the package-owned Wine prefix and fails closed unless strict markers and file conditions match. This is ordinary compatibility tooling rather than evidence of a supply-chain attack. No exfiltration, backdoor, credential theft, or execution of attacker-controlled code is present.
</details>
<evidence>
</evidence>
<summary>
Documentation-only README; no malicious behavior found; package integration described is legitimate.</summary>
</security_assessment>

[4/11] Reviewing PKGBUILD, README.md, wegame-dwproton, wegame-dwproton.desktop...
[5/11] Reviewing PKGBUILD, wegame-dwproton, wegame-dwproton.desktop...
+ Reviewed README.md. Status: SAFE -- Documentation-only README; no malicious behavior found; package integration described is legitimate.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices. It downloads the WeGame installer from Tencent's official CDN and the DWProton release archive from the project's own upstream release page, then extracts an icon and installs the game loader, DWProton files, launcher scripts, desktop entry, and licenses into `$pkgdir`. There are no suspicious network calls in `prepare()` or `package()`, no obfuscated/encoded commands, no use of `eval`, `curl`, `wget`, or `git pull`, and no file operations outside the normal `$srcdir`/`$pkgdir` build sandbox.

The only notable hygiene concern is that the DWProton tarball has `SKIP` for its sha256 checksum, meaning its integrity is not verified at build time. This is a reproducibility/trust consideration, but it is not evidence of malicious behavior, and DWProton is the package's declared upstream project. No genuinely malicious or supply-chain-attack indicators were found.
</details>
<evidence>
</evidence>
<summary>
Standard AUR packaging PKGBUILD; no malicious behavior or suspicious build-time operations found.
</summary>
</security_assessment>

[5/11] Reviewing PKGBUILD, wegame-dwproton, wegame-dwproton.desktop, wegame-dwproton.install...
[6/11] Reviewing wegame-dwproton, wegame-dwproton.desktop, wegame-dwproton.install...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR packaging PKGBUILD; no malicious behavior or suspicious build-time operations found.
LLM auditresponse for wegame-dwproton.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard freedesktop.org `.desktop` entry file. It launches the `wegame-dwproton` command with no arguments, sets an icon, and declares the application category as Game. There are no network requests, encoded commands, file manipulations, or any other suspicious behavior. The file is consistent with ordinary packaging for a desktop launcher.
</details>
<evidence>
</evidence>
<summary>
Standard desktop launcher entry; no malicious or suspicious behavior present.</summary>
</security_assessment>

[6/11] Reviewing wegame-dwproton, wegame-dwproton.desktop, wegame-dwproton.install, wegame-nested-x11-fix...
[7/11] Reviewing wegame-dwproton, wegame-dwproton.install, wegame-nested-x11-fix...
+ Reviewed wegame-dwproton.desktop. Status: SAFE -- Standard desktop launcher entry; no malicious or suspicious behavior present.
LLM auditresponse for wegame-dwproton.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Arch Linux package install script. It only prints informational messages during post_install, post_upgrade, and post_remove using heredocs. It performs no downloads, no code execution, no file modifications, and no system changes. The post_remove message suggests commands the user could run manually, but the script itself does not execute them. There is no evidence of malicious, obfuscated, or supply-chain behavior.
</details>
<evidence>
</evidence>
<summary>
Install script only prints messages; no malicious or dangerous behavior found.</summary>
</security_assessment>

[8/11] Reviewing wegame-dwproton, wegame-nested-x11-fix...
+ Reviewed wegame-dwproton.install. Status: SAFE -- Install script only prints messages; no malicious or dangerous behavior found.
[8/11] Reviewing wegame-dwproton, wegame-nested-x11-fix, wegame-twmrc...
LLM auditresponse for wegame-twmrc:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a small `twm` window manager configuration snippet. It contains standard, benign X11 window manager settings: `NoGrabServer`, `NoTitle`, `RandomPlacement`, `BorderWidth 0`, and `ClientBorderWidth`. These options only affect how the window manager displays and places windows. There are no commands, network operations, file writes, obfuscated content, or anything outside the scope of an application-specific window manager configuration. No security issues are present.
</details>
<evidence>
</evidence>
<summary>
Benign twm window manager configuration; no malicious or suspicious behavior found.</summary>
</security_assessment>

[9/11] Reviewing wegame-dwproton, wegame-nested-x11-fix...
+ Reviewed wegame-twmrc. Status: SAFE -- Benign twm window manager configuration; no malicious or suspicious behavior found.
LLM auditresponse for wegame-nested-x11-fix:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a Python X11 helper for a WeGame/Proton nested-display setup. It finds X11 windows by class/name/PID, matches processes to a Wine prefix via /proc environments, adjusts window geometry, shapes, stacking and cursor, and writes a fixed `"login"` or `"main"` marker to a caller-supplied transition file.

No network requests, no downloads, no `eval`/`base64`/obfuscated payloads, and no exfiltration of local data are present. The only subprocess is a read-only `niri msg -j focused-output` query. The transition write uses `O_NOFOLLOW` and mode `0600` and writes only fixed strings; the X11 reads and shape manipulation are within the script's stated purpose of fixing a nested X11 login overlay. The `&quot;`/`&gt;`-style entities in the presented content are XML escaping artifacts, not obfuscation.
</details>
<evidence></evidence>
<summary>No network, downloads, or exfiltration; normal X11 fix helper.</summary>
</security_assessment>

[10/11] Reviewing wegame-dwproton...
+ Reviewed wegame-nested-x11-fix. Status: SAFE -- No network, downloads, or exfiltration; normal X11 fix helper.
LLM auditresponse for wegame-dwproton:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a launcher script for running the official Tencent WeGame client under DWProton/Wine. It performs routine session setup: creating XDG directories, locating a Proton installation, starting nested X11 displays with Xwayland/Xephyr, and invoking the WeGame executable or installer. No network downloading, no curl/wget, no eval/base64/decoding, and no exfiltration of user data is present. All remote execution is limited to launching the application's own binaries, which is the package's stated purpose.

The update-recovery logic modifies files only inside the package-managed Wine prefix and WeGame install directory. It validates paths with realpath, rejects symbolic links and non-regular files, and rolls back failed copies. Process inspection under /proc is scoped to processes whose environment matches this specific prefix or which hold this launcher's lock file, and ancestor/self processes are excluded. This is consistent with normal application session management rather than malicious behavior.
</details>
<evidence>
</evidence>
<summary>
Launcher script performs scoped Wine/Proton session management; no malicious behavior found.</summary>
</security_assessment>

[11/11] Reviewing ...
+ Reviewed wegame-dwproton. Status: SAFE -- Launcher script performs scoped Wine/Proton session management; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 48,800
  Completion Tokens: 9,696
  Total Tokens: 58,496
  Total Cost: $0.006205
  Execution Time: 49.06 seconds

Final Status: SAFE


No issues found.
