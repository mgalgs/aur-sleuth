---
package: stably-orca-bin
pkgver: 1.4.196
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 13540
completion_tokens: 2255
total_tokens: 15795
cost: 0.001599338300
execution_time: 86.4
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-03T07:04:11Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO metadata; no security concerns.
  - file: stably-orca.desktop
    status: safe
    summary: Standard .desktop file, no security issues.
  - file: PKGBUILD
    status: safe
    summary: "Clean PKGBUILD: pinned upstream source, explicit checksums, standard AppImage packaging steps."
  - file: stably-orca.sh
    status: safe
    summary: Wrapper sets env and launches AppRun; no malicious behavior.
---

Materializing stably-orca-bin from local mirror...
Materialized stably-orca-bin
Analyzing stably-orca-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable definitions (pkgname, pkgver, depends, source, sha256sums, etc.) in its global scope. There are no command substitutions, backticks, or function calls at the top level that would execute during `makepkg --printsrcinfo`. The only functions defined are `prepare()` and `package()`, which are not invoked during sourcing. The content is entirely consistent with normal AUR packaging practices.
</details>
<evidence></evidence>
<summary>No executable code in global scope; sourcing is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No executable code in global scope; sourcing is safe.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, PKGBUILD...
[0/4] Reviewing .SRCINFO, PKGBUILD, stably-orca.desktop...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is metadata-only and contains no executable code. It describes a prebuilt AppImage package (`stably-orca-bin`) from the official GitHub repository of the upstream project (`stablyai/orca`). All sources have explicit SHA-256 checksums, and the dependencies are standard libraries expected by an Electron-based application. There is no obfuscation, no unusual network targets, and no commands that could facilitate a supply-chain attack.
</details>
<evidence></evidence>
<summary>Standard .SRCINFO metadata; no security concerns.</summary>
</security_assessment>

[1/4] Reviewing PKGBUILD, stably-orca.desktop...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO metadata; no security concerns.
[1/4] Reviewing PKGBUILD, stably-orca.desktop, stably-orca.sh...
LLM auditresponse for stably-orca.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `stably-orca.desktop` is a standard Linux desktop entry file. It defines metadata for the application (name, comment, icon, categories) and specifies that it should be launched via `stably-orca %U`. There are no executable commands, network requests, obfuscated code, or unexpected file operations. This file conforms to the <a href="https://specifications.freedesktop.org/desktop-entry-spec/latest/">freedesktop.org Desktop Entry Specification</a> and presents no security concerns.
</details>
<evidence></evidence>
<summary>Standard .desktop file, no security issues.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, stably-orca.sh...
+ Reviewed stably-orca.desktop. Status: SAFE -- Standard .desktop file, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard prebuilt-binary package. The AppImage is fetched from the project's own GitHub releases URL (`https://github.com/stablyai/orca/releases/...`), and all three sources have pinned, explicit sha256 checksums — not SKIP. There is no suspicious network activity beyond the declared source download, no eval/base64/obfuscation, and no writes outside `${pkgdir}` beyond routine `install`/`cp`/`chmod` operations.
The `prepare()` step uses `--appimage-extract` to unpack the AppImage; this is the standard, intended mechanism for packaging AppImages and does not execute the application itself. The icon-discovery loop and the `chmod -R` on the extracted tree are legitimate packaging hygiene (ensuring world-readable permissions for the extracted AppImage tree), not malicious behavior. The AppImage binary itself is prebuilt and cannot be audited from this file, but that is inherent to `-bin` packages and the checksum pins the artifact. No evidence of injected malicious code or supply-chain attack was found.
</details>
<evidence>
</evidence>
<summary>
Clean PKGBUILD: pinned upstream source, explicit checksums, standard AppImage packaging steps.</summary>
</security_assessment>

[3/4] Reviewing stably-orca.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Clean PKGBUILD: pinned upstream source, explicit checksums, standard AppImage packaging steps.
LLM auditresponse for stably-orca.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a straightforward wrapper that sets an environment variable (`APPDIR`) to the installation path and launches the application's `AppRun` with a Chromium/Vulkan workaround. No suspicious commands, network requests, encoded payloads, or file manipulations are present. The comments explain the rationales clearly. This follows standard packaging practices for binary packages that include extracted AppImage trees.
</details>
<evidence></evidence>
<summary>Wrapper sets env and launches AppRun; no malicious behavior.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed stably-orca.sh. Status: SAFE -- Wrapper sets env and launches AppRun; no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,540
  Completion Tokens: 2,255
  Total Tokens: 15,795
  Total Cost: $0.001599
  Execution Time: 86.40 seconds

Final Status: SAFE


No issues found.
