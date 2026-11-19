---
package: goldeneye-pc-port-bin
pkgver: 0.5.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 17975
completion_tokens: 3209
total_tokens: 21184
cost: 0.002219763
execution_time: 29.03
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-04T00:01:56Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with pinned upstream sources and checksums. No security issues found.
  - file: .gitignore
    status: safe
    summary: Standard AUR .gitignore; no malicious or dangerous behavior present.
  - file: PKGBUILD
    status: safe
    summary: Standard pinned upstream release PKGBUILD with no malicious or suspicious behavior.
  - file: goldeneye-pc-port.desktop
    status: safe
    summary: Standard desktop launcher entry; no malicious or suspicious content found.
  - file: goldeneye-pc-port
    status: safe
    summary: Benign game launcher; no network, obfuscation, or malicious operations found.
---

Materializing goldeneye-pc-port-bin from local mirror...
Materialized goldeneye-pc-port-bin
Analyzing goldeneye-pc-port-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's top-level (global) scope — the only part executed during `makepkg --printsrcinfo` — contains nothing but static variable assignments: `pkgname`, `_pkgname`, `pkgver`, `pkgrel`, `pkgdesc`, `arch`, `url`, `license`, `depends`, `provides`, `conflicts`, `options`, the `source=()` array, and `sha256sums=()`. There is no command substitution (`$(...)` or backticks), no `eval`, no `source`/`.` of anything outside the file, no `curl`/`wget`/`base64` decoding, and no file or network operations that could run merely by sourcing the file.

The only function present is `package()`, which merely copies files from the extracted upstream tarball into `$pkgdir` (`install`, `cp`, `printf`) — and it is not executed by `--printsrcinfo`, so it is out of scope for this gate anyway. No top-level code downloads, decodes, or executes an untrusted payload, and no data exfiltration occurs during parsing.

All sources are pinned with real sha256 checksums (no SKIPs). All URLs point at the project's own GitHub upstream. This is ordinary, well-formed packaging; nothing here executes at source/parse time.
</details>
<evidence>
</evidence>
<summary>Top level only defines static variables; no execution on sourcing.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top level only defines static variables; no execution on sourcing.
Reviewing the 5 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, .gitignore...
[0/5] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR `.SRCINFO` metadata file for a prebuilt binary package. The declared sources point to the project's own GitHub release tarball and icon asset, all with pinned version v0.5.0 and non-SKIP sha256 checksums. The local source files (`goldeneye-pc-port`, `goldeneye-pc-port.desktop`) are normal packaging files whose contents live in the AUR repository. No suspicious URLs, obfuscated commands, or unexpected behavior are present in this file.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata with pinned upstream sources and checksums. No security issues found.</summary>
</security_assessment>

[0/5] Reviewing .SRCINFO, .gitignore, PKGBUILD, goldeneye-pc-port...
[1/5] Reviewing .gitignore, PKGBUILD, goldeneye-pc-port...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with pinned upstream sources and checksums. No security issues found.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` for an Arch User Repository (AUR) package repository. It ignores all files except the packaging files (`PKGBUILD`, `.SRCINFO`, `.gitignore`) and two additional package files (`goldeneye-pc-port`, `goldeneye-pc-port.desktop`). This is a routine convenience file that prevents build artifacts, a ROM, or `src/`/`pkg/` directories from being accidentally committed to the AUR git repository.

There is no obfuscation, no network access, no file-downloading, no execution of code, no exfiltration of data, and no modification of system files. The content is purely declarative and consistent with normal AUR maintenance practices. No security issues were found.
</details>
<evidence>
</evidence>
<summary>
Standard AUR .gitignore; no malicious or dangerous behavior present.
</summary>
</security_assessment>

[1/5] Reviewing .gitignore, PKGBUILD, goldeneye-pc-port, goldeneye-pc-port.desktop...
[2/5] Reviewing PKGBUILD, goldeneye-pc-port, goldeneye-pc-port.desktop...
+ Reviewed .gitignore. Status: SAFE -- Standard AUR .gitignore; no malicious or dangerous behavior present.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a prebuilt binary package. It downloads the package's own upstream release tarball and icon from the project's official GitHub repository, with pinned `sha256sums` for every source. No checksums are skipped and no URLs point to unrelated or unexpected hosts.

The `package()` function only installs files into the package directory: copying the prebuilt game binary and supporting libraries into `/opt`, installing launcher scripts, desktop entry, icons, and license files. There are no calls to `curl`, `wget`, `eval`, `base64`, no encoded/obfuscated commands, no dynamic fetching of unchecked content at build time, and no modifications outside the package installation root. The dependency on `zenity` and `python` matches the stated purpose of prompting the user for a ROM and preparing game assets on first run.
</details>
<evidence>
</evidence>
<summary>
Standard pinned upstream release PKGBUILD with no malicious or suspicious behavior.</summary>
</security_assessment>

[3/5] Reviewing goldeneye-pc-port, goldeneye-pc-port.desktop...
+ Reviewed PKGBUILD. Status: SAFE -- Standard pinned upstream release PKGBUILD with no malicious or suspicious behavior.
LLM auditresponse for goldeneye-pc-port.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard freedesktop.org `.desktop` launcher file for the GoldenEye PC port. It defines the application name, comment, icon, and the `Exec=goldeneye-pc-port` command that launches the installed binary. There are no network requests, downloads, encoded commands, file operations, or references to external/unexpected hosts. The file follows normal packaging conventions and contains no malicious behavior.
</details>
<evidence>
</evidence>
<summary>
Standard desktop launcher entry; no malicious or suspicious content found.</summary>
</security_assessment>

[4/5] Reviewing goldeneye-pc-port...
+ Reviewed goldeneye-pc-port.desktop. Status: SAFE -- Standard desktop launcher entry; no malicious or suspicious content found.
LLM auditresponse for goldeneye-pc-port:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a conventional launcher for a locally installed game. It creates user data/cache directories, locks them with flock, imports a user-provided ROM, optionally regenerates assets by executing the package's own converter from /opt/goldeneye-pc-port, and finally execs the game binary. All file operations are confined to the application's data/cache directories and the package's installation directory; no network access, downloads, curl/wget, eval, base64, or obfuscated code is present.

The embedded Python here-doc only reads the user-selected ROM file and rewrites it in big-endian byte order after checking the N64 magic bytes; it does not execute shell or fetch remote content. The sha1sum checks are used to verify the ROM is an unmodified GoldenEye dump, which is normal for this kind of launcher. The script does not tamper with unrelated system files or send data anywhere, so there is no evidence of injected malicious behavior.
</details>
<evidence>
</evidence>
<summary>
Benign game launcher; no network, obfuscation, or malicious operations found.
</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed goldeneye-pc-port. Status: SAFE -- Benign game launcher; no network, obfuscation, or malicious operations found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 17,975
  Completion Tokens: 3,209
  Total Tokens: 21,184
  Total Cost: $0.002220
  Execution Time: 29.03 seconds

Final Status: SAFE


No issues found.
