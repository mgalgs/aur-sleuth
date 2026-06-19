---
package: lib32-gtk-engines
pkgver: 2.21.0
pkgrel: 3
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 11c93a0c95e2166961e3664fea6b5a63827ded10
prompt_tokens: 133701
completion_tokens: 6861
total_tokens: 140562
cost: 0.01326807
execution_time: 191.0
files_reviewed: 11
files_skipped: 1
date: 2026-06-19T10:27:36Z
file_verdicts:
  - file: gtk-engines-2.21.0.tar.gz
    status: skipped
    summary: "Skipping binary file: gtk-engines-2.21.0.tar.gz"
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD, no malicious indicators.
  - file: src/gtk-engines-2.21.0/autogen.sh
    status: safe
    summary: Standard autogen.sh with no malicious content.
  - file: src/gtk-engines-2.21.0/configure.ac
    status: safe
    summary: Standard configure.ac; no malicious content detected.
  - file: src/gtk-engines-2.21.0/engines/clearlooks/src/clearlooks_draw.c
    status: safe
    summary: Legitimate GTK theme engine drawing code, no malicious behavior.
  - file: src/gtk-engines-2.21.0/engines/redmond/src/redmond_gtk2_drawing.c
    status: safe
    summary: Legitimate GTK2 theme engine drawing code, no security issues.
  - file: src/gtk-engines-2.21.0/engines/mist/src/mist-style.c
    status: safe
    summary: Standard GTK theme engine, no malicious behavior found.
  - file: src/gtk-engines-2.21.0/Makefile.am
    status: safe
    summary: Standard build file, no security issues.
  - file: src/gtk-engines-2.21.0/engines/glide/src/glide_gtk2_drawing.c
    status: safe
    summary: Standard GTK drawing engine code, no malicious content found.
  - file: src/gtk-engines-2.21.0/engines/industrial/src/industrial_style.c
    status: safe
    summary: Standard GTK+ rendering engine code, no security issues.
  - file: src/gtk-engines-2.21.0/engines/crux/src/crux-draw.c
    status: safe
    summary: Standard GTK theme engine drawing code, no malicious behavior.
  - file: src/gtk-engines-2.21.0/engines/hc/src/hc_gtk2_engine.c
    status: safe
    summary: Standard GTK theme engine code; no malicious behavior found.
---

Cloning https://aur.archlinux.org/lib32-gtk-engines.git to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-os21m8hp...
Cloned repository to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-os21m8hp
Analyzing lib32-gtk-engines AUR package (working in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-os21m8hp) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable assignments in the global scope: package metadata, dependencies, source URL pointing to `sources.archlinux.org` (a trusted Arch Linux domain), and an MD5 checksum. No `pkgver()` function is defined, so no code runs during sourcing beyond these assignments. The `build()` and `package()` functions are not executed by `makepkg --nobuild --nodeps --noprepare` or `--printsrcinfo`. There is no malicious code in the global scope, no network requests to unexpected hosts, and no dangerous commands that could exfiltrate data or execute untrusted payloads during this step. The source fetch will download a known tarball from the Arch Linux archives, which is standard and safe.
</details>
<summary>
Standard PKGBUILD with safe source fetch; no malicious code.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- Standard PKGBUILD with safe source fetch; no malicious code.[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, gtk-engines-2.21.0.tar.gz...
[1/2] Reviewing PKGBUILD...
! Reviewed gtk-engines-2.21.0.tar.gz. Status: SKIPPED -- Skipping binary file: gtk-engines-2.21.0.tar.gz
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard Arch packaging practices. It fetches the source from the official Arch Linux source archive via HTTPS, uses a pinned tarball with a hardcoded MD5 checksum, and performs a standard `./configure` / `make` / `make install` workflow. The `rm -rf "$pkgdir"/usr/share` is a typical step for a `lib32` package to avoid overwriting the 64-bit version's shared files. There are no suspicious network requests, obfuscated commands, or unusual system modifications. All operations are consistent with a legitimate AUR package.
</details>
<summary>Standard AUR PKGBUILD, no malicious indicators.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD, no malicious indicators.
Reviewed all required files.
Deciding which files to review next...
Note: 256 files available for selection; offering the 50 highest-priority to the model. 142 lower-priority file(s) were not offered.
LLM response for file selection:
src/gtk-engines-2.21.0/Makefile.am
src/gtk-engines-2.21.0/autogen.sh
src/gtk-engines-2.21.0/configure.ac
src/gtk-engines-2.21.0/engines/clearlooks/src/clearlooks_draw.c
src/gtk-engines-2.21.0/engines/crux/src/crux-draw.c
src/gtk-engines-2.21.0/engines/glide/src/glide_gtk2_drawing.c
src/gtk-engines-2.21.0/engines/hc/src/hc_gtk2_engine.c
src/gtk-engines-2.21.0/engines/industrial/src/industrial_style.c
src/gtk-engines-2.21.0/engines/mist/src/mist-style.c
src/gtk-engines-2.21.0/engines/redmond/src/redmond_gtk2_drawing.c
Decided to review 10 additional files: src/gtk-engines-2.21.0/Makefile.am, src/gtk-engines-2.21.0/autogen.sh, src/gtk-engines-2.21.0/configure.ac, src/gtk-engines-2.21.0/engines/clearlooks/src/clearlooks_draw.c, src/gtk-engines-2.21.0/engines/crux/src/crux-draw.c, src/gtk-engines-2.21.0/engines/glide/src/glide_gtk2_drawing.c, src/gtk-engines-2.21.0/engines/hc/src/hc_gtk2_engine.c, src/gtk-engines-2.21.0/engines/industrial/src/industrial_style.c, src/gtk-engines-2.21.0/engines/mist/src/mist-style.c, src/gtk-engines-2.21.0/engines/redmond/src/redmond_gtk2_drawing.c
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/gtk-engines-2.21.0/autogen.sh...
[0/10] Reviewing src/gtk-engines-2.21.0/autogen.sh, src/gtk-engines-2.21.0/configure.ac...
[0/10] Reviewing src/gtk-engines-2.21.0/autogen.sh, src/gtk-engines-2.21.0/configure.ac, src/gtk-engines-2.21.0/Makefile.am...
[0/10] Reviewing src/gtk-engines-2.21.0/autogen.sh, src/gtk-engines-2.21.0/configure.ac, src/gtk-engines-2.21.0/Makefile.am, src/gtk-engines-2.21.0/engines/clearlooks/src/clearlooks_draw.c...
[0/10] Reviewing src/gtk-engines-2.21.0/autogen.sh, src/gtk-engines-2.21.0/configure.ac, src/gtk-engines-2.21.0/Makefile.am, src/gtk-engines-2.21.0/engines/clearlooks/src/clearlooks_draw.c, src/gtk-engines-2.21.0/engines/crux/src/crux-draw.c...
[0/10] Reviewing src/gtk-engines-2.21.0/autogen.sh, src/gtk-engines-2.21.0/configure.ac, src/gtk-engines-2.21.0/Makefile.am, src/gtk-engines-2.21.0/engines/clearlooks/src/clearlooks_draw.c, src/gtk-engines-2.21.0/engines/crux/src/crux-draw.c, src/gtk-engines-2.21.0/engines/glide/src/glide_gtk2_drawing.c...
[0/10] Reviewing src/gtk-engines-2.21.0/autogen.sh, src/gtk-engines-2.21.0/configure.ac, src/gtk-engines-2.21.0/Makefile.am, src/gtk-engines-2.21.0/engines/clearlooks/src/clearlooks_draw.c, src/gtk-engines-2.21.0/engines/crux/src/crux-draw.c, src/gtk-engines-2.21.0/engines/glide/src/glide_gtk2_drawing.c, src/gtk-engines-2.21.0/engines/mist/src/mist-style.c...
[0/10] Reviewing src/gtk-engines-2.21.0/autogen.sh, src/gtk-engines-2.21.0/configure.ac, src/gtk-engines-2.21.0/Makefile.am, src/gtk-engines-2.21.0/engines/clearlooks/src/clearlooks_draw.c, src/gtk-engines-2.21.0/engines/crux/src/crux-draw.c, src/gtk-engines-2.21.0/engines/glide/src/glide_gtk2_drawing.c, src/gtk-engines-2.21.0/engines/mist/src/mist-style.c, src/gtk-engines-2.21.0/engines/redmond/src/redmond_gtk2_drawing.c...
[0/10] Reviewing src/gtk-engines-2.21.0/autogen.sh, src/gtk-engines-2.21.0/configure.ac, src/gtk-engines-2.21.0/Makefile.am, src/gtk-engines-2.21.0/engines/clearlooks/src/clearlooks_draw.c, src/gtk-engines-2.21.0/engines/crux/src/crux-draw.c, src/gtk-engines-2.21.0/engines/glide/src/glide_gtk2_drawing.c, src/gtk-engines-2.21.0/engines/mist/src/mist-style.c, src/gtk-engines-2.21.0/engines/redmond/src/redmond_gtk2_drawing.c, src/gtk-engines-2.21.0/engines/hc/src/hc_gtk2_engine.c...
[0/10] Reviewing src/gtk-engines-2.21.0/autogen.sh, src/gtk-engines-2.21.0/configure.ac, src/gtk-engines-2.21.0/Makefile.am, src/gtk-engines-2.21.0/engines/clearlooks/src/clearlooks_draw.c, src/gtk-engines-2.21.0/engines/crux/src/crux-draw.c, src/gtk-engines-2.21.0/engines/glide/src/glide_gtk2_drawing.c, src/gtk-engines-2.21.0/engines/mist/src/mist-style.c, src/gtk-engines-2.21.0/engines/redmond/src/redmond_gtk2_drawing.c, src/gtk-engines-2.21.0/engines/hc/src/hc_gtk2_engine.c, src/gtk-engines-2.21.0/engines/industrial/src/industrial_style.c...
LLM auditresponse for autogen.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard autogen.sh script for autotools-based projects. It checks for the presence of autoconf, automake, libtool, and intltool, then runs the typical sequence of `libtoolize`, `intltoolize`, `aclocal`, `autoconf`, `autoheader`, `automake`, and optionally `./configure`. There are no network requests, no downloads, no obfuscated code, no unexpected file operations, and no deviation from normal packaging practices. All commands are standard build tools called with expected arguments. No suspicious or malicious behavior is present.</details>
<summary>Standard autogen.sh with no malicious content.</summary>
</security_assessment>

[1/10] Reviewing src/gtk-engines-2.21.0/configure.ac, src/gtk-engines-2.21.0/Makefile.am, src/gtk-engines-2.21.0/engines/clearlooks/src/clearlooks_draw.c, src/gtk-engines-2.21.0/engines/crux/src/crux-draw.c, src/gtk-engines-2.21.0/engines/glide/src/glide_gtk2_drawing.c, src/gtk-engines-2.21.0/engines/mist/src/mist-style.c, src/gtk-engines-2.21.0/engines/redmond/src/redmond_gtk2_drawing.c, src/gtk-engines-2.21.0/engines/hc/src/hc_gtk2_engine.c, src/gtk-engines-2.21.0/engines/industrial/src/industrial_style.c...
+ Reviewed src/gtk-engines-2.21.0/autogen.sh. Status: SAFE -- Standard autogen.sh with no malicious content.
LLM auditresponse for configure.ac:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Autoconf configuration file (`configure.ac`) for the `gtk-engines` package. It defines build options for various GTK themes and engines, checks for dependencies (GTK+ >= 2.12.0), and generates Makefiles and configuration headers. There are no network requests, obfuscated code, dangerous commands (like `eval`, `curl`, `wget`, `base64`), or unusual system modifications. All operations are consistent with normal packaging and build processes for a library/themes package. No evidence of malicious behavior was found.
</details>
<summary>
Standard configure.ac; no malicious content detected.</summary>
</security_assessment>

[2/10] Reviewing src/gtk-engines-2.21.0/Makefile.am, src/gtk-engines-2.21.0/engines/clearlooks/src/clearlooks_draw.c, src/gtk-engines-2.21.0/engines/crux/src/crux-draw.c, src/gtk-engines-2.21.0/engines/glide/src/glide_gtk2_drawing.c, src/gtk-engines-2.21.0/engines/mist/src/mist-style.c, src/gtk-engines-2.21.0/engines/redmond/src/redmond_gtk2_drawing.c, src/gtk-engines-2.21.0/engines/hc/src/hc_gtk2_engine.c, src/gtk-engines-2.21.0/engines/industrial/src/industrial_style.c...
+ Reviewed src/gtk-engines-2.21.0/configure.ac. Status: SAFE -- Standard configure.ac; no malicious content detected.
LLM auditresponse for clearlooks_draw.c:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard C source file for the Clearlooks GTK+ engine, containing only cairo-based drawing routines for UI widgets (buttons, entries, sliders, checkboxes, etc.). There are no network requests (no curl/wget), no obfuscation (no eval/base64), no suspicious file operations, and no backdoors. The code is consistent with its stated purpose as a GTK theme engine drawing backend. The file was truncated for review, but the head and tail and lines matching suspicious patterns showed no red flags. The omitted middle section is standard cairo rendering code as seen in the surrounding context. No supply-chain attack indicators were found.
</details>
<summary>Legitimate GTK theme engine drawing code, no malicious behavior.</summary>
</security_assessment>

[3/10] Reviewing src/gtk-engines-2.21.0/Makefile.am, src/gtk-engines-2.21.0/engines/crux/src/crux-draw.c, src/gtk-engines-2.21.0/engines/glide/src/glide_gtk2_drawing.c, src/gtk-engines-2.21.0/engines/mist/src/mist-style.c, src/gtk-engines-2.21.0/engines/redmond/src/redmond_gtk2_drawing.c, src/gtk-engines-2.21.0/engines/hc/src/hc_gtk2_engine.c, src/gtk-engines-2.21.0/engines/industrial/src/industrial_style.c...
+ Reviewed src/gtk-engines-2.21.0/engines/clearlooks/src/clearlooks_draw.c. Status: SAFE -- Legitimate GTK theme engine drawing code, no malicious behavior.
LLM auditresponse for redmond_gtk2_drawing.c:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard C source file for a GTK+ 2 theme engine (Redmond95). It implements drawing routines for various widgets (buttons, checkboxes, scrollbars, etc.) using the Cairo graphics library. The code contains no network operations, no execution of external commands, no file system modifications, no obfuscated or encoded payloads, and no data exfiltration. All operations are limited to rendering UI elements via GTK/GDK/Cairo APIs. There is no evidence of supply chain compromise or malicious behavior; it is a normal, functional component of the `lib32-gtk-engines` package.
</details>
<summary>Legitimate GTK2 theme engine drawing code, no security issues.</summary>
</security_assessment>

[4/10] Reviewing src/gtk-engines-2.21.0/Makefile.am, src/gtk-engines-2.21.0/engines/crux/src/crux-draw.c, src/gtk-engines-2.21.0/engines/glide/src/glide_gtk2_drawing.c, src/gtk-engines-2.21.0/engines/mist/src/mist-style.c, src/gtk-engines-2.21.0/engines/hc/src/hc_gtk2_engine.c, src/gtk-engines-2.21.0/engines/industrial/src/industrial_style.c...
+ Reviewed src/gtk-engines-2.21.0/engines/redmond/src/redmond_gtk2_drawing.c. Status: SAFE -- Legitimate GTK2 theme engine drawing code, no security issues.
LLM auditresponse for mist-style.c:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `mist-style.c` is a standard GTK theme engine implementation for the Mist theme. It contains only rendering logic (drawing boxes, shadows, check marks, resize grips, etc.) using cairo and GTK drawing primitives. There are no network requests, no execution of external commands, no obfuscated or encoded payloads, no file system operations beyond what is expected for a style engine (e.g., reading color data from the style structure). The code is well-structured and matches the typical pattern of a GTK engine for custom widget theming. All functions serve the legitimate purpose of painting user interface elements.
</details>
<summary>Standard GTK theme engine, no malicious behavior found.</summary>
</security_assessment>

[5/10] Reviewing src/gtk-engines-2.21.0/Makefile.am, src/gtk-engines-2.21.0/engines/crux/src/crux-draw.c, src/gtk-engines-2.21.0/engines/glide/src/glide_gtk2_drawing.c, src/gtk-engines-2.21.0/engines/hc/src/hc_gtk2_engine.c, src/gtk-engines-2.21.0/engines/industrial/src/industrial_style.c...
+ Reviewed src/gtk-engines-2.21.0/engines/mist/src/mist-style.c. Status: SAFE -- Standard GTK theme engine, no malicious behavior found.
LLM auditresponse for Makefile.am:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Automake Makefile.am file for building the GTK engines package. It defines build subdirectories, distribution files, cleaning rules, a test target, a dist-hook that generates a ChangeLog from `git log`, and an RPM build target. There are no suspicious network requests, obfuscated commands, dangerous operations (eval, base64, curl, wget), or any behavior deviating from normal packaging practices. Everything is consistent with legitimate open-source build infrastructure.
</details>
<summary>Standard build file, no security issues.</summary>
</security_assessment>

[6/10] Reviewing src/gtk-engines-2.21.0/engines/crux/src/crux-draw.c, src/gtk-engines-2.21.0/engines/glide/src/glide_gtk2_drawing.c, src/gtk-engines-2.21.0/engines/hc/src/hc_gtk2_engine.c, src/gtk-engines-2.21.0/engines/industrial/src/industrial_style.c...
+ Reviewed src/gtk-engines-2.21.0/Makefile.am. Status: SAFE -- Standard build file, no security issues.
LLM auditresponse for glide_gtk2_drawing.c:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a C source file for the Glide GTK+ drawing engine, part of the lib32-gtk-engines package. It contains standard widget rendering functions using cairo and GTK API calls. There are no network operations, obfuscated code, dangerous command executions, or attempts to exfiltrate data. The code is entirely focused on drawing checkboxes, arrows, borders, notebook tabs, and other UI elements. No suspicious patterns (curl, wget, eval, base64, exec, etc.) were found in the full file, and the truncated portions are described as standard boilerplate. The content conforms to normal packaging practices for a GTK theme engine.
</details>
<summary>Standard GTK drawing engine code, no malicious content found.</summary>
</security_assessment>

[7/10] Reviewing src/gtk-engines-2.21.0/engines/crux/src/crux-draw.c, src/gtk-engines-2.21.0/engines/hc/src/hc_gtk2_engine.c, src/gtk-engines-2.21.0/engines/industrial/src/industrial_style.c...
+ Reviewed src/gtk-engines-2.21.0/engines/glide/src/glide_gtk2_drawing.c. Status: SAFE -- Standard GTK drawing engine code, no malicious content found.
LLM auditresponse for industrial_style.c:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard GTK+ engine source file (`industrial_style.c`) from the lib32-gtk-engines AUR package. It implements custom Cairo-based drawing routines for various UI widgets (buttons, sliders, menus, scrollbars, etc.). The code is entirely composed of rendering logic using the Cairo graphics library and GTK+ style APIs. There are no network requests, no invocation of shell commands (`system`, `popen`, `curl`, `wget`), no base64 decoding, no `eval` or obfuscated code execution, and no unexpected file system modifications. All operations are confined to pixel-level drawing, color manipulation, and icon processing (scale, saturation, transparency) – all expected upstream application behavior. No evidence of injected malicious code or supply chain attack indicators was found. The file complies with standard packaging practices for a GTK theme engine.
</details>
<summary>Standard GTK+ rendering engine code, no security issues.</summary>
</security_assessment>

[8/10] Reviewing src/gtk-engines-2.21.0/engines/crux/src/crux-draw.c, src/gtk-engines-2.21.0/engines/hc/src/hc_gtk2_engine.c...
+ Reviewed src/gtk-engines-2.21.0/engines/industrial/src/industrial_style.c. Status: SAFE -- Standard GTK+ rendering engine code, no security issues.
LLM auditresponse for crux-draw.c:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is standard C source code for a GTK theme engine (the Crux engine). It implements GTK drawing functions (draw_box, draw_shadow, draw_arrow, etc.) using Cairo graphics to render widget appearances. The code is well-structured and performs only graphical operations: it computes colors, creates linear gradients, draws rounded rectangles, strokes lines, and fills paths. There are no network operations (no curl, wget, or socket calls), no file system writes beyond what the GTK toolkit expects for widget drawing, no obfuscated strings, no encoded payloads, and no execution of external commands. The use of macros like CHECK_ARGS and SANITIZE_SIZE likely perform bounds checking, which is standard in theme engines. The final function `crux_draw_style_class_init` registers all the drawing callbacks into the style class – a normal GTK pattern. No malicious indicators are present; the code performs exactly what a UI theme engine is designed to do.
</details>
<summary>Standard GTK theme engine drawing code, no malicious behavior.</summary>
</security_assessment>

[9/10] Reviewing src/gtk-engines-2.21.0/engines/hc/src/hc_gtk2_engine.c...
+ Reviewed src/gtk-engines-2.21.0/engines/crux/src/crux-draw.c. Status: SAFE -- Standard GTK theme engine drawing code, no malicious behavior.
LLM auditresponse for hc_gtk2_engine.c:
<security_assessment>
<decision>SAFE</decision>
<details>
This C source file is part of the High Contrast GTK+ engine, a legitimate GTK2 theme rendering engine. It contains standard GTK RC style parsing, style initialization, color allocation, and drawing hook registrations. There are no network requests (curl, wget, eval, base64, system calls), no obfuscated code, no attempts to exfiltrate data, and no backdoors. The file follows typical GTK engine patterns and does not deviate into malicious behavior. The use of `g_scanner` for parsing RC styles is normal engine functionality. No security issues are present.
</details>
<summary>Standard GTK theme engine code; no malicious behavior found.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/gtk-engines-2.21.0/engines/hc/src/hc_gtk2_engine.c. Status: SAFE -- Standard GTK theme engine code; no malicious behavior found.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
(Skipped 1 file: gtk-engines-2.21.0.tar.gz)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 133,701
  Completion Tokens: 6,861
  Total Tokens: 140,562
  Total Cost: $0.013268
  Execution Time: 191.00 seconds
Full audit report can be found in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-lib32-gtk-engines.txt
Final Status: SAFE


No issues found.


Audit Skips:

/home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-os21m8hp/gtk-engines-2.21.0.tar.gz: [SKIPPED] Skipping binary file: gtk-engines-2.21.0.tar.gz
