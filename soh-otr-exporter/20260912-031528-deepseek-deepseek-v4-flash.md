---
package: soh-otr-exporter
pkgbase: soh
pkgver: 9.2.3
pkgrel: 3
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 15868
completion_tokens: 2030
total_tokens: 17898
cost: 0.00133637168
execution_time: 84.16
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-12T03:15:27Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no malicious content.
  - file: soh.desktop
    status: safe
    summary: Standard .desktop launcher file, no security concerns.
  - file: soh.install
    status: safe
    summary: Informational install script, no malicious code.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with pinned sources, no malicious behavior.
---

soh-otr-exporter is built from soh
Materializing soh-otr-exporter from local mirror...
Materialized soh-otr-exporter
Analyzing soh-otr-exporter AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global/top-level scope contains only variable assignments (e.g., `_reponame`, `pkgver`, `source`, `sha256sums`), array definitions, and function definitions (`_is_debug`, `prepare`, `build`, `package_soh`, `package_soh-otr-exporter`). No command substitutions, external downloads, obfuscated code, or system-modifying commands are present in the top-level scope. Therefore, sourcing this file to run `makepkg --printsrcinfo` is safe.
</details>
<evidence></evidence>
<summary>No malicious top-level code; sourcing is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious top-level code; sourcing is safe.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, PKGBUILD...
[0/4] Reviewing .SRCINFO, PKGBUILD, soh.desktop...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a metadata file defining the package structure, sources, dependencies, and checksums. All source URLs point to official GitHub repositories for the Ship of Harkwright project (HarbourMasters and Kenix3). Checksums are provided for each source tarball. No obfuscated code, unexpected network requests, or dangerous commands are present. The file conforms to standard AUR practices and contains no evidence of malicious content.
</details>
<evidence></evidence>
<summary>Standard AUR metadata, no malicious content.</summary>
</security_assessment>

[1/4] Reviewing PKGBUILD, soh.desktop...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no malicious content.
[1/4] Reviewing PKGBUILD, soh.desktop, soh.install...
LLM auditresponse for soh.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `soh.desktop` is a standard freedesktop.org desktop entry file. It defines a launcher for the "Ship of Harkinian" application with no unusual fields or arguments. The `Exec` line runs the simple command `soh` without any additional flags, piping, or environment manipulation. No network requests, file operations, obfuscated content, or system modifications are present. This file conforms to normal packaging practices for a desktop application launcher.
</details>
<evidence></evidence>
<summary>Standard .desktop launcher file, no security concerns.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, soh.install...
+ Reviewed soh.desktop. Status: SAFE -- Standard .desktop launcher file, no security concerns.
LLM auditresponse for soh.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `soh.install` is a standard Arch Linux package install script. It defines a function `_install_info` that prints a purely informational message to the user during installation or upgrade. The message advises about the unofficial nature of the package, where to get support, and how to handle OTR files. There are no network requests, file operations, code execution (beyond echoing text), or any other actions that could be considered malicious. The content is benign and follows normal packaging conventions. No evidence of supply-chain attack or dangerous behavior is present.
</details>
<evidence>

</evidence>
<summary>Informational install script, no malicious code.</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed soh.install. Status: SAFE -- Informational install script, no malicious code.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices. All upstream sources are fetched from the official GitHub repositories with pinned commit hashes and matching SHA256 checksums. No obfuscated code, suspicious network requests, or dangerous commands (eval, base64, curl|bash) are present. The `__generate_headers` variable is opt-in (default 0) and only copies ROM files from the build directory for legitimate asset generation – a normal upstream functionality. Build and install steps are routine (cmake, ninja, install). No exfiltration, backdoors, or modifications to system files outside the package scope are observed.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with pinned sources, no malicious behavior.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with pinned sources, no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 15,868
  Completion Tokens: 2,030
  Total Tokens: 17,898
  Total Cost: $0.001336
  Execution Time: 84.16 seconds

Final Status: SAFE


No issues found.
