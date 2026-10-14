---
package: solana-dev-bin
pkgbase: solana-bin
pkgver: 4.2.2
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 16932
completion_tokens: 2551
total_tokens: 19483
cost: 0.002005094
execution_time: 43.63
files_reviewed: 6
files_skipped: 0
maintainer_files: 6
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-14T03:20:17Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore excluding build artifacts; no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata for solana-bin with pinned upstream sources and checksums.
  - file: PKGBUILD
    status: safe
    summary: Standard binary PKGBUILD with pinned checksums; no malicious or suspicious behavior found.
  - file: solana-bin.install
    status: safe
    summary: Install script only prints an informational notice; no suspicious behavior found.
  - file: solana.sysusers
    status: safe
    summary: "Safe: declarative sysusers group creation with no malicious behavior."
  - file: solana.tmpfiles
    status: safe
    summary: Standard tmpfiles directory creation; no malicious behavior detected.
---

solana-dev-bin is built from solana-bin
Materializing solana-dev-bin from local mirror...
Materialized solana-dev-bin
Analyzing solana-dev-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global scope consists solely of standard variable assignments (pkgname, pkgver, source, sha256sums, etc.) and function definitions (package_solana-bin, package_solana-dev-bin). No command substitutions, backticks, eval, or other executable code appear at the top level. The source array references a legitimate GitHub release URL using the standard Arch CARCH variable. No obfuscated content, network requests, or data exfiltration mechanisms are present in the sourcing path. The functions are not executed by `makepkg --printsrcinfo`, so their content is out of scope for this gate. As such, running this command poses no security risk.
</details>
<evidence></evidence>
<summary>Global scope safe; no executable code.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Global scope safe; no executable code.
Reviewing the 6 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/6] Reviewing .SRCINFO...
[0/6] Reviewing .SRCINFO, PKGBUILD...
[0/6] Reviewing .SRCINFO, PKGBUILD, .gitignore...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` used in an AUR package repository. It excludes build artifacts and package outputs such as compressed archives (`*.tar.bz2`, `*.zst`), the `src/` build directory, and the `pkg/` packaging directory. These patterns are conventional for Arch packaging workflows and match the directories and files produced by `makepkg`. There is no executable code, no network activity, no obfuscation, and no file operations outside the normal packaging scope. No security issues are present.
</details>
<evidence>
</evidence>
<summary>
Standard .gitignore excluding build artifacts; no security concerns.</summary>
</security_assessment>

[0/6] Reviewing .SRCINFO, PKGBUILD, .gitignore, solana-bin.install...
[1/6] Reviewing .SRCINFO, PKGBUILD, solana-bin.install...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore excluding build artifacts; no security concerns.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` is a standard AUR metadata file for the `solana-bin` package. It declares source tarballs from the official upstream GitHub repository `anza-xyz/agave`, along with local packaging files (`solana.sysusers`, `solana.tmpfiles`, `solana-bin.install`). All four sources have pinned SHA-256 checksums, and the package version points to a specific upstream release tag.

There is no evidence of malicious behavior. The file contains only package metadata: descriptions, dependencies, conflicts, and source declarations. No network exfiltration, no obfuscated commands, no unexpected file operations, and no attempt to execute untrusted code. Downloading the package's own declared upstream binary release from GitHub is standard AUR practice.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata for solana-bin with pinned upstream sources and checksums.</summary>
</security_assessment>

[1/6] Reviewing .SRCINFO, PKGBUILD, solana-bin.install, solana.sysusers...
[2/6] Reviewing PKGBUILD, solana-bin.install, solana.sysusers...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata for solana-bin with pinned upstream sources and checksums.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a pre-built binary package. It downloads the official Solana/Agave release tarball from the project's own GitHub releases page, verifies it against a fixed SHA-256 checksum, and installs the expected CLI and developer binaries into `/usr/bin`. The listed binaries (`solana`, `solana-keygen`, `spl-token`, `cargo-build-sbf`, etc.) match the package's stated purpose.

There are no suspicious network operations, no obfuscated or encoded commands, no use of `eval`, `curl`, `wget`, or `base64`, and no file operations outside normal package installation. The `sysusers.d` and `tmpfiles.d` files are routine packaging components for creating a service user and runtime directories. The separate `.install` script is referenced normally in the `solana-bin` package; nothing in the PKGBUILD itself indicates malicious behavior.
</details>
<evidence>
</evidence>
<summary>
Standard binary PKGBUILD with pinned checksums; no malicious or suspicious behavior found.
</summary>
</security_assessment>

[2/6] Reviewing PKGBUILD, solana-bin.install, solana.sysusers, solana.tmpfiles...
[3/6] Reviewing solana-bin.install, solana.sysusers, solana.tmpfiles...
+ Reviewed PKGBUILD. Status: SAFE -- Standard binary PKGBUILD with pinned checksums; no malicious or suspicious behavior found.
LLM auditresponse for solana-bin.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a simple Arch Linux package install script containing only a `post_install()` function that prints an informational notice to the user. It performs no file operations, network requests, downloads, code execution, or system modifications. The message simply informs users that certain validator/node binaries are not included in the prebuilt release and directs them to the source-built `solana` package. This is standard packaging practice and contains no malicious or suspicious behavior.
</details>
<evidence>
</evidence>
<summary>
Install script only prints an informational notice; no suspicious behavior found.</summary>
</security_assessment>

[4/6] Reviewing solana.sysusers, solana.tmpfiles...
+ Reviewed solana-bin.install. Status: SAFE -- Install script only prints an informational notice; no suspicious behavior found.
LLM auditresponse for solana.sysusers:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard systemd sysusers.d configuration that creates a system group named `solana` with an automatically allocated GID. This is normal and expected packaging practice for a service or application account. There is no network activity, no code execution, no file manipulation, and no obfuscation. The content is entirely declarative and serves only the package's stated purpose of providing a system group.
</details>
<evidence>
</evidence>
<summary>
Safe: declarative sysusers group creation with no malicious behavior.</summary>
</security_assessment>

[5/6] Reviewing solana.tmpfiles...
+ Reviewed solana.sysusers. Status: SAFE -- Safe: declarative sysusers group creation with no malicious behavior.
LLM auditresponse for solana.tmpfiles:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard systemd-tmpfiles configuration snippet. It creates a single directory at `/usr/lib/solana/sdk/sbf/dependencies` with mode `0775`, owned by `root:solana`. There is no code execution, no network activity, no obfuscation, and no access to sensitive user data. Creating application-specific runtime or dependency directories via tmpfiles is a normal packaging practice.

The only mild consideration is that the directory is group-writable by the `solana` group inside `/usr/lib`, which could allow tampering if an untrusted user is a member of that group. However, this is consistent with the Solana SDK's intended layout and does not indicate a supply-chain attack or malicious behavior.
</details>
<evidence>
</evidence>
<summary>
Standard tmpfiles directory creation; no malicious behavior detected.</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed solana.tmpfiles. Status: SAFE -- Standard tmpfiles directory creation; no malicious behavior detected.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 16,932
  Completion Tokens: 2,551
  Total Tokens: 19,483
  Total Cost: $0.002005
  Execution Time: 43.63 seconds

Final Status: SAFE


No issues found.
