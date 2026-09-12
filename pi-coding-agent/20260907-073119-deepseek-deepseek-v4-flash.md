---
package: pi-coding-agent
pkgver: 0.85.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 12925
completion_tokens: 1618
total_tokens: 14543
cost: 0.001431961566
execution_time: 141.68
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-07T07:31:19Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no malicious content.
  - file: .gitignore
    status: safe
    summary: Standard gitignore with no malicious content.
  - file: update.sh
    status: safe
    summary: Standard AUR helper script; no malicious behavior.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no malicious indicators.
---

Materializing pi-coding-agent from local mirror...
Materialized pi-coding-agent
Analyzing pi-coding-agent AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global scope (the only code executed during `makepkg --printsrcinfo`) consists entirely of standard variable assignments. No command substitutions, function calls, or external commands are present. The `source` array references the upstream GitHub releases URL with a valid checksum. There is no top-level code that could download, execute, or exfiltrate data. Therefore, running `makepkg --printsrcinfo` on this file is safe.
</details>
<evidence></evidence>
<summary>Only static variable definitions in global scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Only static variable definitions in global scope.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .gitignore...
[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is a plain metadata file for an AUR package. It declares the package name, version, dependencies, and a source tarball from the project's official GitHub releases page with a SHA256 checksum. There are no executable instructions, network requests, or any potentially dangerous operations. The content is purely declarative and follows standard AUR packaging practices.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file, no malicious content.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD, update.sh...
[1/4] Reviewing .gitignore, PKGBUILD, update.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no malicious content.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.gitignore` file contains only standard ignore patterns for build artifacts (`src/`, `pkg/`, `*.pkg.tar.*`, `*.tar.gz`) commonly used in Arch Linux packaging workflows. There is no executable code, no network requests, no obfuscation, and no system-modifying instructions. The file is benign and follows normal packaging practices.</details>
<evidence></evidence>
<summary>Standard gitignore with no malicious content.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, update.sh...
+ Reviewed .gitignore. Status: SAFE -- Standard gitignore with no malicious content.
LLM auditresponse for update.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR maintainer helper script that automates version bumping and checksum updates for the `pi-coding-agent` package. It fetches the latest release tag from the official GitHub API, downloads the corresponding source tarball from the project's own releases page, computes a SHA256 checksum, and updates the PKGBUILD accordingly. All network destinations (`api.github.com` and `github.com`) are the legitimate upstream repository. The script performs no hidden commands, obfuscation, or data exfiltration. It is a routine tool for the package maintainer, not executed during end-user installation.
</details>
<evidence></evidence>
<summary>Standard AUR helper script; no malicious behavior.</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed update.sh. Status: SAFE -- Standard AUR helper script; no malicious behavior.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices. It downloads a pinned version of the source tarball from the official GitHub releases, verifies it with a SHA256 checksum, and uses `npm ci --ignore-scripts` which explicitly disables npm lifecycle scripts (a common attack vector). The build and install steps only operate within the package&#x27;s own directories (`$srcdir`, `$pkgdir`). No suspicious network requests, obfuscated code, dangerous commands, or system modifications outside the application scope are present. The symlink in `/usr/bin/pi` is standard CLI exposure.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with no malicious indicators.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no malicious indicators.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,925
  Completion Tokens: 1,618
  Total Tokens: 14,543
  Total Cost: $0.001432
  Execution Time: 141.68 seconds

Final Status: SAFE


No issues found.
