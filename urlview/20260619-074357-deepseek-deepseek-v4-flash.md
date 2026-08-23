---
package: urlview
pkgver: 1e
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: ca17da95f28e185d8d6b41bf3c9d6cc1c151702c
prompt_tokens: 43209
completion_tokens: 5202
total_tokens: 48411
cost: 0.00482517
execution_time: 67.53
files_reviewed: 11
files_skipped: 0
date: 2026-06-19T07:43:57Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with pinned commit; no malicious behavior.
  - file: src/urlview/quote.h
    status: safe
    summary: Header file with no security issues.
  - file: src/urlview/text
    status: safe
    summary: Plain text test file, no malicious content.
  - file: src/urlview/dokey.c
    status: safe
    summary: Standard C terminal input handler, no security issues.
  - file: src/urlview/quote.cpp
    status: safe
    summary: No security issues; standard string utility code.
  - file: src/urlview/sample.urlview.in
    status: safe
    summary: Configuration template with no malicious content.
  - file: src/urlview/enter.h
    status: safe
    summary: Clean header file; no malicious content.
  - file: src/urlview/urlview.c
    status: safe
    summary: Standard urlview-ng source; no malicious code found.
  - file: src/urlview/url_handler.sh
    status: safe
    summary: Standard upstream URL handler script, no malicious code found.
  - file: src/urlview/enter.cpp
    status: safe
    summary: Standard text input widget code, no malicious behavior.
  - file: src/urlview/Makefile
    status: safe
    summary: Standard build script, no malicious behavior.
---

Cloning https://aur.archlinux.org/urlview.git to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-nnvgajcv...
Cloned repository to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-nnvgajcv
Analyzing urlview AUR package (working in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-nnvgajcv) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is safe to source and fetch sources with `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo`. The source is a git repository from the legitimate upstream at `git.sr.ht` pinned to a specific commit. There are no command substitutions in the global scope or `pkgver()` that would execute during sourcing. The `build()` and `package()` functions are present but are not executed during this narrow gate. No obfuscated code, unusual network requests, or exfiltration attempts exist. The `SKIP` checksum is expected for VCS sources. This PKGBUILD is clean and follows standard AUR practices.
</details>
<summary>Standard PKGBUILD with pinned git source, no code execution risk.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- Standard PKGBUILD with pinned git source, no code execution risk.[/]
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
This is a standard PKGBUILD for the urlview package from the AUR. It fetches the source from the upstream git repository at a pinned commit (`_commit=243419e2ef22b4c3cfac6f29f4528231964e0082`), then builds and installs with `make`. The `sha256sums` entry is `SKIP`, which is expected and permissible for VCS sources. There are no suspicious commands, obfuscation, unexpected network requests, or exfiltration attempts. The only operations are cloning the project's own source, running its build system, and installing files into `$pkgdir`—all normal packaging workflow. No red flags or supply-chain attack indicators are present.
</details>
<summary>Standard PKGBUILD with pinned commit; no malicious behavior.</summary>
</security_assessment>

[1/1] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with pinned commit; no malicious behavior.
Reviewed all required files.
Deciding which files to review next...
LLM response for file selection:
src/urlview/Makefile
src/urlview/url_handler.sh
src/urlview/urlview.c
src/urlview/dokey.c
src/urlview/enter.cpp
src/urlview/quote.cpp
src/urlview/enter.h
src/urlview/quote.h
src/urlview/sample.urlview.in
src/urlview/text
Decided to review 10 additional files: src/urlview/Makefile, src/urlview/url_handler.sh, src/urlview/urlview.c, src/urlview/dokey.c, src/urlview/enter.cpp, src/urlview/quote.cpp, src/urlview/enter.h, src/urlview/quote.h, src/urlview/sample.urlview.in, src/urlview/text
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/urlview/Makefile...
[0/10] Reviewing src/urlview/Makefile, src/urlview/url_handler.sh...
[0/10] Reviewing src/urlview/Makefile, src/urlview/url_handler.sh, src/urlview/dokey.c...
[0/10] Reviewing src/urlview/Makefile, src/urlview/url_handler.sh, src/urlview/dokey.c, src/urlview/urlview.c...
[0/10] Reviewing src/urlview/Makefile, src/urlview/url_handler.sh, src/urlview/dokey.c, src/urlview/urlview.c, src/urlview/enter.cpp...
[0/10] Reviewing src/urlview/Makefile, src/urlview/url_handler.sh, src/urlview/dokey.c, src/urlview/urlview.c, src/urlview/enter.cpp, src/urlview/quote.cpp...
[0/10] Reviewing src/urlview/Makefile, src/urlview/url_handler.sh, src/urlview/dokey.c, src/urlview/urlview.c, src/urlview/enter.cpp, src/urlview/quote.cpp, src/urlview/enter.h...
[0/10] Reviewing src/urlview/Makefile, src/urlview/url_handler.sh, src/urlview/dokey.c, src/urlview/urlview.c, src/urlview/enter.cpp, src/urlview/quote.cpp, src/urlview/enter.h, src/urlview/quote.h...
[0/10] Reviewing src/urlview/Makefile, src/urlview/url_handler.sh, src/urlview/dokey.c, src/urlview/urlview.c, src/urlview/enter.cpp, src/urlview/quote.cpp, src/urlview/enter.h, src/urlview/quote.h, src/urlview/sample.urlview.in...
[0/10] Reviewing src/urlview/Makefile, src/urlview/url_handler.sh, src/urlview/dokey.c, src/urlview/urlview.c, src/urlview/enter.cpp, src/urlview/quote.cpp, src/urlview/enter.h, src/urlview/quote.h, src/urlview/sample.urlview.in, src/urlview/text...
LLM auditresponse for quote.h:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `quote.h` is a simple C header file declaring a single function `quotesub`. It contains no executable code, no network requests, no obfuscation, and no system modifications. The function signature is typical for a utility that substitutes a URL into a command template, which is consistent with the purpose of the `urlview` package. There is no evidence of malicious or dangerous behavior.
</details>
<summary>Header file with no security issues.</summary>
</security_assessment>

[1/10] Reviewing src/urlview/Makefile, src/urlview/url_handler.sh, src/urlview/dokey.c, src/urlview/urlview.c, src/urlview/enter.cpp, src/urlview/quote.cpp, src/urlview/enter.h, src/urlview/sample.urlview.in, src/urlview/text...
+ Reviewed src/urlview/quote.h. Status: SAFE -- Header file with no security issues.
LLM auditresponse for text:
<security_assessment>
<decision>SAFE</decision>
<details>
The provided file is a test fixture for the `urlview` package, containing examples of various URL formats commonly found in email messages. It is a plain text file with no executable code, shell commands, network requests, or system modifications. There is no obfuscation, encoded payloads, or any behavior that deviates from the expected content of a URL pattern test file. This file poses no security threat.
</details>
<summary>Plain text test file, no malicious content.</summary>
</security_assessment>

[2/10] Reviewing src/urlview/Makefile, src/urlview/url_handler.sh, src/urlview/dokey.c, src/urlview/urlview.c, src/urlview/enter.cpp, src/urlview/quote.cpp, src/urlview/enter.h, src/urlview/sample.urlview.in...
+ Reviewed src/urlview/text. Status: SAFE -- Plain text test file, no malicious content.
LLM auditresponse for dokey.c:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard C source file implementing keyboard input handling for a terminal-based application (urlview). It includes normal system headers, loads terminal control characters via `tcgetattr`, and maps keypresses to editor operations using a switch statement and macros. There is no network access, file manipulations, execution of commands, obfuscation, or any behavior that could exfiltrate data or execute untrusted code. The code is consistent with ordinary terminal UI programming and contains no indicators of a supply-chain attack.
</details>
<summary>Standard C terminal input handler, no security issues.</summary>
</security_assessment>

[3/10] Reviewing src/urlview/Makefile, src/urlview/url_handler.sh, src/urlview/urlview.c, src/urlview/enter.cpp, src/urlview/quote.cpp, src/urlview/enter.h, src/urlview/sample.urlview.in...
+ Reviewed src/urlview/dokey.c. Status: SAFE -- Standard C terminal input handler, no security issues.
LLM auditresponse for quote.cpp:
<security_assessment>
<decision>SAFE</decision>
<details>
This file contains the implementation of `quotesub` (from the urlview package), which performs string substitution and quoting of a URL into a command template. The code is straightforward: it memory‑maps the template, inserts a quoted version of the URL, and returns the result. There are no network requests, no obfuscation, no dangerous command execution, and no unexpected file system modifications. The test harness under `#if TEST` is standard development practice. Nothing in this file indicates a supply‑chain attack or malicious behavior.
</details>
<summary>No security issues; standard string utility code.</summary>
</security_assessment>

[4/10] Reviewing src/urlview/Makefile, src/urlview/url_handler.sh, src/urlview/urlview.c, src/urlview/enter.cpp, src/urlview/enter.h, src/urlview/sample.urlview.in...
+ Reviewed src/urlview/quote.cpp. Status: SAFE -- No security issues; standard string utility code.
LLM auditresponse for sample.urlview.in:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a configuration template for the `urlview` utility. It contains only comments and commented-out configuration options, with placeholders like `@DEFAULT_REGEXP@` and `@DEFAULT_COMMAND@` that would be substituted during installation. There are no executable commands, no network requests, no obfuscated code, and no file operations. The mention of `sh -c` is part of the documented usage for launching a browser with a selected URL, which is the intended functionality of the application. No supply-chain attack indicators are present.
</details>
<summary>Configuration template with no malicious content.</summary>
</security_assessment>

[5/10] Reviewing src/urlview/Makefile, src/urlview/url_handler.sh, src/urlview/urlview.c, src/urlview/enter.cpp, src/urlview/enter.h...
+ Reviewed src/urlview/sample.urlview.in. Status: SAFE -- Configuration template with no malicious content.
LLM auditresponse for enter.h:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard C header file for an editor input component. It contains an enum defining editor operations (backspace, delete, cursor movement, etc.), a struct for string input, and function declarations. There is no obfuscated code, no network requests, no system-level operations, no data exfiltration, and no execution of external commands. The file is clearly part of the upstream project's source code and presents no supply-chain attack indicators.
</details>
<summary>Clean header file; no malicious content.</summary>
</security_assessment>

[6/10] Reviewing src/urlview/Makefile, src/urlview/url_handler.sh, src/urlview/urlview.c, src/urlview/enter.cpp...
+ Reviewed src/urlview/enter.h. Status: SAFE -- Clean header file; no malicious content.
LLM auditresponse for urlview.c:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `urlview.c` is a standard C source for the `urlview-ng` terminal URL viewer. It contains no obfuscation, no suspicious network requests, no unexpected system modifications, and no exfiltration of data. The code reads configuration from `~/.urlview` and the `$BROWSER` environment variable, then executes the configured command via `/bin/sh -c` — this is the expected behavior of a URL launcher. The only external commands are the user-defined browser and clipboard tools (`wl-copy`, `xclip`, `xsel`), all standard for such utility. There is no evidence of supply-chain attack or malicious injection.
</details>
<summary>Standard urlview-ng source; no malicious code found.</summary>
</security_assessment>

[7/10] Reviewing src/urlview/Makefile, src/urlview/url_handler.sh, src/urlview/enter.cpp...
+ Reviewed src/urlview/urlview.c. Status: SAFE -- Standard urlview-ng source; no malicious code found.
LLM auditresponse for url_handler.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard URL handler script from the upstream urlview package (originally from Debian). It reads a URL from the command line, environment variable, or stdin, detects the protocol (http, ftp, mailto, etc.), and launches a configured program to handle it. All operations are local and benign:

- It uses `command -v` to check for installed programs (sensible-browser, firefox, mutt, wget, etc.) and launches them with the URL.
- It does not download or execute any external code, nor does it contain obfuscated or encoded commands.
- Network destinations are the user's own browser/downloader, which is expected for a URL handler.
- The script is well-documented, commented, and follows standard shell scripting practices.

There is no evidence of a supply-chain attack, data exfiltration, backdoors, or any malicious behavior.
</details>
<summary>Standard upstream URL handler script, no malicious code found.</summary>
</security_assessment>

[8/10] Reviewing src/urlview/Makefile, src/urlview/enter.cpp...
+ Reviewed src/urlview/url_handler.sh. Status: SAFE -- Standard upstream URL handler script, no malicious code found.
LLM auditresponse for enter.cpp:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is part of the AUR package `urlview` and contains standard C++ code for a terminal-based text input widget using ncurses and wide character handling. The code performs no network requests, does not download or execute any external content, and contains no obfuscation or concealed commands. All operations are consistent with a normal text editor in a terminal environment (memory allocation, character manipulation, cursor movement). There is no evidence of supply-chain attack or malicious behavior.
</details>
<summary>
Standard text input widget code, no malicious behavior.</summary>
</security_assessment>

[9/10] Reviewing src/urlview/Makefile...
+ Reviewed src/urlview/enter.cpp. Status: SAFE -- Standard text input widget code, no malicious behavior.
LLM auditresponse for Makefile:
<security_assessment>
<decision>SAFE</decision>
<details>
The Makefile is a standard build script for the `urlview` package. It performs typical operations: compiling C/C++ source files, linking with ncurses, generating man pages and sample configuration from template files via `awk` substitution, and installing binaries and support files under configurable `PREFIX`.  

There are no network requests (no `curl`, `wget`, or other downloads), no obfuscated or encoded commands (no `eval`, `base64`, or suspicious shell constructs), and no attempts to exfiltrate data or modify files outside the expected installation paths. Variables like `DEFAULT_COMMAND` and `SYSTEM_INITFILE` are user-configurable and used only in substitution patterns; they do not introduce untrusted execution.  

The use of `git describe` for version detection and optional `shellcheck` are normal development/build practices. The `install` target only copies the built binary, a helper script, a sample config (if no existing config), and locale files—all within the intended scope of the package. No supply-chain attack vectors are present.
</details>
<summary>Standard build script, no malicious behavior.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/urlview/Makefile. Status: SAFE -- Standard build script, no malicious behavior.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 43,209
  Completion Tokens: 5,202
  Total Tokens: 48,411
  Total Cost: $0.004825
  Execution Time: 67.53 seconds
Full audit report can be found in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-urlview.txt
Final Status: SAFE


No issues found.
