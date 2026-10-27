---
package: opencode-desktop-launcher
pkgver: 1.0.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 22562
completion_tokens: 5312
total_tokens: 27874
cost: 0.00464604
execution_time: 47.1
files_reviewed: 7
files_skipped: 0
maintainer_files: 7
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-27T23:57:00Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Benign .gitignore excluding build artifacts and generated files.
  - file: LICENSE
    status: safe
    summary: License file only; no executable or malicious content present.
  - file: .SRCINFO
    status: safe
    summary: Metadata-only file with pinned sources and checksums; no evidence of malicious behavior.
  - file: README.md
    status: safe
    summary: Documentation only; describes legitimate launcher behavior, no malicious content found.
  - file: ai.opencode.desktop.desktop
    status: safe
    summary: Standard desktop launcher file; no suspicious code or behavior detected.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with pinned checksums; no malicious behavior found.
  - file: opencode-desktop
    status: safe
    summary: Legitimate AppImage bootstrap from official upstream with HTTPS and checksum verification.
---

Materializing opencode-desktop-launcher from local mirror...
Materialized opencode-desktop-launcher
Analyzing opencode-desktop-launcher AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources only the global/top-level scope of this PKGBUILD. The global scope contains only standard variable definitions (`pkgname`, `pkgver`, `source`, `sha256sums`, etc.) and function definitions. There are no top-level command substitutions, no network-fetching commands, no `eval`/`base64`/obfuscated payloads, and no file-operating statements that would execute during sourcing.

The `package()` function contains only `install` commands writing into `$pkgdir`, and it is not executed by `makepkg --printsrcinfo`. The `source` array references the project's own GitHub raw URLs with pinned commit checksums, which is ordinary packaging. Nothing in this gate executes `prepare()`, `build()`, `pkgver()`, or `package()`, so no dangerous behavior is reachable at this step.
</details>
<evidence>
</evidence>
<summary>
Top-level scope is standard variable definitions; no malicious code executes during printsrcinfo.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level scope is standard variable definitions; no malicious code executes during printsrcinfo.
Reviewing the 7 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/7] Reviewing .SRCINFO...
[0/7] Reviewing .SRCINFO, LICENSE...
[0/7] Reviewing .SRCINFO, LICENSE, .gitignore...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` for an AUR-style package repository. It excludes build artifacts (`/src/`, `/pkg/`, `.AppImage`, `*.pkg.tar.*`, `*.src.tar.*`), downloaded sources (`/.sources/`), generated icon files, and logs.

No suspicious commands, network requests, obfuscation, or file operations are present. The content only prevents certain files from being committed to version control, which is ordinary packaging hygiene.
</details>
<evidence>
</evidence>
<summary>
Benign .gitignore excluding build artifacts and generated files.</summary>
</security_assessment>

[1/7] Reviewing .SRCINFO, LICENSE...
+ Reviewed .gitignore. Status: SAFE -- Benign .gitignore excluding build artifacts and generated files.
[1/7] Reviewing .SRCINFO, LICENSE, PKGBUILD...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Zero-Clause BSD (0BSD) license text, which is a common permissive open-source license used in software packaging. It contains no executable code, no network requests, no file operations, no obfuscated content, and no instructions. The only notable content is the copyright line naming "An Nguyen" with an email address, which is typical for a license header. There is nothing in this file that deviates from normal packaging practices or poses any security risk.
</details>
<evidence>
</evidence>
<summary>
License file only; no executable or malicious content present.</summary>
</security_assessment>

[1/7] Reviewing .SRCINFO, LICENSE, PKGBUILD, README.md...
[2/7] Reviewing .SRCINFO, PKGBUILD, README.md...
+ Reviewed LICENSE. Status: SAFE -- License file only; no executable or malicious content present.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file contains only package metadata: name, description, dependencies, source entries, and checksums. There is no embedded executable code, network call, obfuscated string, or file manipulation logic to evaluate.

The remote sources are two files (an icon and a license) fetched from `raw.githubusercontent.com/anomalyco/opencode` at a specific pinned commit, which is consistent with normal AUR packaging practice. All six source entries have corresponding SHA-256 checksums, including the locally supplied launcher script, desktop file, license, and README. The `curl` and `jq` dependencies are consistent with the package description of a self-updating AppImage launcher and do not, by themselves, indicate malicious behavior.
</details>
<evidence>
</evidence>
<summary>
Metadata-only file with pinned sources and checksums; no evidence of malicious behavior.</summary>
</security_assessment>

[2/7] Reviewing .SRCINFO, PKGBUILD, README.md, ai.opencode.desktop.desktop...
[3/7] Reviewing PKGBUILD, README.md, ai.opencode.desktop.desktop...
+ Reviewed .SRCINFO. Status: SAFE -- Metadata-only file with pinned sources and checksums; no evidence of malicious behavior.
LLM auditresponse for README.md:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a README.md documentation file for the `opencode-desktop-launcher` AUR package. It contains no executable packaging code (no PKGBUILD functions, no shell scripts, no systemd units). The content solely describes the package's purpose, installation, versioning, desktop integration, and maintenance workflow.

The described behavior — downloading the official OpenCode AppImage over HTTPS from the project's own upstream (`opencode.ai`), verifying its SHA-256 checksum, and storing it under the user's XDG data directory — is consistent with a legitimate launcher-only package and serves the application's stated purpose. Mentioned commands (`mkdir`, `mv`, `kbuildsycoca6`, `makepkg`) are routine user/maintainer operations. There is no obfuscated code, no unexpected network destinations, no exfiltration, and no attempt to execute attacker-controlled content. The only URL referenced is the package's own upstream release metadata endpoint, which is expected.

The file is benign documentation. No evidence of malicious or dangerous behavior was found.
</details>
<evidence>
</evidence>
<summary>
Documentation only; describes legitimate launcher behavior, no malicious content found.
</summary>
</security_assessment>

[3/7] Reviewing PKGBUILD, README.md, ai.opencode.desktop.desktop, opencode-desktop...
[4/7] Reviewing PKGBUILD, ai.opencode.desktop.desktop, opencode-desktop...
+ Reviewed README.md. Status: SAFE -- Documentation only; describes legitimate launcher behavior, no malicious content found.
LLM auditresponse for ai.opencode.desktop.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard freedesktop.org `.desktop` launcher file for an application called OpenCode. It declares the application name, comment, icon, category, startup WM class, and a MIME type handler for the `opencode://` URL scheme. The `Exec=opencode-desktop %U` line simply launches the package's own binary with any provided URLs, which is normal desktop entry behavior. There are no network requests, no encoded or obfuscated commands, no file operations, and no references to external hosts or scripts. Nothing in this file deviates from ordinary packaging practices or indicates malicious or dangerous behavior.
</details>
<evidence>
</evidence>
<summary>
Standard desktop launcher file; no suspicious code or behavior detected.</summary>
</security_assessment>

[5/7] Reviewing PKGBUILD, opencode-desktop...
+ Reviewed ai.opencode.desktop.desktop. Status: SAFE -- Standard desktop launcher file; no suspicious code or behavior detected.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD performs only standard packaging operations. All six source entries are pinned to a commit or local files and have explicit sha256 checksums. The `package()` function simply installs a launcher script, desktop entry, icon, licenses, and README into `$pkgdir` using `install`; there are no `build()` or `prepare()` steps, no shell evaluation, no obfuscation, and no network operations inside the PKGBUILD itself.

The pkgdesc indicates the installed launcher downloads and self-updates the OpenCode AppImage at runtime. That behavior belongs to the launcher script, which is not included here, and is consistent with the package's stated purpose. It is a supply-chain hygiene consideration that the AppImage is handled outside pacman's checksum verification, but the PKGBUILD itself shows no malicious or injected behavior.
</details>
<evidence>
</evidence>
<summary>
Standard PKGBUILD with pinned checksums; no malicious behavior found.
</summary>
</security_assessment>

[6/7] Reviewing opencode-desktop...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with pinned checksums; no malicious behavior found.
LLM auditresponse for opencode-desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a first-run bootstrap launcher for the OpenCode desktop AppImage. It restricts execution to a non-root x86_64 user, sets umask 077, uses a per-user XDG data directory, and takes a file lock to serialize bootstrap. When the AppImage is missing, it fetches release metadata from `https://opencode.ai/update/api/latest/desktop/opencode` over HTTPS, validates the version, URL, and SHA-256 checksum fields with `jq`, and enforces that the asset URL matches `https://opencode.ai/files/bin/${version}/opencode-desktop-linux-x86_64.AppImage`. It then downloads the AppImage over HTTPS, verifies its SHA-256, makes it executable, and moves it into place. It never replaces an existing AppImage, cleans up temporary files, and launches the local AppImage with `exec`.

All network operations target the project's own official domain over HTTPS, with a SHA-256 integrity check. There is no obfuscation, no data exfiltration, no unrelated remote host, and no modification of files outside the application's own data directory. The metadata and binary come from the same official endpoint, which is a normal trust model for an AppImage launcher/self-updater. This is consistent with the package's stated purpose and does not show signs of an injected supply-chain attack.
</details>
<evidence>
</evidence>
<summary>
Legitimate AppImage bootstrap from official upstream with HTTPS and checksum verification.
</summary>
</security_assessment>

[7/7] Reviewing ...
+ Reviewed opencode-desktop. Status: SAFE -- Legitimate AppImage bootstrap from official upstream with HTTPS and checksum verification.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 22,562
  Completion Tokens: 5,312
  Total Tokens: 27,874
  Total Cost: $0.004646
  Execution Time: 47.10 seconds

Final Status: SAFE


No issues found.
