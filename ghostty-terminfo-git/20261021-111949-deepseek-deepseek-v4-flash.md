---
package: ghostty-terminfo-git
pkgbase: ghostty-git
pkgver: 1.3.1.r1209.gd560c64
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 14500
completion_tokens: 6021
total_tokens: 20521
cost: 0.002415322
execution_time: 83.19
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-21T11:19:49Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Non-executable Git ignore file with no malicious content.
  - file: ghostty-llvm.patch
    status: safe
    summary: Simple build configuration patch, no security issues.
  - file: .SRCINFO
    status: safe
    summary: Safe. Declarative AUR metadata, no executable or malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD, no malicious indicators.
---

ghostty-terminfo-git is built from ghostty-git
Materializing ghostty-terminfo-git from local mirror...
Materialized ghostty-terminfo-git
Analyzing ghostty-terminfo-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources this PKGBUILD and executes only its top-level scope. The top-level content consists entirely of normal metadata variable assignments (`pkgname`, `pkgver`, `pkgdesc`, `arch`, `url`, `license`, dependency arrays, `source`, and `sha256sums`) plus definitions of `prepare()`, `pkgver()`, `build()`, and packaging functions. No top-level command substitution, network fetch, file modification, or call to an undefined function occurs during sourcing.

The `sha256sums` entry of `SKIP` for the VCS source is normal for `-git` packages and is not relevant to this gate, since `makepkg --printsrcinfo` does not download or verify sources. The potentially interesting operations (`git describe`, `zig build`, patching, cache fetching, `cp`/`install` into `$pkgdir`) are all inside function bodies that are not executed by `makepkg --printsrcinfo`; they will be covered by the full audit.
</details>
<evidence>
</evidence>
<summary>
Top-level scope is safe; functions are not executed during printsrcinfo.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level scope is safe; functions are not executed during printsrcinfo.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .gitignore...
[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `.gitignore` contains only a single asterisk, which is a standard Git ignore pattern used to ignore all files in a directory. There is no executable code, no network requests, no obfuscation, and no deviation from normal packaging practices. This file poses no security risk.
</details>
<evidence></evidence>
<summary>Non-executable Git ignore file with no malicious content.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD, ghostty-llvm.patch...
[1/4] Reviewing .SRCINFO, PKGBUILD, ghostty-llvm.patch...
+ Reviewed .gitignore. Status: SAFE -- Non-executable Git ignore file with no malicious content.
LLM auditresponse for ghostty-llvm.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a patch file that modifies Ghostty's Zig build configuration to set `.use_llvm = true` in two struct initializers. This changes the compiler backend used during the build, which is a normal build-system tuning choice. There are no network requests, obfuscated code, file operations, or any behavior that deviates from standard packaging practices. The patch is transparent and serves only to enable LLVM compilation for the Ghostty terminal emulator.
</details>
<evidence>
</evidence>
<summary>Simple build configuration patch, no security issues.</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed ghostty-llvm.patch. Status: SAFE -- Simple build configuration patch, no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is the `.SRCINFO` metadata file for the `ghostty-git` AUR package. It declaratively defines a split package structure with subpackages (`ghostty-terminfo-git`, `ghostty-nautilus-git`, `ghostty-shell-integration-git`). The upstream source points to the official Ghostty repository on GitHub, and a patch file with a valid checksum is included. The `SKIP` checksum for the VCS source is standard for development (`-git`) packages and is not a security concern. As it contains no executable code, no network request instructions, no obfuscated strings, and no unexpected operations, it presents no evidence of a supply chain attack.
</details>
<evidence>
</evidence>
<summary>Safe. Declarative AUR metadata, no executable or malicious content.</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Safe. Declarative AUR metadata, no executable or malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD builds the ghostty terminal emulator from the official upstream git repository. It follows standard Arch VCS packaging conventions: the VCS source has a `SKIP` checksum, a specific patch file is verified by hash, the version is derived from `git describe`, and the upstream build system (`zig build`) is invoked with normal flags. The call to `./nix/build-support/fetch-zig-cache.sh` in the `prepare()` function is a script shipped by the upstream project to fetch standard Zig build-time dependencies; it does not download or execute arbitrary code from an unrelated or unexpected host. There is no obfuscated content, no data exfiltration, no backdoors, and no deviation from standard PKGBUILD practices that would indicate an injected supply-chain attack.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD, no malicious indicators.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD, no malicious indicators.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 14,500
  Completion Tokens: 6,021
  Total Tokens: 20,521
  Total Cost: $0.002415
  Execution Time: 83.19 seconds

Final Status: SAFE


No issues found.
