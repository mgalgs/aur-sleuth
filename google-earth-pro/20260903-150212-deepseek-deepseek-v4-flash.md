---
package: google-earth-pro
pkgver: 7.3.7.1327
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 13361
completion_tokens: 1700
total_tokens: 15061
cost: 0.00145954788
execution_time: 88.55
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 4
injection_attempts: 0
date: 2026-09-03T15:02:11Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file, no security issues.
  - file: google-earth-pro.install
    status: safe
    summary: Informational post-install script, no security issues
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no malicious code.
---

Materializing google-earth-pro from local mirror...
Materialized google-earth-pro
Analyzing google-earth-pro AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only top-level variable assignments and array definitions. There are no command substitutions, backticks, eval, or any executable code in the global scope that would run when sourcing the file. Functions such as `prepare()`, `package()`, and `pkgver()` are defined but are not invoked by `makepkg --printsrcinfo`. Therefore, running this command poses no risk of malicious execution.
</details>
<evidence></evidence>
<summary>No executable code in global scope; safe to source.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No executable code in global scope; safe to source.
Note: 4 remote source(s) have no checksum (sha256sums=SKIP), so the bytes are not verifiable: Google-Terms-of-Service.html::https://www.google.com/intl/ALL/policies/terms/index.html, Google-Earth-Additional-Terms-of-Service.html::https://www.google.com/help/terms_maps.html, Legal-Notices-for-Google-Earth-and-Google-Earth-APIs.html::https://www.google.com/help/legalnotices_maps.html, Google-Privacy-Policy.html::https://www.google.com/intl/ALL/policies/privacy/index.html
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, PKGBUILD...
[0/4] Reviewing .SRCINFO, PKGBUILD, .gitignore...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` file with no executable content, no network requests, no obfuscated code, and no system modifications. It only specifies file patterns to ignore in version control. There is no evidence of malicious or dangerous behavior.
</details>
<evidence></evidence>
<summary>Standard .gitignore file, no security issues.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, PKGBUILD, .gitignore, google-earth-pro.install...
[1/4] Reviewing .SRCINFO, PKGBUILD, google-earth-pro.install...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore file, no security issues.
LLM auditresponse for google-earth-pro.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard post-installation hook that only prints informational messages to the user. It defines coloring helper functions using `tput` and `printf`, then outputs notes about the launcher name, a Wayland workaround, and a cache-clearing tip. There are no network requests, file modifications, code downloads, obfuscated commands, or any other indicators of malicious behavior. The script is purely informational and does not execute or fetch any external content.
</details>
<evidence></evidence>
<summary>Informational post-install script, no security issues</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed google-earth-pro.install. Status: SAFE -- Informational post-install script, no security issues
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard AUR .SRCINFO metadata file for the google-earth-pro package. All sources are fetched from official Google domains (dl.google.com and www.google.com). The .deb package has a specific b2sum checksum, while the HTML legal files use SKIP (common for dynamic content like terms of service). There are no suspicious network requests, obfuscated code, or dangerous commands. No evidence of a supply chain attack.
</details>
<evidence></evidence>
<summary>Standard AUR metadata, no security issues.</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a clean, standard AUR package. It downloads the official Google Earth Pro `.deb` from the genuine Google domain (`dl.google.com`), extracts it, and installs the contents correctly. The SKIP checksums on the four policy/legal HTML files are normal practice when those files are obtained from a stable upstream URL. The package removes the Debian-specific cron job and drops SGID bits as a hardening measure. There is no code that exfiltrates data, downloads executable content from unexpected hosts, uses obfuscation, or deviates from expected packaging behaviour.
</details>
<evidence>
</evidence>
<summary>Standard AUR PKGBUILD with no malicious code.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no malicious code.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,361
  Completion Tokens: 1,700
  Total Tokens: 15,061
  Total Cost: $0.001460
  Execution Time: 88.55 seconds

Final Status: SAFE


No issues found.
