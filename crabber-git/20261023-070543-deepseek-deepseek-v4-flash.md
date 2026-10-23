---
package: crabber-git
pkgver: 0.1.0.r0.g68e0c53
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 8568
completion_tokens: 1285
total_tokens: 9853
cost: 0.001013558
execution_time: 20.05
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-23T07:05:42Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard AUR VCS PKGBUILD; no malicious or suspicious behavior found.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR .SRCINFO for a git package; no malicious behavior found.
---

Materializing crabber-git from local mirror...
Materialized crabber-git
Analyzing crabber-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` only sources the PKGBUILD's top-level scope. The global code here consists solely of standard variable assignments (`_gitname`, `_giturl`, `pkgname`, `pkgver`, `pkgdesc`, `arch`, `url`, `license`, dependency arrays, `source`, `sha256sums`, `options`). There are no top-level command substitutions, network fetches, obfuscated code, or file-modifying operations.

The `pkgver()`, `build()`, and `package()` functions contain only routine git metadata, cargo build, and install operations, and they are not executed by `makepkg --printsrcinfo`. The `git+https://github.com/auf-gg/crabber.git` source points to the package's own declared upstream repository. The `SKIP` checksum is a normal VCS-source practice and is not a concern for this metadata-only step.
</details>
<evidence>
</evidence>
<summary>
Top-level PKGBUILD scope only defines variables; no malicious code executes during printsrcinfo.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD scope only defines variables; no malicious code executes during printsrcinfo.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard AUR VCS package for the Crabber XMPP messenger. It clones the package's own upstream GitHub repository, computes a version from git metadata, builds with `cargo build --release --locked`, and installs the resulting binary, license, icons, and a manually generated desktop entry. There is no suspicious network behavior, no encoded or obfuscated commands, and no execution of downloaded scripts outside the normal Rust build process.

The `SKIP` checksum is expected and required for a `git+` VCS source. The use of `git describe` and `git rev-list` in `pkgver()` is standard versioning practice for `-git` packages. The `cargo build` step is the upstream build system, and the `install`/`cat` commands in `package()` only write files under `$pkgdir`, which is normal packaging behavior. No red flags or supply-chain indicators were found.
</details>
<evidence>
</evidence>
<summary>
Standard AUR VCS PKGBUILD; no malicious or suspicious behavior found.</summary>
</security_assessment>

[1/2] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR VCS PKGBUILD; no malicious or suspicious behavior found.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file is a standard AUR package metadata declaration for the `crabber-git` package. It describes an XMPP messenger built from the upstream GitHub repository `https://github.com/auf-gg/crabber.git`. The package declares normal build and runtime dependencies for a Rust/GPUI application, including Wayland/X11 libraries, Vulkan, ALSA, D-Bus, and fontconfig.

The VCS source uses an unpinned `git+https://` URL and a `SKIP` checksum, both of which are standard and expected for `-git` packages in the AUR. There is no obfuscated code, no unexpected network behavior, no suspicious file operations, and no attempt to execute downloaded content outside the normal build process. The file contains only metadata and contains no malicious or dangerous directives.
</details>
<evidence>
</evidence>
<summary>
Standard AUR .SRCINFO for a git package; no malicious behavior found.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR .SRCINFO for a git package; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 8,568
  Completion Tokens: 1,285
  Total Tokens: 9,853
  Total Cost: $0.001014
  Execution Time: 20.05 seconds

Final Status: SAFE


No issues found.
