---
package: at1ass-shell-plugins-git
pkgbase: at1ass-shell-git
pkgver: 0.1.0.r2.g612d52e2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 13219
completion_tokens: 6153
total_tokens: 19372
cost: 0.002322775
execution_time: 80.29
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-29T03:15:02Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Metadata-only AUR file; sources and dependencies are normal, no malicious behavior.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR git package; no malicious behavior detected.
---

at1ass-shell-plugins-git is built from at1ass-shell-git
Materializing at1ass-shell-plugins-git from local mirror...
Materialized at1ass-shell-plugins-git
Analyzing at1ass-shell-plugins-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only variable declarations and function definitions at global scope. No commands are executed during sourcing; all operations are inside functions (pkgver, prepare, build, package_*), which are not evaluated by `makepkg --printsrcinfo`. There is no top-level command substitution, arithmetic expansion, or invocation of external programs. Therefore, running `makepkg --printsrcinfo` on this file does not execute any untrusted code.
</details>
<evidence></evidence>
<summary>Global scope contains no executable commands.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Global scope contains no executable commands.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a .SRCINFO metadata file for an AUR VCS package. It only declares package metadata, sources, checksums, dependencies, and split-package information. It contains no executable code, no download-and-execute logic, no build commands, and no install hooks.

The sources point to the project's own GitHub repository and to a pinned commit of material-color-utilities, which is consistent with the package's stated purpose. The `sha256sums = SKIP` entries are standard and required for VCS sources, and the un-pinned `shell::git+...` source is normal for a `-git` package. No obfuscation, exfiltration, unexpected remote host, or injected code is present.
</details>
<evidence>
</evidence>
<summary>
Metadata-only AUR file; sources and dependencies are normal, no malicious behavior.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Metadata-only AUR file; sources and dependencies are normal, no malicious behavior.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows the standard AUR VCS packaging pattern. It fetches the upstream `shell` repository from the project's own GitHub and a pinned `material-color-utilities` dependency from `material-foundation`, then builds with CMake and installs files into `$pkgdir`. The `prepare()` steps only initialize the submodule, redirect it to the already-fetched local `$srcdir/mcu` source, and apply a project patch. There is no `git pull`, `fetch`/`reset --hard`, `eval`, `base64`, `curl` piped to a shell, or other code-download-and-execute behavior.

The `sha256sums` are `SKIP` and the primary source is unpinned, but these are normal and expected for `-git` packages; they are reproducibility/hygiene concerns, not evidence of malice. No obfuscated commands, unexpected network destinations, credential access, or modifications outside the package's own installation scope were found. The use of upstream helpers such as `install-runtime.py` and `cmake --install` is consistent with ordinary packaging of this project.
</details>
<evidence></evidence>
<summary>Standard AUR git package; no malicious behavior detected.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR git package; no malicious behavior detected.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,219
  Completion Tokens: 6,153
  Total Tokens: 19,372
  Total Cost: $0.002323
  Execution Time: 80.29 seconds

Final Status: SAFE


No issues found.
