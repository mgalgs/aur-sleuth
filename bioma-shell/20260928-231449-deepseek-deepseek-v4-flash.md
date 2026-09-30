---
package: bioma-shell
pkgver: 1.0.0beta5
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 12061
completion_tokens: 1519
total_tokens: 13580
cost: 0.00073773714
execution_time: 29.11
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-28T23:14:49Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Declarative AUR metadata only; no malicious behavior or suspicious content found.
  - file: PKGBUILD
    status: safe
    summary: Clean PKGBUILD with no security concerns.
  - file: bioma-shell.install
    status: safe
    summary: Pure informational install messages; no dangerous or malicious behavior found.
---

Materializing bioma-shell from local mirror...
Materialized bioma-shell
Analyzing bioma-shell AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources only the top-level scope of this PKGBUILD. The top-level code consists entirely of normal variable and array definitions (pkgname, pkgver, depends, source, sha256sums, etc.), a comment, and a function definition `_srcdir()` that is not invoked at parse time. There are no top-level command substitutions, no downloads, no calls to `eval`, `curl`, `wget`, `base64`, or any other code that would execute during sourcing.

The `prepare()`, `build()`, and `package()` functions contain build/install logic (cargo fetch/build, copying files, creating symlinks), but those functions are not executed by `makepkg --printsrcinfo` and are therefore outside the scope of this narrow gate. They should be reviewed in the full PKGBUILD audit, but they do not make parsing the PKGBUILD dangerous.
</details>
<evidence>
</evidence>
<summary>
Top-level PKGBUILD scope is benign; parse-time execution is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD scope is benign; parse-time execution is safe.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, bioma-shell.install...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard AUR `.SRCINFO` metadata file for the `bioma-shell` package. It declares the package name, description, version, dependencies, optional dependencies, source tarball URL, and SHA-256 checksum for the upstream release.

No malicious behavior is present. The source URL points to the project's own GitHub repository, the checksum is pinned rather than skipped, and the listed dependencies and optdepends are consistent with a desktop shell application built on niri and Quickshell. There are no embedded commands, network requests beyond the declared source, file operations, or obfuscated content. The file contains only declarative packaging metadata.
</details>
<evidence>
</evidence>
<summary>
Declarative AUR metadata only; no malicious behavior or suspicious content found.
</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, bioma-shell.install...
+ Reviewed .SRCINFO. Status: SAFE -- Declarative AUR metadata only; no malicious behavior or suspicious content found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard Arch packaging practices for a desktop shell built with Quickshell and Rust. The source is pinned to a specific tag with a provided SHA256 checksum (not SKIP). All operations are limited to building the package (cargo fetch, cargo build) and installing files into standard directories (`/usr/share/bioma`, `/usr/lib/bioma`, `/usr/bin`). There are no network requests beyond the declared upstream tarball, no obfuscated code, no eval/base64/curl/wget, and no manipulation of system files outside the package&apos;s scope. The build process is deterministic with `--frozen` and `--locked` flags. No evidence of supply-chain attack or malware injection.
</details>
<evidence></evidence>
<summary>Clean PKGBUILD with no security concerns.</summary>
</security_assessment>

[2/3] Reviewing bioma-shell.install...
+ Reviewed PKGBUILD. Status: SAFE -- Clean PKGBUILD with no security concerns.
LLM auditresponse for bioma-shell.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is an Arch Linux package install script (`bioma-shell.install`). It only defines `post_install()` and `post_upgrade()` functions that print informational messages to the terminal using `cat` with quoted heredocs. There are no network requests, no command substitution, no file writes, no execution of downloaded content, no obfuscation, and no references to sensitive system paths beyond `/usr/share/bioma` and `/usr/share/bioma/scripts/shell` in plain text messages. The content is purely cosmetic user guidance and contains no behavior that could constitute a supply-chain attack or malicious activity.
</details>
<evidence>
</evidence>
<summary>
Pure informational install messages; no dangerous or malicious behavior found.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed bioma-shell.install. Status: SAFE -- Pure informational install messages; no dangerous or malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,061
  Completion Tokens: 1,519
  Total Tokens: 13,580
  Total Cost: $0.000738
  Execution Time: 29.11 seconds

Final Status: SAFE


No issues found.
