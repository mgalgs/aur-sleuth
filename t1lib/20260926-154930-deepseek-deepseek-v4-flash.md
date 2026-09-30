---
package: t1lib
pkgver: 5.1.2
pkgrel: 8
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 24764
completion_tokens: 10085
total_tokens: 34849
cost: 0.00211369536
execution_time: 338.14
files_reviewed: 8
files_skipped: 0
maintainer_files: 8
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-26T15:49:30Z
file_verdicts:
  - file: CVE-2010-2642.patch
    status: safe
    summary: Legitimate CVE patch adding buffer bounds checks; no malicious behavior found.
  - file: CVE-2011-0764.diff
    status: safe
    summary: Legitimate security patch; no malicious behavior.
  - file: CVE-2011-1552_1553_1554.patch
    status: safe
    summary: Legitimate t1lib security patch; adds bounds checks, no malicious behavior.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with no malicious behavior detected.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR package metadata with pinned checksums; no malicious or suspicious behavior found.
  - file: t1lib-c99.patch
    status: safe
    summary: Routine C99 compatibility patch, no security issues.
  - file: lib-cleanup.diff
    status: safe
    summary: Benign build-link cleanup patch; no malicious behavior detected.
  - file: format-security.diff
    status: safe
    summary: Benign format-string hardening patch for t1lib; no malicious behavior found.
---

Materializing t1lib from local mirror...
Materialized t1lib
Analyzing t1lib AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` only sources the PKGBUILD's top-level scope. In this file, the top-level content consists solely of normal metadata assignments: `pkgname`, `pkgver`, `pkgrel`, `pkgdesc`, `arch`, `url`, `license`, `depends`, `source`, and `sha256sums`. There are no top-level command substitutions, no `eval`, no network-fetching code, no encoded payloads, and no executable statements that would run while the PKGBUILD is sourced.

The `prepare()`, `build()`, and `package()` functions contain patch/configure/make/install operations, but these are not executed by `makepkg --printsrcinfo` and are therefore out of scope for this narrow gate. No genuinely malicious top-level behavior is present.
</details>
<evidence></evidence>
<summary>Top-level PKGBUILD sourcing is safe; only normal metadata assignments execute.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD sourcing is safe; only normal metadata assignments execute.
Reviewing the 8 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/8] Reviewing .SRCINFO...
[0/8] Reviewing .SRCINFO, CVE-2010-2642.patch...
[0/8] Reviewing .SRCINFO, CVE-2010-2642.patch, CVE-2011-0764.diff...
LLM auditresponse for CVE-2010-2642.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a patch to `lib/t1lib/parseAFM.c` in the t1lib package. It adds bounds checks to two token-parsing loops by ensuring the index `idx` does not exceed `MAX_NAME - 1` before writing into the `ident` buffer. This is a standard security fix for a buffer overflow vulnerability (CVE-2010-2642). The changes are minimal, clearly related to the package's own source code, and do not introduce any network activity, code execution, obfuscation, file tampering, or other malicious behavior.
</details>
<evidence>
</evidence>
<summary>
Legitimate CVE patch adding buffer bounds checks; no malicious behavior found.
</summary>
</security_assessment>

[0/8] Reviewing .SRCINFO, CVE-2010-2642.patch, CVE-2011-0764.diff, CVE-2011-1552_1553_1554.patch...
[1/8] Reviewing .SRCINFO, CVE-2011-0764.diff, CVE-2011-1552_1553_1554.patch...
+ Reviewed CVE-2010-2642.patch. Status: SAFE -- Legitimate CVE patch adding buffer bounds checks; no malicious behavior found.
LLM auditresponse for CVE-2011-0764.diff:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a patch (diff) for the t1lib library, addressing CVE-2011-0764 by adding null-pointer checks (`if (ppoints == NULL) Error0i(...)`) before accessing `ppoints[numppoints-2]` in several functions. The patch is transparent, well-structured, and contains no obfuscation, unexpected network requests, file operations, or any code that could be interpreted as a supply-chain attack. It is a standard vulnerability fix patch that would be included in an AUR package as part of normal maintenance.
</details>
<evidence>
</evidence>
<summary>Legitimate security patch; no malicious behavior.</summary>
</security_assessment>

[2/8] Reviewing .SRCINFO, CVE-2011-1552_1553_1554.patch...
+ Reviewed CVE-2011-0764.diff. Status: SAFE -- Legitimate security patch; no malicious behavior.
[2/8] Reviewing .SRCINFO, CVE-2011-1552_1553_1554.patch, PKGBUILD...
LLM auditresponse for CVE-2011-1552_1553_1554.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a patch for t1lib addressing NULL pointer and out-of-bounds access issues in font handling. The changes add boundary checks before dereferencing point arrays, such as validating `ppoints` and `numppoints` before use. These are defensive fixes consistent with the stated purpose of preventing crashes on oversized or malformed fonts. There is no obfuscation, no network activity, no execution of external code, and no modification of system files. The patch is a legitimate upstream security fix, not a supply-chain attack.
</details>
<evidence></evidence>
<summary>Legitimate t1lib security patch; adds bounds checks, no malicious behavior.</summary>
</security_assessment>

[2/8] Reviewing .SRCINFO, CVE-2011-1552_1553_1554.patch, PKGBUILD, format-security.diff...
[3/8] Reviewing .SRCINFO, PKGBUILD, format-security.diff...
+ Reviewed CVE-2011-1552_1553_1554.patch. Status: SAFE -- Legitimate t1lib security patch; adds bounds checks, no malicious behavior.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Arch packaging practices for a library package. It downloads the upstream tarball from a known source (ibiblio.org), applies several security patches (CVE fixes), and builds/installs with standard tools (configure, make). There is no obfuscated code, no unexpected network requests, no data exfiltration, and no execution of untrusted downloaded content. All source files have SHA256 checksums, ensuring integrity. The URL uses HTTP rather than HTTPS, which is a minor hygiene concern but not evidence of malicious behavior. The package's actions are limited to building and installing the library itself.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with no malicious behavior detected.</summary>
</security_assessment>

[4/8] Reviewing .SRCINFO, format-security.diff...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with no malicious behavior detected.
[4/8] Reviewing .SRCINFO, format-security.diff, lib-cleanup.diff...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard AUR `.SRCINFO` metadata file for the `t1lib` package. It declares package metadata, source tarball and patch file names, dependencies, and SHA-256 checksums. There is no embedded code, no install hooks, no build or prepare functions, and no post-install logic in this file.

No suspicious behavior is present: there are no network downloads at build time, no execution of fetched content, no obfuscated commands, no base64 or encoded payloads, and no references to unrelated hosts. The sources point to the upstream file location and standard patch files, and all sources include pinned SHA-256 checksums. This is normal AUR packaging metadata and contains no evidence of a supply-chain attack.
</details>
<evidence>
</evidence>
<summary>
Standard AUR package metadata with pinned checksums; no malicious or suspicious behavior found.</summary>
</security_assessment>

[4/8] Reviewing .SRCINFO, format-security.diff, lib-cleanup.diff, t1lib-c99.patch...
[5/8] Reviewing format-security.diff, lib-cleanup.diff, t1lib-c99.patch...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR package metadata with pinned checksums; no malicious or suspicious behavior found.
LLM auditresponse for t1lib-c99.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard patch file that adds explicit type declarations for C99 compatibility. The patch modifies `regions.c` to declare `int x2, y2;` which were previously implicitly typed. This is a routine code hygiene improvement and does not introduce any network activity, obfuscation, or system modification. No malicious behavior is present.
</details>
<evidence></evidence>
<summary>Routine C99 compatibility patch, no security issues.</summary>
</security_assessment>

[6/8] Reviewing format-security.diff, lib-cleanup.diff...
+ Reviewed t1lib-c99.patch. Status: SAFE -- Routine C99 compatibility patch, no security issues.
LLM auditresponse for lib-cleanup.diff:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch is a routine build-system cleanup for the t1lib package. It modifies Makefile.in files to remove linking against libraries that are not required for the target binaries (for example, dropping -lXpm, -lXext, and -lXmu from specific link lines). The changes are simple, transparent edits to linker flags and do not introduce any new commands, network operations, or executable behavior.

There is no obfuscation, no suspicious downloads, no file exfiltration, no execution of untrusted code, and no tampering with system files outside the package's normal build process. Removing unused library references is a standard packaging practice. The patch only alters which libraries are passed to the linker for building `xglyph` and related tools; it does not alter the application's runtime behavior in a way that could enable an attack.

The diff is consistent with an ordinary maintenance change and contains no evidence of injected or malicious code.
</details>
<evidence>
</evidence>
<summary>
Benign build-link cleanup patch; no malicious behavior detected.
</summary>
</security_assessment>

[7/8] Reviewing format-security.diff...
+ Reviewed lib-cleanup.diff. Status: SAFE -- Benign build-link cleanup patch; no malicious behavior detected.
LLM auditresponse for format-security.diff:
 <security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard format-string hardening patch for the t1lib library. It contains no shell commands, no network activity, no encoded payloads, and no file operations outside the library's own source tree (lib/type1/ and lib/t1lib/). The `&quot;`, `&amp;`, and `&lt;` entities in the transmitted content are just XML encoding of the ordinary `"`, `&`, and `<` characters in the diff text; once decoded, the lines are plain, readable C code with no hidden layers or obfuscation.

Each hunk applies the textbook fix for format-string vulnerabilities: `IfTrace0(TRUE,typemsg)` becomes `IfTrace1(TRUE, "%s", typemsg)` so a runtime error message (which embeds an object type name) is passed as data rather than as a printf format; `sprintf(..., linebuf)` becomes `sprintf(..., "%s", linebuf)` so the PostScript trailer is treated as literal text instead of as a format string; and the `IfTrace0` macro is changed from `printf(model)` to `fputs(model,stdout)` so trace text is output literally, eliminating undefined behavior when the text contains `%`. These changes harden the package and match the patch filename's stated purpose.

No red flags are present: nothing exfiltrates local data, nothing downloads or executes code, no backdoors or system file tampering are introduced, and no unexpected content is injected into the build. The patch only makes printf-family calls treat untrusted data as data rather than as format strings, which is the opposite of an attack.
</details>
<evidence>

</evidence>
<summary>Benign format-string hardening patch for t1lib; no malicious behavior found.</summary>
</security_assessment>

[8/8] Reviewing ...
+ Reviewed format-security.diff. Status: SAFE -- Benign format-string hardening patch for t1lib; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 24,764
  Completion Tokens: 10,085
  Total Tokens: 34,849
  Total Cost: $0.002114
  Execution Time: 338.14 seconds

Final Status: SAFE


No issues found.
