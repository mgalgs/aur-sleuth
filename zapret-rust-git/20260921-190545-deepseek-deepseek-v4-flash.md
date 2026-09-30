---
package: zapret-rust-git
pkgver: 2.1.0.r4.g76540dc
pkgrel: 4
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 10071
completion_tokens: 7498
total_tokens: 17569
cost: 0.00138971448
execution_time: 289.12
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-21T19:05:44Z
file_verdicts:
  - file: zapret-rust.install
    status: safe
    summary: Routine post-removal message, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD for VCS Rust package, no malice detected.
  - file: .SRCINFO
    status: safe
    summary: Metadata-only VCS packaging file; standard -git practices, no malicious behavior found.
---

Materializing zapret-rust-git from local mirror...
Materialized zapret-rust-git
Analyzing zapret-rust-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
During `makepkg --printsrcinfo`, only the PKGBUILD top-level scope is sourced; function bodies (`pkgver()`, `prepare()`, `build()`, `package()`) are defined but not executed. The file's top level consists solely of plain variable assignments (`pkgname`, `pkgver`, `depends`, `source`, `sha256sums`, etc.) and those function declarations. No command substitution, `eval`, `base64`, `curl`/`wget` piping, or other executable statements appear at global scope.

The `source` array references the package's own upstream GitHub repository via `git+https`, which is a standard VCS packaging pattern and involves no network activity during this metadata step. The `SKIP` checksum and unpinned git ref are reproducibility/hygiene concerns for the later full audit, not grounds to block `--printsrcinfo`. No data exfiltration or code execution risk exists at source time.
</details>
<evidence></evidence>
<summary>Top-level scope only declares variables and functions; nothing executes during --printsrcinfo.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level scope only declares variables and functions; nothing executes during --printsrcinfo.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, zapret-rust.install...
LLM auditresponse for zapret-rust.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Arch Linux `.install` script that only contains a `post_remove()` function which prints a message to the user about persistent data remaining in `/var/lib/zapret-rust`. There is no malicious code: no network requests, file operations, obfuscation, or execution of external commands. It is a routine informational message and presents no supply-chain security concern.
</details>
<evidence></evidence>
<summary>Routine post-removal message, no security issues.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed zapret-rust.install. Status: SAFE -- Routine post-removal message, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard Arch packaging practices for a Rust VCS package. It clones the upstream git repository, uses `cargo fetch --locked` and `cargo build --frozen` (which prevents network access during build after the initial fetch), and installs the binary plus a wrapper script. There are no suspicious network requests, no obfuscated code, no unexpected file operations, and no commands like `eval`, `curl`, `wget`, or `base64`. The `source=()` uses an unpinned git branch (normal for `-git` packages), and the checksum is `SKIP` (expected for VCS sources). The referenced `.install` file is not provided here but is common in AUR packages; the PKGBUILD itself shows no signs of injected malicious code.
</details>
<evidence>
</evidence>
<summary>Standard AUR PKGBUILD for VCS Rust package, no malice detected.</summary>
</security_assessment>

[2/3] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD for VCS Rust package, no malice detected.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file is plain metadata for a `-git` AUR package. It declares a VCS source pointing to the package's own declared upstream repository over HTTPS git (`https://github.com/Sergeydigl3/zapret-discord-youtube-rust.git`), which matches the `url` field. `sha256sums = SKIP` is required for VCS sources and is standard practice, not evidence of malice. The dependency set (`cargo`, `git`, `glibc`, `gcc-libs`, `nftables`, `polkit`) is consistent with a Rust DPI-bypass TUI that manages nftables rules and requires privilege escalation.

There is no obfuscation, no encoded commands, no exfiltration, no `curl|bash`, and no unexpected file operations anywhere in the file. The only mild hygiene note is that the source is a personal fork tracking an unpinned branch rather than a pinned commit, which is normal for `-git` packages but does mean build-time content is not reproducibly pinned. The referenced `zapret-rust.install` file is not present to audit, but nothing in this metadata indicates behavior outside the package's stated scope. No genuinely malicious behavior is present.
</details>
<evidence></evidence>
<summary>Metadata-only VCS packaging file; standard -git practices, no malicious behavior found.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Metadata-only VCS packaging file; standard -git practices, no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,071
  Completion Tokens: 7,498
  Total Tokens: 17,569
  Total Cost: $0.001390
  Execution Time: 289.12 seconds

Final Status: SAFE


No issues found.
