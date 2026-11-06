---
package: neovim-nightly-bin
pkgver: 0.13.0+dev+2028+gaef67ce76f
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 17990
completion_tokens: 6207
total_tokens: 24197
cost: 0.002766764
execution_time: 54.64
files_reviewed: 6
files_skipped: 0
maintainer_files: 6
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 1
injection_attempts: 0
date: 2026-11-06T04:13:31Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore for AUR package; no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; no malicious behavior found. SKIP checksum noted as hygiene concern only.
  - file: neovim-nightly-bin-sysinit.vim
    status: safe
    summary: Trivial Neovim initialization file sourcing standard Arch Linux config; no malicious behavior found.
  - file: neovim-nightly-bin-archlinux.vim
    status: safe
    summary: Single benign Vim runtimepath addition; no malicious behavior detected.
  - file: neovim-nightly-bin.install
    status: safe
    summary: Standard install script with informational echo messages only; no security concerns.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD, no supply-chain indicators.
---

Materializing neovim-nightly-bin from local mirror...
Materialized neovim-nightly-bin
Analyzing neovim-nightly-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The top-level (global) scope of this PKGBUILD contains only standard variable definitions, array assignments, and a `date` command substitution to set a build timestamp. No network requests, code execution, or obfuscated constructs are present at this level. The network operations (`curl`, `sha256sum`, etc.) are confined to the `prepare()` function, which is not executed during `makepkg --printsrcinfo`. Therefore sourcing this PKGBUILD for metadata extraction is safe.
</details>
<evidence>
</evidence>
<summary>No malicious top-level code; printsrcinfo is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious top-level code; printsrcinfo is safe.
Note: 1 remote source(s) have no checksum (sha256sums=SKIP), so the bytes are not verifiable: neovim-20261106.tar.gz::https://github.com/neovim/neovim/releases/download/nightly/nvim-linux-x86_64.tar.gz
Reviewing the 6 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/6] Reviewing .SRCINFO...
[0/6] Reviewing .SRCINFO, .gitignore...
[0/6] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file for an AUR package repository. It ignores all files except those necessary for the package: PKGBUILD, install scripts, .SRCINFO, and some configuration files for Neovim. There is no executable code, no network requests, no obfuscation, and no file operations beyond the scope of version control configuration. This file poses no security risk.
</details>
<evidence></evidence>
<summary>Standard .gitignore for AUR package; no security concerns.</summary>
</security_assessment>

[0/6] Reviewing .SRCINFO, .gitignore, PKGBUILD, neovim-nightly-bin-archlinux.vim...
[1/6] Reviewing .SRCINFO, PKGBUILD, neovim-nightly-bin-archlinux.vim...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore for AUR package; no security concerns.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file describes a standard AUR package for the official Neovim nightly prebuilt binary. It declares the source tarball from the project's official GitHub releases URL (`github.com/neovim/neovim/releases/download/nightly/...`), along with two small local Vim script files. The package metadata, dependencies, conflicts, and install file reference are all consistent with normal packaging practice.

The tarball checksum is set to `SKIP`, which means the upstream binary is not cryptographically pinned. This is a supply-chain hygiene concern but is explicitly considered standard AUR practice and not malicious by itself. No network exfiltration, obfuscated commands, unexpected file operations, or execution of attacker-controlled code is present. The two local files also have fixed b2sums, providing integrity checking for the package-maintained components.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata; no malicious behavior found. SKIP checksum noted as hygiene concern only.
</summary>
</security_assessment>

[1/6] Reviewing .SRCINFO, PKGBUILD, neovim-nightly-bin-archlinux.vim, neovim-nightly-bin-sysinit.vim...
[2/6] Reviewing PKGBUILD, neovim-nightly-bin-archlinux.vim, neovim-nightly-bin-sysinit.vim...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; no malicious behavior found. SKIP checksum noted as hygiene concern only.
LLM auditresponse for neovim-nightly-bin-sysinit.vim:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a trivial Vim/Neovim initialization snippet. It contains only a comment and a `source` command that loads `/usr/share/nvim/archlinux.vim`. This path is a system-level Arch Linux package file that typically provides distribution-specific Vim/Neovim defaults, which is a standard and expected location for pacman-installed global configuration. There is no network access, no encoding/obfuscation, no file modifications outside the application configuration scope, and no indication of injected malicious behavior. The `source` command references a local system file owned by the distribution package, not an attacker-controlled remote resource.

The only minor consideration is that the file does not guard against a missing or tampered system file, but this is not a supply-chain indicator and is consistent with ordinary packaging of default Neovim runtime configuration.
</details>
<evidence>
</evidence>
<summary>
Trivial Neovim initialization file sourcing standard Arch Linux config; no malicious behavior found.</summary>
</security_assessment>

[2/6] Reviewing PKGBUILD, neovim-nightly-bin-archlinux.vim, neovim-nightly-bin-sysinit.vim, neovim-nightly-bin.install...
[3/6] Reviewing PKGBUILD, neovim-nightly-bin-archlinux.vim, neovim-nightly-bin.install...
+ Reviewed neovim-nightly-bin-sysinit.vim. Status: SAFE -- Trivial Neovim initialization file sourcing standard Arch Linux config; no malicious behavior found.
LLM auditresponse for neovim-nightly-bin-archlinux.vim:
<security_assessment>
<decision>SAFE</decision>
<details>
This file contains a single benign Vim configuration line: `set runtimepath+=/usr/share/vim/vimfiles`. It simply adds the system Vim plugin directory to Vim's runtime search path, which is a standard packaging practice for Arch Linux packages that ship Vim integration files. There are no network requests, no encoded or obfuscated commands, no file modifications, and no execution of downloaded content. The line is consistent with ordinary packaging and does not indicate malicious behavior.
</details>
<evidence>
</evidence>
<summary>
Single benign Vim runtimepath addition; no malicious behavior detected.</summary>
</security_assessment>

[4/6] Reviewing PKGBUILD, neovim-nightly-bin.install...
+ Reviewed neovim-nightly-bin-archlinux.vim. Status: SAFE -- Single benign Vim runtimepath addition; no malicious behavior detected.
LLM auditresponse for neovim-nightly-bin.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Arch Linux package install script for `neovim-nightly-bin`. It contains only `post_install()` and `post_upgrade()` functions that print informational messages to the user. There are no network operations, file modifications, command executions, obfuscated code, or any behavior that deviates from normal packaging practices. The script references the upstream project's official documentation URLs purely as user-facing text. No security issues found.
</details>
<evidence>
</evidence>
<summary>
Standard install script with informational echo messages only; no security concerns.
</summary>
</security_assessment>

[5/6] Reviewing PKGBUILD...
+ Reviewed neovim-nightly-bin.install. Status: SAFE -- Standard install script with informational echo messages only; no security concerns.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD defines the standard packaging workflow for the `neovim-nightly-bin` AUR package. It downloads a prebuilt nightly binary from Neovim's official GitHub releases (`github.com/neovim/neovim`), optionally verifies its integrity, and installs it with the necessary Arch-specific configuration files (sysinit.vim, archlinux.vim).

The `b2sums` array for the main tarball is set to `SKIP`, which is standard for nightly/VCS-style packages and explicitly permitted by the auditing guidelines; it does not indicate malice.

The `prepare()` function contains an optional check (gated by the `$CHECKSUM` variable) that calls `curl` to fetch the published SHA256 digest from Neovim's own GitHub API release page. This is a verification mechanism, not an exfiltration or code execution channel. It fetches only a JSON object, extracts a hash string, and compares it to the local checksum. If the check succeeds, the build continues; if it fails, it exits. This block enhances supply-chain hygiene rather than undermining it.

The source points to the project's own GitHub releases, no external or unrelated hosts are contacted, and no encoded, obfuscated, or dynamically executed code is present. The `package()` function performs standard binary and config file installation into the package directory.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD, no supply-chain indicators.</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD, no supply-chain indicators.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 17,990
  Completion Tokens: 6,207
  Total Tokens: 24,197
  Total Cost: $0.002767
  Execution Time: 54.64 seconds

Final Status: SAFE


No issues found.
