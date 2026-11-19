---
package: irlume-kcm-git
pkgbase: irlume-git
pkgver: 0.15.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 20042
completion_tokens: 2206
total_tokens: 22248
cost: 0.002225314
execution_time: 33.03
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-20T03:31:17Z
file_verdicts:
  - file: irlume.install
    status: safe
    summary: Standard packaging install script with routine systemd and tmpfiles operations only.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR .SRCINFO with upstream sources and normal VCS checksum handling; no malicious behavior found.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR git package with pinned artifact checksums; no malicious or hidden behavior found.
---

irlume-kcm-git is built from irlume-git
Materializing irlume-kcm-git from local mirror...
Materialized irlume-kcm-git
Analyzing irlume-kcm-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources only the top-level scope of this PKGBUILD. The top-level content consists solely of standard variable assignments (`pkgbase`, `pkgname`, `pkgver`, `pkgdesc`, `arch`, `url`, `license`, `depends`, `makedepends`, `source`, `sha256sums`) and comments. There are no top-level command substitutions, no `eval`, `base64`, `curl`, `wget`, or similar constructs, and no code that would download, execute, or exfiltrate data while the file is sourced.

The `pkgver()`, `prepare()`, `build()`, and `package_*()` functions are not executed by `makepkg --printsrcinfo`, so any content inside them is out of scope for this narrow gate. The unverified `git` source and `SKIP` checksum are not grounds for failure at this step because no sources are downloaded or verified during `--printsrcinfo`.
</details>
<evidence>
</evidence>
<summary>
Top-level PKGBUILD scope contains only standard variable definitions; no malicious execution. Safe for printsrcinfo.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD scope contains only standard variable definitions; no malicious execution. Safe for printsrcinfo.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing PKGBUILD...
[0/3] Reviewing PKGBUILD, .SRCINFO...
[0/3] Reviewing PKGBUILD, .SRCINFO, irlume.install...
LLM auditresponse for irlume.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Arch Linux package install script for a face-authentication daemon. It performs routine systemd unit management (daemon-reload, enable, disable, try-restart), applies a tmpfiles.d rule via `systemd-tmpfiles`, optionally reloads an upstream-provided AppArmor profile if `apparmor_parser` exists, and prints user-facing post-install messages.

The version-gated upgrade logic uses `vercmp` to migrate older installs by enabling new sockets, timers, and self-heal units, while respecting administrator choices where applicable. It also creates a state directory under `/var/lib/irlume` and writes a marker file there, which is within the application's own scope. There are no network requests, no downloads, no obfuscated commands, no suspicious file operations outside the package's own units and state, and no exfiltration of user data. The script behaves exactly as expected for a packaging `.install` hook.
</details>
<evidence>
</evidence>
<summary>
Standard packaging install script with routine systemd and tmpfiles operations only.</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, .SRCINFO...
+ Reviewed irlume.install. Status: SAFE -- Standard packaging install script with routine systemd and tmpfiles operations only.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.SRCINFO` metadata file for an AUR VCS package. It declares build dependencies, runtime dependencies, upstream sources, checksums, and two package outputs (`irlume-git` and `irlume-kcm-git`). All external sources point to the project's own GitHub repository and its release assets (`https://github.com/archledger/irlume`), which is consistent with normal AUR packaging for a `-git` package.

The `sha256sums = SKIP` entry applies to the git VCS source, which is the standard and expected practice for `git+` sources; the model and runtime tarballs from the upstream release page all have concrete SHA-256 checksums. No suspicious URLs, network exfiltration, encoded commands, dangerous shell operations, or unexpected system modifications are present in this file. The `install = irlume.install` entry references a separate install script that is not provided here, but its existence alone is a normal packaging mechanism and not evidence of malice.
</details>
<evidence>

</evidence>
<summary>
Standard AUR .SRCINFO with upstream sources and normal VCS checksum handling; no malicious behavior found.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR .SRCINFO with upstream sources and normal VCS checksum handling; no malicious behavior found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard Arch VCS package build. It fetches the application source from the project's own GitHub repository (`archledger/irlume`, `main` branch), plus model and TFLite runtime artifacts from the same project's GitHub release assets. All non-git sources have pinned SHA-256 checksums; the `SKIP` entry applies only to the VCS `git+` source, which is normal and required for `-git` packages.

The `prepare()`, `build()`, and `package_*()` functions only stage downloaded model files into the build tree, run the upstream Rust/CMake build, and install binaries, libraries, data files, and systemd/polkit/PAM/udev configuration files into `$pkgdir`. There is no use of `eval`, `base64`, obfuscated commands, unexpected network fetching at build time, no `curl|bash`, no exfiltration of local data, and no modification of files outside the package's own build/install scope. The system integration files (PAM, polkit, systemd, tmpfiles, udev, AppArmor) support the application's stated face-authentication purpose.

The main branch is unpinned, which is a supply-chain hygiene consideration typical of nightly `-git` packages, but it is not malicious behavior and the built code is the application's own upstream source.
</details>
<evidence></evidence>
<summary>
Standard AUR git package with pinned artifact checksums; no malicious or hidden behavior found.
</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR git package with pinned artifact checksums; no malicious or hidden behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 20,042
  Completion Tokens: 2,206
  Total Tokens: 22,248
  Total Cost: $0.002225
  Execution Time: 33.03 seconds

Final Status: SAFE


No issues found.
