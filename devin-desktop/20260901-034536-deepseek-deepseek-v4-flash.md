---
package: devin-desktop
pkgver: 3.8.20
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: b9e20f728bbe0de1871ebaca31738c802edc31f8
prompt_tokens: 23999
completion_tokens: 5793
total_tokens: 29792
cost: 0.00287953820
execution_time: 208.03
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
source_fetch: ok
upstream_files: 7
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-01T03:45:36Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD; no signs of malicious behavior.
  - file: devin-desktop-url-handler.desktop
    status: safe
    summary: Standard desktop entry file; no security concerns.
  - file: devin-desktop.desktop
    status: safe
    summary: Standard desktop entry, no security issues.
  - file: .SRCINFO
    status: safe
    summary: Metadata file; no malicious code present
  - file: devin-desktop.sh
    status: safe
    summary: Standard Electron launcher script; no signs of malice.
---

Cloning https://aur.archlinux.org/devin-desktop.git...
Cloned devin-desktop
Analyzing devin-desktop AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only defines global variables and arrays, with no executable code outside functions. The `pkgver()` function is absent (version is a static assignment), so no code runs during sourcing. The source array downloads the package's official `.deb` from its legitimate APT repository. No dangerous commands, network exfiltration, or untrusted payloads exist in the global scope. The `prepare()`, `build()`, and `package()` functions are not executed by the requested commands.
</details>
<evidence></evidence>
<summary>No dangerous code in global scope; fetching is standard.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous code in global scope; fetching is standard.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Reviewing the 5 file(s) in the AUR repository. The 7 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, PKGBUILD...
[0/5] Reviewing .SRCINFO, PKGBUILD, devin-desktop-url-handler.desktop...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR conventions for repackaging a vendor-provided binary .deb into an Arch package.  
- The source is a pinned `.deb` downloaded from the upstream Codeium APT repository (`windsurf-stable.codeiumdata.com`), matching the package's stated origin (Devin Desktop by Codeium).  
- All auxiliary source files (desktop entries, launcher script) have pinned SHA-256 checksums.  
- The `prepare()`, `build()`, and `package()` functions perform only normal extraction, file manipulation, and installation operations — no obfuscated commands, no unexpected network requests, and no execution of unverified external code.  
- Bundled binaries (ripgrep, fd, xdg-open) are replaced with system symlinks, which is a legitimate packaging optimization.  
- The Electron version detection and dependency assertion are typical for Electron-based Arch packages.  

There is no evidence of data exfiltration, backdoors, command injection, or any behavior outside the package's stated purpose.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD; no signs of malicious behavior.</summary>
</security_assessment>

[1/5] Reviewing .SRCINFO, devin-desktop-url-handler.desktop...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD; no signs of malicious behavior.
[1/5] Reviewing .SRCINFO, devin-desktop-url-handler.desktop, devin-desktop.desktop...
LLM auditresponse for devin-desktop-url-handler.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.desktop` file that registers the application as a handler for `devin://` and `windsurf://` URL schemes. The `Exec` line runs `/opt/devin-desktop/devin-desktop --open-url %U`, which is the expected path for this application. There is no obfuscation, no external network requests, no dangerous commands (like `eval`, `curl`, `wget`, or `base64`), and no attempt to modify system files or exfiltrate data. The file follows standard freedesktop.org Desktop Entry specification conventions.
</details>
<evidence></evidence>
<summary>Standard desktop entry file; no security concerns.</summary>
</security_assessment>

[1/5] Reviewing .SRCINFO, devin-desktop-url-handler.desktop, devin-desktop.desktop, devin-desktop.sh...
[2/5] Reviewing .SRCINFO, devin-desktop.desktop, devin-desktop.sh...
+ Reviewed devin-desktop-url-handler.desktop. Status: SAFE -- Standard desktop entry file; no security concerns.
LLM auditresponse for devin-desktop.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.desktop` file for the **Devin** application. It defines desktop integration metadata: name, comment, executable path, icon, categories, MIME types, and an action (`New Empty Window`). The `Exec` lines refer to `/opt/devin-desktop/devin-desktop`, which is the expected installed binary path for a packaged application. There are no network requests, obfuscated commands, unexpected file operations, or any other malicious indicators. The file follows the freedesktop.org Desktop Entry Specification and contains only benign configuration data.
</details>
<evidence>
</evidence>
<summary>Standard desktop entry, no security issues.</summary>
</security_assessment>

[3/5] Reviewing .SRCINFO, devin-desktop.sh...
+ Reviewed devin-desktop.desktop. Status: SAFE -- Standard desktop entry, no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>UNSAFE</decision>
<details>
The source URL in this .SRCINFO downloads the package binary from `codeiumdata.com`, a domain unrelated to the declared upstream `devin.ai`. The path contains a cryptic token (`wVxQEIWkwPUEAGf3`) and references `windsurf-stable`, which is a separate product (Codeium/Windsurf). This inconsistency is a strong indicator of a supply-chain attack: the package impersonates Devin Desktop but fetches its executable from an unrelated, potentially attacker-controlled host. Although a SHA256 checksum is provided, it only verifies the downloaded file against an attacker-chosen value. The dependence on an unexpected domain for the primary binary is the core security issue.
</details>
<evidence>
source = devin-desktop-3.8.20.deb::https://windsurf-stable.codeiumdata.com/wVxQEIWkwPUEAGf3/apt/pool/main/d/devin-desktop/Devin-linux-x64-3.8.20.deb
</evidence>
<summary>Source URL uses unexpected, unrelated domain</summary>
</security_assessment>

Second look for .SRCINFO (incontext):
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is metadata only — it declares the package name, version, dependencies, and source URLs with checksums. It does not contain any executable code, obfuscated commands, or instructions to exfiltrate data. The only potentially unusual element is the source URL using `codeiumdata.com` instead of `devin.ai`, but this is a trust/hygiene concern about the origin of the binary, not evidence of INJECTED malicious code within the .SRCINFO file itself. The source is pinned to a specific version with a SHA256 checksum. The rules require evidence of genuinely malicious behavior (data exfiltration, backdoors, obfuscated commands, etc.) to mark UNSAFE, and none of that is present in this file. The URL domain mismatch is a red flag for further investigation of the PKGBUILD or the binary checksum, but the .SRCINFO alone does not demonstrate malicious intent.
</details>
<evidence></evidence>
<summary>Metadata file; no malicious code present</summary>
</security_assessment>

[4/5] Reviewing devin-desktop.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Metadata file; no malicious code present
LLM auditresponse for devin-desktop.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a launcher script for the devin-desktop AUR package. It reads optional configuration files from the user's XDG config directory to pass additional flags to the Electron runtime and the application. The script uses standard bash patterns for reading lines from files (with `read`, IFS, and arrays) and then executes the system Electron binary with the collected arguments via `exec`. There is no obfuscation, no dynamic code download (`curl`, `wget`), no eval or base64 decoding, and no unusual file operations outside of reading user-owned config files under `$HOME/.config`. The placeholder `@@ELECTRON@@` is a standard packaging variable that gets substituted during PKGBUILD processing; it is not malicious. The behavior is entirely consistent with launching a packaged Electron application. No evidence of malicious injection or supply-chain attack is present.
</details>
<evidence></evidence>
<summary>Standard Electron launcher script; no signs of malice.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed devin-desktop.sh. Status: SAFE -- Standard Electron launcher script; no signs of malice.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 23,999
  Completion Tokens: 5,793
  Total Tokens: 29,792
  Total Cost: $0.002880
  Execution Time: 208.03 seconds

Final Status: SAFE


No issues found.
