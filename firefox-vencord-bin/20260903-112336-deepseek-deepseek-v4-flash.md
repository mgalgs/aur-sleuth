---
package: firefox-vencord-bin
pkgbase: vencord-bin
pkgver: 1.15.4
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 12958
completion_tokens: 3911
total_tokens: 16869
cost: 0.001841232680
execution_time: 85.59
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-03T11:23:36Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with pinned source and checksum.
  - file: .gitignore
    status: safe
    summary: Standard AUR .gitignore; no security issues.
  - file: vencord.install
    status: safe
    summary: Standard post-install message, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Pinned, checksummed upstream source; standard packaging; no malicious behavior found.
---

firefox-vencord-bin is built from vencord-bin
Materializing firefox-vencord-bin from local mirror...
Materialized firefox-vencord-bin
Analyzing firefox-vencord-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only variable assignments and function definitions in its global scope. No command substitutions, backticks, `eval`, or other executable constructs exist at the top level that would run code when the file is sourced. The package functions (package_* ) which handle installation logic are not executed during `makepkg --printsrcinfo`. Therefore, sourcing this PKGBUILD for metadata extraction is safe.</details>
<evidence></evidence>
<summary>No dangerous top-level code execution.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code execution.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .gitignore...
[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is a standard metadata descriptor for an AUR package. It defines multiple sub-packages (vencord-bin, chromium-vencord-bin, firefox-vencord-bin, etc.) that provide Vencord integrations for various browsers. The source is pinned to a specific commit on GitHub (478b22bc5c874d7d61be9152ee9754b65c8757a0) with a SHA-256 checksum, providing a reproducible and verifiable download. There is no obfuscation, no network requests beyond the declared upstream source, and no executable code. The file contains only package metadata (dependencies, descriptions, licensing) and follows standard PKGBUILD/SRCINFO conventions. No supply-chain attack indicators are present.
</details>
<evidence></evidence>
<summary>Standard AUR metadata with pinned source and checksum.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD, vencord.install...
[1/4] Reviewing .gitignore, PKGBUILD, vencord.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with pinned source and checksum.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file for an AUR package repository. It instructs Git to ignore all files except the essential packaging files (`.SRCINFO`, `PKGBUILD`, `vencord.install`, and `.gitignore` itself). There is no executable code, no network requests, no obfuscation, and no system modifications. The file serves a purely administrative purpose and contains no security threats.
</details>
<evidence></evidence>
<summary>Standard AUR .gitignore; no security issues.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, vencord.install...
+ Reviewed .gitignore. Status: SAFE -- Standard AUR .gitignore; no security issues.
LLM auditresponse for vencord.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `vencord.install` contains only a `post_install()` function that prints a help message to the user. It provides instructions on how to configure the Vencord extension for various browsers (Vesktop, Chromium, Firefox, Zen). There are no commands that execute any operations, download files, modify system files, or exfiltrate data. The content is purely informational and follows standard AUR packaging practices for post-installation messages. No malicious or suspicious behavior is present.
</details>
<evidence></evidence>
<summary>Standard post-install message, no security issues.</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed vencord.install. Status: SAFE -- Standard post-install message, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD builds the vencord-bin package set from the upstream Vencord/builds repository at a pinned commit (478b22bc...), downloaded over HTTPS from GitHub with a non-SKIP sha256 checksum. The package functions only extract the archive and copy prebuilt Vencord files and browser extension .xpi files into the package directory (e.g., /usr/lib/vencord, /usr/lib/firefox/browser/extensions/...). The `echo '{}' >> ... package.json` line merely creates a placeholder package.json in the package directory and does not touch anything outside the build root.

No obfuscation, no base64/eval/curl-pipe-shell patterns, no unexpected network destinations, no data exfiltration, and no writes outside `$pkgdir` are present. The referenced `vencord.install` hook is not included in this file, but using install scripts is standard AUR practice. This is a routine, properly pinned AUR packaging file.
</details>
<evidence></evidence>
<summary>Pinned, checksummed upstream source; standard packaging; no malicious behavior found.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Pinned, checksummed upstream source; standard packaging; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,958
  Completion Tokens: 3,911
  Total Tokens: 16,869
  Total Cost: $0.001841
  Execution Time: 85.59 seconds

Final Status: SAFE


No issues found.
