---
package: espanso-wayland
pkgbase: espanso
pkgver: 2.4.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 15145
completion_tokens: 2533
total_tokens: 17678
cost: 0.00177412158
execution_time: 41.05
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-04T19:18:46Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file, no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO metadata, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Clean PKGBUILD with pinned source and checksum.
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config, no security issues.
  - file: espanso-wayland.install
    status: safe
    summary: Capability set for legitimate functional need.
---

espanso-wayland is built from espanso
Materializing espanso-wayland from local mirror...
Materialized espanso-wayland
Analyzing espanso-wayland AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains top-level variable definitions and function declarations. No command substitutions, subprocess calls, or other executable code is present in the global scope. The functions `prepare()`, `build()`, `check()`, and `package_*()` are defined but not executed during `makepkg --printsrcinfo`. There is no risk of malicious code execution at this step.
</details>
<evidence></evidence>
<summary>No dangerous top-level code; safe to parse.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code; safe to parse.
Reviewing the 5 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, .gitignore...
[0/5] Reviewing .SRCINFO, .gitignore, .nvchecker.toml...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.gitignore` file is a standard Git ignore file that excludes all files except those explicitly listed (like `PKGBUILD`, `.SRCINFO`, etc.). It contains no executable code, no network requests, no obfuscation, and no system modifications. This is a routine packaging file with no security implications.
</details>
<evidence></evidence>
<summary>Standard .gitignore file, no security concerns.</summary>
</security_assessment>

[0/5] Reviewing .SRCINFO, .gitignore, .nvchecker.toml, PKGBUILD...
[1/5] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore file, no security concerns.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a standard metadata file used by the Arch Build System. It declares the package name, version, source URL (pointing to the official GitHub repository), checksums, and dependencies. No code is executed from this file; it is purely declarative. There are no embedded scripts, obfuscated content, or references to untrusted external resources. The dependencies and options are typical for a Rust-based text expander. No evidence of malicious or supply-chain attack behavior.
</details>
<evidence></evidence>
<summary>Standard .SRCINFO metadata, no malicious content.</summary>
</security_assessment>

[2/5] Reviewing .nvchecker.toml, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO metadata, no malicious content.
[2/5] Reviewing .nvchecker.toml, PKGBUILD, espanso-wayland.install...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Arch packaging practices for a Rust application. The source tarball is downloaded from the official GitHub repository with a pinned version and a valid SHA-256 checksum, ensuring integrity. The build process uses `cargo fetch --locked` to produce deterministic dependency downloads. No obfuscated code, unexpected network requests, or dangerous commands (like curl, wget, eval, or base64 decoding) are present. The only operations are standard compilation, testing (with known failing tests skipped), and installation of binaries, service files, desktop files, and documentation. The file contains no supply-chain attack indicators.
</details>
<evidence>

</evidence>
<summary>Clean PKGBUILD with pinned source and checksum.</summary>
</security_assessment>

[3/5] Reviewing .nvchecker.toml, espanso-wayland.install...
+ Reviewed PKGBUILD. Status: SAFE -- Clean PKGBUILD with pinned source and checksum.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a configuration file for nvchecker, a tool that checks for new upstream versions of software. It specifies that the source type is `git`, pointing to the official espanso GitHub repository (`https://github.com/espanso/espanso.git`), and that version tags have a prefix of `v`. There is no executable code, no network requests to unexpected hosts, no obfuscation, and no data manipulation. The content is entirely benign and follows standard packaging practices for version monitoring.
</details>
<evidence></evidence>
<summary>Standard nvchecker config, no security issues.</summary>
</security_assessment>

[4/5] Reviewing espanso-wayland.install...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config, no security issues.
LLM auditresponse for espanso-wayland.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The install script simply applies the `cap_dac_override` Linux capability to the `/usr/bin/espanso` binary during post-install and post-upgrade. This capability allows the process to bypass file permission checks, which is a known requirement for espanso on Wayland to interact with system-wide input or configuration files. While `cap_dac_override` is a powerful capability, it is set on the application's own binary for a legitimate functional reason, not as a supply-chain attack. There are no network requests, obfuscated code, or unexpected file operations.
</details>
<evidence></evidence>
<summary>Capability set for legitimate functional need.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed espanso-wayland.install. Status: SAFE -- Capability set for legitimate functional need.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 15,145
  Completion Tokens: 2,533
  Total Tokens: 17,678
  Total Cost: $0.001774
  Execution Time: 41.05 seconds

Final Status: SAFE


No issues found.
