---
package: passless-bin
pkgver: 0.19.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 1d6b5f000e2ff2cbdfdf4e324a3e5ac914955c8a
prompt_tokens: 10927
completion_tokens: 1714
total_tokens: 12641
cost: 0.001271939130
execution_time: 31.46
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 2
injection_attempts: 0
date: 2026-09-03T03:06:29Z
file_verdicts:
  - file: passless.install
    status: safe
    summary: Standard post-install message script, no harmful code.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; upstream sources only; no malicious behavior found.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD, no malicious indicators.
---

Cloning https://aur.archlinux.org/passless-bin.git...
Cloned passless-bin
Analyzing passless-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global/top-level scope contains only standard variable definitions (pkgname, pkgver, source, etc.) and a `package()` function definition. There are no command substitutions, `eval` invocations, network calls, or any other code that would execute at source time. Sourcing this file for `makepkg --printsrcinfo` does not trigger any dangerous behavior.
</details>
<evidence></evidence>
<summary>No malicious top-level code; safe to source.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious top-level code; safe to source.
Note: 2 remote source(s) have no checksum (sha256sums=SKIP), so the bytes are not verifiable: passless-0.19.1.tar.gz::https://github.com/pando85/passless/archive/refs/tags/v0.19.1.tar.gz, https://github.com/pando85/passless/releases/download/v0.19.1/passless-completions-0.19.1.tar.gz
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, passless.install...
LLM auditresponse for passless.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `passless.install` contains only `post_install`, `post_upgrade`, and `post_remove` functions that print informational messages to the user via `echo`. There are no network requests, file modifications, execution of external commands, obfuscated code, or any other suspicious operations. The content is purely advisory, guiding the user on manual steps (e.g., adding user to group, loading kernel module, creating config directory). No evidence of malicious behavior is present.</details>
<evidence></evidence>
<summary>Standard post-install message script, no harmful code.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed passless.install. Status: SAFE -- Standard post-install message script, no harmful code.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is standard AUR metadata for `passless-bin`. It declares a binary release tarball, an upstream source archive, a completions tarball, and an install script, all sourced from the official `pando85/passless` GitHub project. No network endpoints outside the project's own release/download URLs appear, and no executable commands, obfuscation, or suspicious file operations are present.

The `sha256sums = SKIP` entries for the source archive, completions tarball, and install file are a checksum hygiene concern, not evidence of malice. Unpinned or skipped checksums are common in AUR packaging and do not by themselves indicate a supply-chain attack. No genuinely malicious behavior is present in this file.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata; upstream sources only; no malicious behavior found.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; upstream sources only; no malicious behavior found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging conventions for the `passless-bin` package. It downloads pre-built binaries and shell completions from the official GitHub releases page via HTTPS, which is the expected upstream source. The `package()` function simply installs those binaries, completions, systemd service, udev rules, sysusers configuration, and a kernel module-load config file into the package directory – all of which are ordinary operations for a virtual FIDO2 device tool. There is no obfuscated code, no unexpected network requests (no `curl|bash`, no `base64`/`eval`), and no manipulation of files outside the package’s scope. The `SKIP` checksums on two sources are a trust choice by the maintainer; while not best practice for pre-built tarballs, they are not evidence of malice (and aur-sleuth already flags unpinned sources independently). No genuinely malicious behavior is present.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD, no malicious indicators.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD, no malicious indicators.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,927
  Completion Tokens: 1,714
  Total Tokens: 12,641
  Total Cost: $0.001272
  Execution Time: 31.46 seconds

Final Status: SAFE


No issues found.
