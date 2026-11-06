---
package: asterisk
pkgver: 24.0.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 23028
completion_tokens: 4089
total_tokens: 27117
cost: 0.002839746
execution_time: 40.15
files_reviewed: 7
files_skipped: 0
maintainer_files: 7
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-06T04:16:13Z
file_verdicts:
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config for Asterisk version checking.
  - file: .SRCINFO
    status: safe
    summary: Asterisk .SRCINFO metadata only; official source with checksums, no malicious behavior.
  - file: asterisk.logrotated
    status: safe
    summary: Logrotate config for Asterisk; no security issues.
  - file: asterisk.tmpfiles
    status: safe
    summary: Standard tmpfiles configuration for Asterisk package.
  - file: fix-upnp.patch
    status: safe
    summary: Legitimate build patch disabling libupnp detection; no security issues found.
  - file: asterisk.sysusers
    status: safe
    summary: Declarative sysusers config, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard Asterisk PKGBUILD; official sources, pinned checksums, no malicious behavior.
---

Materializing asterisk from local mirror...
Materialized asterisk
Analyzing asterisk AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The global scope of this PKGBUILD contains only variable assignments, array definitions, and function definitions. There are no command substitutions, backticks, or any other code execution outside of function bodies. The `makepkg --printsrcinfo` command sources the PKGBUILD&#8217;s global scope, which does not invoke any functions, so no dangerous code can execute during this step.
</details>
<evidence></evidence>
<summary>No malicious code in global scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code in global scope.
Reviewing the 7 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/7] Reviewing .SRCINFO...
[0/7] Reviewing .SRCINFO, .nvchecker.toml...
[0/7] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a configuration for `nvchecker`, a tool used to monitor upstream releases. It defines a regular expression to extract version numbers from filenames listed on the official Asterisk download server (`https://downloads.asterisk.org/pub/telephony/asterisk/`). There are no executable commands, network requests beyond the declared URL, or any obfuscated or suspicious content. The URL points to the project's own upstream server, which is standard and expected. This file poses no security risk.
</details>
<evidence></evidence>
<summary>Standard nvchecker config for Asterisk version checking.</summary>
</security_assessment>

[1/7] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config for Asterisk version checking.
[1/7] Reviewing .SRCINFO, PKGBUILD, asterisk.logrotated...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is an AUR `.SRCINFO` metadata file for the `asterisk` package. It declares the official upstream tarball from `downloads.asterisk.org` with pinned SHA-256 checksums for all five sources, standard dependencies, and configuration backups under `/etc/asterisk`. There is no executable code, no network-exfiltrating behavior, no obfuscation, and no unexpected download or build command present in this file. The source URL and checksums are consistent with normal packaging practice for the Asterisk PBX software.
</details>
<evidence>
</evidence>
<summary>
Asterisk .SRCINFO metadata only; official source with checksums, no malicious behavior.</summary>
</security_assessment>

[1/7] Reviewing .SRCINFO, PKGBUILD, asterisk.logrotated, asterisk.sysusers...
[2/7] Reviewing PKGBUILD, asterisk.logrotated, asterisk.sysusers...
+ Reviewed .SRCINFO. Status: SAFE -- Asterisk .SRCINFO metadata only; official source with checksums, no malicious behavior.
LLM auditresponse for asterisk.logrotated:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a logrotate configuration file for the Asterisk application. It defines rotation settings for Asterisk log files (compression, permissions, etc.) and a postrotate command that triggers `asterisk -rx &quot;logger reload&quot;` to reload Asterisk&#8217;s logger after rotation. This is standard practice for services that manage their own log files, ensuring the service switches to the new log file after rotation. There are no signs of malicious code: no network requests, no file exfiltration, no obfuscated commands, and no deviation from expected packaging practices. The file is purely a logrotate policy and poses no security threat.
</details>
<evidence>
</evidence>
<summary>
Logrotate config for Asterisk; no security issues.</summary>
</security_assessment>

[2/7] Reviewing PKGBUILD, asterisk.logrotated, asterisk.sysusers, asterisk.tmpfiles...
[3/7] Reviewing PKGBUILD, asterisk.sysusers, asterisk.tmpfiles...
+ Reviewed asterisk.logrotated. Status: SAFE -- Logrotate config for Asterisk; no security issues.
LLM auditresponse for asterisk.tmpfiles:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd tmpfiles configuration file for the Asterisk package. It sets appropriate ownership and permissions for Asterisk's runtime directories and configuration files. The entries define directories under `/etc`, `/run`, `/var/lib`, `/var/log`, and `/var/spool` with restricted permissions (0750 for directories, 0640 for config files) owned by the `asterisk` user and group. This is expected behavior for a telephony server and does not contain any malicious or suspicious content.
</details>
<evidence>
</evidence>
<summary>Standard tmpfiles configuration for Asterisk package.</summary>
</security_assessment>

[3/7] Reviewing PKGBUILD, asterisk.sysusers, asterisk.tmpfiles, fix-upnp.patch...
[4/7] Reviewing PKGBUILD, asterisk.sysusers, fix-upnp.patch...
+ Reviewed asterisk.tmpfiles. Status: SAFE -- Standard tmpfiles configuration for Asterisk package.
LLM auditresponse for fix-upnp.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a patch that adds `--disable-upnp` to the pjproject configure options in Asterisk's third-party build. The patch is intended to avoid Asterisk's bundled pjproject detecting and linking against a system libupnp library (e.g., from VLC). This is a legitimate build configuration change and does not introduce any network requests, code execution, obfuscation, data exfiltration, or modification of unrelated system files.

The included text is a previously posted comment explaining the purpose of the patch and a standard unified diff. There is no embedded instruction to execute arbitrary code, no suspicious URLs, and no deviation from normal packaging/patching practices.
</details>
<evidence>
</evidence>
<summary>
Legitimate build patch disabling libupnp detection; no security issues found.</summary>
</security_assessment>

[5/7] Reviewing PKGBUILD, asterisk.sysusers...
+ Reviewed fix-upnp.patch. Status: SAFE -- Legitimate build patch disabling libupnp detection; no security issues found.
LLM auditresponse for asterisk.sysusers:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard sysusers.d configuration snippet for creating a system user for the Asterisk PBX daemon. It uses the expected format: `u` (create user), username, login shell, description, and home directory. There is no obfuscation, no network requests, no file operations beyond what systemd-sysusers handles, and no code execution. The file is purely declarative and follows normal packaging practices.
</details>
<evidence></evidence>
<summary>Declarative sysusers config, no security issues.</summary>
</security_assessment>

[6/7] Reviewing PKGBUILD...
+ Reviewed asterisk.sysusers. Status: SAFE -- Declarative sysusers config, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR PKGBUILD for Asterisk. It downloads the release tarball from the official Asterisk downloads site, uses pinned SHA-256 checksums for all sources (including the local patch files), and then follows the normal configure/make/install workflow. The `prepare()` function only applies the package's declared patch files. The `build()` and `package()` functions run the upstream build system and install files into `$pkgdir`, which is expected packaging behavior.

There are no suspicious network requests, no obfuscated code, no `eval`/`base64`/`curl|bash` usage, and no file operations outside the package's own build/install directories. Some minor packaging quirks exist, such as a likely typo using `$pkname` instead of `$pkgname` when installing systemd units, but this is a harmless bug rather than a security concern. The file shows no evidence of injected malicious code or supply-chain attack behavior.
</details>
<evidence></evidence>
<summary>Standard Asterisk PKGBUILD; official sources, pinned checksums, no malicious behavior.</summary>
</security_assessment>

[7/7] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard Asterisk PKGBUILD; official sources, pinned checksums, no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 23,028
  Completion Tokens: 4,089
  Total Tokens: 27,117
  Total Cost: $0.002840
  Execution Time: 40.15 seconds

Final Status: SAFE


No issues found.
