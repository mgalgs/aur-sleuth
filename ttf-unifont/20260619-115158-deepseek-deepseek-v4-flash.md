---
package: ttf-unifont
pkgver: 17.0.03
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 11c93a0c95e2166961e3664fea6b5a63827ded10
prompt_tokens: 73270
completion_tokens: 8608
total_tokens: 81878
cost: 0.00814374
execution_time: 115.26
files_reviewed: 11
files_skipped: 1
date: 2026-06-19T11:51:58Z
file_verdicts:
  - file: unifont-17.0.03.tar.gz.sig
    status: skipped
    summary: "Skipping binary file: unifont-17.0.03.tar.gz.sig"
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD for Unifont font package.
  - file: src/unifont-17.0.03/src/unifont-support.c
    status: safe
    summary: Genuine font support code, no security issues.
  - file: src/unifont-17.0.03/src/unibdf2hex.c
    status: safe
    summary: Standard font conversion tool, no security concerns.
  - file: src/unifont-17.0.03/src/hex2otf.c
    status: safe
    summary: Standard font conversion tool; no malicious behavior detected.
  - file: src/unifont-17.0.03/src/johab2syllables.c
    status: safe
    summary: Legitimate glyph generation tool; no malicious code found.
  - file: src/unifont-17.0.03/src/unicoverage.c
    status: safe
    summary: Standard C utility with no malicious indicators.
  - file: src/unifont-17.0.03/src/unifont1per.c
    status: safe
    summary: Simple Unifont hex to BMP converter, no malicious code.
  - file: src/unifont-17.0.03/src/unibmp2hex.c
    status: safe
    summary: Genuine Unifont tool; no malicious behavior found.
  - file: src/unifont-17.0.03/src/unidup.c
    status: safe
    summary: Regular upstream utility, no security concerns.
  - file: src/unifont-17.0.03/Makefile
    status: safe
    summary: Standard upstream Makefile, no malicious behavior detected.
  - file: src/unifont-17.0.03/src/unibmpbump.c
    status: safe
    summary: Clean BMP processing tool for Unifont conversion.
---

Cloning https://aur.archlinux.org/ttf-unifont.git to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-sn481sti...
Cloned repository to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-sn481sti
Analyzing ttf-unifont AUR package (working in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-sn481sti) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains standard variable assignments and a source array pointing to the official upstream tarball and signature. There is no `pkgver()` function or top-level command substitution that could execute arbitrary code during sourcing. The `build()` and `package()` functions are not executed by the requested commands (`--nobuild --noprepare`). The source download is from the project's own domain with a pinned checksum and PGP key, presenting no immediate risk during the fetch/source step.
</details>
<summary>No malicious code executed during source fetch or PKGBUILD sourcing.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- No malicious code executed during source fetch or PKGBUILD sourcing.[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, unifont-17.0.03.tar.gz.sig...
[1/2] Reviewing PKGBUILD...
! Reviewed unifont-17.0.03.tar.gz.sig. Status: SKIPPED -- Skipping binary file: unifont-17.0.03.tar.gz.sig
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard PKGBUILD for the `ttf-unifont` package. It fetches a pinned release tarball from the official upstream (unifoundry.com), verifies it via a PGP signature, and builds the TrueType fonts from the upstream FontForge source with `make`. There are no unexpected network requests, no obfuscated code, no `eval`, `curl`/`bash`, or other dangerous patterns. The installation only places font files and license copies into the package directory. Everything is consistent with normal packaging practices.

The only potential concern is that the `.sig` source has `SKIP` for its checksum, which is standard for PGP-signed sources and not indicative of malice. The package is safe.
</details>
<summary>Standard AUR PKGBUILD for Unifont font package.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD for Unifont font package.
Reviewed all required files.
Deciding which files to review next...
Note: 1142 files available for selection; offering the 50 highest-priority to the model. 903 lower-priority file(s) were not offered.
LLM response for file selection:
src/unifont-17.0.03/Makefile
src/unifont-17.0.03/src/hex2otf.c
src/unifont-17.0.03/src/johab2syllables.c
src/unifont-17.0.03/src/unibdf2hex.c
src/unifont-17.0.03/src/unibmp2hex.c
src/unifont-17.0.03/src/unibmpbump.c
src/unifont-17.0.03/src/unicoverage.c
src/unifont-17.0.03/src/unidup.c
src/unifont-17.0.03/src/unifont-support.c
src/unifont-17.0.03/src/unifont1per.c
Decided to review 10 additional files: src/unifont-17.0.03/Makefile, src/unifont-17.0.03/src/hex2otf.c, src/unifont-17.0.03/src/johab2syllables.c, src/unifont-17.0.03/src/unibdf2hex.c, src/unifont-17.0.03/src/unibmp2hex.c, src/unifont-17.0.03/src/unibmpbump.c, src/unifont-17.0.03/src/unicoverage.c, src/unifont-17.0.03/src/unidup.c, src/unifont-17.0.03/src/unifont-support.c, src/unifont-17.0.03/src/unifont1per.c
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/unifont-17.0.03/Makefile...
[0/10] Reviewing src/unifont-17.0.03/Makefile, src/unifont-17.0.03/src/hex2otf.c...
[0/10] Reviewing src/unifont-17.0.03/Makefile, src/unifont-17.0.03/src/hex2otf.c, src/unifont-17.0.03/src/johab2syllables.c...
[0/10] Reviewing src/unifont-17.0.03/Makefile, src/unifont-17.0.03/src/hex2otf.c, src/unifont-17.0.03/src/johab2syllables.c, src/unifont-17.0.03/src/unibdf2hex.c...
[0/10] Reviewing src/unifont-17.0.03/Makefile, src/unifont-17.0.03/src/hex2otf.c, src/unifont-17.0.03/src/johab2syllables.c, src/unifont-17.0.03/src/unibdf2hex.c, src/unifont-17.0.03/src/unibmp2hex.c...
[0/10] Reviewing src/unifont-17.0.03/Makefile, src/unifont-17.0.03/src/hex2otf.c, src/unifont-17.0.03/src/johab2syllables.c, src/unifont-17.0.03/src/unibdf2hex.c, src/unifont-17.0.03/src/unibmp2hex.c, src/unifont-17.0.03/src/unicoverage.c...
[0/10] Reviewing src/unifont-17.0.03/Makefile, src/unifont-17.0.03/src/hex2otf.c, src/unifont-17.0.03/src/johab2syllables.c, src/unifont-17.0.03/src/unibdf2hex.c, src/unifont-17.0.03/src/unibmp2hex.c, src/unifont-17.0.03/src/unicoverage.c, src/unifont-17.0.03/src/unibmpbump.c...
[0/10] Reviewing src/unifont-17.0.03/Makefile, src/unifont-17.0.03/src/hex2otf.c, src/unifont-17.0.03/src/johab2syllables.c, src/unifont-17.0.03/src/unibdf2hex.c, src/unifont-17.0.03/src/unibmp2hex.c, src/unifont-17.0.03/src/unicoverage.c, src/unifont-17.0.03/src/unibmpbump.c, src/unifont-17.0.03/src/unifont-support.c...
[0/10] Reviewing src/unifont-17.0.03/Makefile, src/unifont-17.0.03/src/hex2otf.c, src/unifont-17.0.03/src/johab2syllables.c, src/unifont-17.0.03/src/unibdf2hex.c, src/unifont-17.0.03/src/unibmp2hex.c, src/unifont-17.0.03/src/unicoverage.c, src/unifont-17.0.03/src/unibmpbump.c, src/unifont-17.0.03/src/unifont-support.c, src/unifont-17.0.03/src/unidup.c...
[0/10] Reviewing src/unifont-17.0.03/Makefile, src/unifont-17.0.03/src/hex2otf.c, src/unifont-17.0.03/src/johab2syllables.c, src/unifont-17.0.03/src/unibdf2hex.c, src/unifont-17.0.03/src/unibmp2hex.c, src/unifont-17.0.03/src/unicoverage.c, src/unifont-17.0.03/src/unibmpbump.c, src/unifont-17.0.03/src/unifont-support.c, src/unifont-17.0.03/src/unidup.c, src/unifont-17.0.03/src/unifont1per.c...
LLM auditresponse for unifont-support.c:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard C source file providing support functions for the Unifont .hex font format. It contains functions for parsing hex strings, converting glyph data between binary and bit-array formats, transposing glyphs for display, and converting glyphs back to hex strings. There are no network calls, no execution of external commands, no obfuscated or encoded code, no file system modifications outside of standard data processing, and no system alterations. The code performs only legitimate font data manipulation operations consistent with its stated purpose. No evidence of supply-chain attack or malicious behavior is present.
</details>
<summary>Genuine font support code, no security issues.</summary>
</security_assessment>

LLM auditresponse for unibdf2hex.c:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `unibdf2hex.c` is a standard C utility for converting BDF font files into the unifont.hex format. It reads from stdin and writes to stdout, performing only local file I/O operations. There are no network requests, no execution of external commands (no `system`, `popen`, `exec`, etc.), no obfuscated or encoded code, and no attempt to access or exfiltrate sensitive system data. The code is straightforward, well-commented, and performs exactly the task described in its header comment. It uses standard C library functions (`fgets`, `sscanf`, `fprintf`) for input/output processing. There is no evidence of malicious behavior or deviation from normal packaging practices.
</details>
<summary>
Standard font conversion tool, no security concerns.
</summary>
</security_assessment>

[1/10] Reviewing src/unifont-17.0.03/Makefile, src/unifont-17.0.03/src/hex2otf.c, src/unifont-17.0.03/src/johab2syllables.c, src/unifont-17.0.03/src/unibdf2hex.c, src/unifont-17.0.03/src/unibmp2hex.c, src/unifont-17.0.03/src/unicoverage.c, src/unifont-17.0.03/src/unibmpbump.c, src/unifont-17.0.03/src/unidup.c, src/unifont-17.0.03/src/unifont1per.c...
+ Reviewed src/unifont-17.0.03/src/unifont-support.c. Status: SAFE -- Genuine font support code, no security issues.
[2/10] Reviewing src/unifont-17.0.03/Makefile, src/unifont-17.0.03/src/hex2otf.c, src/unifont-17.0.03/src/johab2syllables.c, src/unifont-17.0.03/src/unibmp2hex.c, src/unifont-17.0.03/src/unicoverage.c, src/unifont-17.0.03/src/unibmpbump.c, src/unifont-17.0.03/src/unidup.c, src/unifont-17.0.03/src/unifont1per.c...
+ Reviewed src/unifont-17.0.03/src/unibdf2hex.c. Status: SAFE -- Standard font conversion tool, no security concerns.
LLM auditresponse for hex2otf.c:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is the source code for `hex2otf.c`, a utility from the GNU Unifont project that converts Unifont .hex bitmap font files into OpenType font files. The code performs standard file I/O (reading .hex input, writing .otf output), memory management, binary data serialization for OpenType table structures, and command-line argument parsing. There are no network requests, no execution of external commands or scripts, no obfuscated or encoded payloads, and no attempts to access or exfiltrate sensitive system data. The operations are entirely consistent with its stated purpose of font format conversion. No signs of injected malicious code or supply-chain attack are present.
</details>
<summary>
Standard font conversion tool; no malicious behavior detected.
</summary>
</security_assessment>

[3/10] Reviewing src/unifont-17.0.03/Makefile, src/unifont-17.0.03/src/johab2syllables.c, src/unifont-17.0.03/src/unibmp2hex.c, src/unifont-17.0.03/src/unicoverage.c, src/unifont-17.0.03/src/unibmpbump.c, src/unifont-17.0.03/src/unidup.c, src/unifont-17.0.03/src/unifont1per.c...
+ Reviewed src/unifont-17.0.03/src/hex2otf.c. Status: SAFE -- Standard font conversion tool; no malicious behavior detected.
LLM auditresponse for johab2syllables.c:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard C source file for a Hangul syllable generation utility. It reads a Unifont .hex file containing Hangul base glyphs in Johab 6/3/1 format and outputs a .hex file for the Unicode Hangul Syllables block (U+AC00..U+D7A3). The code performs only file I/O operations (fopen, fprintf, fputc) and no network requests, obfuscated commands, or system modifications. There is no evidence of malicious behavior such as data exfiltration, execution of external code, or backdoor insertion. The file is consistent with legitimate upstream packaging for the ttf-unifont font package.
</details>
<summary>
Legitimate glyph generation tool; no malicious code found.
</summary>
</security_assessment>

[4/10] Reviewing src/unifont-17.0.03/Makefile, src/unifont-17.0.03/src/unibmp2hex.c, src/unifont-17.0.03/src/unicoverage.c, src/unifont-17.0.03/src/unibmpbump.c, src/unifont-17.0.03/src/unidup.c, src/unifont-17.0.03/src/unifont1per.c...
+ Reviewed src/unifont-17.0.03/src/johab2syllables.c. Status: SAFE -- Legitimate glyph generation tool; no malicious code found.
LLM auditresponse for unicoverage.c:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard C source code for the `unicoverage` utility included in the ttf-unifont AUR package. It performs file I/O on user-specified font files and a bundled `coverage.dat` file to compute Unicode coverage percentages. There are no network requests, no obfuscation, no dangerous command execution (`curl`, `wget`, `eval`, etc.), and no system modifications outside its own input/output files. All operations are consistent with a legitimate Unicode font analysis tool. No malicious behavior is present.
</details>
<summary>Standard C utility with no malicious indicators.</summary>
</security_assessment>

[5/10] Reviewing src/unifont-17.0.03/Makefile, src/unifont-17.0.03/src/unibmp2hex.c, src/unifont-17.0.03/src/unibmpbump.c, src/unifont-17.0.03/src/unidup.c, src/unifont-17.0.03/src/unifont1per.c...
+ Reviewed src/unifont-17.0.03/src/unicoverage.c. Status: SAFE -- Standard C utility with no malicious indicators.
LLM auditresponse for unifont1per.c:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a C source file for a utility that reads Unifont .hex format from standard input and writes one BMP file per glyph. It performs no network operations, no obfuscated code, no execution of external commands, and no unexpected file system modifications. The only file operations are writing BMP files to the current directory with filenames derived from the Unicode codepoint (e.g., `U+%06X.bmp`), which prevents path traversal. The code is straightforward and matches its documented purpose. There is no evidence of injected malicious code or supply-chain attack.
</details>
<summary>Simple Unifont hex to BMP converter, no malicious code.</summary>
</security_assessment>

[6/10] Reviewing src/unifont-17.0.03/Makefile, src/unifont-17.0.03/src/unibmp2hex.c, src/unifont-17.0.03/src/unibmpbump.c, src/unifont-17.0.03/src/unidup.c...
+ Reviewed src/unifont-17.0.03/src/unifont1per.c. Status: SAFE -- Simple Unifont hex to BMP converter, no malicious code.
LLM auditresponse for unibmp2hex.c:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard C source for a bitmap-to-hex converter used in the Unifont glyph generation pipeline. It performs no network operations, no shell execution, and no obfuscated code. The only I/O is reading from a user-specified input BMP/WBMP file and writing a hex output file. All file operations use standard C library calls (fopen, fclose, fgetc, fprintf). There is no evidence of data exfiltration, backdoors, or any code that deviates from the stated purpose of converting bitmap glyph matrices into Unifont hex format. The large `wide[]` array initialization is a compile-time data structure for script width classification, not a runtime security concern.
</details>
<summary>Genuine Unifont tool; no malicious behavior found.</summary>
</security_assessment>

[7/10] Reviewing src/unifont-17.0.03/Makefile, src/unifont-17.0.03/src/unibmpbump.c, src/unifont-17.0.03/src/unidup.c...
+ Reviewed src/unifont-17.0.03/src/unibmp2hex.c. Status: SAFE -- Genuine Unifont tool; no malicious behavior found.
LLM auditresponse for unidup.c:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard C utility (`unidup.c`) from the upstream unifont project. It reads a sorted `.hex` file (either from a command-line argument or stdin) and checks for duplicate Unicode code points, printing any duplicates to stderr. The code contains no network operations, no external command execution, no obfuscated or encoded strings, and no modifications to system files.

The only notable detail is a minor type-casting bug on line 76: `sscanf(inbuf, "%X", (unsigned *)&amp;iY);` where `iy` is declared as `int`. While this is technically undefined behavior (type mismatch), it is a programming error, not a malicious supply-chain injection. There is no evidence of any attempt to exfiltrate data, download remote payloads, install backdoors, or tamper with unrelated files.
</details>
<summary>
Regular upstream utility, no security concerns.
</summary>
</security_assessment>

[8/10] Reviewing src/unifont-17.0.03/Makefile, src/unifont-17.0.03/src/unibmpbump.c...
+ Reviewed src/unifont-17.0.03/src/unidup.c. Status: SAFE -- Regular upstream utility, no security concerns.
LLM auditresponse for Makefile:
<security_assessment>
<decision>SAFE</decision>
<details>
The Makefile is a standard build system for the GNU Unifont package from unifoundry.com. It contains only expected operations: compiling source code, building fonts, creating documentation, and installing files into system directories. There are no network requests (no curl, wget, ftp, or similar commands), no obfuscated or encoded code, no attempts to read or exfiltrate sensitive data, and no backdoors. Commands like `gzip`, `install`, `make`, `sort`, and `tar` are all standard for packaging. The file does not deviate from normal upstream build practices.
</details>
<summary>Standard upstream Makefile, no malicious behavior detected.</summary>
</security_assessment>

[9/10] Reviewing src/unifont-17.0.03/src/unibmpbump.c...
+ Reviewed src/unifont-17.0.03/Makefile. Status: SAFE -- Standard upstream Makefile, no malicious behavior detected.
LLM auditresponse for unibmpbump.c:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `unibmpbump.c` is a utility that adjusts Microsoft bitmap (.bmp) files for the Unifont project, specifically to match the format produced by `unihex2bmp`. The code performs standard file I/O: opening an input BMP, reading its header and image data, validating dimensions and color depth, and writing a transformed output BMP. There are no network operations, no execution of external commands (no `system`, `popen`, `exec`), no base64 or encoded payloads, and no file operations outside the explicitly named input and output files. The code uses only standard C library functions (`stdio.h`, `string.h`, `stdlib.h`). The processing is purely local and does not modify or read any system configuration files, home directories, or sensitive data. The transformation logic (regridding glyphs) is a straightforward pixel manipulation routine consistent with the stated purpose of converting bitmap images for font processing. No evidence of malicious behavior such as data exfiltration, backdoors, or downloading/executing untrusted code was found.
</details>
<summary>Clean BMP processing tool for Unifont conversion.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/unifont-17.0.03/src/unibmpbump.c. Status: SAFE -- Clean BMP processing tool for Unifont conversion.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
(Skipped 1 file: unifont-17.0.03.tar.gz.sig)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 73,270
  Completion Tokens: 8,608
  Total Tokens: 81,878
  Total Cost: $0.008144
  Execution Time: 115.26 seconds
Full audit report can be found in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-ttf-unifont.txt
Final Status: SAFE


No issues found.


Audit Skips:

/home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-sn481sti/unifont-17.0.03.tar.gz.sig: [SKIPPED] Skipping binary file: unifont-17.0.03.tar.gz.sig
