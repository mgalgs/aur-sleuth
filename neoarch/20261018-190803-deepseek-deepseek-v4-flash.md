---
package: neoarch
pkgver: 3.4.2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 10598
completion_tokens: 1705
total_tokens: 12303
cost: 0.001274728
execution_time: 21.63
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 1
injection_attempts: 0
date: 2026-10-18T19:08:02Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file with no malicious behavior; SKIP checksum noted as hygiene concern only.
  - file: neoarch.install
    status: safe
    summary: Safe post-install hook adding official Flathub remote when flatpak is present.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR package build; no malicious code or suspicious behavior found.
---

Materializing neoarch from local mirror...
Materialized neoarch
Analyzing neoarch AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The top-level scope of this PKGBUILD contains only static variable definitions (strings and arrays) with no command substitutions, function calls, or any executable code. No dangerous operations such as `eval`, `curl`, `wget`, or data exfiltration are present. The `package()` function is defined but not executed during `makepkg --printsrcinfo`. Sourcing this file is safe for the purpose of metadata generation.
</details>
<evidence></evidence>
<summary>Top-level scope is static; no dangerous code.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level scope is static; no dangerous code.
Note: 1 remote source(s) have no checksum (sha256sums=SKIP), so the bytes are not verifiable: https://github.com/Sanjaya-Danushka/Neoarch/archive/refs/tags/v3.4.2.tar.gz
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, neoarch.install...
[0/3] Reviewing .SRCINFO, neoarch.install, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard AUR `.SRCINFO` metadata file for the `neoarch` package. It declares the package name, version, description, dependencies, and a single upstream source tarball from the project&apos;s own GitHub repository (`https://github.com/Sanjaya-Danushka/Neoarch/archive/refs/tags/v3.4.2.tar.gz`). There is no code to execute, no network requests beyond the declared source download, and no suspicious commands or obfuscation.

The `sha256sums = SKIP` entry is a trust/hygiene concern rather than evidence of malice; per the audit guidelines, SKIP checksums are not to be treated as an unsafe indicator. The source is fetched from an HTTPS URL belonging to the package&apos;s own upstream project, which is expected packaging practice. The `.SRCINFO` references an `install` script (`neoarch.install`), but that script is not provided in this file and cannot be judged here. Nothing in this file indicates exfiltration, backdoors, or execution of untrusted content.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata file with no malicious behavior; SKIP checksum noted as hygiene concern only.</summary>
</security_assessment>

[1/3] Reviewing neoarch.install, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file with no malicious behavior; SKIP checksum noted as hygiene concern only.
LLM auditresponse for neoarch.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Arch Linux package install script (`neoarch.install`). Its `post_install()` function checks whether the `flatpak` command is available and, if so, adds the official Flathub remote for the invoking user using `flatpak remote-add --user --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo`. The URL points to the official Flathub repository, which is the expected upstream source for Flatpak applications. The `|| true` simply prevents a non-zero exit from failing the package installation if the remote already exists or the operation fails for another benign reason.

There is no evidence of malicious behavior: no obfuscated code, no suspicious network destinations, no data exfiltration, no execution of downloaded scripts, and no modification of files outside the package's normal scope. The behavior is a convenience setup for the package's stated purpose and is consistent with ordinary post-install hooks. The use of the official Flathub URL and the non-destructive `--if-not-exists` flag further support a safe assessment.
</details>
<evidence>
</evidence>
<summary>
Safe post-install hook adding official Flathub remote when flatpak is present.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed neoarch.install. Status: SAFE -- Safe post-install hook adding official Flathub remote when flatpak is present.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices. It downloads the package's own upstream source tarball from the project's GitHub repository, installs files under `/opt/neoarch`, creates symlinks in `/usr/bin`, and installs a desktop file, icon, and license. There are no suspicious network requests, no obfuscated commands, no execution of downloaded content at build time, and no modifications to unrelated system files.

The `sha256sums` entry set to `SKIP` means the tarball is not checksum-verified, which is a supply-chain hygiene concern rather than evidence of malice; it is a common AUR practice and does not by itself make the package unsafe. The `sed` substitutions and `chmod` operations are routine packaging adjustments. No genuinely malicious behavior was found.
</details>
<evidence>
</evidence>
<summary>
Standard AUR package build; no malicious code or suspicious behavior found.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR package build; no malicious code or suspicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,598
  Completion Tokens: 1,705
  Total Tokens: 12,303
  Total Cost: $0.001275
  Execution Time: 21.63 seconds

Final Status: SAFE


No issues found.
