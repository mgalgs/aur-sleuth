---
package: oh-my-pi
pkgver: 18.1.7
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 17288
completion_tokens: 4565
total_tokens: 21853
cost: 0.00213774456
execution_time: 61.98
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-03T19:09:19Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; no security issues found.
  - file: .gitignore
    status: safe
    summary: Standard gitignore for build artifacts.
  - file: skip-native-embed-for-aur.patch
    status: safe
    summary: AUR packaging patch, benign adjustment.
  - file: use-system-opus.patch
    status: safe
    summary: Benign one-line patch switching audiopus_sys from static to dynamic linking.
  - file: PKGBUILD
    status: safe
    summary: Routine AUR PKGBUILD building pinned upstream tag; no malicious behavior found.
---

Materializing oh-my-pi from local mirror...
Materialized oh-my-pi
Analyzing oh-my-pi AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The global/top-level scope of this PKGBUILD contains only standard variable assignments and array definitions. There is one `if` block that modifies dependency arrays conditionally based on `_enable_wayland_screencast`, but this involves only arithmetic evaluation and array appends—no dangerous commands, command substitutions, network requests, or file operations execute at parse time. The `prepare()`, `build()`, `_build_native()`, `_install_completions()`, and `package()` functions are defined but not invoked. Therefore, running `makepkg --printsrcinfo` (which only sources the PKGBUILD) is safe.
</details>
<evidence></evidence>
<summary>No dangerous code in global scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous code in global scope.
Reviewing the 5 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, .gitignore...
[0/5] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is standard AUR package metadata. It defines the package name, version, upstream URL (GitHub), dependencies, and sources. The git source points to the project&#x2019;s own repository with a pinned tag (`v18.1.7`). Two patch files are included with valid SHA-256 checksums. The only checksum set to `SKIP` is for the VCS source, which is normal practice for git-based sources. There is no executable code, no network requests to unrelated hosts, no obfuscation, and no suspicious system operations. This file is purely declarative metadata and poses no supply-chain risk.
</details>
<evidence></evidence>
<summary>Standard AUR metadata; no security issues found.</summary>
</security_assessment>

[0/5] Reviewing .SRCINFO, .gitignore, PKGBUILD, skip-native-embed-for-aur.patch...
[1/5] Reviewing .gitignore, PKGBUILD, skip-native-embed-for-aur.patch...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; no security issues found.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` file used in an AUR package repository. It lists common build artifacts (`/src`, `/pkg`, `*.pkg.tar*`, `oh-my-pi-*.tar.gz`, `/oh-my-pi`) that should be ignored by version control. There is no executable code, no network requests, no obfuscation, and no reference to any external or unexpected resources. This is a routine packaging file with no security concerns.
</details>
<evidence></evidence>
<summary>Standard gitignore for build artifacts.</summary>
</security_assessment>

[1/5] Reviewing .gitignore, PKGBUILD, skip-native-embed-for-aur.patch, use-system-opus.patch...
[2/5] Reviewing PKGBUILD, skip-native-embed-for-aur.patch, use-system-opus.patch...
+ Reviewed .gitignore. Status: SAFE -- Standard gitignore for build artifacts.
LLM auditresponse for skip-native-embed-for-aur.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch modifies a TypeScript build script to force the `reset` variable to `true` and adds a comment explaining that for the AUR package, native addons are shipped as loose `.node` files next to the compiled binary. The change is a straightforward packaging adjustment to skip an embedding step that is not needed for this distribution method. There are no signs of obfuscation, malicious payloads, network requests, or system tampering. The patch aligns with standard AUR practices for adapting upstream build systems to the distribution format.
</details>
<evidence></evidence>
<summary>AUR packaging patch, benign adjustment.</summary>
</security_assessment>

[3/5] Reviewing PKGBUILD, use-system-opus.patch...
+ Reviewed skip-native-embed-for-aur.patch. Status: SAFE -- AUR packaging patch, benign adjustment.
LLM auditresponse for use-system-opus.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a one-line patch to a Rust project's Cargo.toml. It changes `audiopus_sys` from the `"static"` feature to the `"dynamic"` feature. This is a standard packaging adjustment—the package will now link against the system-provided Opus library instead of building/embedding a static copy. There is no malicious behavior: no network fetches, no code execution, no obfuscation, no unexpected file or system modification. The change is consistent with normal distribution packaging practices where system libraries are preferred.
</details>
<evidence>
</evidence>
<summary>
Benign one-line patch switching audiopus_sys from static to dynamic linking.</summary>
</security_assessment>

[4/5] Reviewing PKGBUILD...
+ Reviewed use-system-opus.patch. Status: SAFE -- Benign one-line patch switching audiopus_sys from static to dynamic linking.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD builds `oh-my-pi` from the upstream GitHub repository at a release tag (`v18.1.7`), applies two locally shipped patches with pinned sha256 checksums, and builds the native components using `cargo` and `bun`. It fetches package dependencies from the normal Rust and npm/bun registries during `prepare()` and `build()`, which is standard behavior for this type of project.

The generated `cc-tree-sitter` wrapper is created under `$srcdir`, merely adds `-fno-strict-aliasing` for crates whose package name contains `tree-sitter`, and then execs the system compiler. It does not fetch external code, exfiltrate data, or modify files outside the build and package directories. The completion generation step runs the freshly built binary with isolated `HOME` and `XDG_DATA_HOME` directories, which is a reasonable way to avoid touching the maintainer's real user configuration.

The `sha256sums` entry for the git source is `SKIP`, which is normal for git sources and is a trust or hygiene concern only, not evidence of malice. No obfuscation, suspicious network destinations, or behavior outside normal packaging practices was found.
</details>
<evidence></evidence>
<summary>Routine AUR PKGBUILD building pinned upstream tag; no malicious behavior found.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Routine AUR PKGBUILD building pinned upstream tag; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 17,288
  Completion Tokens: 4,565
  Total Tokens: 21,853
  Total Cost: $0.002138
  Execution Time: 61.98 seconds

Final Status: SAFE


No issues found.
