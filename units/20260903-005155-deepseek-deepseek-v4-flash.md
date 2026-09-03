---
package: units
pkgver: 2.27
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 1d6b5f000e2ff2cbdfdf4e324a3e5ac914955c8a
prompt_tokens: 16470
completion_tokens: 2456
total_tokens: 18926
cost: 0.001894573492
execution_time: 132.92
files_reviewed: 6
files_skipped: 0
maintainer_files: 6
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 1
injection_attempts: 0
date: 2026-09-03T00:51:55Z
file_verdicts:
  - file: 0000-pager.patch
    status: safe
    summary: Arch packaging patch, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard package with no malicious indicators.
  - file: units_currency.service
    status: safe
    summary: Standard systemd service unit, no malicious content.
  - file: units_currency.timer
    status: safe
    summary: Standard timer unit, no malicious content.
  - file: .nvchecker.toml
    status: safe
    summary: Configuration file for automated version checking.
  - file: .SRCINFO
    status: safe
    summary: Metadata file with no malicious content.
---

Cloning https://aur.archlinux.org/units.git...
Cloned units
Analyzing units AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The global/top-level scope of this PKGBUILD contains only standard variable definitions (pkgname, pkgver, source, sha256sums, etc.) and comments. There are no command substitutions, backticks, `eval`, `curl`, `wget`, or other dangerous commands that would execute when the PKGBUILD is sourced. The only variable expansion (`$pkgname-$pkgver` in the source array) is benign and simply constructs the tarball filename. All potentially risky operations (patching, building, installing) are confined to `prepare()`, `build()`, and `package()` functions, which are never executed during `makepkg --printsrcinfo`. Therefore, running this command is safe.
</details>
<evidence></evidence>
<summary>No malicious code in global scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code in global scope.
Note: 1 remote source(s) have no checksum (sha256sums=SKIP), so the bytes are not verifiable: https://ftp.gnu.org/gnu/units/units-2.27.tar.gz.sig
Reviewing the 6 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/6] Reviewing .SRCINFO...
[0/6] Reviewing .SRCINFO, .nvchecker.toml...
[0/6] Reviewing .SRCINFO, .nvchecker.toml, 0000-pager.patch...
LLM auditresponse for 0000-pager.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Arch Linux packaging patch that adjusts the default pager used by the `units` program from `/usr/bin/pager` (a Debian-ism not provided by Arch packages) to `less`, which is commonly available on Arch systems. The change is purely a configuration adaptation and contains no obfuscation, network requests, suspicious commands, or any other indicators of malicious behavior. It is a routine and transparent modification to improve compatibility with the target distribution.
</details>
<evidence></evidence>
<summary>Arch packaging patch, no malicious content.</summary>
</security_assessment>

[0/6] Reviewing .SRCINFO, .nvchecker.toml, 0000-pager.patch, PKGBUILD...
[1/6] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD...
+ Reviewed 0000-pager.patch. Status: SAFE -- Arch packaging patch, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard Arch packaging practices. The source tarball is fetched from the official GNU FTP server, with a valid PGP signature key hardcoded for verification. All other source files have checksums provided. The `package()` function creates a symlink from `/usr/share/units/currency.units` to `/var/lib/units/currency.units`, which is a normal pattern for allowing runtime updates of currency conversion data. The systemd timer and service files are legitimate for periodic currency rate updates. There are no suspicious network requests, obfuscated code, or unexpected system modifications. The `!makeflags` option is a build optimization, not a security concern. No evidence of malicious injection or supply-chain attack is present.
</details>
<evidence></evidence>
<summary>Standard package with no malicious indicators.</summary>
</security_assessment>

[1/6] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD, units_currency.service...
[2/6] Reviewing .SRCINFO, .nvchecker.toml, units_currency.service...
+ Reviewed PKGBUILD. Status: SAFE -- Standard package with no malicious indicators.
LLM auditresponse for units_currency.service:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard systemd service unit that runs the package's own binary `/usr/bin/units_cur` after the network is online. There is no obfuscation, network requests, file manipulation, or any other suspicious content. The service definition follows normal packaging practices and does not introduce any supply-chain attack vector.
</details>
<evidence></evidence>
<summary>Standard systemd service unit, no malicious content.</summary>
</security_assessment>

[2/6] Reviewing .SRCINFO, .nvchecker.toml, units_currency.service, units_currency.timer...
[3/6] Reviewing .SRCINFO, .nvchecker.toml, units_currency.timer...
+ Reviewed units_currency.service. Status: SAFE -- Standard systemd service unit, no malicious content.
LLM auditresponse for units_currency.timer:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd timer unit file. It defines a daily timer for updating currency rates, with no executable code, network requests, file operations, or obfuscation. The file contains only declarative configuration that is typical for scheduled tasks in Arch Linux packages. No malicious behavior is present.
</details>
<evidence>
</evidence>
<summary>Standard timer unit, no malicious content.</summary>
</security_assessment>

[4/6] Reviewing .SRCINFO, .nvchecker.toml...
+ Reviewed units_currency.timer. Status: SAFE -- Standard timer unit, no malicious content.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard nvchecker configuration file for checking upstream version updates of the GNU Units package. It specifies a regex-based check against the official GNU FTP server, which is the legitimate upstream source. There is no code execution, no obfuscation, and no network request to any unexpected or untrusted host. The file is innocuous and follows normal packaging practices.
</details>
<evidence></evidence>
<summary>Configuration file for automated version checking.</summary>
</security_assessment>

[5/6] Reviewing .SRCINFO...
+ Reviewed .nvchecker.toml. Status: SAFE -- Configuration file for automated version checking.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a metadata-only file used by Arch Linux package managers. It contains no executable code, scripts, or commands. All sources are fetched from the official GNU FTP server, and the tarball has a valid SHA256 checksum. The SKIP for the .sig file is standard practice for signature files. No obfuscation, network redirects, or suspicious operations are present. This file adheres to normal AUR packaging conventions.
</details>
<evidence></evidence>
<summary>Metadata file with no malicious content.</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Metadata file with no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 16,470
  Completion Tokens: 2,456
  Total Tokens: 18,926
  Total Cost: $0.001895
  Execution Time: 132.92 seconds

Final Status: SAFE


No issues found.
