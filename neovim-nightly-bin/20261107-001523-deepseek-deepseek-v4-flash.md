---
package: neovim-nightly-bin
pkgver: 0.13.0+dev+2040+g67854d5c5b
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 17756
completion_tokens: 2707
total_tokens: 20463
cost: 0.002108470
execution_time: 19.28
files_reviewed: 6
files_skipped: 0
maintainer_files: 6
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 1
injection_attempts: 0
date: 2026-11-07T00:15:23Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard AUR .gitignore; no malicious or dangerous behavior found.
  - file: neovim-nightly-bin-archlinux.vim
    status: safe
    summary: Simple runtimepath addition; no malicious behavior.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD; no supply-chain indicators found.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata for a nightly Neovim binary; no malicious behavior found.
  - file: neovim-nightly-bin-sysinit.vim
    status: safe
    summary: Standard Arch Linux vim configuration file, no malicious behavior.
  - file: neovim-nightly-bin.install
    status: safe
    summary: Pure informational messages, no malicious code.
---

Materializing neovim-nightly-bin from local mirror...
Materialized neovim-nightly-bin
Analyzing neovim-nightly-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global scope consists only of variable assignments and function definitions. The only command substitution present is `$(date -u +%Y%m%d)`, which runs the harmless `date` command. There are no network requests, code execution, or other dangerous operations at the top level. The `pkgver()`, `prepare()`, `check()`, and `package()` functions are defined but are not executed when sourcing the PKGBUILD for `makepkg --printsrcinfo`. Therefore, running this command is safe.
</details>
<evidence></evidence>
<summary>Safe – no dangerous top-level code</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe – no dangerous top-level code
Note: 1 remote source(s) have no checksum (sha256sums=SKIP), so the bytes are not verifiable: neovim-20261107.tar.gz::https://github.com/neovim/neovim/releases/download/nightly/nvim-linux-x86_64.tar.gz
Reviewing the 6 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/6] Reviewing .SRCINFO...
[0/6] Reviewing .SRCINFO, .gitignore...
[0/6] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` for an AUR package repository. It ignores all files except the expected packaging files: `PKGBUILD`, `*.install`, `.SRCINFO`, and two Vim plugin files. It contains no commands, no network access, no obfuscation, and no file-modification logic. There is no malicious or dangerous behavior; it is consistent with ordinary AUR repository hygiene.
</details>
<evidence>
</evidence>
<summary>
Standard AUR .gitignore; no malicious or dangerous behavior found.</summary>
</security_assessment>

[0/6] Reviewing .SRCINFO, .gitignore, PKGBUILD, neovim-nightly-bin-archlinux.vim...
[1/6] Reviewing .SRCINFO, PKGBUILD, neovim-nightly-bin-archlinux.vim...
+ Reviewed .gitignore. Status: SAFE -- Standard AUR .gitignore; no malicious or dangerous behavior found.
LLM auditresponse for neovim-nightly-bin-archlinux.vim:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a trivial Vim script snippet that adds `/usr/share/vim/vimfiles` to the Vim runtimepath. It contains no network access, no file modifications, no encoded or obfuscated content, and no system command execution. The operation is a standard packaging integration step, allowing Vim to locate Neovim's shared files. No security concerns are present.
</details>
<evidence></evidence>
<summary>Simple runtimepath addition; no malicious behavior.</summary>
</security_assessment>

[1/6] Reviewing .SRCINFO, PKGBUILD, neovim-nightly-bin-archlinux.vim, neovim-nightly-bin-sysinit.vim...
[2/6] Reviewing .SRCINFO, PKGBUILD, neovim-nightly-bin-sysinit.vim...
+ Reviewed neovim-nightly-bin-archlinux.vim. Status: SAFE -- Simple runtimepath addition; no malicious behavior.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD for `neovim-nightly-bin` follows standard AUR packaging practices for a nightly binary release. The source tarball is fetched from the official Neovim GitHub releases (`github.com/neovim/neovim`), which is the project&#x27;s own upstream. The checksum for the tarball is set to `SKIP`, which is expected for nightly/pinned-binary packages and is not a sign of malice. The `prepare()` function includes an **optional** integrity check (triggered only if the `CHECKSUM` environment variable is set) that compares the local SHA256 against the one published by GitHub via its API – this is a security-enhancing feature, not a threat. All other operations (checking the binary, installing files, creating symlinks) are routine packaging steps. There is no obfuscated code, no unexpected network destinations, no execution of untrusted fetched content, and no exfiltration or system tampering. The file is safe.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD; no supply-chain indicators found.</summary>
</security_assessment>

[2/6] Reviewing .SRCINFO, PKGBUILD, neovim-nightly-bin-sysinit.vim, neovim-nightly-bin.install...
[3/6] Reviewing .SRCINFO, neovim-nightly-bin-sysinit.vim, neovim-nightly-bin.install...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD; no supply-chain indicators found.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file is standard AUR package metadata for `neovim-nightly-bin`. It declares the package source from the official Neovim GitHub releases nightly tarball, along with two local `.vim` configuration files that have pinned b2sums. The tarball checksum is `SKIP`, which is a reproducibility/hygiene concern for a prebuilt binary, but it is not evidence of malicious behavior: the source host is the project's own upstream release page.

No suspicious network endpoints, encoded commands, file manipulation, or build-time injection appear in this file. The metadata describes normal dependencies, optional dependencies, provides/conflicts, and an install script reference. Nothing here deviates from ordinary AUR packaging practices or indicates a supply-chain attack.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata for a nightly Neovim binary; no malicious behavior found.
</summary>
</security_assessment>

[4/6] Reviewing neovim-nightly-bin-sysinit.vim, neovim-nightly-bin.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata for a nightly Neovim binary; no malicious behavior found.
LLM auditresponse for neovim-nightly-bin-sysinit.vim:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a Vim script that sources `/usr/share/nvim/archlinux.vim`, a standard configuration file provided by the Arch Linux package manager. The comment explicitly explains its purpose: to enable globally installed Arch Linux vim packages within Neovim. There is no obfuscation, network access, dangerous commands, or any deviation from normal packaging practices. The path is a standard system location, and the operation is benign.
</details>
<evidence></evidence>
<summary>Standard Arch Linux vim configuration file, no malicious behavior.</summary>
</security_assessment>

[5/6] Reviewing neovim-nightly-bin.install...
+ Reviewed neovim-nightly-bin-sysinit.vim. Status: SAFE -- Standard Arch Linux vim configuration file, no malicious behavior.
LLM auditresponse for neovim-nightly-bin.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `neovim-nightly-bin.install` contains only two bash functions (`post_install()` and `post_upgrade()`) that print informational messages to the user. There are no network requests, file operations, system modifications, obfuscated code, or any commands beyond `echo`. This is a standard package install script with no security concerns.
</details>
<evidence>
</evidence>
<summary>Pure informational messages, no malicious code.</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed neovim-nightly-bin.install. Status: SAFE -- Pure informational messages, no malicious code.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 17,756
  Completion Tokens: 2,707
  Total Tokens: 20,463
  Total Cost: $0.002108
  Execution Time: 19.28 seconds

Final Status: SAFE


No issues found.
