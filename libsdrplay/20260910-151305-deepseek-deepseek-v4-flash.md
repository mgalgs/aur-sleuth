---
package: libsdrplay
pkgver: 3.15.2
pkgrel: 5
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 15318
completion_tokens: 2143
total_tokens: 17461
cost: 0.001737032024
execution_time: 35.07
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-10T15:13:04Z
file_verdicts:
  - file: 66-sdrplay.rules
    status: safe
    summary: Standard udev rules for SDRplay devices, no malicious content.
  - file: 20-sdrplay.hwdb
    status: safe
    summary: Static hwdb mapping file, no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no security concerns.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with pinned checksum and normal install operations; no malicious behavior found.
  - file: sdrplay.service
    status: safe
    summary: Standard systemd service file, no malicious content.
---

Materializing libsdrplay from local mirror...
Materialized libsdrplay
Analyzing libsdrplay AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global scope contains only standard variable definitions (pkgname, pkgver, source, sha256sums, etc.) and function definitions (prepare, package). There are no top-level command substitutions, eval calls, or any other code that would execute when the file is sourced. Running `makepkg --printsrcinfo` will safely parse the metadata without executing any dangerous operations.
</details>
<evidence></evidence>
<summary>No malicious code in global scope; safe to source.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code in global scope; safe to source.
Reviewing the 5 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, 20-sdrplay.hwdb...
[0/5] Reviewing .SRCINFO, 20-sdrplay.hwdb, 66-sdrplay.rules...
LLM auditresponse for 66-sdrplay.rules:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard udev rules file for SDRplay USB devices. It sets the device mode to 0666 for specific vendor/product pairs (vendor ID 1df7, product IDs 2500, 3000, 3010, 3020, 3030, 3050, 3060) to allow non-root access. This is a common and expected practice for SDR hardware packages. No malicious content, obfuscation, or suspicious behavior is present. The file does not contain any network requests, code execution, or system modifications beyond granting device permissions, which is the intended purpose.
</details>
<evidence></evidence>
<summary>Standard udev rules for SDRplay devices, no malicious content.</summary>
</security_assessment>

[1/5] Reviewing .SRCINFO, 20-sdrplay.hwdb...
+ Reviewed 66-sdrplay.rules. Status: SAFE -- Standard udev rules for SDRplay devices, no malicious content.
[1/5] Reviewing .SRCINFO, 20-sdrplay.hwdb, PKGBUILD...
LLM auditresponse for 20-sdrplay.hwdb:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a systemd hardware database (hwdb) entry that maps USB vendor and product IDs for SDRplay radio devices to human-readable model names. It contains only static key-value pairs with no executable commands, network operations, obfuscation, or any other dynamic behavior. There is no mechanism for data exfiltration, code execution, or system modification beyond the intended purpose of identifying USB hardware. This is a standard, safe configuration file.
</details>
<evidence></evidence>
<summary>Static hwdb mapping file, no security concerns.</summary>
</security_assessment>

[1/5] Reviewing .SRCINFO, 20-sdrplay.hwdb, PKGBUILD, sdrplay.service...
[2/5] Reviewing .SRCINFO, PKGBUILD, sdrplay.service...
+ Reviewed 20-sdrplay.hwdb. Status: SAFE -- Static hwdb mapping file, no security concerns.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a standard packaging metadata file used by the Arch User Repository. It defines the package base, version, dependencies, and sources. The sources link directly to the official SDRplay website for the API installer, plus three configuration files (service, udev rules, hwdb) that are typical for hardware support. All four checksums are provided and not set to SKIP, ensuring integrity of the downloaded files. There is no embedded code, obfuscation, or unusual network destinations. The file contains no commands or executable content—it is purely declarative. No supply-chain attack indicators are present.
</details>
<evidence></evidence>
<summary>Standard AUR metadata, no security concerns.</summary>
</security_assessment>

[3/5] Reviewing PKGBUILD, sdrplay.service...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no security concerns.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices. The source tarball is downloaded from the official SDRplay domain over HTTPS and has a pinned SHA-256 checksum. In `prepare()`, the makeself `.run` archive is extracted with `sh ... --tar xf`, which is the normal way to unpack this type of self-extracting installer; no installer logic is executed.

The `package()` function only copies the extracted library, service binary, headers, license, and udev/hwdb configuration into `$pkgdir`, then creates expected symlinks. All file operations are confined to the package destination and use standard `install` commands. There are no network requests, no encoded or obfuscated commands, and no execution of downloaded code beyond the controlled extraction step. The included systemd and udev files are consistent with the package's purpose of supporting SDRplay receiver hardware.
</details>
<evidence>
</evidence>
<summary>
Standard PKGBUILD with pinned checksum and normal install operations; no malicious behavior found.
</summary>
</security_assessment>

[4/5] Reviewing sdrplay.service...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with pinned checksum and normal install operations; no malicious behavior found.
LLM auditresponse for sdrplay.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit file for the SDRplay API service. It defines a simple service that runs `/usr/bin/sdrplay_apiService` as root, with restart on failure. There is no obfuscated code, no suspicious network requests, no unexpected file operations, and no deviation from normal packaging practices. Running as root is expected for hardware API services. No security issues found.
</details>
<evidence></evidence>
<summary>Standard systemd service file, no malicious content.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed sdrplay.service. Status: SAFE -- Standard systemd service file, no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 15,318
  Completion Tokens: 2,143
  Total Tokens: 17,461
  Total Cost: $0.001737
  Execution Time: 35.07 seconds

Final Status: SAFE


No issues found.
