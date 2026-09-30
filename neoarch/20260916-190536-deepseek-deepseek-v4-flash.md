---
package: neoarch
pkgver: 3.3.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 10242
completion_tokens: 2692
total_tokens: 12934
cost: 0.001312584
execution_time: 68.31
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 1
injection_attempts: 0
date: 2026-09-16T19:05:36Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard AUR packaging recipe; no malicious behavior found. Unpinned SKIP checksum noted as hygiene only.
  - file: neoarch.install
    status: safe
    summary: Standard Flatpak remote addition, no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no malicious content.
---

Materializing neoarch from local mirror...
Materialized neoarch
Analyzing neoarch AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
 <security_assessment>
<decision>SAFE</decision>
<details>
The top-level scope of this PKGBUILD contains only static variable assignments (`pkgname`, `pkgver`, `pkgrel`, `pkgdesc`, `arch`, `url`, `license`, `depends`, `provides`, `conflicts`, `install`, `source`, `sha256sums`). There are no command substitutions, no `eval`, no base64/hex-encoded payloads, no network fetch-and-execute patterns, and no file modifications at the global scope. Running `makepkg --printsrcinfo` sources this top-level code only, so no dangerous operations can execute during this narrow gate.

The `package()` function contains file installation and `sed`/`chmod`/`ln -s` operations, and the referenced `neoarch.install` script is not even read during `--printsrcinfo`. These are out of scope for this specific gate and will be reviewed in the full PKGBUILD audit. The `SKIP` checksum and the use of a tag tarball are also out of scope for this gate since no sources are downloaded or verified when running `--printsrcinfo`.
</details>
<evidence></evidence>
<summary>Top-level scope is static assignments only; no malicious code executes during --printsrcinfo.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level scope is static assignments only; no malicious code executes during --printsrcinfo.
Note: 1 remote source(s) have no checksum (sha256sums=SKIP), so the bytes are not verifiable: https://github.com/Sanjaya-Danushka/Neoarch/archive/refs/tags/v3.3.0.tar.gz
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, neoarch.install...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a straightforward package recipe for the NeoArch application. It downloads the upstream source tarball from the project&apos;s own GitHub repository, copies it into `/opt/neoarch/Neoarch`, makes the expected scripts executable, creates symlinks in `/usr/bin`, installs a desktop entry, icon, and license, and applies small `sed` fixes to correct path and entry-point references for the packaged layout. None of these operations are malicious; they are standard packaging steps.

The only notable hygiene issue is that `sha256sums` is set to `SKIP`, meaning the downloaded tarball is not integrity-verified. This is a supply-chain transparency concern but is explicitly not, by itself, evidence of malice under normal AUR practices. The source is however pinned to a release tag, and the destination is the project&apos;s own upstream, so there is no unexpected network destination or execution of untrusted downloaded code. The file shows no obfuscation, no data exfiltration, no backdoor, and no tampering with files outside the package&apos;s own scope.
</details>
<evidence>
</evidence>
<summary>
Standard AUR packaging recipe; no malicious behavior found. Unpinned SKIP checksum noted as hygiene only.
</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, neoarch.install...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR packaging recipe; no malicious behavior found. Unpinned SKIP checksum noted as hygiene only.
LLM auditresponse for neoarch.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The install script adds the official Flathub remote repository if Flatpak is installed. This is a standard configuration step for applications that support Flatpak integration. There is no obfuscation, no data exfiltration, no unexpected network destinations (Flathub is the official repository), and no dangerous commands. The operation is harmless and within normal packaging practices.
</details>
<evidence>
</evidence>
<summary>Standard Flatpak remote addition, no security issues.</summary>
</security_assessment>

[2/3] Reviewing .SRCINFO...
+ Reviewed neoarch.install. Status: SAFE -- Standard Flatpak remote addition, no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file contains standard AUR package metadata for the `neoarch` package. It declares a source tarball from the project's official GitHub repository, lists dependencies, and sets sha256sums to SKIP (a normal practice, not an indicator of malice). There are no embedded commands, obfuscated strings, suspicious network requests, or any code that deviates from expected packaging conventions. The file poses no security risk.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata, no malicious content.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,242
  Completion Tokens: 2,692
  Total Tokens: 12,934
  Total Cost: $0.001313
  Execution Time: 68.31 seconds

Final Status: SAFE


No issues found.
