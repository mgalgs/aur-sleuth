---
package: stably-orca-bin
pkgver: 1.4.195
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 1d6b5f000e2ff2cbdfdf4e324a3e5ac914955c8a
prompt_tokens: 13455
completion_tokens: 1515
total_tokens: 14970
cost: 0.001460669910
execution_time: 31.53
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-03T00:47:17Z
file_verdicts:
  - file: stably-orca.desktop
    status: safe
    summary: Standard desktop entry file, no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with pinned checksum, no malicious content.
  - file: stably-orca.sh
    status: safe
    summary: Standard wrapper script, no security issues found.
---

Cloning https://aur.archlinux.org/stably-orca-bin.git...
Cloned stably-orca-bin
Analyzing stably-orca-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The top-level scope of this PKGBUILD consists entirely of static variable assignments (pkgname, pkgver, arch, source, sha256sums, etc.) and does not contain any command substitutions, backtick executions, or function calls that would execute code during sourcing. The `prepare()` and `package()` functions contain potentially dangerous operations (chmod +x, extracting an AppImage, copying files), but these are only invoked during the build/package phase, not during `makepkg --printsrcinfo`. Therefore, parsing this PKGBUILD with `makepkg --printsrcinfo` is safe.
</details>
<evidence>
</evidence>
<summary>No dangerous code in top-level scope; safe to parse.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous code in top-level scope; safe to parse.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, PKGBUILD...
[0/4] Reviewing .SRCINFO, PKGBUILD, stably-orca.desktop...
LLM auditresponse for stably-orca.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.desktop` file for the `stably-orca-bin` package. It defines metadata for the application launcher, including the executable command `stably-orca %U`, which is the normal way to launch an application with optional file arguments. There are no network requests, obfuscated code, dangerous commands, or system modifications. The file is legitimate and follows standard freedesktop.org desktop entry specification.
</details>
<evidence></evidence>
<summary>Standard desktop entry file, no security issues.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, PKGBUILD, stably-orca.desktop, stably-orca.sh...
[1/4] Reviewing .SRCINFO, PKGBUILD, stably-orca.sh...
+ Reviewed stably-orca.desktop. Status: SAFE -- Standard desktop entry file, no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a standard metadata descriptor for an AUR package. It declares the package name, version, dependencies, and sources (an AppImage, a shell script, and a desktop file) from the official GitHub releases page. All three sources have SHA256 checksums provided, which is good practice. There are no VCS sources, no git commands, no obfuscated code, and no network requests or file operations—the file is purely declarative. No signs of supply-chain compromise or malicious behavior are present.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file, no malicious content.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, stably-orca.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a prebuilt binary (AppImage) Electron application. The source is fetched from the official GitHub releases with a pinned checksum (sha256sum). The `prepare()` function extracts the AppImage, and `package()` copies the extracted files into the package directory. No suspicious network requests, obfuscated code, or dangerous commands are present. The icon discovery loop, while somewhat complex, is a normal packaging technique to handle upstream icon naming changes. There are no indicators of malicious injection or supply-chain attack.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with pinned checksum, no malicious content.</summary>
</security_assessment>

[3/4] Reviewing stably-orca.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with pinned checksum, no malicious content.
LLM auditresponse for stably-orca.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a standard wrapper for the Stably AI Orca application. It sets the `APPDIR` environment variable to the installation path and launches the upstream `AppRun` binary with appropriate flags. There is no obfuscated code, no network requests, no unexpected file operations, and no deviation from normal packaging practices. The commented lines are explanatory and safe. The script does not contain any malicious behavior such as data exfiltration, code execution from untrusted sources, or backdoors.
</details>
<evidence>
</evidence>
<summary>Standard wrapper script, no security issues found.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed stably-orca.sh. Status: SAFE -- Standard wrapper script, no security issues found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,455
  Completion Tokens: 1,515
  Total Tokens: 14,970
  Total Cost: $0.001461
  Execution Time: 31.53 seconds

Final Status: SAFE


No issues found.
