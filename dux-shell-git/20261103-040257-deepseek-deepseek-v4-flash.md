---
package: dux-shell-git
pkgver: 2.0.0.r181.g387750b
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 11654
completion_tokens: 2543
total_tokens: 14197
cost: 0.001523340
execution_time: 39.09
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-03T04:02:56Z
file_verdicts:
  - file: dux-shell-git.install
    status: safe
    summary: Install script contains only informational echo messages; no malicious behavior found.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR VCS package metadata; no malicious behavior present.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR VCS package; no malicious code or suspicious behavior found.
---

Materializing dux-shell-git from local mirror...
Materialized dux-shell-git
Analyzing dux-shell-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The global/top-level scope of this PKGBUILD contains only standard, static variable and array assignments, along with comments. No command substitutions, arithmetic evaluations, or function calls are present in the global scope. All of the code with potential side effects (git operations, build commands, file installations) is contained within `pkgver()`, `prepare()`, `build()`, and `package()` functions, which are **not** executed by `makepkg --printsrcinfo`. Because none of that code runs at sourcing time, executing this PKGBUILD for metadata extraction presents no risk of downloading, executing, or exfiltrating data.
</details>
<evidence>
</evidence>
<summary>No top-level code executed safely.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level code executed safely.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, dux-shell-git.install...
LLM auditresponse for dux-shell-git.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Arch Linux package install script (`.install`) that only prints informational messages during `post_upgrade()` and `post_install()`. It performs no file operations, executes no external commands, makes no network requests, and references no untrusted or encoded content. The script simply informs the user that the Quickshell UI is embedded in the `dms` binary and how to run a custom copy.

No malicious or suspicious behavior is present. This file is consistent with ordinary packaging practices and contains no evidence of a supply-chain attack, data exfiltration, or code execution beyond benign shell `echo` commands.
</details>
<evidence>
</evidence>
<summary>
Install script contains only informational echo messages; no malicious behavior found.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed dux-shell-git.install. Status: SAFE -- Install script contains only informational echo messages; no malicious behavior found.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file contains only standard Arch package metadata for a VCS package named dux-shell-git. The source is the project's own upstream Git repository (`git+https://github.com/duxlabs-dev/dux-shell.git`), and the `sha256sums = SKIP` entry is normal and required for VCS sources. There are no suspicious commands, encoded payloads, unusual network endpoints, file operations, or system modifications present. The metadata simply declares dependencies, optional dependencies, provides/conflicts, and the package name. This is consistent with ordinary AUR packaging practices.
</details>
<evidence>
</evidence>
<summary>
Standard AUR VCS package metadata; no malicious behavior present.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR VCS package metadata; no malicious behavior present.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Arch VCS packaging practice. It clones the project's own upstream GitHub repository (`git+https://github.com/duxlabs-dev/dux-shell.git`), uses a normal `pkgver()` with `git describe`, runs the upstream build via `make` and `go build`, and installs the resulting binary, docs, desktop files, and systemd user unit into `$pkgdir`. The `prepare()` stage only initializes the repository's own submodules, and no unexpected network hosts, download-and-execute patterns, obfuscated commands, or writes outside the package directory are present.

The `sha256sums` entry is `SKIP`, and the source tracks a Git commit/branch rather than a pinned archive; these are normal for a `-git` package and are not evidence of malice. Running the freshly built `core/$_binname` to generate shell completions during `package()` is also a routine packaging step. No genuinely malicious or injected behavior was found.
</details>
<evidence></evidence>
<summary>Standard AUR VCS package; no malicious code or suspicious behavior found.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR VCS package; no malicious code or suspicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 11,654
  Completion Tokens: 2,543
  Total Tokens: 14,197
  Total Cost: $0.001523
  Execution Time: 39.09 seconds

Final Status: SAFE


No issues found.
