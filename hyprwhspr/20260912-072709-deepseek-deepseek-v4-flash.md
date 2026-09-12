---
package: hyprwhspr
pkgver: 1.44.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 15014
completion_tokens: 2272
total_tokens: 17286
cost: 0.00130608324
execution_time: 84.69
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-12T07:27:08Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard AUR .gitignore; no malicious content.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, safe.
  - file: hyprwhspr.install
    status: safe
    summary: Standard .install script with informational messages only.
  - file: PKGBUILD
    status: safe
    summary: Clean PKGBUILD with pinned checksum, no malicious code.
  - file: .nvchecker.toml
    status: safe
    summary: Standard version checker config; no malicious content.
---

Materializing hyprwhspr from local mirror...
Materialized hyprwhspr
Analyzing hyprwhspr AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable definitions at the top level, including `pkgname`, `pkgver`, `arch`, `source`, and `sha256sums`. There are no command substitutions, function calls, or external commands executed in the global scope. The `install` variable is a plain string assignment pointing to a `.install` file. The `build()` and `package()` functions are defined but are not executed during `makepkg --printsrcinfo`, so their contents are out of scope for this gate. No dangerous operations (e.g., `curl`, `wget`, `eval`, base64 decoding) occur at parse time. Running `makepkg --printsrcinfo` on this PKGBUILD is safe.
</details>
<evidence></evidence>
<summary>No top-level dangerous code; safe to parse.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level dangerous code; safe to parse.
Reviewing the 5 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, .gitignore...
[0/5] Reviewing .SRCINFO, .gitignore, .nvchecker.toml...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` for an Arch Linux AUR package repository. It lists patterns for build artifacts (compressed archives, source tarballs, build directories), temporary files, editor leftovers, and OS‑generated files. There is no executable code, no network requests, no obfuscation, and no deviation from normal packaging practices. The content is entirely benign.
</details>
<evidence></evidence>
<summary>Standard AUR .gitignore; no malicious content.</summary>
</security_assessment>

[0/5] Reviewing .SRCINFO, .gitignore, .nvchecker.toml, PKGBUILD...
[1/5] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard AUR .gitignore; no malicious content.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.SRCINFO` metadata file for an AUR package. It defines the package name, version, dependencies, and a pinned source tarball from the official GitHub repository with a fixed tag (`v1.44.0`) and a SHA256 checksum. No commands, obfuscation, or suspicious network destinations are present. The file contains only declarative metadata and follows normal AUR packaging practices. There is no evidence of malicious behavior.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata, safe.</summary>
</security_assessment>

[1/5] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD, hyprwhspr.install...
[2/5] Reviewing .nvchecker.toml, PKGBUILD, hyprwhspr.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, safe.
LLM auditresponse for hyprwhspr.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Arch Linux .install script that prints informational messages during package installation, upgrade, and removal. It contains no commands beyond `cat` with heredocs, and no network requests, file modifications, or obfuscated code. The messages reference user data directories which is normal practice. No security concerns.
</details>
<evidence></evidence>
<summary>Standard .install script with informational messages only.</summary>
</security_assessment>

[3/5] Reviewing .nvchecker.toml, PKGBUILD...
+ Reviewed hyprwhspr.install. Status: SAFE -- Standard .install script with informational messages only.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices. It fetches a pinned tarball from the project's own GitHub releases page with a valid SHA256 checksum, ensuring integrity of the source. The `build()` function is empty (no compilation is needed), and the `package()` function copies the extracted files into the package directory, runs an in‑source validation script (`validate-package-payload.py`) that is part of the upstream payload, installs a systemd user service, and creates a wrapper script with a simple `sed` substitution to adjust the installation path. No obfuscated code, no unexpected network requests, no `curl|bash`, `eval`, or backdoor techniques are present. The use of a validation script is legitimate for this application's packaging workflow and does not indicate malice. The source is pinned and checksummed, so the risk is limited to the upstream repository itself, which is the package's declared origin.
</details>
<evidence></evidence>
<summary>Clean PKGBUILD with pinned checksum, no malicious code.</summary>
</security_assessment>

[4/5] Reviewing .nvchecker.toml...
+ Reviewed PKGBUILD. Status: SAFE -- Clean PKGBUILD with pinned checksum, no malicious code.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard nvchecker configuration used to check for new versions of the hyprwhspr package from its upstream Git repository. It specifies the source as `git`, points to the legitimate GitHub URL `https://github.com/goodroot/hyprwhspr.git`, and declares a version prefix of `v`. There is no obfuscated code, network requests to unexpected hosts, or any other malicious behavior. It is a normal AUR packaging file.
</details>
<evidence></evidence>
<summary>Standard version checker config; no malicious content.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard version checker config; no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 15,014
  Completion Tokens: 2,272
  Total Tokens: 17,286
  Total Cost: $0.001306
  Execution Time: 84.69 seconds

Final Status: SAFE


No issues found.
