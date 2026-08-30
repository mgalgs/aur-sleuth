---
package: faugus-launcher
pkgver: 2.2.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 23799
completion_tokens: 2455
total_tokens: 26254
cost: 0.00227490116
execution_time: 30.96
files_reviewed: 4
files_skipped: 1
maintainer_files: 5
source_fetch: ok
upstream_files: 93
upstream_named_files: 0
unpinned_sources: 1
date: 2026-08-30T15:00:51Z
file_verdicts:
  - file: faugus-launcher.desktop
    status: safe
    summary: Standard desktop entry file; no malicious or suspicious content found.
  - file: faugus-launcher.png
    status: skipped
    summary: "Skipping binary file: faugus-launcher.png"
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with no malicious behavior found.
  - file: faugus-launcher.py
    status: safe
    summary: A legitimate launcher application with no supply-chain attack indicators
---

Cloning https://aur.archlinux.org/faugus-launcher.git...
Cloned faugus-launcher
Analyzing faugus-launcher AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable assignments and a single source entry pointing to the official GitHub release tarball. There is no top-level command substitution, no `pkgver()` function, and no code that would execute during `makepkg --nobuild --nodeps --noprepare` beyond the specified source fetch. The `sha256sums` is `SKIP`, which is allowed and not a concern for this fetch gate. No malicious or suspicious behavior is present.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with no dangerous top-level code.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Standard PKGBUILD with no dangerous top-level code.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: 1 remote source(s) have no checksum (sha256sums=SKIP), so the fetched bytes are not verifiable and can change without any AUR update: https://github.com/Faugus/faugus-launcher/archive/refs/tags/2.2.1.tar.gz
Reviewing the 5 file(s) in the AUR repository. The 93 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, PKGBUILD...
[0/5] Reviewing .SRCINFO, PKGBUILD, faugus-launcher.desktop...
LLM auditresponse for faugus-launcher.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard desktop entry file for the Faugus Launcher application. It declares the application type, display name, executable command, icon, and menu category. No suspicious network operations, code execution, obfuscation, or system modification logic is present. The file is consistent with normal packaging practice.
</details>
<evidence></evidence>
<summary>Standard desktop entry file; no malicious or suspicious content found.</summary>
</security_assessment>

[0/5] Reviewing .SRCINFO, PKGBUILD, faugus-launcher.desktop, faugus-launcher.png...
[1/5] Reviewing .SRCINFO, PKGBUILD, faugus-launcher.png...
+ Reviewed faugus-launcher.desktop. Status: SAFE -- Standard desktop entry file; no malicious or suspicious content found.
[1/5] Reviewing .SRCINFO, PKGBUILD, faugus-launcher.png, faugus-launcher.py...
[2/5] Reviewing .SRCINFO, PKGBUILD, faugus-launcher.py...
! Reviewed faugus-launcher.png. Status: SKIPPED -- Skipping binary file: faugus-launcher.png
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is a standard AUR metadata file. It declares the package name, version, description, dependencies, and a single source tarball from the official GitHub repository. The checksum is set to `SKIP`, which is a common practice in AUR packages (especially for -git variants or when the maintainer chooses not to pin checksums) and is not inherently malicious. There are no embedded commands, obfuscated content, or unexpected file operations. The source URL points to the project's own release archive, and there is no evidence of any supply-chain attack or malicious behavior.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file, no malicious content.</summary>
</security_assessment>

[3/5] Reviewing PKGBUILD, faugus-launcher.py...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard Arch Linux packaging script. It downloads the source from the official GitHub release URL (<code>https://github.com/Faugus/${pkgname}/archive/refs/tags/${pkgver}.tar.gz</code>), which is the project's own upstream. The build uses meson, and the package step is a typical meson install. There are no suspicious network requests, obfuscated commands, or unexpected file operations. The checksum is set to SKIP, which is a common practice (especially for VCS packages) and not indicative of malice per the guidelines. All dependencies are standard and appropriate for the described application. No evidence of supply-chain attack or malicious intent.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with no malicious behavior found.</summary>
</security_assessment>

[4/5] Reviewing faugus-launcher.py...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with no malicious behavior found.
LLM auditresponse for faugus-launcher.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is the main application source for the Faugus Launcher, a GTK-based GUI for managing and launching Wine/Proton games via UMU. It reads/writes game configuration from `~/.config/faugus-launcher/games.txt`, creates `.desktop` shortcuts, and launches games with user-supplied parameters. The code is straightforward and does not exhibit any supply-chain attack indicators: no obfuscated code, no network requests to unexpected hosts, no exfiltration of data, no backdoors, and no tampering with system files outside the application's scope.

There are insecure coding practices, such as using `os.system()` with a user-controlled path (for `7z e` icon extraction) and constructing shell commands without sanitization of user inputs. These are local vulnerabilities that could allow command injection if a user supplies a malicious path, but they are not **supply-chain attacks**—they are coding flaws in the application itself. The AUR package is distributing the application's own source code; the user is the one who controls the inputs. The instructions explicitly state that upstream application functionality (including its own code) should not be flagged as unsafe unless there is evidence of injected malicious code. No such evidence exists here.
</details>
<evidence></evidence>
<summary>A legitimate launcher application with no supply-chain attack indicators</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed faugus-launcher.py. Status: SAFE -- A legitimate launcher application with no supply-chain attack indicators
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
(Skipped 1 file: faugus-launcher.png)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 23,799
  Completion Tokens: 2,455
  Total Tokens: 26,254
  Total Cost: $0.002275
  Execution Time: 30.96 seconds

Final Status: SAFE


No issues found.


Audit Skips:

faugus-launcher.png: [SKIPPED] Skipping binary file: faugus-launcher.png
