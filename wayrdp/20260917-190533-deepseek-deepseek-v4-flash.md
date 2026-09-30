---
package: wayrdp
pkgver: 0.1.2
pkgrel: 3
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 27924
completion_tokens: 2547
total_tokens: 30471
cost: 0.00231126
execution_time: 26.11
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-17T19:05:33Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard metadata file with no suspicious content.
  - file: wayrdp.service
    status: safe
    summary: Standard systemd service file, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with pinned source, no malicious behavior.
  - file: upstream.patch
    status: safe
    summary: Legitimate code patch for wayrdp RDP server with scrypt hashing and improvements.
---

Materializing wayrdp from local mirror...
Materialized wayrdp
Analyzing wayrdp AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The global scope of this PKGBUILD contains only standard variable definitions (pkgname, pkgver, source, checksums, etc.) and a benign conditional block that adjusts `BUILDDIR` based on the existence of a file that does not exist during sourcing. No commands are executed that would download, execute, or exfiltrate data. Functions (prepare, build, package) are defined but not invoked during `makepkg --printsrcinfo`. No malicious code is present in the global scope.
</details>
<evidence></evidence>
<summary>No malicious code in global scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code in global scope.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, PKGBUILD...
[0/4] Reviewing .SRCINFO, PKGBUILD, upstream.patch...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.SRCINFO` metadata file for the AUR package `wayrdp`. It defines the package name, version, dependencies, and sources. All three sources are fetched from the official upstream GitHub repository (danilofalcao/wayrdp) or are local files (a patch and a systemd service file). All SHA256 checksums are provided (none are `SKIP`), ensuring integrity verification. No suspicious URLs, obfuscated content, encoded commands, or unexpected system operations are present. The file contains only declarative metadata and poses no security risk.
</details>
<evidence>
</evidence>
<summary>Standard metadata file with no suspicious content.</summary>
</security_assessment>

[1/4] Reviewing PKGBUILD, upstream.patch...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata file with no suspicious content.
[1/4] Reviewing PKGBUILD, upstream.patch, wayrdp.service...
LLM auditresponse for wayrdp.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd user service file. It defines a simple service that starts the `wayrdp` executable with no arguments. All directives (`After`, `PartOf`, `Type`, `Restart`, `RestartSec`, `StartLimitBurst`, `StartLimitIntervalSec`, `WantedBy`) are normal and expected for a well-packaged AUR application. There is no obfuscated code, no network requests, no malicious commands, and no deviation from standard packaging practices. The file is entirely benign.
</details>
<evidence></evidence>
<summary>Standard systemd service file, no security issues.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, upstream.patch...
+ Reviewed wayrdp.service. Status: SAFE -- Standard systemd service file, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD for `wayrdp` follows standard AUR packaging practices. It downloads a pinned commit tarball from the official GitHub repository, applies a local patch (also checksummed), and builds using `make`. The `package()` function installs binaries, documentation, license files, and a systemd user service unit. There is no obfuscated code, no unexpected network requests, no execution of external scripts, and no manipulation of files outside the package scope. The checksums are all provided and pinned, ensuring integrity of the sources. The only non-trivial logic is a conditional `BUILDDIR` adjustment, which is a benign packaging convenience to avoid clashing with existing source trees. No supply-chain attack indicators are present.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with pinned source, no malicious behavior.</summary>
</security_assessment>

[3/4] Reviewing upstream.patch...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with pinned source, no malicious behavior.
LLM auditresponse for upstream.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch introduces several enhancements to the wayrdp RDP server: salted scrypt password hashing (replacing plaintext storage), improved configuration handling (state directory, certificate paths), performance optimizations in pixel format conversion, and better error handling for Wayland capture sessions. All changes are consistent with the project's stated purpose as a remote desktop server and follow standard packaging/development practices.

There is no evidence of malicious activity:
- No network requests or downloads from unexpected sources.
- No obfuscated or encoded commands.
- No exfiltration of system data.
- No execution of attacker-controlled code.
- All calls to OpenSSL (scrypt, RNG, memcmp) are for the legitimate password hashing feature.
- The base64 encoding/decoding is used only within the scrypt credential format, not for hiding malicious payloads.
- File operations (mkdir, snprintf for paths) are limited to the application's own state directory and configuration.
</details>
<evidence></evidence>
<summary>Legitimate code patch for wayrdp RDP server with scrypt hashing and improvements.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed upstream.patch. Status: SAFE -- Legitimate code patch for wayrdp RDP server with scrypt hashing and improvements.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 27,924
  Completion Tokens: 2,547
  Total Tokens: 30,471
  Total Cost: $0.002311
  Execution Time: 26.11 seconds

Final Status: SAFE


No issues found.
