---
package: neoarch
pkgver: 3.4.4
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 10584
completion_tokens: 2245
total_tokens: 12829
cost: 0.001371734
execution_time: 22.49
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 1
injection_attempts: 0
date: 2026-10-21T19:11:03Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR package manifest with HTTPS upstream source; no malicious indicators found.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR package recipe; SKIP checksum noted but no malicious behavior found.
  - file: neoarch.install
    status: safe
    summary: "Safe: standard post_install hook adding the official Flathub repository for flatpak."
---

Materializing neoarch from local mirror...
Materialized neoarch
Analyzing neoarch AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only top-level variable definitions (pkgname, pkgver, source, sha256sums, etc.) and a `package()` function definition. No executable statements, command substitutions, or function calls exist at the global scope. Running `makepkg --printsrcinfo` will only source these assignments and print metadata; no dangerous code executes during this step. The SKIP checksum on the source tarball is irrelevant here because no downloads or verification occur during `--printsrcinfo`.
</details>
<evidence></evidence>
<summary>No top-level executable code; safe to parse.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level executable code; safe to parse.
Note: 1 remote source(s) have no checksum (sha256sums=SKIP), so the bytes are not verifiable: https://github.com/neoarch712/Neoarch/archive/refs/tags/v3.4.4.tar.gz
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, neoarch.install...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file describes a standard Arch User Repository package manifest for `neoarch`. It declares the package metadata, upstream URL, dependencies, optional dependencies, and a single source tarball fetched over HTTPS from the project's own GitHub repository. No malicious behavior is present in this file: there are no suspicious commands, network exfiltration, obfuscated content, or unexpected file operations.

The `sha256sums = SKIP` entry is a hygiene concern rather than evidence of malice; skipping checksums means the source tarball is not verified for integrity, but the guidance explicitly states this should not be marked UNSAFE by itself. The package also ships an install script referenced by `install = neoarch.install`, but that file is not provided here for review. Based solely on this .SRCINFO, the manifest is consistent with normal AUR packaging practices.
</details>
<evidence>
</evidence>
<summary>
Standard AUR package manifest with HTTPS upstream source; no malicious indicators found.</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, neoarch.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR package manifest with HTTPS upstream source; no malicious indicators found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a straightforward AUR packaging recipe for the `neoarch` application. It downloads the project&apos;s own upstream source tarball from its GitHub repository, installs the files under `/opt/neoarch/Neoarch`, makes expected launcher/dependency scripts executable, creates standard symlinks in `/usr/bin`, and installs a desktop file, icon, and license. The `sed` commands adjust hardcoded paths and entry-point references within the package&apos;s own files, which is normal packaging maintenance.

The `sha256sums=(&apos;SKIP&apos;)` entry is a supply-chain hygiene concern — the tarball is not checksum-verified — but it is explicitly called out in the assessment guidelines as not sufficient to mark a package UNSAFE. No obfuscated code, suspicious network behavior, data exfiltration, or execution of attacker-controlled content was found. The package only fetches its declared upstream source and copies it into the package directory.
</details>
<evidence>
</evidence>
<summary>
Standard AUR package recipe; SKIP checksum noted but no malicious behavior found.</summary>
</security_assessment>

[2/3] Reviewing neoarch.install...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR package recipe; SKIP checksum noted but no malicious behavior found.
LLM auditresponse for neoarch.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The install script contains a single `post_install()` function that runs when the package is installed. It checks whether `flatpak` is available on the system, and if so, adds the official Flathub remote for the current user using `flatpak remote-add --user --if-not-exists`. The `--if-not-exists` flag makes the operation idempotent and non-destructive, and `|| true` prevents installation failure if the command fails.

This is a standard convenience hook for packages that use or recommend Flatpak. The only network interaction is adding the well-known official Flathub repository URL, which is expected upstream behavior and not a supply-chain concern. There is no obfuscation, no data exfiltration, no execution of downloaded code, and no modification of files outside the user's Flatpak configuration. The script is consistent with ordinary packaging practices.
</details>
<evidence>
</evidence>
<summary>
Safe: standard post_install hook adding the official Flathub repository for flatpak.
</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed neoarch.install. Status: SAFE -- Safe: standard post_install hook adding the official Flathub repository for flatpak.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,584
  Completion Tokens: 2,245
  Total Tokens: 12,829
  Total Cost: $0.001372
  Execution Time: 22.49 seconds

Final Status: SAFE


No issues found.
