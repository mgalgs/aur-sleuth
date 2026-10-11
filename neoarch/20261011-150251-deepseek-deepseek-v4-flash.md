---
package: neoarch
pkgver: 3.4.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 10677
completion_tokens: 1999
total_tokens: 12676
cost: 0.00287903
execution_time: 20.09
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 1
injection_attempts: 0
date: 2026-10-11T15:02:50Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with upstream tarball source and SKIP checksum; no malicious behavior found.
  - file: neoarch.install
    status: safe
    summary: Safe post-install hook that adds the official Flathub remote if Flatpak is present.
  - file: PKGBUILD
    status: safe
    summary: Standard packaging PKGBUILD with no evidence of malicious, obfuscated, or dangerous behavior.
---

Materializing neoarch from local mirror...
Materialized neoarch
Analyzing neoarch AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only top-level variable assignments: pkgname, pkgver, pkgrel, pkgdesc, arch, url, license, depends, optdepends, provides, conflicts, install, source, and sha256sums. None of these assignments use command substitution, process substitution, eval, or any other mechanism that would execute code while the PKGBUILD is sourced by `makepkg --printsrcinfo`.

The `package()` function contains installation steps (cp, chmod, sed, ln -s, install) and edits within `$pkgdir`, but this function is not executed during `makepkg --printsrcinfo`. Those operations will be assessed in the full PKGBUILD audit. The source is the project's own GitHub upstream, and the SKIP checksum is not a concern for this narrow gate because no source is downloaded or verified during `--printsrcinfo`.
</details>
<evidence>
</evidence>
<summary>
No dangerous top-level code; package() not executed during printsrcinfo.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code; package() not executed during printsrcinfo.
Note: 1 remote source(s) have no checksum (sha256sums=SKIP), so the bytes are not verifiable: https://github.com/Sanjaya-Danushka/Neoarch/archive/refs/tags/v3.4.1.tar.gz
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing PKGBUILD...
[0/3] Reviewing PKGBUILD, neoarch.install...
[0/3] Reviewing PKGBUILD, neoarch.install, .SRCINFO...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file describes a standard Arch User Repository package named `neoarch`. It declares a stable release version, an upstream GitHub tarball source, dependencies, and an install script hook. The source URL points to the project's own upstream repository tag (`v3.4.1.tar.gz`), which is normal packaging practice.

The checksum is set to `SKIP`. While this is not ideal from a supply-chain hygiene perspective because the tarball is not verified, it is explicitly allowed by AUR conventions and is not by itself evidence of malicious behavior. There are no suspicious network requests, no encoded or obfuscated commands, no unexpected file operations, and no behavior that would exfiltrate data or execute attacker-controlled code. The file is consistent with ordinary AUR packaging metadata.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata with upstream tarball source and SKIP checksum; no malicious behavior found.</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, neoarch.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with upstream tarball source and SKIP checksum; no malicious behavior found.
LLM auditresponse for neoarch.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The `neoarch.install` file contains only a single `post_install()` function that adds the official Flathub remote for the current user if Flatpak is installed. The remote URL is the standard, official Flathub repository, and the command uses `--if-not-exists` to avoid overwriting existing configuration and `|| true` to avoid failing installation on errors.

This is a routine post-install convenience step commonly seen in AUR/distribution packages that integrate Flatpak support. There is no obfuscation, no suspicious download-and-execute behavior, no data exfiltration, and no modification of unrelated system files. While adding a third-party repository is a configuration change users may wish to review, it is not malicious and does not warrant an UNSAFE decision.
</details>
<evidence>
</evidence>
<summary>
Safe post-install hook that adds the official Flathub remote if Flatpak is present.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed neoarch.install. Status: SAFE -- Safe post-install hook that adds the official Flathub remote if Flatpak is present.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows normal Arch packaging practices. It downloads the package's own upstream source tarball from GitHub, installs the application files under `$pkgdir/opt/neoarch/Neoarch`, creates symlinks in `$pkgdir/usr/bin`, and installs desktop, icon, and license files. All file operations are confined to the packaging staging directory (`$pkgdir`) and the `package()` function does not execute any downloaded code or run network requests.

The `sha256sums=(SKIP)` entry is a supply-chain hygiene concern but is explicitly not treated as malicious by itself; it means the upstream tarball is not verified, but this is a common AUR practice and not evidence of injected code. No obfuscated content, suspicious commands, data exfiltration, backdoors, or downloads from unrelated hosts are present. The script merely copies the upstream application and adjusts entry points and desktop paths as part of normal packaging.
</details>
<evidence>
</evidence>
<summary>
Standard packaging PKGBUILD with no evidence of malicious, obfuscated, or dangerous behavior.
</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard packaging PKGBUILD with no evidence of malicious, obfuscated, or dangerous behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,677
  Completion Tokens: 1,999
  Total Tokens: 12,676
  Total Cost: $0.002879
  Execution Time: 20.09 seconds

Final Status: SAFE


No issues found.
