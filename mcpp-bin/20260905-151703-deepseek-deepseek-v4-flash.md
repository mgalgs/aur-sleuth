---
package: mcpp-bin
pkgver: 2026.9.5.3
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 10719
completion_tokens: 1789
total_tokens: 12508
cost: 0.00120695274
execution_time: 37.67
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-05T15:17:02Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Declarative metadata file with no executable code. SAFE.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no malicious indicators.
  - file: mcpp.sh
    status: safe
    summary: Clean wrapper; no suspicious behavior.
---

Materializing mcpp-bin from local mirror...
Materialized mcpp-bin
Analyzing mcpp-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources only the global/top-level scope of this PKGBUILD. The top-level content consists solely of variable assignments (`pkgname`, `pkgver`, `arch`, `depends`, `source`, `sha256sums`, etc.) and the definition of the `package()` function. There are no top-level command substitutions, no network fetches, no `eval`, `curl`, `wget`, `base64`, or obfuscated code that would execute during sourcing. The `sha256sums` line containing `SKIP` is not a concern for this narrow gate because no sources are downloaded or verified by `makepkg --printsrcinfo`. Any behavior inside `package()` is out of scope for this step and will be audited in the full PKGBUILD review.
</details>
<evidence>
</evidence>
<summary>
No top-level executable code; sourcing PKGBUILD is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level executable code; sourcing PKGBUILD is safe.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, mcpp.sh...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a package metadata file for the AUR package `mcpp-bin`. It contains only declarative information: package name, version, dependencies, conflicts, and source URLs with checksums. The key points:

- The source array includes `mcpp.sh` with a `SKIP` checksum, which is standard for helper scripts provided by the maintainer (not downloaded from external sources).
- Binary tarball sources for both `x86_64` and `aarch64` architectures have pinned SHA256 checksums pointing to the legitimate GitHub releases of the `mcpp-community/mcpp` project.
- No executable code, obfuscation, unexpected network calls, or system modifications are present. The file is purely declarative and follows standard AUR `.SRCINFO` formatting.

No security issues are found. The `SKIP` checksum on the local shell script is a common practice and not a vulnerability in itself. The binary sources are verified via pinned checksums from the official upstream.
</details>
<evidence>
</evidence>
<summary>
Declarative metadata file with no executable code. SAFE.</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, mcpp.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Declarative metadata file with no executable code. SAFE.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard Arch packaging script for a prebuilt binary package from the mcpp project's official GitHub releases. It defines sources with pinned checksums for the architecture-specific tarballs and uses a typical package() function that installs binaries and files under /opt/mcpp and a wrapper script to /usr/bin/mcpp. There are no dangerous commands, obfuscated code, network calls during build/package, or attempts to exfiltrate data. The only source with SKIP checksum (mcpp.sh) is a local helper script from the AUR source, which is a normal practice and not indicative of malice. The overall structure is consistent with safe, routine packaging.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with no malicious indicators.</summary>
</security_assessment>

[2/3] Reviewing mcpp.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no malicious indicators.
LLM auditresponse for mcpp.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard launcher wrapper for an application installed under `/opt/mcpp`. It sets two environment variables (`MCPP_HOME` and `MCPP_VENDORED_XLINGS`) with safe defaults, respecting any pre‑existing user exports, then executes the actual binary. No network requests, obfuscation, file modifications, or other dangerous operations occur. The script is consistent with typical AUR packaging practices for applications that need per‑user writable data paths.
</details>
<evidence></evidence>
<summary>Clean wrapper; no suspicious behavior.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed mcpp.sh. Status: SAFE -- Clean wrapper; no suspicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,719
  Completion Tokens: 1,789
  Total Tokens: 12,508
  Total Cost: $0.001207
  Execution Time: 37.67 seconds

Final Status: SAFE


No issues found.
