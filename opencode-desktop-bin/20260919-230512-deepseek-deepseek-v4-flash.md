---
package: opencode-desktop-bin
pkgver: 2.0.10
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 15005
completion_tokens: 11329
total_tokens: 26334
cost: 0.00144475268
execution_time: 265.38
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-19T23:05:12Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore with no security issues.
  - file: LICENSE
    status: safe
    summary: Standard MIT license text; no security concerns found.
  - file: PKGBUILD
    status: safe
    summary: Standard binary repackage, no malicious code.
  - file: .SRCINFO
    status: safe
    summary: Standard -bin package with pinned HTTPS sources, legitimate deps, no injected code.
---

Materializing opencode-desktop-bin from local mirror...
Materialized opencode-desktop-bin
Analyzing opencode-desktop-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
 <security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources the PKGBUILD, so only top-level statements execute. This PKGBUILD's top level contains only static variable assignments (pkgname, pkgver, arch, depends, options, etc.), the source and sha256sums arrays, and two function definitions. There are no top-level command substitutions, backticks, eval calls, or other executable statements.

The `latestver()` function contains `curl -fsSL https://opencode.ai/... | jq -r '.version'`, but it is merely defined and never invoked at the top level; makepkg never calls a function named `latestver`, so no network request occurs while sourcing. The `package()` body (bsdtar, sed, install, rm) likewise only runs during the build/package phase, not during `--printsrcinfo`. All source URLs point to the project's own HTTPS domains. Nothing in the top-level scope executes code during `makepkg --printsrcinfo`.
</details>
<evidence></evidence>
<summary>SAFE: only variable definitions and array assignments execute at source time.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- SAFE: only variable definitions and array assignments execute at source time.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, LICENSE...
[0/4] Reviewing .SRCINFO, LICENSE, .gitignore...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` for an AUR package repository. It ignores all files by default and then selectively unignores files that are essential for the package (e.g., `PKGBUILD`, `.SRCINFO`, patches, install scripts, icons, licenses, etc.). This is a common and expected pattern to keep the repository clean while allowing the necessary packaging files. There is no executable code, no network requests, no obfuscation, and no system modifications. The file presents no security risk.
</details>
<evidence></evidence>
<summary>Standard .gitignore with no security issues.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, LICENSE, .gitignore, PKGBUILD...
[1/4] Reviewing .SRCINFO, LICENSE, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore with no security issues.
LLM auditresponse for LICENSE:
 <security_assessment>
<decision>SAFE</decision>
<details>
This file contains only the standard MIT License text. It includes the copyright notice, permission grant, and disclaimer of warranty/liability. There is no code, no network activity, no file operations, and no embedded instructions. The content is entirely consistent with a normal open-source license file distributed with a package.
</details>
<evidence></evidence>
<summary>Standard MIT license text; no security concerns found.</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed LICENSE. Status: SAFE -- Standard MIT license text; no security concerns found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD downloads a prebuilt `.deb` from the project&#8217;s official domain (opencode.ai), verifies it with pinned SHA-256 checksums, and repackages it for Arch Linux using system Electron. All network operations target the project&#8217;s own distribution endpoints (opencode.ai and github.com). The `sha256sums` arrays are populated with specific hashes (no `SKIP`). The maintainer includes a `latestver()` helper function, but it is never invoked during the build or install process. The script performs routine packaging tasks: extracting the `.deb`, relocating files, creating a shim main script to override `resourcesPath` for system Electron compatibility, and stripping unnecessary files. No obfuscation, unexpected network requests, or dangerous commands (eval, base64, curl piped to bash) are present. The launcher wrapper reads a user-configurable flags file from `$XDG_CONFIG_HOME`, which is standard practice. No evidence of exfiltration, backdoors, or supply-chain injection was found. The file follows normal AUR packaging conventions and is safe.
</details>
<evidence>
</evidence>
<summary>Standard binary repackage, no malicious code.</summary>
</security_assessment>

[3/4] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard binary repackage, no malicious code.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a declarative `.SRCINFO` package manifest containing no executable logic whatsoever — no shell commands, no `eval`, no `curl | bash`, no obfuscated or encoded payloads. It only declares package metadata, sources, dependencies, and checksums.

All three sources come from the project's own official upstream and point to a pinned release version (2.0.10): the license file is fetched over HTTPS from `raw.githubusercontent.com/anomalyco/opencode` at the `v2.0.10` tag, and the x86_64/aarch64 `.deb` binaries are fetched from the project's official site `opencode.ai`. Crucially, every source — including the license file and both `.deb` binaries — has a real, non-SKIP SHA-256 checksum pinned, so the fetch is reproducible and tamper-evident.

The declared dependencies (`ripgrep`, `electron42`, `gtk3`, `nss`, `libxss`, `libxtst`, `alsa-lib`, `libsecret`, `libnotify`, `xdg-utils`) and the `asar` makedepends are all standard for an Electron-based desktop application; using `asar` to extract/repack the Electron bundle is a normal packaging workflow for `-bin` packages of this kind. The only minor observation is that the aarch64 variant does not declare `electron42` as a dependency — but this is a packaging inconsistency, not evidence of malice. There is no injected code and no suspicious network destination.
</details>
<evidence>
</evidence>
<summary>
Standard -bin package with pinned HTTPS sources, legitimate deps, no injected code.
</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard -bin package with pinned HTTPS sources, legitimate deps, no injected code.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 15,005
  Completion Tokens: 11,329
  Total Tokens: 26,334
  Total Cost: $0.001445
  Execution Time: 265.38 seconds

Final Status: SAFE


No issues found.
