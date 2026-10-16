---
package: gnome-shell-extension-computer-use-linux
pkgbase: computer-use-linux
pkgver: 0.7.17
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 11604
completion_tokens: 1350
total_tokens: 12954
cost: 0.001301664
execution_time: 39.39
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-16T23:18:42Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with pinned source and checksum; no security concerns.
  - file: gnome-shell-extension-computer-use-linux.install
    status: safe
    summary: Install script only prints informational messages; no malicious behavior found.
  - file: PKGBUILD
    status: safe
    summary: Standard Rust and GNOME extension PKGBUILD; no malicious behavior found.
---

gnome-shell-extension-computer-use-linux is built from computer-use-linux
Materializing gnome-shell-extension-computer-use-linux from local mirror...
Materialized gnome-shell-extension-computer-use-linux
Analyzing gnome-shell-extension-computer-use-linux AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Sourcing this PKGBUILD for `makepkg --printsrcinfo` only evaluates top-level variable assignments and function definitions. The top-level scope contains standard metadata variables (`pkgbase`, `pkgname`, `pkgver`, `source`, `sha256sums`, etc.) and function definitions for `prepare()`, `build()`, `check()`, and `package_*()` functions. There are no top-level command substitutions, no network calls, no file modifications, and no obfuscated code that would execute during sourcing.

The only commands that fetch code or run builds occur inside the function bodies (`cargo fetch`, `cargo build`, `cargo test`), but `makepkg --printsrcinfo` does not execute those functions. No genuinely malicious behavior is present in the global scope, so this narrow gate is safe. The pinned checksum and standard GitHub source URL are consistent with normal packaging practice.
</details>
<evidence>
</evidence>
<summary>
Top-level PKGBUILD scope is safe; only metadata and function definitions execute.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD scope is safe; only metadata and function definitions execute.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, gnome-shell-extension-computer-use-linux.install...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is standard AUR package metadata. It declares the upstream source as a pinned release tarball (`v0.7.17`) from the project's official GitHub repository, with a concrete sha256 checksum rather than `SKIP`. Dependencies listed correspond to the package's stated purpose (AT-SPI, portals, window manager integration, input fallbacks), and the optdepends entries are normal runtime suggestions. No suspicious network endpoints, encoded commands, file operations, or build-time behavior are present.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata with pinned source and checksum; no security concerns.</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, gnome-shell-extension-computer-use-linux.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with pinned source and checksum; no security concerns.
LLM auditresponse for gnome-shell-extension-computer-use-linux.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.install` file is a standard Arch package install script. It defines informational messages shown during package installation and upgrade. The `post_install` and `post_upgrade` functions only print text using `cat` and `echo`; they do not execute any commands, download files, modify the system, or handle user data.

The message about `computer-use-linux setup-window-targeting` is upstream application guidance for enabling the GNOME Shell extension and is consistent with the package's stated purpose. No obfuscation, network access, or suspicious file operations are present.
</details>
<evidence>
</evidence>
<summary>
Install script only prints informational messages; no malicious behavior found.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed gnome-shell-extension-computer-use-linux.install. Status: SAFE -- Install script only prints informational messages; no malicious behavior found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a Rust project and a GNOME Shell extension. It downloads a pinned versioned tarball from the project's own GitHub upstream, verifies it with a SHA-256 checksum, and builds it with `cargo fetch --locked`, `cargo build --frozen`, and `cargo test --frozen`. The build and package functions only install the compiled binaries, license, and extension files into `$pkgdir`. No network requests beyond the declared upstream source and Rust dependency fetching are present, and no obfuscated code, dangerous shell constructs, or unexpected system modifications appear.

The `cargo fetch` operation retrieves Rust crate dependencies as part of the normal Rust build process, and the use of `--locked`/`--frozen` relies on the project's lockfile for reproducibility. The `.install` file referenced by the extension package is not shown, but referencing an install script is a normal Arch packaging convention. Overall, this file is consistent with legitimate packaging and shows no evidence of injected malicious behavior.
</details>
<evidence>
</evidence>
<summary>
Standard Rust and GNOME extension PKGBUILD; no malicious behavior found.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard Rust and GNOME extension PKGBUILD; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 11,604
  Completion Tokens: 1,350
  Total Tokens: 12,954
  Total Cost: $0.001302
  Execution Time: 39.39 seconds

Final Status: SAFE


No issues found.
