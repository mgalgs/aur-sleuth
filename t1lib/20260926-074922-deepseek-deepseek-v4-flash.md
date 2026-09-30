---
package: t1lib
pkgver: 5.1.2
pkgrel: 8
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 24369
completion_tokens: 3466
total_tokens: 27835
cost: 0.00147239904
execution_time: 46.5
files_reviewed: 8
files_skipped: 0
maintainer_files: 8
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-26T07:49:20Z
file_verdicts:
  - file: CVE-2010-2642.patch
    status: safe
    summary: Legitimate security patch; no malicious content.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no security issues.
  - file: CVE-2011-1552_1553_1554.patch
    status: safe
    summary: Legitimate security patch, no malicious code.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with no signs of malicious code.
  - file: format-security.diff
    status: safe
    summary: Patch fixes format string vulnerabilities.
  - file: lib-cleanup.diff
    status: safe
    summary: Legitimate build dependency cleanup patch, no malicious code.
  - file: t1lib-c99.patch
    status: safe
    summary: Standard C99 compatibility patch, no malicious code.
  - file: CVE-2011-0764.diff
    status: safe
    summary: Legitimate security patch for CVE-2011-0764, no malicious activity.
---

Materializing t1lib from local mirror...
Materialized t1lib
Analyzing t1lib AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global scope consists solely of static variable definitions (pkgname, pkgver, pkgdesc, arch, url, license, depends, source, sha256sums). There are no command substitutions, backticks, eval statements, or any executable code outside of the prepare(), build(), and package() functions. Since `makepkg --printsrcinfo` only executes the global/top-level scope, no malicious code can run during this step.
</details>
<evidence>
</evidence>
<summary>No dangerous global code; safe to source.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous global code; safe to source.
Reviewing the 8 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/8] Reviewing .SRCINFO...
[0/8] Reviewing .SRCINFO, CVE-2010-2642.patch...
[0/8] Reviewing .SRCINFO, CVE-2010-2642.patch, CVE-2011-0764.diff...
LLM auditresponse for CVE-2010-2642.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a patch file for CVE-2010-2642, which addresses a buffer overflow vulnerability in t1lib&#x27;s parseAFM.c. The patch adds bounds checking (`idx &lt; (MAX_NAME -1)`) to prevent writing past the end of the `ident` array in the `token` and `linetoken` functions. There is no malicious code, obfuscation, network requests, or unexpected system modifications. The patch is a standard security fix and does not introduce any supply-chain attack vectors.
</details>
<evidence></evidence>
<summary>Legitimate security patch; no malicious content.</summary>
</security_assessment>

[1/8] Reviewing .SRCINFO, CVE-2011-0764.diff...
+ Reviewed CVE-2010-2642.patch. Status: SAFE -- Legitimate security patch; no malicious content.
[1/8] Reviewing .SRCINFO, CVE-2011-0764.diff, CVE-2011-1552_1553_1554.patch...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a metadata file used by AUR helpers to retrieve package information. It lists the package name, version, description, dependencies, sources (tarball and patches from ibiblio.org), and SHA256 checksums for all sources. All checksums are provided (none set to SKIP), the URLs point to a legitimate upstream host, and there is no executable code or any dangerous constructs (no base64, curl, wget, eval, obfuscation, or system modifications). The file is purely declarative and does not contain any commands or scripts. It follows standard AUR metadata format and presents no security concerns.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata file, no security issues.</summary>
</security_assessment>

[2/8] Reviewing CVE-2011-0764.diff, CVE-2011-1552_1553_1554.patch...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no security issues.
[2/8] Reviewing CVE-2011-0764.diff, CVE-2011-1552_1553_1554.patch, PKGBUILD...
LLM auditresponse for CVE-2011-1552_1553_1554.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch is a standard security fix for the t1lib library, addressing crashes caused by oversized fonts (CVE-2011-1552, 1553, 1554). It adds bounds checking for coordinates, null pointer checks, and validations for various array indices in the Type1 font rendering code. All changes are consistent with upstream vulnerability fixes and do not contain any malicious activities such as data exfiltration, backdoors, or execution of untrusted code. The patch originates from Red Hat and is properly attributed.
</details>
<evidence></evidence>
<summary>Legitimate security patch, no malicious code.</summary>
</security_assessment>

[3/8] Reviewing CVE-2011-0764.diff, PKGBUILD...
+ Reviewed CVE-2011-1552_1553_1554.patch. Status: SAFE -- Legitimate security patch, no malicious code.
[3/8] Reviewing CVE-2011-0764.diff, PKGBUILD, format-security.diff...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a straightforward, standard Arch Linux package build recipe. It downloads the upstream source tarball from a known domain (ibiblio.org) and applies several well-documented patches (including CVE fixes and a format-security fix). All source tarballs and patches have specified SHA-256 checksums (none skipped). The build process uses `./configure` and `make` with standard flags, and the package step performs a typical `make install` into `$pkgdir`. There are no suspicious commands (no `curl|bash`, no encoded strings, no unexpected network fetches, no file exfiltration, no obfuscation). The code is transparent and consistent with legitimate packaging practices.
</details>
<evidence>
</evidence>
<summary>
Standard PKGBUILD with no signs of malicious code.
</summary>
</security_assessment>

[4/8] Reviewing CVE-2011-0764.diff, format-security.diff...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with no signs of malicious code.
[4/8] Reviewing CVE-2011-0764.diff, format-security.diff, lib-cleanup.diff...
LLM auditresponse for format-security.diff:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a patch file that fixes three format string vulnerabilities in the t1lib library. Each hunk replaces a direct `printf`/`sprintf` call with a variable as the format argument with a properly formatted call that uses `%s` or `fputs` instead. These changes prevent potential format string exploits where user-controlled or variable strings could contain format specifiers. The patch appears to be a standard security fix and contains no suspicious code, network requests, file operations, or obfuscation.
</details>
<evidence>
</evidence>
<summary>Patch fixes format string vulnerabilities.</summary>
</security_assessment>

[4/8] Reviewing CVE-2011-0764.diff, format-security.diff, lib-cleanup.diff, t1lib-c99.patch...
[5/8] Reviewing CVE-2011-0764.diff, lib-cleanup.diff, t1lib-c99.patch...
+ Reviewed format-security.diff. Status: SAFE -- Patch fixes format string vulnerabilities.
LLM auditresponse for lib-cleanup.diff:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard packaging patch that removes unnecessary library link dependencies (`-lXext`, `-lXpm`, `-lXmu`, and an unused `LDLIBS` variable). There is no obfuscation, network access, or execution of arbitrary code. The changes are limited to build system configuration (`Makefile.in` files) and are consistent with routine library cleanup/maintenance. No supply-chain attack indicators are present.
</details>
<evidence></evidence>
<summary>Legitimate build dependency cleanup patch, no malicious code.</summary>
</security_assessment>

[6/8] Reviewing CVE-2011-0764.diff, t1lib-c99.patch...
+ Reviewed lib-cleanup.diff. Status: SAFE -- Legitimate build dependency cleanup patch, no malicious code.
LLM auditresponse for t1lib-c99.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard patch that adds explicit type declarations (`int x2, y2;`) for improved C99 compatibility. It modifies a single function in `lib/type1/regions.c`. There is no malicious content, no network requests, no obfuscation, no file operations outside standard packaging, and no execution of untrusted code. This is a legitimate upstream compatibility fix.</details>
<evidence></evidence>
<summary>Standard C99 compatibility patch, no malicious code.</summary>
</security_assessment>

[7/8] Reviewing CVE-2011-0764.diff...
+ Reviewed t1lib-c99.patch. Status: SAFE -- Standard C99 compatibility patch, no malicious code.
LLM auditresponse for CVE-2011-0764.diff:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a patch (diff) addressing CVE-2011-0764, a null pointer dereference vulnerability in t1lib. It adds null checks (`if (ppoints == NULL) Error0i(...)`) before using the `ppoints` pointer in several functions. This is standard security hardening, not malicious code. There are no suspicious network operations, obfuscation, or unexpected system modifications. The patch appears to be authored by a Canonical security engineer and is consistent with intended supply-chain security fixes for Arch AUR packages.
</details>
<evidence>
</evidence>
<summary>Legitimate security patch for CVE-2011-0764, no malicious activity.</summary>
</security_assessment>

[8/8] Reviewing ...
+ Reviewed CVE-2011-0764.diff. Status: SAFE -- Legitimate security patch for CVE-2011-0764, no malicious activity.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 24,369
  Completion Tokens: 3,466
  Total Tokens: 27,835
  Total Cost: $0.001472
  Execution Time: 46.50 seconds

Final Status: SAFE


No issues found.
