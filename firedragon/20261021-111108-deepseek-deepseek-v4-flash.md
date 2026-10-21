---
package: firedragon
pkgver: 13.9.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 17788
completion_tokens: 3689
total_tokens: 21477
cost: 0.002290106
execution_time: 35.63
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-21T11:11:08Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore for AUR build artifacts; no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with pinned checksums; no security issues found.
  - file: firedragon.install
    status: safe
    summary: Trivial post-upgrade warning script; no malicious or dangerous behavior.
  - file: PKGBUILD
    status: safe
    summary: Standard Firefox fork PKGBUILD with pinned sources; no malicious behavior found.
---

Materializing firedragon from local mirror...
Materialized firedragon
Analyzing firedragon AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` only sources the global/top-level scope of this PKGBUILD. The top-level content consists entirely of standard variable definitions, metadata arrays (`depends`, `makedepends`, `source`, `sha256sums`, etc.), and the `install` variable. There are no top-level command substitutions, no `eval`, no `curl`/`wget`/`bash` payloads, no base64/encoded blobs, and no file operations that would execute at parse time.

The `prepare()`, `build()`, and `package()` functions contain the actual build logic, including patching, `pnpm` usage, Mozilla build commands, and installation into `$pkgdir`. However, these functions are not executed by `makepkg --printsrcinfo`, so they are outside the scope of this narrow gate and should be reviewed in the full audit. Nothing in the global scope poses an execution risk during this command.
</details>
<evidence>
</evidence>
<summary>
Global scope is standard metadata only; no malicious top-level execution risk.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Global scope is standard metadata only; no malicious top-level execution risk.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing PKGBUILD...
[0/4] Reviewing PKGBUILD, .gitignore...
[0/4] Reviewing PKGBUILD, .gitignore, .SRCINFO...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` used in an Arch User Repository (AUR) package repository. It excludes local build artifacts such as the `src/` directory, the `pkg/` directory, and generated tarballs (`*.tar.*`). These are normal patterns for AUR packages built with `makepkg`. There is no executable code, no network activity, no file modification outside the package build area, and no obfuscation or suspicious commands. This file does not present any security or supply-chain risk.
</details>
<evidence>
</evidence>
<summary>
Standard .gitignore for AUR build artifacts; no security concerns.</summary>
</security_assessment>

[0/4] Reviewing PKGBUILD, .gitignore, .SRCINFO, firedragon.install...
[1/4] Reviewing PKGBUILD, .SRCINFO, firedragon.install...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore for AUR build artifacts; no security concerns.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file contains only standard packaging metadata for the FireDragon browser. It declares the expected source tarballs: the upstream FireDragon release archive from the project's own GitLab repository, and an upstream Gentoo Mozilla patchset from dev.gentoo.org. Both sources have pinned SHA-256 checksums, and no source uses `SKIP`.

There are no suspicious network requests, no encoded or obfuscated commands, no unexpected file operations, and no executables fetched from unrelated hosts. The dependency list, options, and install script reference are all consistent with a normal browser package build. No evidence of injected malicious behavior or supply-chain attack was found.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata with pinned checksums; no security issues found.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, firedragon.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with pinned checksums; no security issues found.
LLM auditresponse for firedragon.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Arch Linux package install script. It defines only a `post_upgrade()` function that prints a warning message when upgrading from an older 1.x version, advising the user to create a separate FireDragon profile with `firedragon -P`.

There are no network requests, downloads, code execution, file modifications, obfuscated content, or references to sensitive system data. The behavior is limited to a terminal message and is consistent with normal packaging practice. No security issues found.
</details>
<evidence></evidence>
<summary>Trivial post-upgrade warning script; no malicious or dangerous behavior.</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed firedragon.install. Status: SAFE -- Trivial post-upgrade warning script; no malicious or dangerous behavior.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard source build for the FireDragon browser. It downloads the package's own release tarball from the project's GitLab and a Firefox patchset from dev.gentoo.org, both with pinned sha256 checksums. The `prepare()` function applies those upstream patch files with `patch`, runs `pnpm install --frozen-lockfile` for the browser's frontend dependencies, and the `build()` function runs the normal Firefox `mach` build system, including an expected multi-stage PGO profile step under `xvfb`. No obfuscation, unexpected network destinations, `curl|bash`, base64 decoding, or data exfiltration is present.

The `sed` edits to `third_party/rust/bindgen/.cargo-checksum.json` replace vendored crate checksums so that the applied upstream patches remain consistent with Cargo's checksum metadata; this is a routine maintenance step when patching vendored Rust crates, not evidence of injected malicious code. The packaging phase only installs browser files, icons, desktop metadata, and a wrapper script into `$pkgdir`. This is consistent with ordinary AUR packaging practice.
</details>
<evidence>
</evidence>
<summary>
Standard Firefox fork PKGBUILD with pinned sources; no malicious behavior found.
</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard Firefox fork PKGBUILD with pinned sources; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 17,788
  Completion Tokens: 3,689
  Total Tokens: 21,477
  Total Cost: $0.002290
  Execution Time: 35.63 seconds

Final Status: SAFE


No issues found.
