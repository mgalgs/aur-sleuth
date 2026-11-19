---
package: mindustry-sdl3-bin
pkgver: 160.7
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 18654
completion_tokens: 3585
total_tokens: 22239
cost: 0.002349984
execution_time: 43.71
files_reviewed: 6
files_skipped: 0
maintainer_files: 6
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-07T00:05:33Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore, no threats.
  - file: 0001-mindustry-use-sdl3-backend.patch
    status: safe
    summary: Benign SDL3 backend migration patch; no malicious behavior found.
  - file: 0002-arc-sdl3-preserve-wheel-delta.patch
    status: safe
    summary: Legitimate code patch; no security concerns.
  - file: mindustry-sdl3.install
    status: safe
    summary: Harmless install script that only prints a user-facing warning message.
  - file: PKGBUILD
    status: safe
    summary: Standard build, no malicious behavior detected.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no security issues.
---

Materializing mindustry-sdl3-bin from local mirror...
Cloning https://aur.archlinux.org/mindustry-sdl3-bin.git...
Cloned mindustry-sdl3-bin
Analyzing mindustry-sdl3-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains no global-scope command substitutions, evals, or dangerous operations. All code that executes commands is inside `prepare()`, `build()`, and `package()`, which are not run during `makepkg --printsrcinfo`. The only top-level actions are variable assignments, array definitions, and a default variable assignment (`: ${_java_ver:=17}`), all of which are safe. Therefore, sourcing this file to print `.SRCINFO` presents no security risk.
</details>
<evidence></evidence>
<summary>Sourcing PKGBUILD is safe; no malicious top-level code.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Sourcing PKGBUILD is safe; no malicious top-level code.
Reviewing the 6 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/6] Reviewing .SRCINFO...
[0/6] Reviewing .SRCINFO, 0001-mindustry-use-sdl3-backend.patch...
[0/6] Reviewing .SRCINFO, 0001-mindustry-use-sdl3-backend.patch, .gitignore...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` used in an Arch Linux PKGBUILD repository. It lists common build artifacts (`*.deb`, `*.pkg.tar.*`, `src/`, `pkg/`) to be excluded from version control. There is no executable code, no obfuscation, no network requests, and no system modification commands. The only comment mentions rsync filter behavior for deployment, which is a normal packaging workflow note. No security concerns exist.
</details>
<evidence></evidence>
<summary>Standard .gitignore, no threats.</summary>
</security_assessment>

[1/6] Reviewing .SRCINFO, 0001-mindustry-use-sdl3-backend.patch...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore, no threats.
[1/6] Reviewing .SRCINFO, 0001-mindustry-use-sdl3-backend.patch, 0002-arc-sdl3-preserve-wheel-delta.patch...
LLM auditresponse for 0001-mindustry-use-sdl3-backend.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a straightforward source patch that migrates the Mindustry desktop backend from SDL to SDL3. It changes a Gradle dependency from `backend-sdl` to `backend-sdl3`, updates imports from `arc.backend.sdl.jni` to `org.lwjgl.sdl`, and adjusts the SDL message-box API calls (`SDL_ShowSimpleMessageBox`) accordingly. These changes are consistent with normal upstream development and do not introduce any network requests, encoded payloads, suspicious file operations, or execution of untrusted code. The patch only modifies application source/build files and serves the package&#39;s stated purpose of using an SDL3 backend.
</details>
<evidence>
</evidence>
<summary>
Benign SDL3 backend migration patch; no malicious behavior found.</summary>
</security_assessment>

[1/6] Reviewing .SRCINFO, 0001-mindustry-use-sdl3-backend.patch, 0002-arc-sdl3-preserve-wheel-delta.patch, PKGBUILD...
[2/6] Reviewing .SRCINFO, 0002-arc-sdl3-preserve-wheel-delta.patch, PKGBUILD...
+ Reviewed 0001-mindustry-use-sdl3-backend.patch. Status: SAFE -- Benign SDL3 backend migration patch; no malicious behavior found.
LLM auditresponse for 0002-arc-sdl3-preserve-wheel-delta.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a patch that modifies the handling of mouse wheel scroll events in an SDL3 backend for the arc library. It removes a helper function `fixSign` that used to normalize scroll values to -1, 0, or 1, and instead passes the raw scroll delta values directly. This is a legitimate functional change with no security implications. There is no obfuscation, no network activity, no system modifications, and no execution of untrusted code. The patch follows standard packaging practices for a source code modification.
</details>
<evidence>
</evidence>
<summary>Legitimate code patch; no security concerns.</summary>
</security_assessment>

[2/6] Reviewing .SRCINFO, 0002-arc-sdl3-preserve-wheel-delta.patch, PKGBUILD, mindustry-sdl3.install...
[3/6] Reviewing .SRCINFO, PKGBUILD, mindustry-sdl3.install...
+ Reviewed 0002-arc-sdl3-preserve-wheel-delta.patch. Status: SAFE -- Legitimate code patch; no security concerns.
LLM auditresponse for mindustry-sdl3.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Arch Linux package install script (`.install`). It only defines `post_install()` and `post_upgrade()`, and the latter simply calls `post_install`. The entire body consists of `echo` statements printing a user-facing warning about the SDL3 backend switch and advising users to compare with other Mindustry packages if issues occur. There are no network requests, no downloads, no execution of fetched content, no obfuscation, no file modifications, and no access to sensitive system data. The script performs no actions beyond printing informational text, which is consistent with normal packaging practice.
</details>
<evidence>
</evidence>
<summary>
Harmless install script that only prints a user-facing warning message.</summary>
</security_assessment>

[4/6] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed mindustry-sdl3.install. Status: SAFE -- Harmless install script that only prints a user-facing warning message.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD builds Mindustry with an SDL3 backend from official upstream sources (Anuken/Mindustry and Anuken/Arc), with pinned version tags and SHA256 checksums for all sources and patches. The build process uses standard Gradle commands and applies patches that adjust build properties (version strings). The package function installs a launcher script, desktop entry, icons, and the built JAR.  

One unconventional action is the installation of a file from `$srcdir/../mindustry-sdl3.install` into `/etc/pacman.d/`. While the destination directory is atypical, the file is commented as a tracked `.install` script in the repo root. Without visibility into its content, there is no evidence that this file performs malicious operations (e.g., exfiltrating data, executing attacker‑controlled code, or tampering with unrelated system files). The action alone does not meet the threshold for "genuinely malicious behavior" as defined in the calibration rules. All other operations are standard AUR packaging practices. No obfuscation, unexpected network requests, or dangerous commands (eval, base64, curl|bash, etc.) are present.
</details>
<evidence></evidence>
<summary>Standard build, no malicious behavior detected.</summary>
</security_assessment>

[5/6] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard build, no malicious behavior detected.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard AUR .SRCINFO metadata file for the `mindustry-sdl3-bin` package. It defines package metadata, dependencies, and sources with SHA256 checksums for all tarballs and patches. All sources point to the official GitHub repositories (Anuken/Mindustry and Anuken/Arc) with pinned version tags (v160.7). There is no executable code, no obfuscation, no suspicious network requests, no data exfiltration, and no backdoors. The file contains only declarative metadata used by `makepkg` and does not execute any commands or perform any system modifications. It is a normal, well-formed package definition.
</details>
<evidence></evidence>
<summary>Standard AUR metadata, no security issues.</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 18,654
  Completion Tokens: 3,585
  Total Tokens: 22,239
  Total Cost: $0.002350
  Execution Time: 43.71 seconds

Final Status: SAFE


No issues found.
