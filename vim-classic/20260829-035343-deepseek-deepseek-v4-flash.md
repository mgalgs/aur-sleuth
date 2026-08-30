---
package: vim-classic
pkgver: 8.3.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 28420
completion_tokens: 3660
total_tokens: 32080
cost: 0.00306220320
execution_time: 79.67
files_reviewed: 9
files_skipped: 1
maintainer_files: 10
source_fetch: ok
upstream_files: 3339
upstream_named_files: 3
unpinned_sources: 1
date: 2026-08-29T03:53:43Z
file_verdicts:
  - file: .nvchecker.toml
    status: safe
    summary: Safe nvchecker config tracking upstream git tags; no malicious behavior present.
  - file: LICENSE
    status: safe
    summary: Standard license file, no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; no malicious content.
  - file: PKGBUILD
    status: safe
    summary: No security issues found in this PKGBUILD.
  - file: REUSE.toml
    status: safe
    summary: Standard REUSE metadata config; no security concerns.
  - file: keys/pgp/9FB5E737DC25B29D8EEC469142F3F1862E3CC4B8.asc
    status: skipped
    summary: "Skipping binary file: 9FB5E737DC25B29D8EEC469142F3F1862E3CC4B8.asc"
  - file: archlinux.vim
    status: safe
    summary: "Benign global Vim config: safe directory handling, no malicious behavior."
  - file: vimdoc.hook
    status: safe
    summary: Standard pacman hook for Vim help tags.
  - file: vimrc
    status: safe
    summary: Standard Vim configuration; no security concerns.
  - file: LICENSE
    status: safe
    summary: Standard license file, no security concerns.
---

Cloning https://aur.archlinux.org/vim-classic.git...
Cloned vim-classic
Analyzing vim-classic AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD exhibits no malicious code that would execute during `makepkg --nobuild --nodeps --noprepare`. The global scope contains only variable declarations and array definitions. No `pkgver()` function is defined, so no code runs at that stage. All source URLs point to the legitimate upstream project on git.sr.ht. The SKIP checksum on the `.sig` file is normal for signature downloads and is not a security concern. There are no obfuscated commands, unexpected network destinations, or attempts to exfiltrate data. The file follows standard AUR packaging conventions for a Vim fork.
</details>
<evidence></evidence>
<summary>Safe: standard PKGBUILD with no runtime code execution risks.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe: standard PKGBUILD with no runtime code execution risks.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: 1 remote source(s) have no checksum (sha256sums=SKIP), so the fetched bytes are not verifiable and can change without any AUR update: https://git.sr.ht/~sircmpwn/vim-classic/refs/download/v8.3.0/vim-classic-v8.3.0.tar.gz.sig
Note: the PKGBUILD names 3 file(s) in the downloaded sources (src/vim-classic-v8.3.0/configure, src/vim-classic-v8.3.0/runtime/doc/uganda.txt, src/vim-classic-v8.3.0/runtime/ftplugin/logtalk.dict); they are upstream content and were not reviewed.
Reviewing the 10 file(s) in the AUR repository. The 3339 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/10] Reviewing .SRCINFO...
[0/10] Reviewing .SRCINFO, .nvchecker.toml...
[0/10] Reviewing .SRCINFO, .nvchecker.toml, LICENSE...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard nvchecker configuration file that tracks upstream releases from the project's own git repository. It defines a VCS source pointing to the official vim-classic repository on git.sr.ht, strips a leading "v" from version tags, and instructs nvchecker to use the maximum tag as the latest version. No network endpoints other than the project's own upstream are referenced, and no commands, downloads, obfuscation, or file operations are present. This is normal packaging/version-checking practice and contains no malicious behavior.
</details>
<evidence>
</evidence>
<summary>
Safe nvchecker config tracking upstream git tags; no malicious behavior present.</summary>
</security_assessment>

[0/10] Reviewing .SRCINFO, .nvchecker.toml, LICENSE, LICENSE...
[1/10] Reviewing .SRCINFO, LICENSE, LICENSE...
+ Reviewed .nvchecker.toml. Status: SAFE -- Safe nvchecker config tracking upstream git tags; no malicious behavior present.
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard ISC-style license. It contains no executable code, no network requests, no obfuscation, and no system-modifying instructions. It is a plain-text legal notice and poses no security risk.
</details>
<evidence></evidence>
<summary>Standard license file, no security concerns.</summary>
</security_assessment>

[1/10] Reviewing .SRCINFO, LICENSE, LICENSE, PKGBUILD...
[2/10] Reviewing .SRCINFO, LICENSE, PKGBUILD...
+ Reviewed LICENSE. Status: SAFE -- Standard license file, no security concerns.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a declarative metadata file for the AUR package `vim-classic`. It contains no executable code, no network requests, no obfuscated strings, and no unusual file operations. The only checksum set to `SKIP` is for the detached GPG signature file, which is standard practice—signatures are verified via `validpgpkeys`, not checksums. The source archive is fetched from the project's own upstream (git.sr.ht) with a pinned tarball URL and a valid SHA-256 checksum. All other sources (vimrc, archlinux.vim, vimdoc.hook) have checksums. The `validpgpkeys` field is present. There is nothing in this file that indicates any malicious behavior. It follows normal AUR packaging conventions.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata; no malicious content.</summary>
</security_assessment>

[2/10] Reviewing .SRCINFO, LICENSE, PKGBUILD, REUSE.toml...
[3/10] Reviewing LICENSE, PKGBUILD, REUSE.toml...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Arch Linux packaging practices for a Vim fork. The source is fetched from the project's own upstream repository (git.sr.ht) with a pinned version and a valid SHA256 checksum for the tarball. The signature file has SKIP (standard for detached signatures verified separately via PGP). The build process uses autoconf, configure, and make without any suspicious commands. There is no obfuscated code, no unexpected network requests, no base64 or encoded payloads, and no operations that would exfiltrate data or install backdoors. The package properly handles installs, cleanup of conflicting files, and standard hooks. No evidence of a supply-chain attack or malicious injection was found.
</details>
<evidence>
</evidence>
<summary>No security issues found in this PKGBUILD.</summary>
</security_assessment>

[3/10] Reviewing LICENSE, PKGBUILD, REUSE.toml, archlinux.vim...
[4/10] Reviewing LICENSE, REUSE.toml, archlinux.vim...
+ Reviewed PKGBUILD. Status: SAFE -- No security issues found in this PKGBUILD.
LLM auditresponse for REUSE.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard REUSE configuration file (REUSE.toml) used by the REUSE tool to declare copyright and license information for a set of files. It contains no executable code, no network requests, no obfuscated commands, and no file operations. The content is purely declarative metadata: a list of file paths annotated with a copyright notice and an SPDX license identifier (0BSD). There is nothing in this file that deviates from normal packaging or configuration practices. No supply-chain attack indicators are present.
</details>
<evidence>
</evidence>
<summary>Standard REUSE metadata config; no security concerns.</summary>
</security_assessment>

[5/10] Reviewing LICENSE, archlinux.vim...
+ Reviewed REUSE.toml. Status: SAFE -- Standard REUSE metadata config; no security concerns.
[5/10] Reviewing LICENSE, archlinux.vim, keys/pgp/9FB5E737DC25B29D8EEC469142F3F1862E3CC4B8.asc...
[5/10] Reviewing LICENSE, archlinux.vim, keys/pgp/9FB5E737DC25B29D8EEC469142F3F1862E3CC4B8.asc, vimdoc.hook...
[6/10] Reviewing LICENSE, archlinux.vim, vimdoc.hook...
! Reviewed keys/pgp/9FB5E737DC25B29D8EEC469142F3F1862E3CC4B8.asc. Status: SKIPPED -- Skipping binary file: 9FB5E737DC25B29D8EEC469142F3F1862E3CC4B8.asc
LLM auditresponse for archlinux.vim:
<security_assessment>
<decision>SAFE</decision>
<details>
This is the Arch Linux global Vim configuration file. It only sets standard Vim options (`nocompatible`, `backspace`, `ruler`, `suffixes`) and relocates Vim swap, backup, and undo files under `$XDG_CACHE_HOME` or `$HOME/.cache/vim/`, creating those directories with mode `0700`. This is a legitimate and security-conscious packaging practice, explicitly referencing CVE-2017-1000382, and it does not touch any data outside the user's own cache directory. The remaining `map` for Shift-Insert is ordinary Vim/Qt behavior.

There is no obfuscation, no network access, no downloading or execution of external code, no encoding tricks, no exfiltration of user data, and no modification of unrelated system files. The file contains only benign Vimscript consistent with its stated purpose as a system-wide vimrc.
</details>
<evidence></evidence>
<summary>Benign global Vim config: safe directory handling, no malicious behavior.</summary>
</security_assessment>

[6/10] Reviewing LICENSE, archlinux.vim, vimdoc.hook, vimrc...
[7/10] Reviewing LICENSE, vimdoc.hook, vimrc...
+ Reviewed archlinux.vim. Status: SAFE -- Benign global Vim config: safe directory handling, no malicious behavior.
LLM auditresponse for vimdoc.hook:
<security_assessment>
<decision>SAFE</decision>
<details>
The "vimdoc.hook" file is a standard pacman hook used to update Vim help tags after package installation, upgrade, or removal. It executes `/usr/bin/vim -es --cmd ":helptags /usr/share/vim/vimfiles/doc" --cmd ":q"` which regenerates help tags for Vim documentation. This is a routine, expected operation for Vim packages in Arch Linux. No suspicious network requests, obfuscation, file exfiltration, or backdoors are present. The hook uses an absolute path to vim, avoiding PATH injection risks.
</details>
<evidence>
</evidence>
<summary>Standard pacman hook for Vim help tags.</summary>
</security_assessment>

[8/10] Reviewing LICENSE, vimrc...
+ Reviewed vimdoc.hook. Status: SAFE -- Standard pacman hook for Vim help tags.
LLM auditresponse for vimrc:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `vimrc` is a standard system-wide Vim configuration file intended for Arch Linux. It contains only comments and a single command to source `archlinux.vim`, which is a legitimate part of the vim package. There are no network requests, obfuscated code, dangerous commands, or any other indicators of malicious behavior. The file follows normal packaging practices and poses no supply-chain risk.
</details>
<evidence>
</evidence>
<summary>Standard Vim configuration; no security concerns.</summary>
</security_assessment>

[9/10] Reviewing LICENSE...
+ Reviewed vimrc. Status: SAFE -- Standard Vim configuration; no security concerns.
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard ISC-style license commonly used in Arch Linux package repositories. It contains only legal text granting permission to use, copy, modify, and distribute the software with no fee, along with a disclaimer of warranties. There is no executable code, network requests, file operations, or any other content that could introduce security risks. The file is harmless and follows standard packaging practices.
</details>
<evidence></evidence>
<summary>Standard license file, no security concerns.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed LICENSE. Status: SAFE -- Standard license file, no security concerns.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
(Skipped 1 file: 9FB5E737DC25B29D8EEC469142F3F1862E3CC4B8.asc)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 28,420
  Completion Tokens: 3,660
  Total Tokens: 32,080
  Total Cost: $0.003062
  Execution Time: 79.67 seconds

Final Status: SAFE


No issues found.


Audit Skips:

keys/pgp/9FB5E737DC25B29D8EEC469142F3F1862E3CC4B8.asc: [SKIPPED] Skipping binary file: 9FB5E737DC25B29D8EEC469142F3F1862E3CC4B8.asc
