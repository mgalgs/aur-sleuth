---
package: vesktop-keybindings-git
pkgver: r383.9716ff4
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 12533
completion_tokens: 4224
total_tokens: 16757
cost: 0.0009840089
execution_time: 141.08
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-27T11:21:16Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore for AUR package.
  - file: Makefile
    status: safe
    summary: Standard AUR maintainer helper wrapping makepkg and git clean; no malicious behavior found.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR VCS package; no malicious behavior.
  - file: .SRCINFO
    status: safe
    summary: Standard -git package metadata; no malicious behavior found.
---

Materializing vesktop-keybindings-git from local mirror...
Materialized vesktop-keybindings-git
Analyzing vesktop-keybindings-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The global/top-level scope of this PKGBUILD contains only standard variable definitions (pkgname, pkgver, pkgrel, arch, etc.) and function definitions (pkgver, build, package). There are no command substitutions, backtick executions, or other active code that would run when the PKGBUILD is sourced by `makepkg --printsrcinfo`. The source array uses standard git+https and AUR plain file URLs—these are just string assignments and do not trigger downloads during sourcing. The `sha256sums` array includes `SKIP` for the VCS source, which is expected for -git packages and does not cause any execution. Therefore, running `makepkg --printsrcinfo` on this file is safe.
</details>
<evidence></evidence>
<summary>No executable top-level code; safe to source.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No executable top-level code; safe to source.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .gitignore...
[0/4] Reviewing .SRCINFO, .gitignore, Makefile...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file used in AUR git repositories to track only the essential packaging files (PKGBUILD, .SRCINFO, .gitignore, and Makefile) while ignoring everything else. No commands, network operations, obfuscation, or file manipulations are present. It poses no security risk.
</details>
<evidence></evidence>
<summary>Standard .gitignore for AUR package.</summary>
</security_assessment>

[1/4] Reviewing .SRCINFO, Makefile...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore for AUR package.
[1/4] Reviewing .SRCINFO, Makefile, PKGBUILD...
LLM auditresponse for Makefile:
<security_assessment>
<decision>SAFE</decision>
<details>
This Makefile is a standard AUR maintainer convenience helper. It wraps routine packaging operations: `makepkg -s` to resolve dependencies and build, `makepkg --printsrcinfo` to regenerate `.SRCINFO`, `git clean -Xdf` to remove ignored build artifacts, and `makepkg -si` to build and install the package locally. None of these commands fetch or execute remote code, modify unrelated system files, exfiltrate data, or use obfuscation. The `git clean -Xdf` target only removes ignored files from the repository working tree, which is consistent with normal cleanup during package maintenance. This is benign AUR packaging workflow.
</details>
<evidence>
</evidence>
<summary>
Standard AUR maintainer helper wrapping makepkg and git clean; no malicious behavior found.</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed Makefile. Status: SAFE -- Standard AUR maintainer helper wrapping makepkg and git clean; no malicious behavior found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging patterns for a VCS (`-git`) package. The source array links to the upstream GitHub repository and a couple of static configuration files fetched from the official AUR (`aur.archlinux.org`). Checksums are properly provided for the static files; the `SKIP` for the git source is expected and standard practice for VCS packages.

In the `build()` function, the maintainer checks out the `global-shortcuts` branch before running `pnpm`, then installs the `uiohook-napi` npm package at build time. While this branch reference is mutable and not pinned to a specific commit, this is normal for a `-git` package tracking a development branch. The `pnpm add uiohook-napi --allow-build=uiohook-napi` fetches a well-known npm package (used for native keyboard hooks) and allows its build scripts—this is consistent with the package’s stated purpose of providing custom keybindings. No unexpected network destinations, obfuscated code, or system modifications outside the package’s scope were found.
</details>
<evidence></evidence>
<summary>Standard AUR VCS package; no malicious behavior.</summary>
</security_assessment>

[3/4] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR VCS package; no malicious behavior.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file is pure packaging metadata: it declares the package name, description, version, dependencies, and three sources with pinned checksums. No executable code, hooks, or install logic is present in this file; the actual build logic lives in the PKGBUILD, which was not supplied.

The sources are consistent with standard AUR practice: a `-git` VCS source from the package's declared upstream fork (https://github.com/Covkie/Vesktop.git, with the SKIP checksum that is normal for VCS sources), plus a `.desktop` file and a shell wrapper fetched from the official AUR cgit (aur.archlinux.org) with pinned SHA-256 checksums. All network destinations are the package's own upstream or official AUR infrastructure. Dependencies (alsa-lib, gtk3, nss, git, pnpm, npm) and the provides/conflicts of `vesktop` are normal for an Electron/Discord app build.

No obfuscation, suspicious URLs, encoded commands, or unexpected file operations are present. As with any `-git` fork package, the VCS source is unpinned, so trust in the fork maintainer is implied at build time — a supply-chain consideration worth noting, but not evidence of malice.
</details>
<evidence>
</evidence>
<summary>
Standard -git package metadata; no malicious behavior found.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard -git package metadata; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,533
  Completion Tokens: 4,224
  Total Tokens: 16,757
  Total Cost: $0.000984
  Execution Time: 141.08 seconds

Final Status: SAFE


No issues found.
