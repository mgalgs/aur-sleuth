---
package: hyprwhspr
pkgver: 1.48.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 15251
completion_tokens: 2349
total_tokens: 17600
cost: 0.0030936507
execution_time: 27.39
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-09T15:04:36Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Benign .gitignore file; no malicious behavior or security concerns found.
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config, no malicious content.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR package metadata with pinned GitHub source and checksum; no malicious behavior found.
  - file: hyprwhspr.install
    status: safe
    summary: "Benign install script: only prints informational messages; no malicious behavior."
  - file: PKGBUILD
    status: safe
    summary: Clean, standard AUR PKGBUILD with pinned checksum.
---

Materializing hyprwhspr from local mirror...
Materialized hyprwhspr
Analyzing hyprwhspr AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable definitions and function declarations (`build()`, `package()`). There are no top-level command substitutions, backtick executions, or any code that would execute during `makepkg --printsrcinfo`. All potentially dangerous operations (e.g., `sed`, `cp`, `chmod`) are confined within the `package()` function, which is not executed during this step. The `install` variable points to a file, but that file is not sourced at printsrcinfo time. No network requests, obfuscated code, or data exfiltration are present in the global scope.
</details>
<evidence></evidence>
<summary>No malicious top-level code; safe to parse.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious top-level code; safe to parse.
Reviewing the 5 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, .gitignore...
[0/5] Reviewing .SRCINFO, .gitignore, .nvchecker.toml...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` for an Arch User Repository package. It excludes common packaging build artifacts such as `.pkg.tar.zst`, source tarballs, build directories (`pkg/`, `src/`), editor files, and OS junk files. There are no executable commands, network operations, obfuscated content, or suspicious file manipulations. The content is entirely consistent with routine AUR development workflow and poses no security risk.
</details>
<evidence>
</evidence>
<summary>
Benign .gitignore file; no malicious behavior or security concerns found.</summary>
</security_assessment>

[1/5] Reviewing .SRCINFO, .nvchecker.toml...
+ Reviewed .gitignore. Status: SAFE -- Benign .gitignore file; no malicious behavior or security concerns found.
[1/5] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `.nvchecker.toml` is a simple configuration file for the `nvchecker` tool, which is used to automatically check for new versions of software from upstream. It specifies the package name `hyprwhspr`, the source type as `git`, the upstream Git repository URL `https://github.com/goodroot/hyprwhspr.git`, and a version prefix `v`. There are no executable commands, obfuscated code, dangerous operations, or any indicators of a supply-chain attack. The configuration is standard and expects the upstream repository to be the official one. No malicious behavior is present.
</details>
<evidence></evidence>
<summary>Standard nvchecker config, no malicious content.</summary>
</security_assessment>

[1/5] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD, hyprwhspr.install...
[2/5] Reviewing .SRCINFO, PKGBUILD, hyprwhspr.install...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config, no malicious content.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file describes a standard AUR package for `hyprwhspr`, a system-wide speech-to-text tool. The package source is the project's own upstream GitHub release tarball, fetched over HTTPS from `https://github.com/goodroot/hyprwhspr/archive/refs/tags/v1.48.0.tar.gz` with a pinned version and a sha256 checksum. Dependencies are appropriate for the stated purpose (audio capture, clipboard, Wayland/X11 input injection, PipeWire). No suspicious network endpoints, obfuscated code, dangerous commands, or unexpected file/system operations are present.

The only minor hygiene point is that the checksum corresponds to the release tarball rather than a VCS source, but the checksum is provided and this is normal packaging. There is no evidence of malware or supply-chain injection.
</details>
<evidence>
</evidence>
<summary>
Standard AUR package metadata with pinned GitHub source and checksum; no malicious behavior found.
</summary>
</security_assessment>

[3/5] Reviewing PKGBUILD, hyprwhspr.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR package metadata with pinned GitHub source and checksum; no malicious behavior found.
LLM auditresponse for hyprwhspr.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Arch Linux package install script. It contains only `post_install`, `post_upgrade`, and `post_remove` functions that print informational messages to the terminal using `cat` with here-documents. There are no network requests, file modifications, command executions, encoded payloads, or references to external hosts. The message text only instructs the user to run `hyprwhspr setup` and notes that user data remains after removal. This is benign, ordinary packaging behavior.
</details>
<evidence>
</evidence>
<summary>
Benign install script: only prints informational messages; no malicious behavior.</summary>
</security_assessment>

[4/5] Reviewing PKGBUILD...
+ Reviewed hyprwhspr.install. Status: SAFE -- Benign install script: only prints informational messages; no malicious behavior.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard, well-structured AUR package for hyprwhspr, a system-wide speech-to-text application. It downloads a pinned tarball from the project&#x27;s official GtHub repository with a fixed SHA-256 checksum, ensuring integrity. The build() function is empty (Python package; no compilation needed), and the package() function copies files into /usr/lib, installs a systemd user service, creates a wrapper script, and places documentation/licenses. No suspicious network requests, obfuscated commands, or unexpected system modifications are present. The call to `python scripts/validate-package-payload.py` executes an upstream validation script from the verified tarball, which is standard practice and not indicative of malice. All dependencies come from official repositories. No supply-chain attack indicators are found.
</details>
<evidence></evidence>
<summary>Clean, standard AUR PKGBUILD with pinned checksum.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Clean, standard AUR PKGBUILD with pinned checksum.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 15,251
  Completion Tokens: 2,349
  Total Tokens: 17,600
  Total Cost: $0.003094
  Execution Time: 27.39 seconds

Final Status: SAFE


No issues found.
