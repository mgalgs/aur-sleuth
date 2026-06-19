---
package: libgnomeprint
pkgver: 2.18.8
pkgrel: 10
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 11c93a0c95e2166961e3664fea6b5a63827ded10
prompt_tokens: 116727
completion_tokens: 7241
total_tokens: 123968
cost: 0.01180881
execution_time: 100.26
files_reviewed: 12
files_skipped: 0
date: 2026-06-19T11:10:50Z
file_verdicts:
  - file: configure.in.patch
    status: safe
    summary: Legitimate build system modernization, no security issues found.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD, no signs of malicious behavior.
  - file: src/libgnomeprint-2.18.8/libgnomeprint/gnome-fontmap.c
    status: safe
    summary: Legitimate fontconfig-based font map implementation, no security issues.
  - file: src/libgnomeprint-2.18.8/libgnomeprint/gnome-font.c
    status: safe
    summary: Legitimate font library code, no security issues.
  - file: src/libgnomeprint-2.18.8/Makefile.am
    status: safe
    summary: Standard build system file, no security issues.
  - file: patch-freetype-2.5.1.diff
    status: safe
    summary: Legitimate compatibility patch for freetype 2.5.1.
  - file: src/libgnomeprint-2.18.8/libgnomeprint/art_rgba_svp.c
    status: safe
    summary: No security issues; standard graphics rendering code.
  - file: src/libgnomeprint-2.18.8/data/globals.xml
    status: safe
    summary: Benign XML configuration data file, no security issues.
  - file: src/libgnomeprint-2.18.8/configure.in
    status: safe
    summary: Standard autoconf build script; no malicious code found.
  - file: src/libgnomeprint-2.18.8/filters/gnome-print-filter-clip.c
    status: safe
    summary: Standard GNOME printing filter code, no malicious activity.
  - file: src/libgnomeprint-2.18.8/libgnomeprint/gnome-font-face.c
    status: safe
    summary: Standard font rendering library source, no security issues.
  - file: src/libgnomeprint-2.18.8/libgnomeprint/gnome-pgl.c
    status: safe
    summary: Legitimate C code for POS glyph list operations; no security concerns.
---

Cloning https://aur.archlinux.org/libgnomeprint.git to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-2x92ppt7...
Cloned repository to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-2x92ppt7
Analyzing libgnomeprint AUR package (working in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-2x92ppt7) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only straightforward variable assignments and a source array with checksums. There is no `pkgver()` function, and no command substitutions or code execution occurs in the global scope. The sources are all from legitimate, canonical locations (GNOME FTP, Gentoo repo, and local patch files). The `prepare()`, `build()`, and `package()` functions are not executed by the specified commands. No malicious, obfuscated, or exfiltration-related code is present.
</details>
<summary>No dangerous scope execution; sources are safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- No dangerous scope execution; sources are safe.[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, configure.in.patch...
LLM auditresponse for configure.in.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch modernizes the freetype2 detection in `configure.in` by replacing manual `freetype-config` usage with a standard `pkg-config` check (`PKG_CHECK_MODULES`). This is a common and expected build-system improvement. There is no evidence of malicious behavior: no network requests, no obfuscated code, no file operations outside the build environment, and no deviations from standard packaging practices. The change is entirely routine and benign.
</details>
<summary>Legitimate build system modernization, no security issues found.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed configure.in.patch. Status: SAFE -- Legitimate build system modernization, no security issues found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices. Sources are fetched from the official GNOME FTP and a reputable Gentoo gitweb URL, all with pinned SHA-256 checksums. The `addinclude` tool in `makedepends` is unusual but used only to add a standard `stdio.h` include to a source file — a routine fix, not malicious. Build steps (`./configure`, `make`, `make install`) are ordinary. No obfuscated code, unexpected network requests, or dangerous command executions are present.
</details>
<summary>Standard PKGBUILD, no signs of malicious behavior.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD, no signs of malicious behavior.
Reviewed all required files.
Deciding which files to review next...
Note: 401 files available for selection; offering the 50 highest-priority to the model. 304 lower-priority file(s) were not offered.
LLM response for file selection:
patch-freetype-2.5.1.diff
src/libgnomeprint-2.18.8/Makefile.am
src/libgnomeprint-2.18.8/configure.in
src/libgnomeprint-2.18.8/libgnomeprint/gnome-font.c
src/libgnomeprint-2.18.8/libgnomeprint/gnome-fontmap.c
src/libgnomeprint-2.18.8/libgnomeprint/gnome-font-face.c
src/libgnomeprint-2.18.8/libgnomeprint/gnome-pgl.c
src/libgnomeprint-2.18.8/filters/gnome-print-filter-clip.c
src/libgnomeprint-2.18.8/data/globals.xml
src/libgnomeprint-2.18.8/libgnomeprint/art_rgba_svp.c
Decided to review 10 additional files: patch-freetype-2.5.1.diff, src/libgnomeprint-2.18.8/Makefile.am, src/libgnomeprint-2.18.8/configure.in, src/libgnomeprint-2.18.8/libgnomeprint/gnome-font.c, src/libgnomeprint-2.18.8/libgnomeprint/gnome-fontmap.c, src/libgnomeprint-2.18.8/libgnomeprint/gnome-font-face.c, src/libgnomeprint-2.18.8/libgnomeprint/gnome-pgl.c, src/libgnomeprint-2.18.8/filters/gnome-print-filter-clip.c, src/libgnomeprint-2.18.8/data/globals.xml, src/libgnomeprint-2.18.8/libgnomeprint/art_rgba_svp.c
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/libgnomeprint-2.18.8/Makefile.am...
[0/10] Reviewing src/libgnomeprint-2.18.8/Makefile.am, patch-freetype-2.5.1.diff...
[0/10] Reviewing src/libgnomeprint-2.18.8/Makefile.am, patch-freetype-2.5.1.diff, src/libgnomeprint-2.18.8/libgnomeprint/gnome-font.c...
[0/10] Reviewing src/libgnomeprint-2.18.8/Makefile.am, patch-freetype-2.5.1.diff, src/libgnomeprint-2.18.8/libgnomeprint/gnome-font.c, src/libgnomeprint-2.18.8/configure.in...
[0/10] Reviewing src/libgnomeprint-2.18.8/Makefile.am, patch-freetype-2.5.1.diff, src/libgnomeprint-2.18.8/libgnomeprint/gnome-font.c, src/libgnomeprint-2.18.8/configure.in, src/libgnomeprint-2.18.8/libgnomeprint/gnome-fontmap.c...
[0/10] Reviewing src/libgnomeprint-2.18.8/Makefile.am, patch-freetype-2.5.1.diff, src/libgnomeprint-2.18.8/libgnomeprint/gnome-font.c, src/libgnomeprint-2.18.8/configure.in, src/libgnomeprint-2.18.8/libgnomeprint/gnome-fontmap.c, src/libgnomeprint-2.18.8/libgnomeprint/gnome-font-face.c...
[0/10] Reviewing src/libgnomeprint-2.18.8/Makefile.am, patch-freetype-2.5.1.diff, src/libgnomeprint-2.18.8/libgnomeprint/gnome-font.c, src/libgnomeprint-2.18.8/configure.in, src/libgnomeprint-2.18.8/libgnomeprint/gnome-fontmap.c, src/libgnomeprint-2.18.8/libgnomeprint/gnome-font-face.c, src/libgnomeprint-2.18.8/libgnomeprint/gnome-pgl.c...
[0/10] Reviewing src/libgnomeprint-2.18.8/Makefile.am, patch-freetype-2.5.1.diff, src/libgnomeprint-2.18.8/libgnomeprint/gnome-font.c, src/libgnomeprint-2.18.8/configure.in, src/libgnomeprint-2.18.8/libgnomeprint/gnome-fontmap.c, src/libgnomeprint-2.18.8/libgnomeprint/gnome-font-face.c, src/libgnomeprint-2.18.8/libgnomeprint/gnome-pgl.c, src/libgnomeprint-2.18.8/data/globals.xml...
[0/10] Reviewing src/libgnomeprint-2.18.8/Makefile.am, patch-freetype-2.5.1.diff, src/libgnomeprint-2.18.8/libgnomeprint/gnome-font.c, src/libgnomeprint-2.18.8/configure.in, src/libgnomeprint-2.18.8/libgnomeprint/gnome-fontmap.c, src/libgnomeprint-2.18.8/libgnomeprint/gnome-font-face.c, src/libgnomeprint-2.18.8/libgnomeprint/gnome-pgl.c, src/libgnomeprint-2.18.8/data/globals.xml, src/libgnomeprint-2.18.8/filters/gnome-print-filter-clip.c...
[0/10] Reviewing src/libgnomeprint-2.18.8/Makefile.am, patch-freetype-2.5.1.diff, src/libgnomeprint-2.18.8/libgnomeprint/gnome-font.c, src/libgnomeprint-2.18.8/configure.in, src/libgnomeprint-2.18.8/libgnomeprint/gnome-fontmap.c, src/libgnomeprint-2.18.8/libgnomeprint/gnome-font-face.c, src/libgnomeprint-2.18.8/libgnomeprint/gnome-pgl.c, src/libgnomeprint-2.18.8/data/globals.xml, src/libgnomeprint-2.18.8/filters/gnome-print-filter-clip.c, src/libgnomeprint-2.18.8/libgnomeprint/art_rgba_svp.c...
LLM auditresponse for gnome-fontmap.c:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard implementation file for a GNOME font mapping library. It uses fontconfig to enumerate system fonts, builds internal data structures (font maps, family entries, aliases), manages reference counting, and provides API functions to list fonts and families. There are no network requests, no execution of external binaries, no obfuscated code, and no unexpected file or system modifications. The code follows normal packaging and development practices for GNOME libraries.
</details>
<summary>Legitimate fontconfig-based font map implementation, no security issues.</summary>
</security_assessment>

[1/10] Reviewing src/libgnomeprint-2.18.8/Makefile.am, patch-freetype-2.5.1.diff, src/libgnomeprint-2.18.8/libgnomeprint/gnome-font.c, src/libgnomeprint-2.18.8/configure.in, src/libgnomeprint-2.18.8/libgnomeprint/gnome-font-face.c, src/libgnomeprint-2.18.8/libgnomeprint/gnome-pgl.c, src/libgnomeprint-2.18.8/data/globals.xml, src/libgnomeprint-2.18.8/filters/gnome-print-filter-clip.c, src/libgnomeprint-2.18.8/libgnomeprint/art_rgba_svp.c...
+ Reviewed src/libgnomeprint-2.18.8/libgnomeprint/gnome-fontmap.c. Status: SAFE -- Legitimate fontconfig-based font map implementation, no security issues.
LLM auditresponse for gnome-font.c:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard C source file from the upstream libgnomeprint library. It implements font object handling using GObject, including font face management, glyph metrics, and property accessors. There are no network requests, no obfuscated code, no use of dangerous commands like eval or base64, and no unexpected file operations. The only file-related function (`gnome_font_find_from_filename`) is documented as querying the system font database, not reading arbitrary files. All operations are consistent with a normal font rendering library. No evidence of supply-chain tampering or malicious behavior is present.
</details>
<summary>Legitimate font library code, no security issues.</summary>
</security_assessment>

[2/10] Reviewing src/libgnomeprint-2.18.8/Makefile.am, patch-freetype-2.5.1.diff, src/libgnomeprint-2.18.8/configure.in, src/libgnomeprint-2.18.8/libgnomeprint/gnome-font-face.c, src/libgnomeprint-2.18.8/libgnomeprint/gnome-pgl.c, src/libgnomeprint-2.18.8/data/globals.xml, src/libgnomeprint-2.18.8/filters/gnome-print-filter-clip.c, src/libgnomeprint-2.18.8/libgnomeprint/art_rgba_svp.c...
+ Reviewed src/libgnomeprint-2.18.8/libgnomeprint/gnome-font.c. Status: SAFE -- Legitimate font library code, no security issues.
LLM auditresponse for Makefile.am:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Automake input file (Makefile.am) for the libgnomeprint project. It defines subdirectories to build, extra files to distribute, and files to clean. There are no network requests, obfuscated code, dangerous commands, or any deviations from normal packaging practices. It is benign.
</details>
<summary>Standard build system file, no security issues.
</summary>
</security_assessment>

[3/10] Reviewing patch-freetype-2.5.1.diff, src/libgnomeprint-2.18.8/configure.in, src/libgnomeprint-2.18.8/libgnomeprint/gnome-font-face.c, src/libgnomeprint-2.18.8/libgnomeprint/gnome-pgl.c, src/libgnomeprint-2.18.8/data/globals.xml, src/libgnomeprint-2.18.8/filters/gnome-print-filter-clip.c, src/libgnomeprint-2.18.8/libgnomeprint/art_rgba_svp.c...
+ Reviewed src/libgnomeprint-2.18.8/Makefile.am. Status: SAFE -- Standard build system file, no security issues.
LLM auditresponse for patch-freetype-2.5.1.diff:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard compatibility patch for libgnomeprint to fix building with freetype 2.5.1. The changes update include directives to use the newer freetype header style (via ft2build.h and FT_*_H macros) instead of direct path includes. There is no malicious or suspicious behavior—only legitimate build fixes.
</details>
<summary>Legitimate compatibility patch for freetype 2.5.1.</summary>
</security_assessment>

[4/10] Reviewing src/libgnomeprint-2.18.8/configure.in, src/libgnomeprint-2.18.8/libgnomeprint/gnome-font-face.c, src/libgnomeprint-2.18.8/libgnomeprint/gnome-pgl.c, src/libgnomeprint-2.18.8/data/globals.xml, src/libgnomeprint-2.18.8/filters/gnome-print-filter-clip.c, src/libgnomeprint-2.18.8/libgnomeprint/art_rgba_svp.c...
+ Reviewed patch-freetype-2.5.1.diff. Status: SAFE -- Legitimate compatibility patch for freetype 2.5.1.
LLM auditresponse for art_rgba_svp.c:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard C source file implementing RGBA compositing for sorted vector paths. It contains only pixel buffer manipulation code (blending, alpha compositing, fill runs) using integer arithmetic. There are no network calls, no obfuscated code, no dangerous command execution, no file operations outside normal rendering, and no attempts to exfiltrate data. The code is consistent with the stated purpose of the libgnomeprint library for rendering graphics into RGBA buffers.
</details>
<summary>No security issues; standard graphics rendering code.</summary>
</security_assessment>

[5/10] Reviewing src/libgnomeprint-2.18.8/configure.in, src/libgnomeprint-2.18.8/libgnomeprint/gnome-font-face.c, src/libgnomeprint-2.18.8/libgnomeprint/gnome-pgl.c, src/libgnomeprint-2.18.8/data/globals.xml, src/libgnomeprint-2.18.8/filters/gnome-print-filter-clip.c...
+ Reviewed src/libgnomeprint-2.18.8/libgnomeprint/art_rgba_svp.c. Status: SAFE -- No security issues; standard graphics rendering code.
LLM auditresponse for globals.xml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `globals.xml` is a configuration data file for the libgnomeprint library, containing page layout definitions, paper sizes, orientations, and their translations into many languages. It is pure XML with no executable code, no network requests, no obfuscated content, and no suspicious operations. The file is entirely consistent with standard packaging practices for a print configuration resource. No evidence of supply-chain attack or malicious behavior was found.
</details>
<summary>
Benign XML configuration data file, no security issues.</summary>
</security_assessment>

[6/10] Reviewing src/libgnomeprint-2.18.8/configure.in, src/libgnomeprint-2.18.8/libgnomeprint/gnome-font-face.c, src/libgnomeprint-2.18.8/libgnomeprint/gnome-pgl.c, src/libgnomeprint-2.18.8/filters/gnome-print-filter-clip.c...
+ Reviewed src/libgnomeprint-2.18.8/data/globals.xml. Status: SAFE -- Benign XML configuration data file, no security issues.
LLM auditresponse for configure.in:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard GNU Autoconf `configure.in` script for the libgnomeprint library (version 2.18.8). It performs typical build-automation tasks: checking for compilers, required libraries (glib, libart, pango, libxml2, fontconfig, freetype, zlib, CUPS, PAPI, etc.), setting installation paths, and generating output files. All network destinations referenced are the project’s own upstream (bug tracker, gtk-doc site), and no data is exfiltrated or unexpected code downloaded. Commands such as `pkg-config`, `cups-config`, and `freetype-config` are standard tools used to locate required system dependencies. There is no obfuscation, eval, base64, curl, wget, or any behavior that deviates from normal packaging best practices. The script is benign and consistent with its intended purpose.
</details>
<summary>
Standard autoconf build script; no malicious code found.</summary>
</security_assessment>

[7/10] Reviewing src/libgnomeprint-2.18.8/libgnomeprint/gnome-font-face.c, src/libgnomeprint-2.18.8/libgnomeprint/gnome-pgl.c, src/libgnomeprint-2.18.8/filters/gnome-print-filter-clip.c...
+ Reviewed src/libgnomeprint-2.18.8/configure.in. Status: SAFE -- Standard autoconf build script; no malicious code found.
LLM auditresponse for gnome-print-filter-clip.c:
<security_assessment>
<decision>SAFE</decision>
<details>
This source file implements a `GnomePrintFilterClip` GObject class for the libgnomeprint library. It provides a rectangular clipping filter for print operations. The code is entirely standard for a GNOME printing filter plugin: it defines structs, GObject property getters/setters, and overrides filter methods (stroke, fill, image, glyphlist) to apply a clip region using the parent class's clip/unclip mechanism.

There are no network requests, no calls to dangerous functions (eval, system, exec, curl, wget), no obfuscated or encoded strings, no file operations outside of what a normal printing library would do, and no indication of any supply-chain attack. The file exports the filter type using `G_MODULE_EXPORT`, which is standard for loadable GObject modules.

The code is well-structured and matches the expected behavior of a clip filter. No security concerns exist.
</details>
<summary>Standard GNOME printing filter code, no malicious activity.</summary>
</security_assessment>

[8/10] Reviewing src/libgnomeprint-2.18.8/libgnomeprint/gnome-font-face.c, src/libgnomeprint-2.18.8/libgnomeprint/gnome-pgl.c...
+ Reviewed src/libgnomeprint-2.18.8/filters/gnome-print-filter-clip.c. Status: SAFE -- Standard GNOME printing filter code, no malicious activity.
LLM auditresponse for gnome-font-face.c:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard C source file from the libgnomeprint library, implementing font face functionality. It contains routine operations such as loading fonts via FreeType, retrieving glyph metrics and outlines, and generating PostScript font embedding code. All function calls are to standard library APIs (`g_free`, `FT_Load_Glyph`, `g_strdup`, etc.) and internal libgnomeprint functions. There are no network requests (no `curl`, `wget`, `socket`), no encoded or obfuscated code, no execution of downloaded content, and no attempts to exfiltrate or modify system files outside the normal scope of a font rendering library. The only file operations involve reading font files from the system's font directory (via `FT_New_Face`, `gnome_print_buffer_mmap`) and writing temporary subfont files during TrueType embedding (the `unlink` call after reading). These are standard packaging and rendering tasks. No evidence of malicious or supply-chain attack behavior.
</details>
<summary>
Standard font rendering library source, no security issues.
</summary>
</security_assessment>

[9/10] Reviewing src/libgnomeprint-2.18.8/libgnomeprint/gnome-pgl.c...
+ Reviewed src/libgnomeprint-2.18.8/libgnomeprint/gnome-font-face.c. Status: SAFE -- Standard font rendering library source, no security issues.
LLM auditresponse for gnome-pgl.c:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard C source file from the libgnomeprint library, part of the GNOME printing framework. It implements `GnomePosGlyphList` (positioned glyph list) operations, including creation from a glyph list (`gnome_pgl_from_gl`), destruction, bounding box calculation, point testing, and rendering. The code uses standard C library functions (`g_new`, `g_free`, `g_renew`, etc.) and calls into `libart_lgpl` and `libgnomeprint` APIs for affine transformations and font operations. There are no network requests, no file system manipulation outside the library's intended scope, no obfuscated or encoded strings, and no execution of external commands. The copyright and authorship (Lauris Kaplinski, Ximian) are consistent with the package's stated origin. The code performs exactly the glyph layout and rendering operations that a printing library would need. No evidence of malicious injected code or supply-chain attack behavior is present.
</details>
<summary>
Legitimate C code for POS glyph list operations; no security concerns.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/libgnomeprint-2.18.8/libgnomeprint/gnome-pgl.c. Status: SAFE -- Legitimate C code for POS glyph list operations; no security concerns.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 116,727
  Completion Tokens: 7,241
  Total Tokens: 123,968
  Total Cost: $0.011809
  Execution Time: 100.26 seconds
Full audit report can be found in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-libgnomeprint.txt
Final Status: SAFE


No issues found.
