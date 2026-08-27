---
package: omarchy-zfs
pkgver: 1.1.3
pkgrel: 4
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: f47e5ed5e9b50f484d29402229454e7d1b1d7cdb
prompt_tokens: 15568
completion_tokens: 2062
total_tokens: 17630
cost: 0.00153558216
execution_time: 197.97
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
upstream_files: 48
upstream_named_files: 0
unpinned_sources: 0
date: 2026-08-27T19:35:46Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO with pinned upstream source and checksum; no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no signs of malice.
  - file: omarchy-zfs.install
    status: safe
    summary: Legitimate ZFS configuration scriptlet, no malicious behavior.
---

Cloning https://aur.archlinux.org/omarchy-zfs.git...
Cloned omarchy-zfs
Analyzing omarchy-zfs AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only variable assignments at global scope (depends, optdepends, source, etc.) and a `package()` function that is **not executed** during `makepkg --nobuild --noprepare`. No code in the top-level scope or `pkgver()` performs any operations that could execute malicious payloads. The `source` array fetches a signed release tarball from the project's own GitHub repository, and `sha256sums` is set (not SKIP). There are no command substitutions, `eval`, `curl`, `wget`, or any other commands at global scope. The `install` file reference is not sourced during these commands. There is no evidence of remotely fetched or executed code during the two commands in question.
</details>
<evidence></evidence>
<summary>Safe to fetch sources and print metadata</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe to fetch sources and print metadata
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Reviewing the 3 file(s) in the AUR repository. The 48 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, omarchy-zfs.install...
[0/3] Reviewing .SRCINFO, omarchy-zfs.install, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard .SRCINFO file for the omarchy-zfs AUR package. It declares metadata, dependencies, backup config files, and a single source tarball fetched from the project's own GitHub releases URL. The source is pinned to a specific version tag (v1.1.3) and has a fixed SHA-256 checksum, so the downloaded archive is verifiable.

There are no suspicious commands, no network downloads beyond the declared upstream source, no obfuscated content, and no file operations or system modifications. The file only describes package metadata for makepkg. Nothing here indicates malicious or dangerous behavior.
</details>
<evidence>
</evidence>
<summary>
Standard .SRCINFO with pinned upstream source and checksum; no security issues.</summary>
</security_assessment>

[1/3] Reviewing omarchy-zfs.install, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO with pinned upstream source and checksum; no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a straightforward AUR packaging file. It downloads a release tarball from the package's own GitHub repository (`https://github.com/peteonrails/omarchy-zfs/archive/refs/tags/v$pkgver.tar.gz`) with a pinned SHA-256 checksum. The `package()` function copies scripts, hooks, systemd units, config files, and a license into the package directory using standard `install` commands. There is no use of `curl`, `wget`, `eval`, base64, or any other obfuscated or dangerous commands. No suspicious network requests or data exfiltration are present. The comments explain packaging decisions (e.g., why `omarchy` is not a hard dependency) which are legitimate considerations. This file shows no evidence of a supply-chain attack or malicious injection.
</details>
<evidence>

</evidence>
<summary>Standard AUR PKGBUILD with no signs of malice.</summary>
</security_assessment>

[2/3] Reviewing omarchy-zfs.install...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no signs of malice.
LLM auditresponse for omarchy-zfs.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The install scriptlet performs standard ZFS configuration tasks: adding the archzfs repository, setting the hostid from the ZFS pool, masking unused snapper units, cleaning up legacy shadowed files (only if unowned by any package via `pacman -Qo`), and running package-specific helper binaries. All network access (`pacman-key --recv-keys`, `pacman -Sy`) targets the canonical archzfs.com/key servers, which is expected for a ZFS package. There is no obfuscated code, no unexpected data exfiltration, no downloading and execution of untrusted content, and no deviation from typical AUR/packaging practices for a kernel module support package.
</details>
<evidence></evidence>
<summary>Legitimate ZFS configuration scriptlet, no malicious behavior.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed omarchy-zfs.install. Status: SAFE -- Legitimate ZFS configuration scriptlet, no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 15,568
  Completion Tokens: 2,062
  Total Tokens: 17,630
  Total Cost: $0.001536
  Execution Time: 197.97 seconds

Final Status: SAFE


No issues found.
