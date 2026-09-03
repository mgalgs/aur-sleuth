---
package: units
pkgver: 2.27
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e1aa01f19251c0ab5d086ae2b4a1ce353c3f844d
prompt_tokens: 16616
completion_tokens: 2485
total_tokens: 19101
cost: 0.001912649116
execution_time: 270.68
files_reviewed: 6
files_skipped: 0
maintainer_files: 6
source_fetch: ok
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 1
injection_attempts: 0
date: 2026-09-03T00:21:26Z
file_verdicts:
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config, no security issues.
  - file: 0000-pager.patch
    status: safe
    summary: Harmless default pager path patch for Arch compatibility.
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO, no malicious content.
  - file: units_currency.service
    status: safe
    summary: Safe systemd service for updates.
  - file: units_currency.timer
    status: safe
    summary: Standard systemd timer, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD, no malicious indicators.
---

Cloning https://aur.archlinux.org/units.git...
Cloned units
Analyzing units AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD defines standard variables and sources for the GNU `units` package. All source URLs point to https://ftp.gnu.org/gnu/units/ (HTTPS) or are local patch and systemd unit files. Checksums are specified for the tarball and patches; the `.sig` file has `SKIP`, which is expected for PGP signature files. There is no executable code in the global scope or `pkgver()` – only variable assignments and function definitions that are not run during `makepkg --verifysource --nodeps` or `makepkg --printsrcinfo`. No dangerous commands like `eval`, `curl`, `wget`, or data exfiltration are present at the top level. The file follows standard AUR packaging practices and poses no risk during source fetching and verification.</details>
<evidence></evidence>
<summary>Safe: no dangerous code in global scope or pkgver().</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe: no dangerous code in global scope or pkgver().
Downloading sources...
makepkg --verifysource --nodeps successful
Note: 1 remote source(s) have no checksum (sha256sums=SKIP), so the fetched bytes are not verifiable and can change without any AUR update: https://ftp.gnu.org/gnu/units/units-2.27.tar.gz.sig
Reviewing the 6 file(s) in the AUR repository. The 0 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/6] Reviewing .SRCINFO...
[0/6] Reviewing .SRCINFO, .nvchecker.toml...
[0/6] Reviewing .SRCINFO, .nvchecker.toml, 0000-pager.patch...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a configuration file for `nvchecker`, a tool that checks for new upstream releases. It defines a regex source to monitor the official GNU FTP server for new releases of the `units` package. There is no code execution, network requests outside the standard upstream source, or any malicious behavior. It is a standard, benign AUR maintenance file.
</details>
<evidence></evidence>
<summary>Standard nvchecker config, no security issues.</summary>
</security_assessment>

[0/6] Reviewing .SRCINFO, .nvchecker.toml, 0000-pager.patch, PKGBUILD...
[1/6] Reviewing .SRCINFO, 0000-pager.patch, PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config, no security issues.
LLM auditresponse for 0000-pager.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a packaging patch that changes the default pager for the `units` program from `/usr/bin/pager` to `less`. The comment explains that `/usr/bin/pager` is a Debian-ism not available in Arch, while `less` is present on most Arch systems. No obfuscation, network requests, file operations, or other suspicious behavior is present. The modification is a standard, benign adjustment for compatibility with the target distribution.
</details>
<evidence></evidence>
<summary>Harmless default pager path patch for Arch compatibility.</summary>
</security_assessment>

[1/6] Reviewing .SRCINFO, 0000-pager.patch, PKGBUILD, units_currency.service...
[2/6] Reviewing .SRCINFO, PKGBUILD, units_currency.service...
+ Reviewed 0000-pager.patch. Status: SAFE -- Harmless default pager path patch for Arch compatibility.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file describes the standard GNU units package (version 2.27) sourced from the official GNU FTP server. All sources are from trusted GNU infrastructure, with a valid signing key specified. The SKIP checksum on the .sig file is normal for PGP signature files. No unusual or malicious content is present—the file is a routine AUR packaging metadata file. The optional dependency on python-requests for live currency rates is a declared upstream feature, not a supply-chain attack.
</details>
<evidence>
</evidence>
<summary>Standard .SRCINFO, no malicious content.</summary>
</security_assessment>

[2/6] Reviewing .SRCINFO, PKGBUILD, units_currency.service, units_currency.timer...
[3/6] Reviewing PKGBUILD, units_currency.service, units_currency.timer...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO, no malicious content.
LLM auditresponse for units_currency.service:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard systemd service unit that runs the `/usr/bin/units_cur` binary after the network is online. No suspicious network requests, obfuscated code, or unexpected operations are present. The service is a normal component of the `units` package for updating currency rates.
</details>
<evidence></evidence>
<summary>Safe systemd service for updates.</summary>
</security_assessment>

[4/6] Reviewing PKGBUILD, units_currency.timer...
+ Reviewed units_currency.service. Status: SAFE -- Safe systemd service for updates.
LLM auditresponse for units_currency.timer:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd timer unit file that schedules a daily update of a currency rates database for the `units` package. It contains no executable code, no network operations, no file modifications, and no obfuscation. The directives (`OnCalendar`, `AccuracySec`, `Persistent`) are routine systemd timer configuration. There are no security concerns.
</details>
<evidence></evidence>
<summary>Standard systemd timer, no security issues.</summary>
</security_assessment>

[5/6] Reviewing PKGBUILD...
+ Reviewed units_currency.timer. Status: SAFE -- Standard systemd timer, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD for the GNU `units` package follows standard Arch packaging practices. It downloads source from the official GNU FTP, verifies GPG signatures, applies a patch, and installs the binary along with systemd service files for updating currency data. There are no obfuscated commands, unexpected network requests, or any code that deviates from normal packaging or the application's stated purpose. The use of `SKIP` for the GPG signature checksum is standard. The symlink for `currency.units` points to a runtime data directory, which is normal for applications that fetch dynamic data. No malicious or insecure patterns are present.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD, no malicious indicators.</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD, no malicious indicators.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 16,616
  Completion Tokens: 2,485
  Total Tokens: 19,101
  Total Cost: $0.001913
  Execution Time: 270.68 seconds

Final Status: SAFE


No issues found.
