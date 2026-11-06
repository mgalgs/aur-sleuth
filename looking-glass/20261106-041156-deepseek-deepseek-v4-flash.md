---
package: looking-glass
pkgver: B7
pkgrel: 8
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 18118
completion_tokens: 3619
total_tokens: 21737
cost: 0.002307396
execution_time: 60.51
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-06T04:11:55Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Clean standard PKGBUILD, no malicious indicators.
  - file: host.install
    status: safe
    summary: Just a warning about unmaintained component.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with pinned checksums and official upstream source; no security issues found.
  - file: nettle4-compat.patch
    status: safe
    summary: Benign nettle 4 API compatibility patch; no security concerns.
  - file: 1197-backport.patch
    status: safe
    summary: Patch adds author and shader precision qualifiers; no threats detected.
---

Materializing looking-glass from local mirror...
Materialized looking-glass
Analyzing looking-glass AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The global/top-level scope of this PKGBUILD consists only of variable assignments (pkgbase, pkgname, source, sha512sums, etc.) and function definitions (prepare, build, package_*). There are no command substitutions, backtick executions, `eval`, `curl`, `wget`, or any other code that would perform network requests, data exfiltration, or file system modifications during sourcing. The `source` array merely stores URLs as strings; it does not fetch anything when the PKGBUILD is parsed. No dangerous operations execute at the top level, so running `makepkg --printsrcinfo` is safe.
</details>
<evidence></evidence>
<summary>No dangerous top-level code found.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code found.
Reviewing the 5 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, PKGBUILD...
[0/5] Reviewing .SRCINFO, PKGBUILD, 1197-backport.patch...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for the looking-glass project. It fetches the source tarball from the official upstream (`looking-glass.io`), applies two well-known patches from the local source directory, and builds using `cmake` and `make`. There are no suspicious network requests, obfuscated code, or dangerous commands. All checksums are pinned (SHA-512 sums provided for each source, none set to `SKIP`). The file does not contain any hidden or encoded payloads, no `eval`, `curl`, `wget`, or unexpected file operations. The commented-out host subpackage is simply disabled, not a threat. This file is consistent with a legitimate packaging effort.
</details>
<evidence></evidence>
<summary>Clean standard PKGBUILD, no malicious indicators.</summary>
</security_assessment>

[1/5] Reviewing .SRCINFO, 1197-backport.patch...
+ Reviewed PKGBUILD. Status: SAFE -- Clean standard PKGBUILD, no malicious indicators.
[1/5] Reviewing .SRCINFO, 1197-backport.patch, host.install...
LLM auditresponse for host.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file contains only two functions that print a warning message to the user indicating the Linux host component is unmaintained. No network requests, file operations, obfuscated code, or execution of untrusted content occurs. The use of `echo -e` with ANSI escape sequences is standard for colored output and poses no risk. This is a benign informational script.
</details>
<evidence></evidence>
<summary>Just a warning about unmaintained component.</summary>
</security_assessment>

[2/5] Reviewing .SRCINFO, 1197-backport.patch...
+ Reviewed host.install. Status: SAFE -- Just a warning about unmaintained component.
[2/5] Reviewing .SRCINFO, 1197-backport.patch, nettle4-compat.patch...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is standard AUR package metadata for the Looking Glass project. It declares three packages (client, DKMS kernel module, and OBS plugin), lists build dependencies, runtime dependencies, and source entries. The source tarball is fetched over HTTPS from the project's official domain (looking-glass.io), and two patch files are sourced locally. All three sources have pinned SHA-512 checksums, which is a good integrity practice.

No malicious behavior is present: there are no embedded commands, no downloads from unexpected hosts, no obfuscated code, and no file manipulation outside the packaging scope. The unusual "VM-&gt;VM" text in a pkgdesc is simply escaped metadata text and is not a security concern. This file is consistent with legitimate AUR packaging practices.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata with pinned checksums and official upstream source; no security issues found.
</summary>
</security_assessment>

[3/5] Reviewing 1197-backport.patch, nettle4-compat.patch...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with pinned checksums and official upstream source; no security issues found.
LLM auditresponse for nettle4-compat.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a simple compatibility patch for a single upstream source file (`repos/PureSpice/src/rsa.c`). It adjusts the `sha1_digest` call signature from the older nettle 3 API (`sha1_digest(&amp;ctx, SHA1_HASH_LEN, hash)`) to the nettle 4 API (`sha1_digest(&amp;ctx, hash)`), which removed the explicit length argument.

There is no evidence of malicious behavior: no network access, no obfuscation, no file system modifications, no execution of untrusted content, and no deviation from standard packaging/upstream-compatibility practices. The change is narrowly scoped and consistent with its stated purpose of maintaining compatibility with nettle 4.
</details>
<evidence>
</evidence>
<summary>
Benign nettle 4 API compatibility patch; no security concerns.
</summary>
</security_assessment>

[4/5] Reviewing 1197-backport.patch...
+ Reviewed nettle4-compat.patch. Status: SAFE -- Benign nettle 4 API compatibility patch; no security concerns.
LLM auditresponse for 1197-backport.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard patch file backporting changes from the looking-glass upstream. It adds a contributor to AUTHORS and adds `precision highp int;` to multiple GLSL fragment shaders. These are routine and benign modifications. No suspicious network requests, obfuscated code, dangerous commands, or any behavior indicative of a supply-chain attack are present. The patch is entirely limited to source code and shader precision qualifiers, which are normal packaging/development practices.
</details>
<evidence></evidence>
<summary>Patch adds author and shader precision qualifiers; no threats detected.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed 1197-backport.patch. Status: SAFE -- Patch adds author and shader precision qualifiers; no threats detected.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 18,118
  Completion Tokens: 3,619
  Total Tokens: 21,737
  Total Cost: $0.002307
  Execution Time: 60.51 seconds

Final Status: SAFE


No issues found.
