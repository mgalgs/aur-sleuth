---
package: xodus-nexus-bin
pkgver: 0.4.2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 16910
completion_tokens: 2673
total_tokens: 19583
cost: 0.002025296
execution_time: 12.65
files_reviewed: 6
files_skipped: 0
maintainer_files: 6
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-03T00:02:52Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Simple .gitignore whitelisting standard AUR packaging files; no malicious behavior.
  - file: xodus-nexus
    status: safe
    summary: "Simple launcher exec'ing the package's own /opt binary; no malicious behavior."
  - file: .SRCINFO
    status: safe
    summary: SRCINFO metadata only; pinned upstream GitHub sources with real checksums; no malicious behavior.
  - file: PKGBUILD
    status: safe
    summary: No malicious behavior; standard AppImage extraction and packaging.
  - file: xodus-nexus.desktop
    status: safe
    summary: Standard desktop launcher entry; no malicious behavior detected.
  - file: xodus-nexus-bin.install
    status: safe
    summary: Informational install hooks with only echo messages; no malicious behavior.
---

Materializing xodus-nexus-bin from local mirror...
Materialized xodus-nexus-bin
Analyzing xodus-nexus-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's top-level scope contains only ordinary metadata and array definitions: `pkgname`, `pkgver`, `pkgrel`, `arch`, `url`, `license`, dependency arrays, `provides`/`conflicts`, `options`, `install`, `source`, `noextract`, and `sha256sums`. There are no top-level command substitutions, no `eval`, no `base64`/hex-decoding, no network fetches, and no writes to files or environment outside normal variable assignment. Sourcing this file to generate `.SRCINFO` executes none of the logic that could download or run anything.

The `source` array points at the project's own upstream GitHub release asset and license file, plus local files; sha256sums are populated (not SKIP). The `prepare()` and `package()` functions (AppImage extraction, copying into `$pkgdir`, icon/desktop install) are out of scope for this gate since `makepkg --printsrcinfo` does not invoke them, and they appear consistent with normal packaging anyway. Note that the AppImage is later extracted and its contents installed, so the pinned checksum is the relevant integrity control — but that concerns the full audit, not this parsing step.

No genuinely malicious top-level behavior found.
</details>
<evidence>
</evidence>
<summary>Only metadata and source arrays; no top-level execution of untrusted code.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Only metadata and source arrays; no top-level execution of untrusted code.
Reviewing the 6 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/6] Reviewing .gitignore...
[0/6] Reviewing .gitignore, PKGBUILD...
[0/6] Reviewing .gitignore, PKGBUILD, .SRCINFO...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard AUR `.gitignore` that ignores everything by default and then explicitly whitelists the packaging artifacts (`PKGBUILD`, `.SRCINFO`, the launcher `xodus-nexus`, `xodus-nexus.desktop`, and `xodus-nexus-bin.install`). There are no commands, network requests, encoded blobs, or file operations beyond gitignore patterns. It is consistent with normal AUR maintainer practice and reveals no supply-chain risk.
</details>
<evidence>
</evidence>
<summary>Simple .gitignore whitelisting standard AUR packaging files; no malicious behavior.</summary>
</security_assessment>

[0/6] Reviewing .gitignore, PKGBUILD, .SRCINFO, xodus-nexus...
[1/6] Reviewing PKGBUILD, .SRCINFO, xodus-nexus...
+ Reviewed .gitignore. Status: SAFE -- Simple .gitignore whitelisting standard AUR packaging files; no malicious behavior.
LLM auditresponse for xodus-nexus:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a minimal POSIX shell launcher (only a shebang and one `exec` line). It executes `/opt/xodus-nexus/xodus-nexus`, the package's own installed upstream binary, forwarding `"$@"` unchanged. There is no network access, no obfuscation/encoding, no eval or command substitution, no file manipulation, and no privileged operations. This is standard packaging practice for a `-bin` package that installs an application under `/opt` and provides a `/usr/bin` wrapper.

No security issues were identified.
</details>
<evidence>
</evidence>
<summary>Simple launcher exec'ing the package's own /opt binary; no malicious behavior.</summary>
</security_assessment>

[2/6] Reviewing PKGBUILD, .SRCINFO...
+ Reviewed xodus-nexus. Status: SAFE -- Simple launcher exec'ing the package's own /opt binary; no malicious behavior.
[2/6] Reviewing PKGBUILD, .SRCINFO, xodus-nexus-bin.install...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a `.SRCINFO` metadata file, not executable code. It declares a single package `xodus-nexus-bin` whose upstream is the project's own GitHub repository (`https://github.com/domsvoboda/xodus-nexus`). All binary/source artifacts are fetched from that same upstream: the release AppImage from `github.com/domsvoboda/xodus-nexus/releases/download/v0.4.2/...` and the LICENSE from `raw.githubusercontent.com/domsvoboda/xodus-nexus/...`. The remaining two sources (`xodus-nexus.desktop` and `xodus-nexus`) are local repo files with no URL, which is normal for AUR packaging.

All four sources have concrete SHA-256 checksums (no `SKIP`), and the version/tag is pinned (`v0.4.2`). `noextract` on the AppImage and `options = !strip`/`!debug` are standard and expected for prebuilt-binary packages that repackage an AppImage. Dependencies (`gtk3`, `nss`, `alsa-lib`, `xdg-utils`, plus optional overlay/Steam deps) are consistent with an Electron/launcher application. There is no network exfiltration, no fetch-and-execute of unrelated content, no obfuscation, and no system modification beyond ordinary package metadata. Note only that the actual behavior lives in the referenced local `xodus-nexus` launcher script and the AppImage, which are not part of this file and would need separate review.
</details>
<evidence>
</evidence>
<summary>SRCINFO metadata only; pinned upstream GitHub sources with real checksums; no malicious behavior.</summary>
</security_assessment>

[3/6] Reviewing PKGBUILD, xodus-nexus-bin.install...
+ Reviewed .SRCINFO. Status: SAFE -- SRCINFO metadata only; pinned upstream GitHub sources with real checksums; no malicious behavior.
[3/6] Reviewing PKGBUILD, xodus-nexus-bin.install, xodus-nexus.desktop...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard Arch packaging for a prebuilt AppImage. It downloads the AppImage and license from the declared upstream GitHub repository, pins all sources with SHA-256 checksums, and uses `noextract` before running the AppImage's standard `--appimage-extract` operation in `prepare()`. This execution is expected for AppImage packaging and the AppImage checksum is pinned.

Installation is confined to `$pkgdir`, placing files under `/opt/xodus-nexus`, `/usr/bin`, application icons, desktop entry, and license directory. There are no obfuscated commands, unexpected network destinations, credential or data exfiltration, suspicious eval/base64 usage, or modifications outside normal package staging.
</details>
<evidence>
</evidence>
<summary>No malicious behavior; standard AppImage extraction and packaging.</summary>
</security_assessment>

[4/6] Reviewing xodus-nexus-bin.install, xodus-nexus.desktop...
+ Reviewed PKGBUILD. Status: SAFE -- No malicious behavior; standard AppImage extraction and packaging.
LLM auditresponse for xodus-nexus.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard freedesktop `.desktop` launcher entry for the application "Xodus Nexus". It declares the application type, display name, comment, icon, menu category, window manager class, and an `Exec` line that simply launches the package's own binary (`xodus-nexus %U`).

There are no network requests, no shell invocations (`Exec` is not wrapped in `sh -c` or a terminal), no obfuscated or encoded content, no file operations, and no privileged or system-modifying commands. Passing `%U` is the conventional field code for applications that can open URLs/files and does not itself introduce command execution beyond the normal desktop-launcher semantics. Nothing here deviates from standard packaging practice, and there is no evidence of malicious behavior.
</details>
<evidence>
</evidence>
<summary>Standard desktop launcher entry; no malicious behavior detected.</summary>
</security_assessment>

[5/6] Reviewing xodus-nexus-bin.install...
+ Reviewed xodus-nexus.desktop. Status: SAFE -- Standard desktop launcher entry; no malicious behavior detected.
LLM auditresponse for xodus-nexus-bin.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a routine Arch Linux package `.install` file containing only `post_install()` and `post_upgrade()` hooks. Both functions consist exclusively of `echo` statements that print informational messages to the user about the Wine/Proton ("Nexus") runtime and backend updates being handled per-user from within the application rather than by pacman.

There are no network requests, no file operations, no command substitution, no use of `eval`/`base64`/`curl`/`wget`, and no system modifications. The `&quot;` and `&gt;` sequences are simply HTML-escaped quotes and `>` characters within the displayed text, not code. The behavior is entirely consistent with standard packaging practice and poses no supply-chain risk.
</details>
<evidence>
</evidence>
<summary>Informational install hooks with only echo messages; no malicious behavior.</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed xodus-nexus-bin.install. Status: SAFE -- Informational install hooks with only echo messages; no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 16,910
  Completion Tokens: 2,673
  Total Tokens: 19,583
  Total Cost: $0.002025
  Execution Time: 12.65 seconds

Final Status: SAFE


No issues found.
