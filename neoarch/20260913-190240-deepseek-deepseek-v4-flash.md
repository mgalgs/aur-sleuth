---
package: neoarch
pkgver: 3.2.0
pkgrel: 3
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 10242
completion_tokens: 5768
total_tokens: 16010
cost: 0.00103053496
execution_time: 117.98
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 1
injection_attempts: 0
date: 2026-09-13T19:02:39Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; no malicious content found.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with no malicious content.
  - file: neoarch.install
    status: safe
    summary: Routine post-install hook adding official Flathub remote; no malicious behavior found.
---

Materializing neoarch from local mirror...
Materialized neoarch
Analyzing neoarch AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources only the global/top-level scope of this PKGBUILD. That scope contains exclusively static metadata assignments: `pkgname`, `pkgver`, `pkgrel`, `pkgdesc`, `arch`, `url`, `license`, `depends`, `provides`, `conflicts`, `install`, `source`, and `sha256sums`. There are no top-level command substitutions, no `eval`/`base64`/`curl`/`wget`, no network calls, and no file operations that would execute while the file is sourced.

The `package()` function contains only routine packaging steps (`install`, `cp`, `chmod`, `sed -i` on files inside `$pkgdir`, symlink creation, desktop-file and icon/license installation). These do not run during `--printsrcinfo` and are normal for a self-contained app installed under `/opt`. The `sha256sums=('SKIP')` and the unpinned tag-based GitHub source are hygiene concerns for the full audit, but they cannot cause any action during this gate since no download occurs when only printing metadata.
</details>
<evidence>
</evidence>
<summary>
Top-level scope is static metadata only; no malicious code executes during printsrcinfo.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level scope is static metadata only; no malicious code executes during printsrcinfo.
Note: 1 remote source(s) have no checksum (sha256sums=SKIP), so the bytes are not verifiable: https://github.com/Sanjaya-Danushka/Neoarch/archive/refs/tags/v3.2.0.tar.gz
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, neoarch.install...
[0/3] Reviewing .SRCINFO, neoarch.install, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard .SRCINFO metadata file for an AUR package. It defines the package name, version, dependencies, and source location. The source points to the project's own GitHub repository, which is normal. The SKIP checksum is a common practice for VCS or static source packages and does not by itself indicate malice. There are no executable commands, obfuscated content, or suspicious operations. The file contains only declarative metadata for pacman/makepkg.
</details>
<evidence>

</evidence>
<summary>Standard AUR metadata; no malicious content found.</summary>
</security_assessment>

[1/3] Reviewing neoarch.install, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; no malicious content found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a Python/Qt application. It fetches source code from the official GitHub releases of the upstream project, copies it into `/opt/neoarch/Neoarch`, creates symlinks, installs a desktop file and an icon, and adjusts paths from development to installation directories using `sed`. No suspicious network requests, obfuscated code, or dangerous commands (e.g., `eval`, `curl`, `wget`) are present. The use of `SKIP` for checksums is explicitly allowed per AUR conventions and is not itself a security issue. The file does not exfiltrate data, download/execute unexpected code, or perform any other supply-chain attack indicators.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with no malicious content.</summary>
</security_assessment>

[2/3] Reviewing neoarch.install...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with no malicious content.
LLM auditresponse for neoarch.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The `neoarch.install` file defines a standard `post_install()` hook. It checks whether the `flatpak` command is available and, if so, adds the official Flathub repository for the current user using `flatpak remote-add --user --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo || true`.

This is benign and consistent with ordinary packaging practices. The `--user` flag restricts the change to the invoking user's Flatpak configuration; `--if-not-exists` prevents overwriting an existing remote; `|| true` ensures a failure does not abort installation. The URL is the well-known official Flathub endpoint, and the command only adds a repository definition — it does not download or execute code, exfiltrate data, or modify system files. No obfuscation, suspicious network destinations, or dangerous commands (eval, base64, curl|bash) are present.

The provided file content uses HTML entities (`&amp;gt;` for `&gt;`, `&amp;amp;` for `&amp;`); these are just shell redirection operators (`&gt;/dev/null 2&gt;&amp;1`) and are not obfuscation or malicious encoding.
</details>
<evidence>
</evidence>
<summary>
Routine post-install hook adding official Flathub remote; no malicious behavior found.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed neoarch.install. Status: SAFE -- Routine post-install hook adding official Flathub remote; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,242
  Completion Tokens: 5,768
  Total Tokens: 16,010
  Total Cost: $0.001031
  Execution Time: 117.98 seconds

Final Status: SAFE


No issues found.
