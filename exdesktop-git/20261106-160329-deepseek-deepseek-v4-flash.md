---
package: exdesktop-git
pkgver: 7.3.3.8.r24.gb1023d0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 14357
completion_tokens: 1828
total_tokens: 16185
cost: 0.001639183
execution_time: 28.58
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-06T16:03:29Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Benign .gitignore for AUR package repository.
  - file: .SRCINFO
    status: safe
    summary: Declarative AUR metadata; no executable content or malice.
  - file: PKGBUILD
    status: safe
    summary: PKGBUILD standard; no malicious code found.
---

Materializing exdesktop-git from local mirror...
Materialized exdesktop-git
Analyzing exdesktop-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources the PKGBUILD and executes only its top-level scope. The top-level content here consists of variable assignments, `export` statements for debug compiler flags, parameter defaults via `: ${_branch:=main}` and `: ${_commit=}`, the `source` array definition, and `sha256sums`. There are no top-level command substitutions, no calls to `eval`, `curl`, `wget`, or other executable operations, and no code that downloads or exfiltrates data during sourcing.

The functions `prepare()`, `pkgver()`, `build()`, and `package()` contain the actual package operations, but they are not executed by `makepkg --printsrcinfo`. Even though `pkgver()` contains `git describe`, that only runs when the full PKGBUILD workflow invokes it, not during this metadata-printing step. The `source` array references upstream git repositories and a patch from github.com, which is normal for an AUR VCS package; sources are not fetched or verified during this command. Missing/SKIP checksums are also not relevant to this gate.
</details>
<evidence>
</evidence>
<summary>
Top-level PKGBUILD is benign; no dangerous commands execute during printsrcinfo.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD is benign; no dangerous commands execute during printsrcinfo.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, .gitignore...
[0/3] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file for an AUR package repository. It ignores all files by default and then whitelists only the essential packaging files (`PKGBUILD`, `.SRCINFO`, and itself). No dangerous commands, network requests, or obfuscation are present. This file is purely a configuration for version control and poses no security risk.
</details>
<evidence></evidence>
<summary>Benign .gitignore for AUR package repository.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Benign .gitignore for AUR package repository.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR `.SRCINFO` metadata file for the `exdesktop-git` package. It declares sources from the project's own GitHub repository, a TDLib commit, a wallet-engine commit, and a patch from the `desktop-app/patches` repository. All VCS sources use `SKIP` checksums, which is normal and expected for VCS packages. The fourth source (a patch) has a pinned SHA256 checksum, providing integrity for that download. There are no commands, scripts, or encoded payloads in this file—it is purely declarative metadata. No evidence of supply-chain attacks or malicious behavior exists.
</details>
<evidence></evidence>
<summary>Declarative AUR metadata; no executable content or malice.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Declarative AUR metadata; no executable content or malice.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a VCS package. All external sources point to the project's legitimate upstream repositories (GitHub) or its dependencies (tdlib, wallet-engine, desktop-app/patches). Source checksums are appropriately set to `SKIP` for git sources and a valid SHA256 is provided for the pinned patch file.  

Build steps compile the wallet-engine, tde2e library, and the main application using `cmake` and `just` – no unexpected executables, obfuscation, or data-exfiltrating commands appear. The hardcoded Telegram API key (`TDESKTOP_API_ID=611335` and `TDESKTOP_API_HASH=...`) matches the one used in the official Arch Linux `telegram-desktop` package and in Telegram's own snap build, so it is not malicious. No `curl|bash`, `wget`, suspicious network requests, or modifications outside the package installation paths are present.  

The `prepare()` phase only patches wallet-engine, runs `cargo fetch`, and initializes submodules from the declared sources. The `package()` phase installs files into `$pkgdir` and copies Python plugin scripts – all within expected application scope. There is no evidence of injected malicious behavior.
</details>
<evidence></evidence>
<summary>PKGBUILD standard; no malicious code found.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- PKGBUILD standard; no malicious code found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 14,357
  Completion Tokens: 1,828
  Total Tokens: 16,185
  Total Cost: $0.001639
  Execution Time: 28.58 seconds

Final Status: SAFE


No issues found.
