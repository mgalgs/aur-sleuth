---
package: stably-orca-bin
pkgver: 1.4.195
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e1aa01f19251c0ab5d086ae2b4a1ce353c3f844d
prompt_tokens: 13601
completion_tokens: 2090
total_tokens: 15691
cost: 0.001575503286
execution_time: 52.82
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: ok
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-03T00:10:28Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD, no malicious behavior found.
  - file: stably-orca.desktop
    status: safe
    summary: Standard desktop entry file, no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no security issues.
  - file: stably-orca.sh
    status: safe
    summary: Simple wrapper script, no malicious behavior.
---

Cloning https://aur.archlinux.org/stably-orca-bin.git...
Cloned stably-orca-bin
Analyzing stably-orca-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only top-level variable assignments (pkgname, pkgver, source, sha256sums, etc.) and function definitions for `prepare()` and `package()`. There are no command substitutions, backticks, or any executable code in the global scope or in a `pkgver()` function. The source array points to the upstream GitHub releases URL for the AppImage and local files (`.sh` and `.desktop`), all with pinned sha256 checksums. Running `makepkg --verifysource --nodeps` and `makepkg --printsrcinfo` will only download the sources and verify checksums; it will not execute `prepare()` or `package()`, nor does the PKGBUILD contain any code that would run malicious operations during sourcing. Therefore, this narrow gate is safe.
</details>
<evidence>
</evidence>
<summary>No malicious code executes during verification.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code executes during verification.
Downloading sources...
makepkg --verifysource --nodeps successful
Reviewing the 4 file(s) in the AUR repository. The 0 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, PKGBUILD...
[0/4] Reviewing .SRCINFO, PKGBUILD, stably-orca.desktop...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard Arch Linux packaging practices for a prebuilt binary Electron application. The source is downloaded from the official GitHub releases with a pinned SHA256 checksum for the AppImage and all auxiliary files. There is no obfuscated code, no inline network requests (curl/wget used to fetch attacker-controlled content), no execution of untrusted fetched scripts, no exfiltration of local data, and no modification of system files outside the package installation directory. The AppImage extraction is a normal step for distributing prebuilt packages via AUR. The only operations in prepare() and package() are extracting the AppImage, copying files into `$pkgdir`, setting permissions, and installing icons — all typical for this type of package. There is no evidence of injected malicious code or supply-chain attack vectors.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD, no malicious behavior found.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, PKGBUILD, stably-orca.desktop, stably-orca.sh...
[1/4] Reviewing .SRCINFO, stably-orca.desktop, stably-orca.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD, no malicious behavior found.
LLM auditresponse for stably-orca.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a typical Linux desktop entry file (`.desktop`). It defines metadata for an application titled "Orca" by Stably AI, an agentic coding IDE. The `Exec` line simply runs `stably-orca %U`, which is a standard pattern for launching a GUI application and passing optional URLs. There are no network requests, obfuscated commands, dangerous operations, or any deviation from normal packaging practices. The file contains no executable logic beyond the desktop entry specification.
</details>
<evidence></evidence>
<summary>Standard desktop entry file, no security issues.</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, stably-orca.sh...
+ Reviewed stably-orca.desktop. Status: SAFE -- Standard desktop entry file, no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a standard Arch Linux package metadata file. It declares the package name, version, dependencies, source URLs (all pointing to the official GitHub releases for the project), and SHA256 checksums for each source file. There are no embedded scripts, obfuscated commands, or network requests other than the specified download URLs. The file does not contain any executable code or instructions that could perform malicious actions. The presence of pinned checksums is a good practice, and the overall structure is consistent with normal AUR packaging. No indications of a supply chain attack are present.
</details>
<evidence></evidence>
<summary>Standard AUR metadata, no security issues.</summary>
</security_assessment>

[3/4] Reviewing stably-orca.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no security issues.
LLM auditresponse for stably-orca.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a straightforward wrapper script that sets the `APPDIR` environment variable and launches the application's `AppRun` binary with a Vulkan disable flag. It contains no network requests, no obfuscated code, no file operations beyond the expected execution of the packaged binary, and no attempts to exfiltrate data or modify system files. The commented Wayland line is inert and provides a user configuration option. The script follows standard packaging practices for an AppImage-based application.
</details>
<evidence></evidence>
<summary>Simple wrapper script, no malicious behavior.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed stably-orca.sh. Status: SAFE -- Simple wrapper script, no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,601
  Completion Tokens: 2,090
  Total Tokens: 15,691
  Total Cost: $0.001576
  Execution Time: 52.82 seconds

Final Status: SAFE


No issues found.
