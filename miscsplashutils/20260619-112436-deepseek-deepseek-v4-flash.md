---
package: miscsplashutils
pkgver: 0.1.8
pkgrel: 6
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 11c93a0c95e2166961e3664fea6b5a63827ded10
prompt_tokens: 38313
completion_tokens: 7746
total_tokens: 46059
cost: 0.00484245
execution_time: 79.66
files_reviewed: 12
files_skipped: 0
date: 2026-06-19T11:24:36Z
file_verdicts:
  - file: include-stdlib.patch
    status: safe
    summary: Patch adds expected standard library header; no malicious behavior detected.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD, no malicious content found.
  - file: src/miscsplashutils-0.1.8/fbtruetype/console.c
    status: safe
    summary: Standard C source for framebuffer console player; no malicious content.
  - file: src/miscsplashutils-0.1.8/fbres.c
    status: safe
    summary: Simple framebuffer resolution utility; no malicious code found.
  - file: src/miscsplashutils-0.1.8/fbtruetype/messages.c
    status: safe
    summary: Standard C source file, no security issues found.
  - file: src/miscsplashutils-0.1.8/Makefile
    status: safe
    summary: Standard Makefile for building splash utilities; no security issues.
  - file: src/miscsplashutils-0.1.8/kbd/getfd.c
    status: safe
    summary: Standard console fd helper; no malicious behavior.
  - file: src/miscsplashutils-0.1.8/usleep.c
    status: safe
    summary: Minimal sleep utility, no security issues.
  - file: src/miscsplashutils-0.1.8/fbtruetype/ttf.c
    status: safe
    summary: Standard font rendering code, no security issues.
  - file: src/miscsplashutils-0.1.8/kbd/fgconsole.c
    status: safe
    summary: Standard console utility; no security issues found.
  - file: miscsplashutils-freetype-fix.patch
    status: safe
    summary: Clean patch enabling modern FreeType compatibility; no security issues.
  - file: src/miscsplashutils-0.1.8/fbtruetype/fbtruetype.c
    status: safe
    summary: Legitimate framebuffer text rendering utility; no security issue.
---

Cloning https://aur.archlinux.org/miscsplashutils.git to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-vua4j78g...
Cloned repository to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-vua4j78g
Analyzing miscsplashutils AUR package (working in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-vua4j78g) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains no code that executes during `makepkg --nobuild --nodeps --noprepare` or `makepkg --printsrcinfo`. There is no `pkgver()` function, and the global scope only assigns static variables. The `source` array consists of bare filenames (no URLs), meaning makepkg will attempt to use local files rather than fetch over a network; no unexpected downloads or command execution occur. No dangerous constructs like command substitution, `eval`, or external script execution are present in the evaluated portions.
</details>
<summary>No malicious code executes during source fetch or PKGBUILD sourcing.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- No malicious code executes during source fetch or PKGBUILD sourcing.[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, include-stdlib.patch...
LLM auditresponse for include-stdlib.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch adds a standard `#include &lt;stdlib.h&gt;` directive to a C source file. The inclusion of `stdlib.h` is a routine and expected operation in C programming to provide declarations for functions such as `malloc`, `atoi`, `exit`, etc. There is no indication of malicious intent: no obfuscated code, no network requests, no unusual file operations, and no deviation from standard packaging maintenance. The patch appears to be a straightforward fix for missing header inclusion, likely to resolve a compilation warning or error.
</details>
<summary>
Patch adds expected standard library header; no malicious behavior detected.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed include-stdlib.patch. Status: SAFE -- Patch adds expected standard library header; no malicious behavior detected.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices. It downloads source tarballs and patches from the Gentoo distfiles (as indicated by the `url` and unused `sourcecode_url` variable), applies patches, builds with `make`, and installs files to `$pkgdir`. No malicious network requests, obfuscated code, or dangerous commands (eval, curl, wget) are present. The symlink creation (`ln -s /usr/bin/wc`) is a benign packaging choice. The missing source URLs in the `source` array are a hygiene issue (the package would not build automatically) but not a security threat. There is no evidence of supply-chain injection.
</details>
<summary>Standard PKGBUILD, no malicious content found.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD, no malicious content found.
Reviewed all required files.
Deciding which files to review next...
LLM response for file selection:
miscsplashutils-freetype-fix.patch
src/miscsplashutils-0.1.8/Makefile
src/miscsplashutils-0.1.8/fbres.c
src/miscsplashutils-0.1.8/fbtruetype/fbtruetype.c
src/miscsplashutils-0.1.8/fbtruetype/console.c
src/miscsplashutils-0.1.8/fbtruetype/ttf.c
src/miscsplashutils-0.1.8/fbtruetype/messages.c
src/miscsplashutils-0.1.8/usleep.c
src/miscsplashutils-0.1.8/kbd/fgconsole.c
src/miscsplashutils-0.1.8/kbd/getfd.c
Decided to review 10 additional files: miscsplashutils-freetype-fix.patch, src/miscsplashutils-0.1.8/Makefile, src/miscsplashutils-0.1.8/fbres.c, src/miscsplashutils-0.1.8/fbtruetype/fbtruetype.c, src/miscsplashutils-0.1.8/fbtruetype/console.c, src/miscsplashutils-0.1.8/fbtruetype/ttf.c, src/miscsplashutils-0.1.8/fbtruetype/messages.c, src/miscsplashutils-0.1.8/usleep.c, src/miscsplashutils-0.1.8/kbd/fgconsole.c, src/miscsplashutils-0.1.8/kbd/getfd.c
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing miscsplashutils-freetype-fix.patch...
[0/10] Reviewing miscsplashutils-freetype-fix.patch, src/miscsplashutils-0.1.8/fbtruetype/fbtruetype.c...
[0/10] Reviewing miscsplashutils-freetype-fix.patch, src/miscsplashutils-0.1.8/fbtruetype/fbtruetype.c, src/miscsplashutils-0.1.8/fbres.c...
[0/10] Reviewing miscsplashutils-freetype-fix.patch, src/miscsplashutils-0.1.8/fbtruetype/fbtruetype.c, src/miscsplashutils-0.1.8/fbres.c, src/miscsplashutils-0.1.8/Makefile...
[0/10] Reviewing miscsplashutils-freetype-fix.patch, src/miscsplashutils-0.1.8/fbtruetype/fbtruetype.c, src/miscsplashutils-0.1.8/fbres.c, src/miscsplashutils-0.1.8/Makefile, src/miscsplashutils-0.1.8/fbtruetype/console.c...
[0/10] Reviewing miscsplashutils-freetype-fix.patch, src/miscsplashutils-0.1.8/fbtruetype/fbtruetype.c, src/miscsplashutils-0.1.8/fbres.c, src/miscsplashutils-0.1.8/Makefile, src/miscsplashutils-0.1.8/fbtruetype/console.c, src/miscsplashutils-0.1.8/fbtruetype/ttf.c...
[0/10] Reviewing miscsplashutils-freetype-fix.patch, src/miscsplashutils-0.1.8/fbtruetype/fbtruetype.c, src/miscsplashutils-0.1.8/fbres.c, src/miscsplashutils-0.1.8/Makefile, src/miscsplashutils-0.1.8/fbtruetype/console.c, src/miscsplashutils-0.1.8/fbtruetype/ttf.c, src/miscsplashutils-0.1.8/fbtruetype/messages.c...
[0/10] Reviewing miscsplashutils-freetype-fix.patch, src/miscsplashutils-0.1.8/fbtruetype/fbtruetype.c, src/miscsplashutils-0.1.8/fbres.c, src/miscsplashutils-0.1.8/Makefile, src/miscsplashutils-0.1.8/fbtruetype/console.c, src/miscsplashutils-0.1.8/fbtruetype/ttf.c, src/miscsplashutils-0.1.8/fbtruetype/messages.c, src/miscsplashutils-0.1.8/usleep.c...
[0/10] Reviewing miscsplashutils-freetype-fix.patch, src/miscsplashutils-0.1.8/fbtruetype/fbtruetype.c, src/miscsplashutils-0.1.8/fbres.c, src/miscsplashutils-0.1.8/Makefile, src/miscsplashutils-0.1.8/fbtruetype/console.c, src/miscsplashutils-0.1.8/fbtruetype/ttf.c, src/miscsplashutils-0.1.8/fbtruetype/messages.c, src/miscsplashutils-0.1.8/usleep.c, src/miscsplashutils-0.1.8/kbd/getfd.c...
[0/10] Reviewing miscsplashutils-freetype-fix.patch, src/miscsplashutils-0.1.8/fbtruetype/fbtruetype.c, src/miscsplashutils-0.1.8/fbres.c, src/miscsplashutils-0.1.8/Makefile, src/miscsplashutils-0.1.8/fbtruetype/console.c, src/miscsplashutils-0.1.8/fbtruetype/ttf.c, src/miscsplashutils-0.1.8/fbtruetype/messages.c, src/miscsplashutils-0.1.8/usleep.c, src/miscsplashutils-0.1.8/kbd/getfd.c, src/miscsplashutils-0.1.8/kbd/fgconsole.c...
LLM auditresponse for console.c:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a routine C source file for the `fbmngplay` framebuffer console MNG player. It contains standard Linux system calls (`open`, `ioctl`, `exit`) to access the virtual terminal device (`/dev/vc/0` or `/dev/tty0`) and retrieve the current console number. There are no network operations, obfuscated code, suspicious file operations, or any behavior that deviates from the application's stated purpose of displaying MNG animations on the framebuffer console. All actions are expected for a framebuffer utility, and no injected malicious code is present.
</details>
<summary>Standard C source for framebuffer console player; no malicious content.</summary>
</security_assessment>

[1/10] Reviewing miscsplashutils-freetype-fix.patch, src/miscsplashutils-0.1.8/fbtruetype/fbtruetype.c, src/miscsplashutils-0.1.8/fbres.c, src/miscsplashutils-0.1.8/Makefile, src/miscsplashutils-0.1.8/fbtruetype/ttf.c, src/miscsplashutils-0.1.8/fbtruetype/messages.c, src/miscsplashutils-0.1.8/usleep.c, src/miscsplashutils-0.1.8/kbd/getfd.c, src/miscsplashutils-0.1.8/kbd/fgconsole.c...
+ Reviewed src/miscsplashutils-0.1.8/fbtruetype/console.c. Status: SAFE -- Standard C source for framebuffer console player; no malicious content.
LLM auditresponse for fbres.c:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a simple C utility (`fbres.c`) from the `miscsplashutils` package. It reads the current framebuffer resolution either from environment variables `SPLASH_XRES` and `SPLASH_YRES` or by directly querying the framebuffer device (`/dev/fb0` or `/dev/fb/0`) via `ioctl`. There is no network access, obfuscated code, suspicious file operations, or any behavior that deviates from its stated purpose. The code is clear and follows standard programming practices for a framebuffer resolution tool.
</details>
<summary>
Simple framebuffer resolution utility; no malicious code found.</summary>
</security_assessment>

LLM auditresponse for messages.c:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard C source file containing `usage()` and `version()` helper functions for the fbtruetype utility. It includes only standard library headers and local project headers. The code simply prints help text and version information to stderr. There is no obfuscation, no network or file operations, no system modifications, and no execution of external commands. The content is entirely consistent with normal packaging of a legitimate upstream application.
</details>
<summary>Standard C source file, no security issues found.</summary>
</security_assessment>

[2/10] Reviewing miscsplashutils-freetype-fix.patch, src/miscsplashutils-0.1.8/fbtruetype/fbtruetype.c, src/miscsplashutils-0.1.8/Makefile, src/miscsplashutils-0.1.8/fbtruetype/ttf.c, src/miscsplashutils-0.1.8/fbtruetype/messages.c, src/miscsplashutils-0.1.8/usleep.c, src/miscsplashutils-0.1.8/kbd/getfd.c, src/miscsplashutils-0.1.8/kbd/fgconsole.c...
+ Reviewed src/miscsplashutils-0.1.8/fbres.c. Status: SAFE -- Simple framebuffer resolution utility; no malicious code found.
[3/10] Reviewing miscsplashutils-freetype-fix.patch, src/miscsplashutils-0.1.8/fbtruetype/fbtruetype.c, src/miscsplashutils-0.1.8/Makefile, src/miscsplashutils-0.1.8/fbtruetype/ttf.c, src/miscsplashutils-0.1.8/usleep.c, src/miscsplashutils-0.1.8/kbd/getfd.c, src/miscsplashutils-0.1.8/kbd/fgconsole.c...
+ Reviewed src/miscsplashutils-0.1.8/fbtruetype/messages.c. Status: SAFE -- Standard C source file, no security issues found.
LLM auditresponse for Makefile:
<security_assessment>
<decision>SAFE</decision>
<details>
The Makefile is a standard build script for compiling two small C utilities (`fbres` and `usleep`) and recursing into subdirectories (`fbtruetype`, `kbd`). It uses conventional variables (`CC`, `CFLAGS`, `LDFLAGS`, `DESTDIR`, `LIB`) and performs no network operations, no obfuscated commands, no unexpected file modifications, and no execution of untrusted code. The install target places binaries into a dedicated directory under `/lib/splash/bin/`, which is consistent with the package's purpose. There are no indicators of malicious or supply-chain attack behavior.
</details>
<summary>Standard Makefile for building splash utilities; no security issues.</summary>
</security_assessment>

[4/10] Reviewing miscsplashutils-freetype-fix.patch, src/miscsplashutils-0.1.8/fbtruetype/fbtruetype.c, src/miscsplashutils-0.1.8/fbtruetype/ttf.c, src/miscsplashutils-0.1.8/usleep.c, src/miscsplashutils-0.1.8/kbd/getfd.c, src/miscsplashutils-0.1.8/kbd/fgconsole.c...
+ Reviewed src/miscsplashutils-0.1.8/Makefile. Status: SAFE -- Standard Makefile for building splash utilities; no security issues.
LLM auditresponse for getfd.c:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a utility for obtaining a file descriptor to the Linux console, used by splash utilities to perform console ioctls (e.g., font or framebuffer operations). It opens standard console device files (`/dev/tty`, `/dev/tty0`, `/dev/vc/0`, `/dev/console`) and checks them with `KDGKBTYPE`. It also checks if stdin/stdout/stderr already refer to a console. There are no network operations, encoded/obfuscated code, unexpected system modifications, or any behavior that deviates from normal console-handling logic. This code is standard for low-level console utilities and poses no supply-chain risk.
</details>
<summary>Standard console fd helper; no malicious behavior.</summary>
</security_assessment>

[5/10] Reviewing miscsplashutils-freetype-fix.patch, src/miscsplashutils-0.1.8/fbtruetype/fbtruetype.c, src/miscsplashutils-0.1.8/fbtruetype/ttf.c, src/miscsplashutils-0.1.8/usleep.c, src/miscsplashutils-0.1.8/kbd/fgconsole.c...
+ Reviewed src/miscsplashutils-0.1.8/kbd/getfd.c. Status: SAFE -- Standard console fd helper; no malicious behavior.
LLM auditresponse for usleep.c:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a simple C program that sleeps for a given number of microseconds. It parses an integer from the command line, validates it is between 0 and 60 million, and calls `usleep()`. There are no network requests, file operations, obfuscation, or any other malicious behavior. The code is straightforward and serves its intended purpose without any security concerns.
</details>
<summary>Minimal sleep utility, no security issues.</summary>
</security_assessment>

[6/10] Reviewing miscsplashutils-freetype-fix.patch, src/miscsplashutils-0.1.8/fbtruetype/fbtruetype.c, src/miscsplashutils-0.1.8/fbtruetype/ttf.c, src/miscsplashutils-0.1.8/kbd/fgconsole.c...
+ Reviewed src/miscsplashutils-0.1.8/usleep.c. Status: SAFE -- Minimal sleep utility, no security issues.
LLM auditresponse for ttf.c:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard C source file for rendering TrueType fonts to a Linux framebuffer using the FreeType library. It contains no network requests, no obfuscated or encoded commands, no attempts to exfiltrate data, and no unexpected system modifications. The code performs typical font loading, glyph caching, and pixel rendering operations. The only external references are to standard libraries (FreeType, math, stdio) and to global framebuffer variables that are expected for this kind of utility. The fallback to an embedded font (`luxisri_ttf`) when the requested font file cannot be loaded is a normal convenience feature, not a supply-chain attack. There are no signs of malicious intent or deviation from standard packaging practices.
</details>
<summary>Standard font rendering code, no security issues.</summary>
</security_assessment>

[7/10] Reviewing miscsplashutils-freetype-fix.patch, src/miscsplashutils-0.1.8/fbtruetype/fbtruetype.c, src/miscsplashutils-0.1.8/kbd/fgconsole.c...
+ Reviewed src/miscsplashutils-0.1.8/fbtruetype/ttf.c. Status: SAFE -- Standard font rendering code, no security issues.
LLM auditresponse for fgconsole.c:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard C source file that prints the number of the foreground virtual console. It uses `ioctl` with `VT_GETSTATE` to query the terminal state, which is a routine system call for console management applications. There are no network requests, obfuscated code, dangerous commands, or any behavior that deviates from its stated purpose. The code is clean and follows standard packaging practices for a system utility.
</details>
<summary>Standard console utility; no security issues found.</summary>
</security_assessment>

[8/10] Reviewing miscsplashutils-freetype-fix.patch, src/miscsplashutils-0.1.8/fbtruetype/fbtruetype.c...
+ Reviewed src/miscsplashutils-0.1.8/kbd/fgconsole.c. Status: SAFE -- Standard console utility; no security issues found.
LLM auditresponse for miscsplashutils-freetype-fix.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a patch updating the `miscsplashutils` package to work with newer versions of FreeType. It removes the static build target and adjusts include paths to use the modern FreeType API macros (`FT_OUTLINE_H`, `FT_TRUETYPE_IDS_H`). The install path is changed from `/sbin` to `/bin`, a standard packaging adjustment. There is no obfuscated code, no network requests, no execution of untrusted content, and no deviation from normal packaging practices. The changes are purely to fix compatibility with updated library headers and buildsystem conventions.
</details>
<summary>Clean patch enabling modern FreeType compatibility; no security issues.</summary>
</security_assessment>

[9/10] Reviewing src/miscsplashutils-0.1.8/fbtruetype/fbtruetype.c...
+ Reviewed miscsplashutils-freetype-fix.patch. Status: SAFE -- Clean patch enabling modern FreeType compatibility; no security issues.
LLM auditresponse for fbtruetype.c:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `fbtruetype.c` is a straightforward C program that renders text on a Linux framebuffer console. It opens `/dev/fb/0` or `/dev/fb0`, retrieves screen information via `ioctl`, memory-maps the framebuffer, and calls `rendertext` (defined elsewhere). There are no network requests, no obfuscated code, no execution of external scripts or binaries, and no attempts to exfiltrate data. The `strdup` on the `--font` argument is normal string handling. The program only interacts with the local framebuffer device, which is its intended purpose. No signs of supply-chain attack or malicious behavior.
</details>
<summary>
Legitimate framebuffer text rendering utility; no security issue.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/miscsplashutils-0.1.8/fbtruetype/fbtruetype.c. Status: SAFE -- Legitimate framebuffer text rendering utility; no security issue.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 38,313
  Completion Tokens: 7,746
  Total Tokens: 46,059
  Total Cost: $0.004842
  Execution Time: 79.66 seconds
Full audit report can be found in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-miscsplashutils.txt
Final Status: SAFE


No issues found.
