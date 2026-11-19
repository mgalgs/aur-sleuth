---
package: at1ass-shell-plugins-git
pkgbase: at1ass-shell-git
pkgver: r297.91abb810
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 12942
completion_tokens: 2023
total_tokens: 14965
cost: 0.001545908
execution_time: 46.29
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-28T23:06:14Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; legitimate upstream sources; no malicious behavior found.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR git package; no malicious or suspicious behavior found.
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
The PKGBUILD's global/top-level scope consists only of static variable assignments (pkgbase, pkgname, etc.) and function definitions (pkgver, prepare, build, package_*). There are no command substitutions, evals, or other executable statements that would run when the file is sourced for `makepkg --printsrcinfo`. The `sha256sums` array contains only 'SKIP' strings, which are harmless. No dangerous code exists at the top level.
</details>
<evidence></evidence>
<summary>No dangerous code at top-level scope</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous code at top-level scope
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file is standard AUR package metadata for a Quickshell-based desktop shell. It declares two VCS sources: the package's own upstream repository (`https://github.com/At1ass/shell.git`) and a pinned commit of the official material-color-utilities repository. Both destinations are legitimate and expected for this package's stated purpose. The `sha256sums = SKIP` entries are normal for VCS sources and are not a security indicator by themselves.

The metadata contains only dependency declarations, package descriptions, and optional-dependency notes. There are no scripts, no commands, no network fetches beyond the declared sources, no obfuscation, and no attempts to access or exfiltrate local data. All dependencies and optdependencies align with the application's function as a Hyprland desktop shell, greeter, and QML plugin collection.

No evidence of injected malicious code, backdoors, credential theft, or supply-chain tampering was found in this file.
</details>
<evidence>

</evidence>
<summary>
Standard AUR metadata; legitimate upstream sources; no malicious behavior found.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; legitimate upstream sources; no malicious behavior found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows normal AUR packaging practices for a `-git` package. Sources are fetched from the project's own GitHub repository and a pinned-commit submodule source for material-color-utilities. The `SKIP` checksums are expected for VCS sources and are not a security issue.

The `prepare()` function initializes and updates a submodule using a local `$srcdir` checkout, then applies a patch from the project itself. The `build()` function runs `cmake` with `FETCHCONTENT_FULLY_DISCONNECTED=ON`, which actually reduces network access during the build. The package functions install files, binaries, services, and configuration into `$pkgdir` in the standard way. There are no suspicious network requests, no encoded/obfuscated commands, no `eval`, `curl|bash`, backdoors, or file operations outside the package's own scope.
</details>
<evidence>
</evidence>
<summary>
Standard AUR git package; no malicious or suspicious behavior found.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR git package; no malicious or suspicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,942
  Completion Tokens: 2,023
  Total Tokens: 14,965
  Total Cost: $0.001546
  Execution Time: 46.29 seconds

Final Status: SAFE


No issues found.
