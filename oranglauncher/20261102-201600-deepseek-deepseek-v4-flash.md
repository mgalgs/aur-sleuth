---
package: oranglauncher
pkgver: 8.5.1
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 24573
completion_tokens: 2776
total_tokens: 27349
cost: 0.002741375
execution_time: 25.34
files_reviewed: 6
files_skipped: 1
maintainer_files: 7
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-02T20:15:59Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard SRCINFO metadata with pinned upstream source and checksums; no malicious behavior.
  - file: orange.png
    status: skipped
    summary: "Skipping binary file: orange.png"
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD; no evidence of malicious behavior.
  - file: oranglauncher-mime.xml
    status: safe
    summary: Standard MIME type registration; no malicious behavior found.
  - file: oranglauncher.desktop
    status: safe
    summary: Standard benign desktop entry launching the package binary; no malicious behavior.
  - file: oranglauncher.sh
    status: safe
    summary: Simple launch wrapper; only sets env vars and execs bundled binary.
  - file: LICENSE
    status: safe
    summary: Standard GPLv3 license text, no malicious content.
---

Materializing oranglauncher from local mirror...
Materialized oranglauncher
Analyzing oranglauncher AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's top-level scope contains only static variable assignments (pkgname, pkgver, pkgrel, pkgdesc, arch, url, license, depends, makedepends, conflicts, options, source, sha256sums) and function definitions (build, package). No command substitutions, backticks, eval, or other code execution occurs at the global level. The `makepkg --printsrcinfo` command sources the PKGBUILD but does not execute build()/package() functions, so no malicious code can run during this step. The presence of checksums is irrelevant because no downloading or verification happens at this stage. The file is safe for parsing.
</details>
<evidence></evidence>
<summary>Top-level scope is static and safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level scope is static and safe.
Reviewing the 7 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/7] Reviewing .SRCINFO...
[0/7] Reviewing .SRCINFO, LICENSE...
[0/7] Reviewing .SRCINFO, LICENSE, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a generated `.SRCINFO` metadata file for `oranglauncher`. It lists ordinary build and runtime dependencies, standard package options, and four declared sources: the upstream GitHub release tarball for tag `8.5.1` plus three local package files. Each source has a SHA-256 checksum, and none are set to `SKIP`.

There are no command executions, network calls, obfuscated strings, file operations, or system modifications in this file. The upstream source URL is consistent with the project's GitHub repository. No evidence of malicious or dangerous supply-chain behavior is present.
</details>
<evidence>
</evidence>
<summary>
Standard SRCINFO metadata with pinned upstream source and checksums; no malicious behavior.
</summary>
</security_assessment>

[0/7] Reviewing .SRCINFO, LICENSE, PKGBUILD, orange.png...
[1/7] Reviewing LICENSE, PKGBUILD, orange.png...
+ Reviewed .SRCINFO. Status: SAFE -- Standard SRCINFO metadata with pinned upstream source and checksums; no malicious behavior.
[2/7] Reviewing LICENSE, PKGBUILD...
! Reviewed orange.png. Status: SKIPPED -- Skipping binary file: orange.png
[2/7] Reviewing LICENSE, PKGBUILD, oranglauncher-mime.xml...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices. It downloads the upstream source tarball from the project's own GitHub repository and pins it with a SHA-256 checksum, along with checksums for the local launcher script, license, and MIME file. The build runs the upstream Python/Nuitka build process inside the extracted source directory and installs the resulting files under <code>$pkgdir</code>; no unexpected file operations, obfuscation, credential access, reverse shell, or data exfiltration is present.

Some hygiene concerns exist: the build installs Python dependencies from PyPI without version pinning and uses Nuitka's <code>--assume-yes-for-downloads</code>. This weakens reproducibility and broadens the supply-chain surface, but it is consistent with building this application and is not evidence of malicious behavior. The local installation steps copy only expected package artifacts into the package staging directory.
</details>
<evidence>
</evidence>
<summary>
Standard AUR PKGBUILD; no evidence of malicious behavior.
</summary>
</security_assessment>

[2/7] Reviewing LICENSE, PKGBUILD, oranglauncher-mime.xml, oranglauncher.desktop...
[3/7] Reviewing LICENSE, oranglauncher-mime.xml, oranglauncher.desktop...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD; no evidence of malicious behavior.
LLM auditresponse for oranglauncher-mime.xml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard freedesktop.org shared-mime-info definition. It declares a single MIME type, `application/x-mrpack`, for Modrinth modpack files, along with a comment (English and Lithuanian), an icon reference (`oranglauncher`), and a `*.mrpack` glob pattern.

There are no network requests, no file operations, no encoded/obfuscated content, no command execution, and no system modifications. It is consistent with ordinary packaging practice for registering a file association for the application.
</details>
<evidence></evidence>
<summary>Standard MIME type registration; no malicious behavior found.</summary>
</security_assessment>

[4/7] Reviewing LICENSE, oranglauncher.desktop...
+ Reviewed oranglauncher-mime.xml. Status: SAFE -- Standard MIME type registration; no malicious behavior found.
[4/7] Reviewing LICENSE, oranglauncher.desktop, oranglauncher.sh...
LLM auditresponse for oranglauncher.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard XDG desktop entry file. It declares an application launcher that runs `/usr/bin/oranglauncher` with a single file argument (`%f`), uses the package's own icon name, is not a terminal application, and registers two MIME types (`application/x-mrpack` and `application/zip`) for a game launcher.

There are no network requests, no shell commands, no obfuscation, no file operations outside the application's own scope, and no `eval`/`base64`/`curl`/`wget` usage. The `Exec` path points to a binary installed by the package, and the `%f` field code is a normal single-file argument placeholder. Nothing here deviates from standard packaging practices. The locale-specific `GenericName`/`Name` entries are cosmetic and harmless.

Minor observation (not a security issue): `MimeType=application/zip` broadly claims all ZIP files, which may cause the launcher to appear as a handler for ordinary archives — a UX concern only, not malicious behavior.
</details>
<evidence>
</evidence>
<summary>
Standard benign desktop entry launching the package binary; no malicious behavior.
</summary>
</security_assessment>

[5/7] Reviewing LICENSE, oranglauncher.sh...
+ Reviewed oranglauncher.desktop. Status: SAFE -- Standard benign desktop entry launching the package binary; no malicious behavior.
LLM auditresponse for oranglauncher.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a minimal shell launch wrapper for the oranglauncher package. It performs only three actions: exports `GDK_BACKEND=x11` to force X11 rendering for the Tk/GTK webview, prepends the system GObject typelib directory to `GI_TYPELIB_PATH`, and `exec`s the package's own installed binary at `/usr/lib/oranglauncher/launcher.bin`, forwarding all arguments.

There are no network requests, no downloads, no obfuscation, no eval/base64 usage, no writes outside the expected path, and no credential or data exfiltration. All operations are consistent with the stated purpose (making the bundled webview work across desktops). The `exec` of a binary installed by the package itself is normal wrapper behavior. No security concerns.
</details>
<evidence>
</evidence>
<summary>Simple launch wrapper; only sets env vars and execs bundled binary.</summary>
</security_assessment>

[6/7] Reviewing LICENSE...
+ Reviewed oranglauncher.sh. Status: SAFE -- Simple launch wrapper; only sets env vars and execs bundled binary.
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is the standard GNU General Public License version 3 text. It contains no executable code, no network requests, no obfuscation, and no references to any package-specific functionality. It is a purely legal document distributed with the package to satisfy licensing requirements. There is no evidence of supply-chain attack or malicious behavior.
</details>
<evidence></evidence>
<summary>Standard GPLv3 license text, no malicious content.</summary>
</security_assessment>

[7/7] Reviewing ...
+ Reviewed LICENSE. Status: SAFE -- Standard GPLv3 license text, no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
(Skipped 1 file: orange.png)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 24,573
  Completion Tokens: 2,776
  Total Tokens: 27,349
  Total Cost: $0.002741
  Execution Time: 25.34 seconds

Final Status: SAFE


No issues found.


Audit Skips:

orange.png: [SKIPPED] Skipping binary file: orange.png
