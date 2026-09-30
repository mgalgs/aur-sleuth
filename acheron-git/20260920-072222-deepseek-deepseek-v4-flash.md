---
package: acheron-git
pkgver: r212.e387763
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 10273
completion_tokens: 1498
total_tokens: 11771
cost: 0.00048670692
execution_time: 27.15
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-20T07:22:21Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no malicious content.
  - file: acheron.desktop
    status: safe
    summary: Standard desktop entry file; no malicious or suspicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD, no malicious content detected.
---

Materializing acheron-git from local mirror...
Materialized acheron-git
Analyzing acheron-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only static variable assignments and function definitions at the top level. No command substitutions, backtick expressions, or immediate executions are present in the global scope. The functions `pkgver()`, `prepare()`, `build()`, and `package()` are not executed by `makepkg --printsrcinfo`, which only sources the top-level code. Therefore, running `makepkg --printsrcinfo` on this PKGBUILD does not execute any potentially malicious code. The `source` array includes a git repository (with SKIP checksum, which is normal for VCS sources) and a local `.desktop` file; no remote execution occurs at parse time.
</details>
<evidence></evidence>
<summary>No top-level execution; safe to parse.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level execution; safe to parse.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, acheron.desktop...
[0/3] Reviewing .SRCINFO, acheron.desktop, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.SRCINFO` metadata file for an AUR VCS package. It declares the package name `acheron-git`, dependencies, and source locations. The source points to the legitimate upstream GitHub repository (`https://github.com/ouwou/acheron.git`) with a `SKIP` checksum, which is normal and required for git sources. The only other source is a `.desktop` file with a valid SHA-256 checksum. There is no executable code, no suspicious network destinations, no obfuscation, and no operations that deviate from standard packaging practices. Unpinned git sources are expected for `-git` packages and do not constitute a security threat by themselves. The file is safe.
</details>
<evidence></evidence>
<summary>Standard AUR metadata, no malicious content.</summary>
</security_assessment>

[1/3] Reviewing acheron.desktop, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no malicious content.
LLM auditresponse for acheron.desktop:
 <security_assessment>
<decision>SAFE</decision>
<details>
This is a standard freedesktop.org desktop entry file for a Qt-based Discord client. It contains only desktop metadata such as the application name, comment, icon, categories, and Exec line. The Exec line simply launches the `acheron` binary with the `%U` file/URL argument placeholder, which is normal desktop entry behavior. There is no network access, code execution beyond launching the installed application binary, system modification, obfuscation, or any other malicious behavior. The file is consistent with ordinary packaging for a GUI application.
</details>
<evidence></evidence>
<summary>Standard desktop entry file; no malicious or suspicious content.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed acheron.desktop. Status: SAFE -- Standard desktop entry file; no malicious or suspicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a git-based package. It clones the official upstream repository from GitHub, initializes specific vendor submodules (emoji-segmenter, libdave, miniaudio, mlspp, qrcodegen) using `git submodule update --init --filter=tree:0`, builds with cmake and ninja, and installs binaries, fonts, certificates, a desktop file, and a license. No suspicious network requests (all sources are the project's own repository), no obfuscated code, no eval/base64/curl/wget misuse, and no unexpected system modifications or data exfiltration. The `SKIP` checksum for the git source is standard for VCS packages. The submodule update targets only vendor directories within the project itself, not arbitrary external repositories. All operations are consistent with the package's stated purpose as an alternative Discord client.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD, no malicious content detected.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD, no malicious content detected.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,273
  Completion Tokens: 1,498
  Total Tokens: 11,771
  Total Cost: $0.000487
  Execution Time: 27.15 seconds

Final Status: SAFE


No issues found.
