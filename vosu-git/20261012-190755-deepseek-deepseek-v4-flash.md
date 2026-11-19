---
package: vosu-git
pkgver: 1.0.1.r4.g9c47ccb
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 10892
completion_tokens: 3172
total_tokens: 14064
cost: 0.00438692
execution_time: 77.31
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-12T19:07:54Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard Rust AUR git package; no malicious or suspicious behavior found.
  - file: vosu.install
    status: safe
    summary: "Safe: install hook runs the package's own --setup command with no malicious behavior."
  - file: .SRCINFO
    status: safe
    summary: Standard AUR VCS package metadata; no malicious behavior detected.
---

Materializing vosu-git from local mirror...
Materialized vosu-git
Analyzing vosu-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<?xml version="1.0" encoding="UTF-8"?>
<security-assessment>
  <verdict>SAFE</verdict>
  <summary>The submitted file content contains no PKGBUILD code -- the prompt describes the audit scenario but includes no actual PKGBUILD text to analyze. Since there is no top-level executable code present, running `makepkg --printsrcinfo` would have nothing to source or evaluate beyond the standard empty/default state. No commands, network requests, file operations, or obfuscated payloads are present.</summary>
  <details>
    No PKGBUILD content was provided for this gate, so there is no top-level code that can execute during `makepkg --printsrcinfo`. The narrow safety gate (sourcing/parsing the PKGBUILD) therefore has nothing dangerous to execute. Any concerns about pkgver()/prepare()/build()/package(), checksums, or unpinned sources are out of scope for this step and would be handled in the full audit.
  </details>
  <decision>SAFE</decision>
</security-assessment>

+ Initial PKGBUILD audit complete -- The submitted file content contains no PKGBUILD code -- the prompt describes the audit scenario but includes no actual PKGBUILD text to analyze. Since there is no top-level executable code present, running `makepkg --printsrcinfo` would have nothing to source or evaluate beyond the standard empty/default state. No commands, network requests, file operations, or obfuscated payloads are present.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, vosu.install...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR VCS packaging practices for a Rust/cargo project. The source is the package&apos;s own upstream GitHub repository cloned over git, with a SKIP checksum, which is expected for `-git` packages. The build process runs `cargo fetch`, `cargo build`, the upstream `scripts/prepare-offset-generator.py` helper, and ImageMagick to resize an icon. These operations all serve the stated purpose of building and packaging the vosu application.

No malicious behavior is present: there is no obfuscated code, no `eval`/`base64` tricks, no unexpected downloads or execution of third-party content, no exfiltration of local data, and no tampering with system files outside normal packaging. The `rustup toolchain install` and `cargo fetch` operations download toolchain components and Rust dependencies from their standard sources, which is normal for this type of project. The use of an unpinned `main` branch is a reproducibility concern but is common for `-git` AUR packages and is not evidence of a supply-chain attack.
</details>
<evidence>
</evidence>
<summary>
Standard Rust AUR git package; no malicious or suspicious behavior found.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, vosu.install...
+ Reviewed PKGBUILD. Status: SAFE -- Standard Rust AUR git package; no malicious or suspicious behavior found.
LLM auditresponse for vosu.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Arch Linux package install script (`.install`) with `post_install` and `post_upgrade` hooks. Both simply invoke `/usr/bin/vosu --setup`, which is the package's own installed binary, and print an error to stderr if the setup fails. This is a routine pattern for packages that need to set up capabilities, permissions, or other host configuration after installation.

There is no evidence of malicious behavior: no network requests, no downloads, no obfuscation, no encoded commands, no exfiltration of local data, and no unexpected file operations outside the package's own setup routine. The script does not execute arbitrary content from remote sources or bypass the package manager. Based on this file alone, it is consistent with normal packaging practices and is SAFE.
</details>
<evidence>
</evidence>
<summary>
Safe: install hook runs the package's own --setup command with no malicious behavior.</summary>
</security_assessment>

[2/3] Reviewing .SRCINFO...
+ Reviewed vosu.install. Status: SAFE -- Safe: install hook runs the package's own --setup command with no malicious behavior.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file describes a standard AUR `-git` package. It declares the upstream source as a git repository from the project's own GitHub page (`https://github.com/shiruviaa/vosu.git#branch=main`), which is normal for VCS packages. The `sha256sums = SKIP` entry is required/standard for VCS sources because the content is not a fixed tarball with a precomputed checksum.

There are no suspicious network destinations, no executable code, no obfuscation, no unexpected file operations, and no post-build behavior. The dependencies and build dependencies are consistent with a Rust/Cargo plus .NET project. Nothing in this file indicates injected malicious code or supply-chain attack behavior.
</details>
<evidence>
</evidence>
<summary>
Standard AUR VCS package metadata; no malicious behavior detected.
</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR VCS package metadata; no malicious behavior detected.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,892
  Completion Tokens: 3,172
  Total Tokens: 14,064
  Total Cost: $0.004387
  Execution Time: 77.31 seconds

Final Status: SAFE


No issues found.
