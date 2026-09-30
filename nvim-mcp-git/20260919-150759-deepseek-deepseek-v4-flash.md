---
package: nvim-mcp-git
pkgver: r323.986be68
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 10408
completion_tokens: 7058
total_tokens: 17466
cost: 0.00104374144
execution_time: 200.95
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-19T15:07:58Z
file_verdicts:
  - file: nvim-mcp-git.install
    status: safe
    summary: Informational install script; no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR .SRCINFO for VCS package, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard Rust VCS PKGBUILD with no malicious elements.
---

Materializing nvim-mcp-git from local mirror...
Materialized nvim-mcp-git
Analyzing nvim-mcp-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
All top-level statements in this PKGBUILD are plain variable and array assignments (pkgname, pkgver, depends, source, sha256sums, etc.) plus function definitions. No command substitutions, `eval`, network downloads, or file mutations occur at the top level, so sourcing the file via `makepkg --printsrcinfo` only binds variables and defines functions before printing metadata.

All command substitutions (`git rev-list`, `git rev-parse`) and `cargo fetch`/`cargo build` calls are confined inside `pkgver()`, `prepare()`, `build()`, `check()`, and `package()` functions, which are not executed during `--printsrcinfo`. The `source` entry points to the package's own declared upstream GitHub repository (`https://github.com/linw1995/${_pkgname}`), and the `SKIP` checksum is a hygiene note for the full audit only — it does not affect this metadata-printing step.
</details>
<evidence>
</evidence>
<summary>All top-level code is benign metadata; no malicious code executes during printsrcinfo.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- All top-level code is benign metadata; no malicious code executes during printsrcinfo.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, nvim-mcp-git.install...
LLM auditresponse for nvim-mcp-git.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This file contains only a `post_install()` function that prints an informational message to the user. It uses a heredoc with a quoted delimiter (`'EOF'`), preventing any unintended shell expansion. No dangerous commands (curl, wget, eval, base64, etc.) or file operations are present. The content is entirely documentation about how to use the package after installation. There is no evidence of malicious behavior.
</details>
<evidence>
</evidence>
<summary>Informational install script; no security issues.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed nvim-mcp-git.install. Status: SAFE -- Informational install script; no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard AUR `.SRCINFO` metadata file for a VCS package (`nvim-mcp-git`). It declares the upstream source as a git repository from the project's own GitHub page (`github.com/linw1995/nvim-mcp.git`), using the `main` branch—a normal and expected practice for `-git` packages. Dependencies (`cargo`, `gcc-libs`, `glibc`, `neovim`) are consistent with a Rust-based Neovim plugin. The `sha256sums = SKIP` entry is standard for VCS sources and is not a security concern. No executable code, suspicious network destinations, obfuscation, or dangerous commands are present in this file. The `.SRCINFO` itself is purely declarative and contains no runtime behavior. However, the package references an install script (`nvim-mcp-git.install`) that would need independent review; that file is not included here.
</details>
<evidence></evidence>
<summary>Standard AUR .SRCINFO for VCS package, no malicious content.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR .SRCINFO for VCS package, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a VCS (git) package. It clones the upstream repository from the official GitHub source (`https://github.com/linw1995/nvim-mcp`), fetches dependencies with `cargo fetch --locked`, and builds with `cargo build --frozen --release`. All operations are confined to the expected build environment and install files under `$pkgdir`. There are no unexpected network requests, obfuscated commands, dangerous operations (eval, curl, wget, etc.), or attempts to access system files outside the package scope. The SKIP checksum is standard for VCS sources and not a security concern.

The package correctly uses a mutable branch (`main`) which is typical for `-git` packages; there is no additional `git pull` or `git fetch` in the `prepare()` or `build()` functions that would bypass the source clone. The build is frozen (`--frozen`) ensuring reproducible dependency resolution. No evidence of supply-chain injection or malicious intent is present.
</details>
<evidence>
</evidence>
<summary>Standard Rust VCS PKGBUILD with no malicious elements.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard Rust VCS PKGBUILD with no malicious elements.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,408
  Completion Tokens: 7,058
  Total Tokens: 17,466
  Total Cost: $0.001044
  Execution Time: 200.95 seconds

Final Status: SAFE


No issues found.
