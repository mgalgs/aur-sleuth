---
package: gvim-classic
pkgbase: vim-classic
pkgver: 8.3.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 28262
completion_tokens: 3580
total_tokens: 31842
cost: 0.00299528432
execution_time: 63.62
files_reviewed: 9
files_skipped: 1
maintainer_files: 10
source_fetch: ok
upstream_files: 3339
upstream_named_files: 3
unpinned_sources: 1
date: 2026-08-29T07:17:17Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: Standard license file, no risk.
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config, no security issues.
  - file: .SRCINFO
    status: safe
    summary: Declarative .SRCINFO with no executable content; SAFE.
  - file: REUSE.toml
    status: safe
    summary: REUSE.toml is a safe, declarative metadata file.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with no malicious indicators.
  - file: keys/pgp/9FB5E737DC25B29D8EEC469142F3F1862E3CC4B8.asc
    status: skipped
    summary: "Skipping binary file: 9FB5E737DC25B29D8EEC469142F3F1862E3CC4B8.asc"
  - file: archlinux.vim
    status: safe
    summary: Standard vim config, no security issues.
  - file: vimdoc.hook
    status: safe
    summary: Standard Vim help tag update hook, no security issues.
  - file: vimrc
    status: safe
    summary: Standard Vim config file, no security issues.
  - file: LICENSE
    status: safe
    summary: Standard license text, no security concerns.
---

gvim-classic is built from vim-classic
Cloning https://aur.archlinux.org/vim-classic.git...
Cloned gvim-classic
Analyzing gvim-classic AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's top-level scope only contains variable definitions and array declarations. There is no `pkgver()` function, so no code execution from that source. All source entries point to the project's official upstream (git.sr.ht) or are local files with checksums. No obfuscated commands, network requests to unexpected hosts, or other malicious constructs are present in the global scope. The `prepare()`, `build()`, and `package_*()` functions are not executed by the commands in scope (`--nobuild`, `--nodeps`, `--noprepare`). Therefore, fetching sources and sourcing the PKGBUILD is safe.
</details>
<evidence></evidence>
<summary>No malicious code in global scope; safe to fetch sources.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code in global scope; safe to fetch sources.
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
This file is a standard open-source license text (a variant of the ISC license). It contains no executable code, no network requests, no file operations, and no obfuscated content. It is a routine legal document distributed with AUR packages and poses no security risk.
</details>
<evidence>
</evidence>
<summary>Standard license file, no risk.</summary>
</security_assessment>

[0/10] Reviewing .SRCINFO, .nvchecker.toml, LICENSE, LICENSE...
[1/10] Reviewing .SRCINFO, .nvchecker.toml, LICENSE...
+ Reviewed LICENSE. Status: SAFE -- Standard license file, no risk.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard nvchecker configuration file. It specifies the upstream git repository for the vim-classic package (`https://git.sr.ht/~sircmpwn/vim-classic`) and sets version detection options (`prefix = &quot;v&quot;`, `use_max_tag = true`). There is no executable code, no obfuscation, no suspicious network destinations, and no deviation from normal packaging practices. The file is used solely for version checking and poses no security risk.
</details>
<evidence>
</evidence>
<summary>Standard nvchecker config, no security issues.</summary>
</security_assessment>

[1/10] Reviewing .SRCINFO, .nvchecker.toml, LICENSE, PKGBUILD...
[2/10] Reviewing .SRCINFO, LICENSE, PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config, no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard .SRCINFO file for the `vim-classic` and `gvim-classic` AUR packages. It contains only declarative metadata: package name, version, dependencies, sources, checksums, and PGP key identifiers. There is no executable code, no obfuscated strings, no network requests to unknown hosts, and no dangerous operations. The sources point to the legitimate upstream repository on `git.sr.ht` maintained by `~sircmpwn` (Drew DeVault), a well-known developer. The checksum for the tarball is pinned, and the signature source has `SKIP` (normal for `.sig` files). There is no evidence of malicious or suspicious activity.
</details>
<evidence></evidence>
<summary>Declarative .SRCINFO with no executable content; SAFE.</summary>
</security_assessment>

[2/10] Reviewing .SRCINFO, LICENSE, PKGBUILD, REUSE.toml...
[3/10] Reviewing LICENSE, PKGBUILD, REUSE.toml...
+ Reviewed .SRCINFO. Status: SAFE -- Declarative .SRCINFO with no executable content; SAFE.
LLM auditresponse for REUSE.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a REUSE (REUSE.toml) configuration, which is a specification for managing copyright and license information in a repository. It is entirely declarative and contains only path patterns, copyright notice, and license identifier. There is no executable code, no network requests, no file system modifications, no obfuscation, and no references to external commands. This file poses no security risk.
</details>
<evidence>
</evidence>
<summary>REUSE.toml is a safe, declarative metadata file.</summary>
</security_assessment>

[4/10] Reviewing LICENSE, PKGBUILD...
+ Reviewed REUSE.toml. Status: SAFE -- REUSE.toml is a safe, declarative metadata file.
[4/10] Reviewing LICENSE, PKGBUILD, archlinux.vim...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard, well-structured Arch Linux package recipe. It downloads the vim-classic source tarball from the official upstream project repository (`git.sr.ht/~sircmpwn/vim-classic`) with a pinned SHA-256 checksum and a PGP signature verification key. All source files are fetched over HTTPS and have proper checksums (the `.sig` file is correctly set to `SKIP`). The build process uses typical `./configure` and `make` steps without any unusual or dangerous commands. There is no obfuscated code, no `eval`, no `curl|bash` patterns, no unexpected network requests, and no modification of system files outside the package's own scope. The packaging follows Arch Linux conventions and does not exhibit any indicators of a supply-chain attack.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with no malicious indicators.</summary>
</security_assessment>

[4/10] Reviewing LICENSE, PKGBUILD, archlinux.vim, keys/pgp/9FB5E737DC25B29D8EEC469142F3F1862E3CC4B8.asc...
[5/10] Reviewing LICENSE, archlinux.vim, keys/pgp/9FB5E737DC25B29D8EEC469142F3F1862E3CC4B8.asc...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with no malicious indicators.
[6/10] Reviewing LICENSE, archlinux.vim...
! Reviewed keys/pgp/9FB5E737DC25B29D8EEC469142F3F1862E3CC4B8.asc. Status: SKIPPED -- Skipping binary file: 9FB5E737DC25B29D8EEC469142F3F1862E3CC4B8.asc
[6/10] Reviewing LICENSE, archlinux.vim, vimdoc.hook...
LLM auditresponse for archlinux.vim:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard global vim configuration file for Arch Linux. It adjusts Vim settings for compatibility and security, notably moving temporary files (swap, backup, undo) to `$XDG_CACHE_HOME` or `~/.cache` to mitigate CVE-2017-1000382, a well-known symlink vulnerability. The directory creation uses proper permissions (0700). There are no network operations, no obfuscation, no execution of external commands, and no data exfiltration. All operations are confined to the user's own cache directory, consistent with upstream and packaging expectations. No supply-chain attack indicators are present.
</details>
<evidence>
</evidence>
<summary>Standard vim config, no security issues.</summary>
</security_assessment>

[7/10] Reviewing LICENSE, vimdoc.hook...
+ Reviewed archlinux.vim. Status: SAFE -- Standard vim config, no security issues.
[7/10] Reviewing LICENSE, vimdoc.hook, vimrc...
LLM auditresponse for vimdoc.hook:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard pacman hook file for updating Vim help tags after package transactions. The `Exec` line runs `/usr/bin/vim` with the `:helptags` command to regenerate documentation tags, which is a normal and expected behavior for packages providing Vim documentation files. No malicious commands, network requests, or obfuscated code are present. The hook operates on the specified path and follows standard packaging conventions.
</details>
<evidence></evidence>
<summary>Standard Vim help tag update hook, no security issues.</summary>
</security_assessment>

[8/10] Reviewing LICENSE, vimrc...
+ Reviewed vimdoc.hook. Status: SAFE -- Standard Vim help tag update hook, no security issues.
LLM auditresponse for vimrc:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Vim configuration file (`/etc/vimrc`) distributed as part of the gvim-classic package. It contains only comments and one active line that sources the system Vim runtime file (`runtime! archlinux.vim`). There are no network requests, no obfuscated code, no external commands, and no suspicious file operations. The content is entirely benign and follows normal packaging practices for Vim configuration on Arch Linux.
</details>
<evidence></evidence>
<summary>Standard Vim config file, no security issues.</summary>
</security_assessment>

[9/10] Reviewing LICENSE...
+ Reviewed vimrc. Status: SAFE -- Standard Vim config file, no security issues.
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard software license (ISC-style) attributed to "Arch Linux Contributors". It contains no executable code, no network requests, no file operations, and no obfuscated or encoded content. It is entirely benign and poses no security risk.
</details>
<evidence>
</evidence>
<summary>Standard license text, no security concerns.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed LICENSE. Status: SAFE -- Standard license text, no security concerns.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
(Skipped 1 file: 9FB5E737DC25B29D8EEC469142F3F1862E3CC4B8.asc)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 28,262
  Completion Tokens: 3,580
  Total Tokens: 31,842
  Total Cost: $0.002995
  Execution Time: 63.62 seconds

Final Status: SAFE


No issues found.


Audit Skips:

keys/pgp/9FB5E737DC25B29D8EEC469142F3F1862E3CC4B8.asc: [SKIPPED] Skipping binary file: 9FB5E737DC25B29D8EEC469142F3F1862E3CC4B8.asc
