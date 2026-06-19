---
package: urlview
pkgver: 1e
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 11c93a0c95e2166961e3664fea6b5a63827ded10
prompt_tokens: 42691
completion_tokens: 7783
total_tokens: 50474
cost: 0.00524313
execution_time: 92.24
files_reviewed: 11
files_skipped: 0
date: 2026-06-19T10:32:05Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no malicious code.
  - file: src/urlview/dokey.c
    status: safe
    summary: Legitimate terminal input handling code, no security concerns.
  - file: src/urlview/quote.cpp
    status: safe
    summary: Standard source file with no malicious behavior.
  - file: src/urlview/.builds/freebsd-latest.yml
    status: safe
    summary: Standard CI build manifest, no security issues.
  - file: src/urlview/url_handler.sh
    status: safe
    summary: Standard URL handler, no malicious behavior found.
  - file: src/urlview/Makefile
    status: safe
    summary: Standard Makefile for urlview; no malicious content.
  - file: src/urlview/quote.h
    status: safe
    summary: Standard C header, no malicious content.
  - file: src/urlview/enter.cpp
    status: safe
    summary: Standard input‑field widget, no malicious behavior found.
  - file: src/urlview/urlview.c
    status: safe
    summary: Legitimate upstream source code, no malicious indicators.
  - file: src/urlview/enter.h
    status: safe
    summary: No malicious content found; standard header file.
  - file: src/urlview/.builds/openbsd-latest.yml
    status: safe
    summary: Standard CI config; no malicious behavior detected.
---

Cloning https://aur.archlinux.org/urlview.git to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-8k5v6h9v...
Cloned repository to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-8k5v6h9v
Analyzing urlview AUR package (working in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-8k5v6h9v) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains variable assignments and function definitions in its global scope. No command substitutions, backticks, or other executable code are present outside of `build()` and `package()` functions. The `source` array points to a pinned git commit (`#commit=243419e2ef22b4c3cfac6f29f4528231964e0082`) from the official upstream repository, which is a standard practice. Neither `pkgver()` nor any other function is defined that would execute during `makepkg --nobuild --nodeps --noprepare`. Therefore, running these commands poses no security risk.
</details>
<summary>No malicious code in scope for this gate.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- No malicious code in scope for this gate.[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/1] Reviewing PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging conventions. The source is pinned to a specific commit from the project's official upstream (`git.sr.ht/~nabijaczleweli/urlview-ng`). The build and package functions only run `make` and `make install` with appropriate DESTDIR and PREFIX, plus copying license files. There are no suspicious commands (no curl/wget, no base64 decoding, no eval, no unexpected network requests or file operations). Checksums are correctly set to SKIP for a VCS source. No obfuscated or encoded code is present. The package does not exhibit any supply-chain attack indicators; it is a clean, standard AUR package.
</details>
<summary>Standard AUR PKGBUILD with no malicious code.</summary>
</security_assessment>

[1/1] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no malicious code.
Reviewed all required files.
Deciding which files to review next...
LLM response for file selection:
src/urlview/Makefile
src/urlview/url_handler.sh
src/urlview/urlview.c
src/urlview/enter.cpp
src/urlview/quote.cpp
src/urlview/dokey.c
src/urlview/enter.h
src/urlview/quote.h
src/urlview/.builds/freebsd-latest.yml
src/urlview/.builds/openbsd-latest.yml
Decided to review 10 additional files: src/urlview/Makefile, src/urlview/url_handler.sh, src/urlview/urlview.c, src/urlview/enter.cpp, src/urlview/quote.cpp, src/urlview/dokey.c, src/urlview/enter.h, src/urlview/quote.h, src/urlview/.builds/freebsd-latest.yml, src/urlview/.builds/openbsd-latest.yml
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/urlview/Makefile...
[0/10] Reviewing src/urlview/Makefile, src/urlview/url_handler.sh...
[0/10] Reviewing src/urlview/Makefile, src/urlview/url_handler.sh, src/urlview/urlview.c...
[0/10] Reviewing src/urlview/Makefile, src/urlview/url_handler.sh, src/urlview/urlview.c, src/urlview/enter.cpp...
[0/10] Reviewing src/urlview/Makefile, src/urlview/url_handler.sh, src/urlview/urlview.c, src/urlview/enter.cpp, src/urlview/enter.h...
[0/10] Reviewing src/urlview/Makefile, src/urlview/url_handler.sh, src/urlview/urlview.c, src/urlview/enter.cpp, src/urlview/enter.h, src/urlview/quote.cpp...
[0/10] Reviewing src/urlview/Makefile, src/urlview/url_handler.sh, src/urlview/urlview.c, src/urlview/enter.cpp, src/urlview/enter.h, src/urlview/quote.cpp, src/urlview/dokey.c...
[0/10] Reviewing src/urlview/Makefile, src/urlview/url_handler.sh, src/urlview/urlview.c, src/urlview/enter.cpp, src/urlview/enter.h, src/urlview/quote.cpp, src/urlview/dokey.c, src/urlview/.builds/freebsd-latest.yml...
[0/10] Reviewing src/urlview/Makefile, src/urlview/url_handler.sh, src/urlview/urlview.c, src/urlview/enter.cpp, src/urlview/enter.h, src/urlview/quote.cpp, src/urlview/dokey.c, src/urlview/.builds/freebsd-latest.yml, src/urlview/.builds/openbsd-latest.yml...
[0/10] Reviewing src/urlview/Makefile, src/urlview/url_handler.sh, src/urlview/urlview.c, src/urlview/enter.cpp, src/urlview/enter.h, src/urlview/quote.cpp, src/urlview/dokey.c, src/urlview/.builds/freebsd-latest.yml, src/urlview/.builds/openbsd-latest.yml, src/urlview/quote.h...
LLM auditresponse for dokey.c:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is an upstream C source file (`dokey.c`) from the `urlview` package. It implements keyboard input handling for a text-based editor, mapping terminal keys (e.g., arrow keys, backspace, control characters) to editor operations. The only system call is `tcgetattr(0, &amp;termios)` to read terminal attributes – a standard and expected operation for terminal applications. There are no network requests, no obfuscated code, no file system modifications, and no execution of external programs. No evidence of a supply-chain attack or malicious behavior.
</details>
<summary>
Legitimate terminal input handling code, no security concerns.</summary>
</security_assessment>

[1/10] Reviewing src/urlview/Makefile, src/urlview/url_handler.sh, src/urlview/urlview.c, src/urlview/enter.cpp, src/urlview/enter.h, src/urlview/quote.cpp, src/urlview/.builds/freebsd-latest.yml, src/urlview/.builds/openbsd-latest.yml, src/urlview/quote.h...
+ Reviewed src/urlview/dokey.c. Status: SAFE -- Legitimate terminal input handling code, no security concerns.
LLM auditresponse for quote.cpp:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `quote.cpp` implements a `quotesub` function that substitutes `%s` placeholders in a format string with a shell-quoted URL string. The code is straightforward C++ using only standard library functions (`memmem`, `malloc`, `copy`, `count`). There are no network requests, no obfuscation, no external command execution, and no suspicious system modifications. The `#if TEST` block is a simple test harness for development purposes. The file conforms to the expected source code for the `urlview` package and contains no indicators of malicious activity.
</details>
<summary>Standard source file with no malicious behavior.</summary>
</security_assessment>

[2/10] Reviewing src/urlview/Makefile, src/urlview/url_handler.sh, src/urlview/urlview.c, src/urlview/enter.cpp, src/urlview/enter.h, src/urlview/.builds/freebsd-latest.yml, src/urlview/.builds/openbsd-latest.yml, src/urlview/quote.h...
+ Reviewed src/urlview/quote.cpp. Status: SAFE -- Standard source file with no malicious behavior.
LLM auditresponse for freebsd-latest.yml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a CI configuration for FreeBSD (sourcehut build manifest). It defines standard build and install steps for `urlview-ng`: building with `gmake`, running checks, installing via `sudo gmake install`, and a simple smoketest. There are no network requests to unexpected hosts, no obfuscated commands, no exfiltration or backdoors. The commands are standard packaging/development operations.
</details>
<summary>Standard CI build manifest, no security issues.</summary>
</security_assessment>

[3/10] Reviewing src/urlview/Makefile, src/urlview/url_handler.sh, src/urlview/urlview.c, src/urlview/enter.cpp, src/urlview/enter.h, src/urlview/.builds/openbsd-latest.yml, src/urlview/quote.h...
+ Reviewed src/urlview/.builds/freebsd-latest.yml. Status: SAFE -- Standard CI build manifest, no security issues.
LLM auditresponse for url_handler.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard URL handler that reads a URL (from argument, environment variable, or stdin), determines the protocol, and launches an appropriate program (e.g., browser, email client) from a predefined list. There is no obfuscated code, no external downloads, no exfiltration of local data, and no system modifications beyond executing the user's chosen applications. The use of `gettext` for localization and common shell constructs is normal. The script does not exhibit any behavior indicative of a supply-chain attack; it operates solely to open URLs with locally installed programs.
</details>
<summary>Standard URL handler, no malicious behavior found.</summary>
</security_assessment>

[4/10] Reviewing src/urlview/Makefile, src/urlview/urlview.c, src/urlview/enter.cpp, src/urlview/enter.h, src/urlview/.builds/openbsd-latest.yml, src/urlview/quote.h...
+ Reviewed src/urlview/url_handler.sh. Status: SAFE -- Standard URL handler, no malicious behavior found.
LLM auditresponse for Makefile:
<security_assessment>
<decision>SAFE</decision>
<details>
This Makefile is a standard build system for the `urlview` package. It compiles C/C++ source files, generates a man page via `awk` substitution, compiles translations, and installs the resulting binaries and configuration files. All uses of `$(shell ...)` are limited to detecting the presence of tools (`command -v`) and querying curses configuration (`$(CURSESCONF) --cflags` / `--libs`), which are normal build-time operations. No network requests, no execution of downloaded code, no obfuscation, and no access to sensitive system files. The file follows typical AUR packaging practices without any injected malicious behavior.
</details>
<summary>Standard Makefile for urlview; no malicious content.</summary>
</security_assessment>

[5/10] Reviewing src/urlview/urlview.c, src/urlview/enter.cpp, src/urlview/enter.h, src/urlview/.builds/openbsd-latest.yml, src/urlview/quote.h...
+ Reviewed src/urlview/Makefile. Status: SAFE -- Standard Makefile for urlview; no malicious content.
LLM auditresponse for quote.h:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `quote.h` is a minimal C header declaring a function `quotesub`. It contains no executable code, no network operations, no file system modifications, and no obfuscation. The function signature is typical for a string-processing utility related to URL handling. No security concerns are present.
</details>
<summary>Standard C header, no malicious content.</summary>
</security_assessment>

[6/10] Reviewing src/urlview/urlview.c, src/urlview/enter.cpp, src/urlview/enter.h, src/urlview/.builds/openbsd-latest.yml...
+ Reviewed src/urlview/quote.h. Status: SAFE -- Standard C header, no malicious content.
LLM auditresponse for enter.cpp:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `enter.cpp` is a line‑editing widget built on ncurses and wide‑character handling. It reads user input, manages a mutable string buffer, and provides typical editor operations (insert, delete, cursor movement, kill). All system calls (getyx, mvaddnwstr, getcurx, clrtoeol, flushinp, beep, mbrtowc, wctomb, reallocarray, malloc, free) are standard library functions used for their intended purpose. There are no network operations, no file I/O outside of standard terminal I/O, no execution of external commands, no obfuscated code, and no attempt to exfiltrate or modify system data. The memory management uses `reallocarray` for safe reallocation and `malloc`/`free` for a final bundled string. This code is consistent with a normal upstream application component and shows no sign of a supply‑chain compromise.
</details>
<summary>Standard input‑field widget, no malicious behavior found.</summary>
</security_assessment>

[7/10] Reviewing src/urlview/urlview.c, src/urlview/enter.h, src/urlview/.builds/openbsd-latest.yml...
+ Reviewed src/urlview/enter.cpp. Status: SAFE -- Standard input‑field widget, no malicious behavior found.
LLM auditresponse for urlview.c:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is the upstream source code of urlview-ng, a curses-based URL selector. It reads URLs from files or stdin, displays them in a menu, and launches a user-configured browser command or copies URLs to the clipboard. The code is straightforward and contains no obfuscation, encoded payloads, unexpected network requests, or data exfiltration logic.  

The `system_via` function executes the browser command via `/bin/sh -c` with proper quoting (via the `quotesub` function from the package) and checks for single quotes in the argument command to prevent accidental shell injection. This is standard functionality for such a tool. The clipboard copy subprocesses (`xclip`, `xsel`, `wl-copy`) are invoked in a controlled manner. All file reads (`getline`, `fopen`) and environment variable accesses (`$HOME`, `$BROWSER`) are expected for the application’s purpose.  

There is no evidence of supply-chain compromise: no injected code, no references to external hosts, and no deviation from the tool’s intended behavior. The code matches a typical, well-written terminal utility.
</details>
<summary>Legitimate upstream source code, no malicious indicators.</summary>
</security_assessment>

[8/10] Reviewing src/urlview/enter.h, src/urlview/.builds/openbsd-latest.yml...
+ Reviewed src/urlview/urlview.c. Status: SAFE -- Legitimate upstream source code, no malicious indicators.
LLM auditresponse for enter.h:
<security_assessment>
<decision>SAFE</decision>
<details>
No suspicious code present. This is a standard C header file for a terminal-based application that uses ncurses. It defines constants for editor operations, a structure for an input string, and declares functions for line editing and key handling. There are no network requests, file operations, obfuscation, or dangerous commands. The content is consistent with a benign component of the urlview package.
</details>
<summary>No malicious content found; standard header file.</summary>
</security_assessment>

[9/10] Reviewing src/urlview/.builds/openbsd-latest.yml...
+ Reviewed src/urlview/enter.h. Status: SAFE -- No malicious content found; standard header file.
LLM auditresponse for openbsd-latest.yml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a CI configuration (likely for sourcehut builds) specifying an OpenBSD environment, installing gmake, and running standard build, install, and smoke test tasks. There is no obfuscated code, no suspicious network requests, no exfiltration attempts, and no execution of untrusted downloaded content. The commands are all routine packaging operations (gmake, doas install, and running the application's own test). No supply-chain attack indicators are present.
</details>
<summary>Standard CI config; no malicious behavior detected.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/urlview/.builds/openbsd-latest.yml. Status: SAFE -- Standard CI config; no malicious behavior detected.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 42,691
  Completion Tokens: 7,783
  Total Tokens: 50,474
  Total Cost: $0.005243
  Execution Time: 92.24 seconds
Full audit report can be found in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-urlview.txt
Final Status: SAFE


No issues found.
