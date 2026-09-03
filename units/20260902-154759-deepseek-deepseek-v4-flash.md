---
package: units
pkgver: 2.27
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: b9e20f728bbe0de1871ebaca31738c802edc31f8
prompt_tokens: 16650
completion_tokens: 2013
total_tokens: 18663
cost: 0.00176862504
execution_time: 100.91
files_reviewed: 6
files_skipped: 0
maintainer_files: 6
source_fetch: ok
upstream_files: 71
upstream_named_files: 1
unpinned_sources: 1
injection_attempts: 0
date: 2026-09-02T15:47:55Z
file_verdicts:
  - file: .nvchecker.toml
    status: safe
    summary: Safe configuration file for version checking.
  - file: 0000-pager.patch
    status: safe
    summary: Standard packaging patch, no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no security issues.
  - file: units_currency.timer
    status: safe
    summary: Standard systemd timer, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard GNU units PKGBUILD, no malicious content.
  - file: units_currency.service
    status: safe
    summary: Standard systemd service for currency update.
---

Cloning https://aur.archlinux.org/units.git...
Cloned units
Analyzing units AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard packaging elements: fixed source URLs (GNU FTP via HTTPS), local patches and systemd service files bundled with the AUR package, and checksums for the tarball and patches. There is no `pkgver()` function, no top-level command substitution, and no code that downloads or executes payloads during sourcing. The `--noprepare` and `--nobuild` flags ensure that `prepare()`, `build()`, and `package()` are not executed, so nothing in those functions can run during this gate. The `.sig` file has a SKIP checksum, which is normal for detached signatures; this does not introduce risk because extraction only writes the file to disk without execution. No evidence of exfiltration, backdoors, or untrusted code injection.
</details>
<evidence></evidence>
<summary>Safe: standard source fetching, no dangerous top-level code.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe: standard source fetching, no dangerous top-level code.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: 1 remote source(s) have no checksum (sha256sums=SKIP), so the fetched bytes are not verifiable and can change without any AUR update: https://ftp.gnu.org/gnu/units/units-2.27.tar.gz.sig
Note: the PKGBUILD names 1 file(s) in the downloaded sources (src/units-2.27/configure); they are upstream content and were not reviewed.
Reviewing the 6 file(s) in the AUR repository. The 71 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/6] Reviewing .SRCINFO...
[0/6] Reviewing .SRCINFO, .nvchecker.toml...
[0/6] Reviewing .SRCINFO, .nvchecker.toml, 0000-pager.patch...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard nvchecker configuration file used to check for new versions of the `units` package from the official GNU FTP server. It uses a simple regex to match version numbers in filenames. There is no malicious or suspicious content; it simply defines an upstream version monitoring source.
</details>
<evidence></evidence>
<summary>Safe configuration file for version checking.</summary>
</security_assessment>

[0/6] Reviewing .SRCINFO, .nvchecker.toml, 0000-pager.patch, PKGBUILD...
[1/6] Reviewing .SRCINFO, 0000-pager.patch, PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Safe configuration file for version checking.
LLM auditresponse for 0000-pager.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR packaging patch that adapts the upstream `units` application to Arch Linux. It replaces the default pager path from `/usr/bin/pager` (a Debian-ism not available on Arch) to `less` (commonly available). The change is minimal, well-documented in the comment, and involves no network requests, obfuscated code, or suspicious operations. There is no evidence of malicious intent.
</details>
<evidence></evidence>
<summary>Standard packaging patch, no security issues.</summary>
</security_assessment>

[2/6] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed 0000-pager.patch. Status: SAFE -- Standard packaging patch, no security issues.
[2/6] Reviewing .SRCINFO, PKGBUILD, units_currency.service...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a standard metadata file for an AUR package. It describes the package `units` from GNU, with sources from the official GNU FTP server. All checksums are provided (except for the `.sig` file, which is standard practice). There are no executable commands, obfuscated code, or suspicious network destinations. The file contains only package metadata and is completely benign.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file, no security issues.</summary>
</security_assessment>

[3/6] Reviewing PKGBUILD, units_currency.service...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no security issues.
[3/6] Reviewing PKGBUILD, units_currency.service, units_currency.timer...
LLM auditresponse for units_currency.timer:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd timer unit file that schedules a daily update of a currency rates database. It contains only declarative configuration (OnCalendar, AccuracySec, Persistent) and a standard install target. No executable code, network requests, obfuscation, or suspicious operations are present. The file is consistent with typical packaging practices for a service that periodically fetches data.
</details>
<evidence></evidence>
<summary>Standard systemd timer, no security issues.</summary>
</security_assessment>

[4/6] Reviewing PKGBUILD, units_currency.service...
+ Reviewed units_currency.timer. Status: SAFE -- Standard systemd timer, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is for the well-known GNU `units` package. It downloads source and a signature from the official GNU FTP server (`ftp.gnu.org`), applies a patch, builds with `./configure && make`, and installs normally. The `SKIP` checksum on the `.sig` file is standard for signature verification (the file is not checksummed but verified via GPG). Systemd timer/service units are provided for updating currency rates via `python-requests`, which is an optdepend and expected upstream functionality. No suspicious network requests, obfuscated code, file operations outside the package scope, or supply-chain attack indicators are present.
</details>
<evidence></evidence>
<summary>Standard GNU units PKGBUILD, no malicious content.</summary>
</security_assessment>

[5/6] Reviewing units_currency.service...
+ Reviewed PKGBUILD. Status: SAFE -- Standard GNU units PKGBUILD, no malicious content.
LLM auditresponse for units_currency.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service file for updating the units currency rates database. It runs `/usr/bin/units_cur` after the network is online, which is expected behavior for fetching currency data. There are no dangerous commands, no obfuscation, no unexpected operations. The file contains only metadata and a single `ExecStart` directive pointing to a legitimate binary from the package.
</details>
<evidence></evidence>
<summary>Standard systemd service for currency update.</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed units_currency.service. Status: SAFE -- Standard systemd service for currency update.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 16,650
  Completion Tokens: 2,013
  Total Tokens: 18,663
  Total Cost: $0.001769
  Execution Time: 100.91 seconds

Final Status: SAFE


No issues found.
