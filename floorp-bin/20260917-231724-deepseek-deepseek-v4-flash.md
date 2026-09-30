---
package: floorp-bin
pkgver: 12.18.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 18996
completion_tokens: 6213
total_tokens: 25209
cost: 0.00219954
execution_time: 153.83
files_reviewed: 5
files_skipped: 1
maintainer_files: 6
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-17T23:17:24Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file with no security concerns.
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config for version tracking; no malicious content.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore for AUR packaging.
  - file: floorp.png
    status: skipped
    summary: "Skipping binary file: floorp.png"
  - file: floorp.desktop
    status: safe
    summary: Standard .desktop file with no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD packaging; no evidence of malicious or suspicious behavior found.
---

Materializing floorp-bin from local mirror...
Materialized floorp-bin
Analyzing floorp-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` merely sources the PKGBUILD, which executes only top-level code. In this file, the top level consists solely of variable assignments (`_pkgname`, `pkgname`, `pkgver`, `pkgdesc`, `url`, arrays for `source`, `sha256sums`, `makedepends`, `optdepends`, etc.) and a `package()` function definition. None of these perform command substitution, eval, network requests, or external tool execution at parse time. The `: ${_install_path:=usr/lib}` and `: ${_wmclass:=floorp}` lines are harmless parameter expansions.

The `package()` body does contain shell logic (`sed`, `install`, `ln`, `magick`, here-docs/here-strings, and file writes into `$pkgdir`), but that function is never invoked by `makepkg --printsrcinfo` — it will only run during a full build, which is outside the scope of this safety gate. The source URLs point to the project's own GitHub releases page, and the tarball checksums are pinned rather than SKIPped. Nothing in the top-level scope downloads, decodes, or executes untrusted payloads. No genuinely malicious behavior is triggered by sourcing this file.
</details>
<evidence></evidence>
<summary>
Top-level parse only defines variables and a function; nothing malicious executes.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level parse only defines variables and a function; nothing malicious executes.
Reviewing the 6 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/6] Reviewing .SRCINFO...
[0/6] Reviewing .SRCINFO, .gitignore...
[0/6] Reviewing .SRCINFO, .gitignore, .nvchecker.toml...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is metadata only: package name, version, description, upstream URL, dependencies, source URLs, and SHA-256 checksums. It contains no executable code. All sources point to the official Floorp GitHub releases, and checksums are provided for verification. There is no evidence of malicious behavior such as obfuscation, unexpected network destinations, or data exfiltration. This file is a standard AUR metadata descriptor.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file with no security concerns.</summary>
</security_assessment>

[0/6] Reviewing .SRCINFO, .gitignore, .nvchecker.toml, PKGBUILD...
[1/6] Reviewing .gitignore, .nvchecker.toml, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file with no security concerns.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a configuration for nvchecker, a tool that checks for new upstream releases. It defines a single package entry (`floorp-bin`) that monitors the GitHub repository `Floorp-Projects/Floorp` for the latest release tagged with a `v` prefix. There are no commands, scripts, or obfuscated content. The file only contains standard TOML key-value pairs for release monitoring. No supply-chain attack vectors are present.
</details>
<evidence>
</evidence>
<summary>Standard nvchecker config for version tracking; no malicious content.</summary>
</security_assessment>

[1/6] Reviewing .gitignore, .nvchecker.toml, PKGBUILD, floorp.desktop...
[2/6] Reviewing .gitignore, PKGBUILD, floorp.desktop...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config for version tracking; no malicious content.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file for a Git repository. It ignores all files (`*`) and then selectively un-ignores the essential AUR package files: `PKGBUILD`, `.SRCINFO`, and `.gitignore` itself. This is normal and expected for an AUR package repository. No malicious behavior, obfuscation, or security concerns are present.
</details>
<evidence>
</evidence>
<summary>Standard .gitignore for AUR packaging.</summary>
</security_assessment>

[2/6] Reviewing .gitignore, PKGBUILD, floorp.desktop, floorp.png...
[3/6] Reviewing PKGBUILD, floorp.desktop, floorp.png...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore for AUR packaging.
[4/6] Reviewing PKGBUILD, floorp.desktop...
! Reviewed floorp.png. Status: SKIPPED -- Skipping binary file: floorp.png
LLM auditresponse for floorp.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Freedesktop.org .desktop file for the Floorp web browser. It contains only localized metadata (Name, GenericName, Comment, etc.) and desktop action definitions (new-window, new-private-window, profile-manager-window). The Exec lines invoke the `floorp` binary with appropriate command-line arguments. There are no network requests, encoded or obfuscated code, file operations, or system modifications. No evidence of malicious behavior or supply-chain attack.
</details>
<evidence></evidence>
<summary>Standard .desktop file with no malicious content.</summary>
</security_assessment>

[5/6] Reviewing PKGBUILD...
+ Reviewed floorp.desktop. Status: SAFE -- Standard .desktop file with no malicious content.
LLM auditresponse for PKGBUILD:
 <security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD performs only routine packaging operations: copying the downloaded binary tarball into the package directory, installing a desktop file, creating a launcher script, sizing application icons with ImageMagick, and writing a `policies.json` that disables auto-updates (a normal choice for a distro-packaged browser). The binary tarball is fetched from the project&apos;s own official GitHub releases over HTTPS, a standard and expected source for an AUR `-bin` package. No `eval`, base64/obfuscated strings, `curl|bash`, reverse shell, credential handling, or writes outside `$pkgdir` are present.

The excerpt has packaging-quality issues: `source_x86_64`/`source_aarch64` and `sha256sums_x86_64`/`sha256sums_aarch64` are declared but never merged into the base `source`/`sha256sums` arrays in the shown text, so the tarball would not be downloaded as written. That is a maintainer bug, not evidence of malice. The TAR checksums appear pinned, and the launcher and desktop file are simple `install` + here-doc snippets that are standard practice. Nothing in this file deviates from ordinary packaging behavior.
</details>
<evidence>
</evidence>
<summary>
Standard PKGBUILD packaging; no evidence of malicious or suspicious behavior found.</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD packaging; no evidence of malicious or suspicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
(Skipped 1 file: floorp.png)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 18,996
  Completion Tokens: 6,213
  Total Tokens: 25,209
  Total Cost: $0.002200
  Execution Time: 153.83 seconds

Final Status: SAFE


No issues found.


Audit Skips:

floorp.png: [SKIPPED] Skipping binary file: floorp.png
