---
package: vim-classic-runtime
pkgbase: vim-classic
pkgver: 8.3.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 28282
completion_tokens: 3645
total_tokens: 31927
cost: 0.00300796832
execution_time: 138.83
files_reviewed: 9
files_skipped: 1
maintainer_files: 10
source_fetch: ok
upstream_files: 3339
upstream_named_files: 3
unpinned_sources: 1
date: 2026-08-29T07:26:05Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: Standard license file, no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; no threats found.
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config for upstream version tracking.
  - file: LICENSE
    status: safe
    summary: Standard license file, no security concerns.
  - file: REUSE.toml
    status: safe
    summary: REUSE.toml is harmless metadata; no security concerns.
  - file: keys/pgp/9FB5E737DC25B29D8EEC469142F3F1862E3CC4B8.asc
    status: skipped
    summary: "Skipping binary file: 9FB5E737DC25B29D8EEC469142F3F1862E3CC4B8.asc"
  - file: archlinux.vim
    status: safe
    summary: Standard Vim configuration, no malicious behavior.
  - file: vimdoc.hook
    status: safe
    summary: Standard Vim help tags update hook, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD, no malicious behavior found.
  - file: vimrc
    status: safe
    summary: Standard Vim configuration; no security issues.
---

vim-classic-runtime is built from vim-classic
Cloning https://aur.archlinux.org/vim-classic.git...
Cloned vim-classic-runtime
Analyzing vim-classic-runtime AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global scope consists solely of variable assignments, including the `source` array and checksums. The source URLs point to the official vim-classic project on git.sr.ht (HTTPS) plus local files bundled in the AUR repository. No obfuscation, command substitution, or remote code execution mechanisms exist in the top-level code or `pkgver()` (which is not defined). The `prepare()`, `build()`, and `package()` functions are not executed by `makepkg --nobuild --nodeps --noprepare` or `--printsrcinfo`, so any content within them is out of scope for this gate. The SKIP checksum on the `.sig` file is standard AUR practice and not a security concern. No exfiltration, downloads from unexpected hosts, or execution of untrusted payloads occur during source fetching or PKGBUILD parsing.
</details>
<evidence></evidence>
<summary>Fetching sources and parsing PKGBUILD is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Fetching sources and parsing PKGBUILD is safe.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: 1 remote source(s) have no checksum (sha256sums=SKIP), so the fetched bytes are not verifiable and can change without any AUR update: https://git.sr.ht/~sircmpwn/vim-classic/refs/download/v8.3.0/vim-classic-v8.3.0.tar.gz.sig
Note: the PKGBUILD names 3 file(s) in the downloaded sources (src/vim-classic-v8.3.0/configure, src/vim-classic-v8.3.0/runtime/doc/uganda.txt, src/vim-classic-v8.3.0/runtime/ftplugin/logtalk.dict); they are upstream content and were not reviewed.
Reviewing the 10 file(s) in the AUR repository. The 3339 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/10] Reviewing .SRCINFO...
[0/10] Reviewing .SRCINFO, .nvchecker.toml...
[0/10] Reviewing .SRCINFO, .nvchecker.toml, LICENSE...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard ISC license file for the Arch Linux Contributors. It contains no executable code, no network requests, no obfuscated content, and no system operations. It is purely a legal text file and poses no security risk.
</details>
<evidence></evidence>
<summary>Standard license file, no security concerns.</summary>
</security_assessment>

[1/10] Reviewing .SRCINFO, .nvchecker.toml...
+ Reviewed LICENSE. Status: SAFE -- Standard license file, no security concerns.
[1/10] Reviewing .SRCINFO, .nvchecker.toml, LICENSE...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR `.SRCINFO` metadata file for the `vim-classic` package. It contains package descriptions, dependencies, source definitions, checksums, and inter-package relationships. No executable code, obfuscated strings, network requests, or system modifications are present. The source URLs point to the legitimate upstream repository (`git.sr.ht/~sircmpwn/vim-classic`). The presence of `SKIP` checksums on the signature file is normal AUR practice for `.sig` files. This file poses no security risk as it is purely declarative packaging metadata.
</details>
<evidence></evidence>
<summary>Standard AUR metadata; no threats found.</summary>
</security_assessment>

[1/10] Reviewing .SRCINFO, .nvchecker.toml, LICENSE, PKGBUILD...
[2/10] Reviewing .nvchecker.toml, LICENSE, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; no threats found.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard configuration for `nvchecker`, a tool used to monitor upstream releases for AUR packages. It defines a single source `vim` that tracks the git repository at `https://git.sr.ht/~sircmpwn/vim-classic` using tag-based versioning with a prefix of `v` and the `use_max_tag` option. There is no embedded or obfuscated code, no network requests to unexpected hosts, no file operations, and no system modifications. The content is purely declarative and follows normal packaging practices for tracking upstream releases.
</details>
<evidence></evidence>
<summary>Standard nvchecker config for upstream version tracking.</summary>
</security_assessment>

[2/10] Reviewing .nvchecker.toml, LICENSE, PKGBUILD, REUSE.toml...
[3/10] Reviewing LICENSE, PKGBUILD, REUSE.toml...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config for upstream version tracking.
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard ISC license text commonly used in open-source projects. It contains no executable code, no network requests, no file operations, no system modifications, and no obfuscated or encoded content. There is no evidence of malicious behavior or supply chain attack. The file is purely a legal license for the software.
</details>
<evidence></evidence>
<summary>Standard license file, no security concerns.</summary>
</security_assessment>

[3/10] Reviewing LICENSE, PKGBUILD, REUSE.toml, archlinux.vim...
[4/10] Reviewing PKGBUILD, REUSE.toml, archlinux.vim...
+ Reviewed LICENSE. Status: SAFE -- Standard license file, no security concerns.
LLM auditresponse for REUSE.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `REUSE.toml` is a standard REUSE (software reuse) specification that declares copyright and license metadata for files in the repository. It contains only static TOML configuration: a version number and an annotation list assigning `SPDX-FileCopyrightText` and `SPDX-License-Identifier` to a set of file paths. There are no executable commands, network requests, obfuscation, or any other indicators of malicious behavior. The paths listed are typical for an AUR package (PKGBUILD, .SRCINFO, install scripts, etc.) and the licensing choice (0BSD) is legitimate.

No security issues are present. This file is purely declarative metadata and poses no risk.
</details>
<evidence></evidence>
<summary>REUSE.toml is harmless metadata; no security concerns.</summary>
</security_assessment>

[5/10] Reviewing PKGBUILD, archlinux.vim...
+ Reviewed REUSE.toml. Status: SAFE -- REUSE.toml is harmless metadata; no security concerns.
[5/10] Reviewing PKGBUILD, archlinux.vim, keys/pgp/9FB5E737DC25B29D8EEC469142F3F1862E3CC4B8.asc...
[6/10] Reviewing PKGBUILD, archlinux.vim...
! Reviewed keys/pgp/9FB5E737DC25B29D8EEC469142F3F1862E3CC4B8.asc. Status: SKIPPED -- Skipping binary file: 9FB5E737DC25B29D8EEC469142F3F1862E3CC4B8.asc
[6/10] Reviewing PKGBUILD, archlinux.vim, vimdoc.hook...
LLM auditresponse for archlinux.vim:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Vim configuration file for Arch Linux. It sets sensible defaults (nocompatible, backspace, ruler, file suffixes). It mitigates CVE-2017-1000382 by configuring swap, backup, and undo directories under `$XDG_CACHE_HOME` (or `~/.cache`) with secure permissions (0700). It then maps Shift+Insert for GUI mode. There are no network requests, obfuscated code, unexpected commands, or exfiltration attempts. All operations are confined to Vim's own cache directories and are normal packaging content. No security issues found.
</details>
<evidence></evidence>
<summary>Standard Vim configuration, no malicious behavior.</summary>
</security_assessment>

[6/10] Reviewing PKGBUILD, archlinux.vim, vimdoc.hook, vimrc...
[7/10] Reviewing PKGBUILD, vimdoc.hook, vimrc...
+ Reviewed archlinux.vim. Status: SAFE -- Standard Vim configuration, no malicious behavior.
LLM auditresponse for vimdoc.hook:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Pacman hook for updating Vim help tags when Vim documentation files are installed, upgraded, or removed. The hook triggers on changes to `/usr/share/vim/vimfiles/doc/` and runs `/usr/bin/vim` with explicit paths and benign arguments to regenerate the help tag database. There is no network access, no obfuscated code, no unexpected file operations, and no deviation from normal packaging practices. The command is well-known and safe.
</details>
<evidence></evidence>
<summary>Standard Vim help tags update hook, no security issues.</summary>
</security_assessment>

[8/10] Reviewing PKGBUILD, vimrc...
+ Reviewed vimdoc.hook. Status: SAFE -- Standard Vim help tags update hook, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a straightforward packaging file for a Vim fork (vim-classic). All sources originate from the official upstream repository on git.sr.ht, with pinned version and checksum for the primary tarball. The PGP signature source has a SKIP checksum, which is standard practice when using validpgpkeys verification. The build steps are typical for a compiled package: autoconf, configure, make, and install with standard flags. File operations only remove conflicting files (ex, view manpages) and install runtime files and desktop hooks as expected. No obfuscated code, unexpected network requests, or system tampering is present. The package is consistent with normal AUR packaging practices and poses no supply-chain risk.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD, no malicious behavior found.</summary>
</security_assessment>

[9/10] Reviewing vimrc...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD, no malicious behavior found.
LLM auditresponse for vimrc:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Vim runtime configuration file (`/etc/vimrc`) as shipped by the `vim-classic-runtime` package. It contains only commented lines explaining how to customize Vim settings and a single `runtime! archlinux.vim` command to load the distribution-specific defaults. There is no obfuscated code, no network requests, no file operations beyond sourcing the default runtime, and no evidence of any injected malicious behavior. The content is exactly what is expected for an Arch Linux Vim system configuration file.
</details>
<evidence>
</evidence>
<summary>
Standard Vim configuration; no security issues.
</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed vimrc. Status: SAFE -- Standard Vim configuration; no security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
(Skipped 1 file: 9FB5E737DC25B29D8EEC469142F3F1862E3CC4B8.asc)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 28,282
  Completion Tokens: 3,645
  Total Tokens: 31,927
  Total Cost: $0.003008
  Execution Time: 138.83 seconds

Final Status: SAFE


No issues found.


Audit Skips:

keys/pgp/9FB5E737DC25B29D8EEC469142F3F1862E3CC4B8.asc: [SKIPPED] Skipping binary file: 9FB5E737DC25B29D8EEC469142F3F1862E3CC4B8.asc
