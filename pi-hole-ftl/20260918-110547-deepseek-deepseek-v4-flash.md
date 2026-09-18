---
package: pi-hole-ftl
pkgver: 6.7
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 21362
completion_tokens: 11960
total_tokens: 33322
cost: 0.004012256892
execution_time: 193.57
files_reviewed: 7
files_skipped: 0
maintainer_files: 7
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-18T11:05:47Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no malicious content.
  - file: pi-hole-ftl.install
    status: safe
    summary: Standard install script with informational messages only.
  - file: pi-hole-ftl.service
    status: safe
    summary: Standard Pi-hole FTL service unit file.
  - file: pi-hole-ftl.sysuser
    status: safe
    summary: Safe system user definition file.
  - file: pi-hole-ftl.tmpfile
    status: safe
    summary: Standard tmpfiles configuration, no security concerns.
  - file: nettle4_base64_decode_update.patch
    status: safe
    summary: Legitimate nettle base64 decode API fix; no malicious behavior found.
  - file: PKGBUILD
    status: safe
    summary: Legitimate pinned-checksum PKGBUILD; builds upstream FTL from source with only build-compat fixes.
---

Materializing pi-hole-ftl from local mirror...
Materialized pi-hole-ftl
Analyzing pi-hole-ftl AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable definitions, arrays, and comments at the global/top-level scope. There are no command substitutions, backticks, `eval`, or any other constructs that would execute arbitrary code when the file is sourced. The `install`, `source`, and `sha256sums` variables are plain string assignments. Functions (`prepare()`, `build()`, `package()`) are defined but not invoked during `makepkg --printsrcinfo`. No network requests or file operations occur at parse time. Therefore, running `makepkg --printsrcinfo` on this PKGBUILD is safe.
</details>
<evidence></evidence>
<summary>No executable code at top-level scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No executable code at top-level scope.
Reviewing the 7 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/7] Reviewing .SRCINFO...
[0/7] Reviewing .SRCINFO, nettle4_base64_decode_update.patch...
[0/7] Reviewing .SRCINFO, nettle4_base64_decode_update.patch, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard AUR `.SRCINFO` metadata file for the `pi-hole-ftl` package. It declares the package name, version, dependencies, sources (all from the official GitHub repository), and checksums. There is no executable code, no network requests initiated from this file, and no obfuscated or suspicious content. The presence of checksums (all SHA256) for each source further indicates standard packaging hygiene. No evidence of malicious behavior or supply-chain attack vectors is present.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file, no malicious content.</summary>
</security_assessment>

[0/7] Reviewing .SRCINFO, nettle4_base64_decode_update.patch, PKGBUILD, pi-hole-ftl.install...
[1/7] Reviewing nettle4_base64_decode_update.patch, PKGBUILD, pi-hole-ftl.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no malicious content.
LLM auditresponse for pi-hole-ftl.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Arch Linux package install script (`.install`). It contains only informational echo statements during `post_install` and `post_upgrade`, and a benign no-op (`/bin/true`) in `post_remove`. There are no network requests, file operations, system modifications, or execution of untrusted code. All output is simply to guide the user. No supply-chain attack indicators are present.
</details>
<evidence></evidence>
<summary>Standard install script with informational messages only.</summary>
</security_assessment>

[2/7] Reviewing nettle4_base64_decode_update.patch, PKGBUILD...
+ Reviewed pi-hole-ftl.install. Status: SAFE -- Standard install script with informational messages only.
[2/7] Reviewing nettle4_base64_decode_update.patch, PKGBUILD, pi-hole-ftl.service...
LLM auditresponse for pi-hole-ftl.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd unit file for the Pi-hole FTL service. It sets up the FTL daemon to run as the `pihole` user with minimal capabilities needed for DNS and network operations. The file includes typical security hardening (ProtectSystem=full, user separation, specific capabilities) and routine maintenance tasks (ownership/permission adjustments on `/etc/pihole`, cleanup of shared memory files on stop). There are no obfuscated commands, network downloads, data exfiltration, or any other indicators of malicious activity. The service file follows expected packaging practices for a system service.
</details>
<evidence></evidence>
<summary>Standard Pi-hole FTL service unit file.</summary>
</security_assessment>

[3/7] Reviewing nettle4_base64_decode_update.patch, PKGBUILD...
+ Reviewed pi-hole-ftl.service. Status: SAFE -- Standard Pi-hole FTL service unit file.
[3/7] Reviewing nettle4_base64_decode_update.patch, PKGBUILD, pi-hole-ftl.sysuser...
LLM auditresponse for pi-hole-ftl.sysuser:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard sysusers.d configuration snippet for systemd. It defines a system user `pihole` with a description and home directory `/`. This is a routine packaging practice for daemon services. There is no executable code, network activity, obfuscation, or any other malicious behavior. The content is entirely benign and serves its stated purpose.
</details>
<evidence>
</evidence>
<summary>Safe system user definition file.</summary>
</security_assessment>

[3/7] Reviewing nettle4_base64_decode_update.patch, PKGBUILD, pi-hole-ftl.sysuser, pi-hole-ftl.tmpfile...
[4/7] Reviewing nettle4_base64_decode_update.patch, PKGBUILD, pi-hole-ftl.tmpfile...
+ Reviewed pi-hole-ftl.sysuser. Status: SAFE -- Safe system user definition file.
LLM auditresponse for pi-hole-ftl.tmpfile:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a systemd-tmpfiles configuration snippet, which is standard for creating runtime directories and PID files for a service. It creates `/run/log/pihole` directory and log files, and `/run/pihole-FTL.pid` with appropriate permissions and ownership for the `pihole` user and group. There is no executable code, no network operations, no obfuscation, and no deviation from expected packaging practices. The content is purely declarative and safe.
</details>
<evidence></evidence>
<summary>Standard tmpfiles configuration, no security concerns.</summary>
</security_assessment>

[5/7] Reviewing nettle4_base64_decode_update.patch, PKGBUILD...
+ Reviewed pi-hole-ftl.tmpfile. Status: SAFE -- Standard tmpfiles configuration, no security concerns.
LLM auditresponse for nettle4_base64_decode_update.patch:
 <security_assessment>
<decision>SAFE</decision>
<details>
This patch is a legitimate fix for the nettle `base64_decode_update` API in pi-hole-ftl's `src/config/password.c`. The original code passed an output-only `size_t *length` directly to `base64_decode_update`, which in the nettle API expects an in/out parameter containing the destination buffer capacity on input. The patch fixes this by allocating the buffer, storing its size in a local `decoded_length`, and passing `&amp;decoded_length` to the decode function, then copying the actual decoded length out to the caller via `*length = decoded_length;`. This correctly sizes the buffer and writes back the real decoded length, which is a standard hardening/correctness pattern for this API.

No suspicious behavior is present: no network requests, no downloads, no execution of fetched code, no obfuscation/encoding tricks, no manipulation of files outside the package's own source, and no deviation from standard packaging practices (it is a build-time source patch applied by the PKGBUILD). The change is consistent with the patch's stated purpose of adapting to the nettle4 API and actually removes a potential uninitialized-length/memory-safety hazard rather than introducing one.
</details>
<evidence></evidence>
<summary>Legitimate nettle base64 decode API fix; no malicious behavior found.</summary>
</security_assessment>

[6/7] Reviewing PKGBUILD...
+ Reviewed nettle4_base64_decode_update.patch. Status: SAFE -- Legitimate nettle base64 decode API fix; no malicious behavior found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard source build of the upstream pi-hole/FTL project. It fetches the v6.7 release tarball from the project's own official GitHub repository, pins the commit metadata for version stamping, and lists sha256 checksums for all five source entries (no SKIP), which is good supply-chain hygiene. The prepare() step only applies local build-compatibility fixes to the source tree: a nettle 4 patch, a GCC 16 unused-variable annotation, and sed edits updating mbedTLS 2.x function signatures to the mbedTLS 3.x API. All edits are scoped to files under $srcdir and serve the stated purpose of making the pinned upstream code compile against current Arch libraries.

build() runs the upstream ./build.sh with version-stamping environment variables and points CMake at Arch's mbedtls3 libraries; there are no network fetches at build time, no git pull/reset operations, and no code execution from unexpected sources. package() installs everything strictly under $pkgdir (binary, systemd unit and enablement symlink, tmpfiles/sysusers configs, license, and an empty dhcp.leases state file). The /usr/bin/dnsmasq symlink combined with conflicts/provides of dnsmasq reflects FTL's embedded-dnsmasq design and is expected. Minor non-issues such as installing the binary mode 775 instead of 755 and the unusual-looking commit date are cosmetic and have no practical security impact. No obfuscation, exfiltration, backdoors, or build-time code injection was found.
</details>
<evidence></evidence>
<summary>Legitimate pinned-checksum PKGBUILD; builds upstream FTL from source with only build-compat fixes.</summary>
</security_assessment>

[7/7] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Legitimate pinned-checksum PKGBUILD; builds upstream FTL from source with only build-compat fixes.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 21,362
  Completion Tokens: 11,960
  Total Tokens: 33,322
  Total Cost: $0.004012
  Execution Time: 193.57 seconds

Final Status: SAFE


No issues found.
