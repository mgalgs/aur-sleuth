---
package: cppman-git
pkgver: v0.6.1.r0.g86a55fe
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 11c93a0c95e2166961e3664fea6b5a63827ded10
prompt_tokens: 52741
completion_tokens: 9125
total_tokens: 61866
cost: 0.00638919
execution_time: 75.67
files_reviewed: 11
files_skipped: 0
date: 2026-06-19T08:44:02Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard AUR VCS PKGBUILD; no malicious code found.
  - file: src/cppman-git/setup.py
    status: safe
    summary: Standard Python packaging script, no security concerns.
  - file: src/cppman-git/cppman/config.py
    status: safe
    summary: Clean config file, no malicious behavior detected.
  - file: src/cppman-git/cppman/formatter/cplusplus.py
    status: safe
    summary: Standard documentation formatting code, no malicious behavior.
  - file: src/cppman-git/cppman/util.py
    status: safe
    summary: Standard utility code; no malicious behavior found.
  - file: src/cppman-git/cppman/crawler.py
    status: safe
    summary: Standard web crawler utility, no malicious behavior detected.
  - file: src/cppman-git/cppman/environ.py
    status: safe
    summary: Benign environment setup script, no malicious code.
  - file: src/cppman-git/bin/cppman
    status: safe
    summary: Standard entry point, no malicious code found.
  - file: src/cppman-git/cppman/lib/pager.sh
    status: safe
    summary: Legitimate pager helper script, no malicious code
  - file: src/cppman-git/cppman/formatter/cppreference.py
    status: safe
    summary: Standard HTML-to-groff formatter for cppreference.com data.
  - file: src/cppman-git/cppman/main.py
    status: safe
    summary: Legitimate C++ man page viewer; no supply-chain attack indicators.
---

Cloning https://aur.archlinux.org/cppman-git.git to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-jzt0flek...
Cloned repository to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-jzt0flek
Analyzing cppman-git AUR package (working in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-jzt0flek) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable definitions and a `pkgver()` function that runs `git describe`. The source is a `git+https` clone from the official upstream repository (`https://github.com/aitjcize/cppman`). There are no top-level command substitutions, obfuscated code, network requests, or dangerous operations (e.g., `eval`, `curl`, `wget`) that would execute during source fetching or PKGBUILD sourcing. The `sha256sums` is `SKIP`, which is normal for VCS packages. The `prepare()`, `build()`, and `package()` functions are not executed by the commands in scope. Therefore, running `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo` is safe.
</details>
<summary>Safe: standard VCS PKGBUILD with no malicious top-level code.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- Safe: standard VCS PKGBUILD with no malicious top-level code.[/]
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
This PKGBUILD follows standard packaging practices for a VCS (git) package in the AUR. It sources directly from the upstream GitHub repository (`https://github.com/aitjcize/cppman`), uses `SKIP` checksums (required for git sources), and performs routine build/install steps with `python -m build` and `python -m installer`. The `git clean -dfx` in prepare() is a normal way to ensure a clean checkout. There are no suspicious network requests to unknown hosts, no obfuscated or encoded commands, no attempts to exfiltrate data, and no unexpected file operations outside the package's scope. The unpinned source is expected for a `-git` package and is not a security threat.
</details>
<summary>Standard AUR VCS PKGBUILD; no malicious code found.</summary>
</security_assessment>

[1/1] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR VCS PKGBUILD; no malicious code found.
Reviewed all required files.
Deciding which files to review next...
Note: 53 files available for selection; offering the 50 highest-priority to the model. 2 lower-priority file(s) were not offered.
LLM response for file selection:
src/cppman-git/setup.py
src/cppman-git/cppman/crawler.py
src/cppman-git/cppman/formatter/cppreference.py
src/cppman-git/cppman/formatter/cplusplus.py
src/cppman-git/cppman/main.py
src/cppman-git/cppman/lib/pager.sh
src/cppman-git/cppman/config.py
src/cppman-git/cppman/environ.py
src/cppman-git/cppman/util.py
src/cppman-git/bin/cppman
Decided to review 10 additional files: src/cppman-git/setup.py, src/cppman-git/cppman/crawler.py, src/cppman-git/cppman/formatter/cppreference.py, src/cppman-git/cppman/formatter/cplusplus.py, src/cppman-git/cppman/main.py, src/cppman-git/cppman/lib/pager.sh, src/cppman-git/cppman/config.py, src/cppman-git/cppman/environ.py, src/cppman-git/cppman/util.py, src/cppman-git/bin/cppman
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/cppman-git/setup.py...
[0/10] Reviewing src/cppman-git/setup.py, src/cppman-git/cppman/crawler.py...
[0/10] Reviewing src/cppman-git/setup.py, src/cppman-git/cppman/crawler.py, src/cppman-git/cppman/formatter/cppreference.py...
[0/10] Reviewing src/cppman-git/setup.py, src/cppman-git/cppman/crawler.py, src/cppman-git/cppman/formatter/cppreference.py, src/cppman-git/cppman/formatter/cplusplus.py...
[0/10] Reviewing src/cppman-git/setup.py, src/cppman-git/cppman/crawler.py, src/cppman-git/cppman/formatter/cppreference.py, src/cppman-git/cppman/formatter/cplusplus.py, src/cppman-git/cppman/main.py...
[0/10] Reviewing src/cppman-git/setup.py, src/cppman-git/cppman/crawler.py, src/cppman-git/cppman/formatter/cppreference.py, src/cppman-git/cppman/formatter/cplusplus.py, src/cppman-git/cppman/main.py, src/cppman-git/cppman/environ.py...
[0/10] Reviewing src/cppman-git/setup.py, src/cppman-git/cppman/crawler.py, src/cppman-git/cppman/formatter/cppreference.py, src/cppman-git/cppman/formatter/cplusplus.py, src/cppman-git/cppman/main.py, src/cppman-git/cppman/environ.py, src/cppman-git/cppman/config.py...
[0/10] Reviewing src/cppman-git/setup.py, src/cppman-git/cppman/crawler.py, src/cppman-git/cppman/formatter/cppreference.py, src/cppman-git/cppman/formatter/cplusplus.py, src/cppman-git/cppman/main.py, src/cppman-git/cppman/environ.py, src/cppman-git/cppman/config.py, src/cppman-git/bin/cppman...
[0/10] Reviewing src/cppman-git/setup.py, src/cppman-git/cppman/crawler.py, src/cppman-git/cppman/formatter/cppreference.py, src/cppman-git/cppman/formatter/cplusplus.py, src/cppman-git/cppman/main.py, src/cppman-git/cppman/environ.py, src/cppman-git/cppman/config.py, src/cppman-git/bin/cppman, src/cppman-git/cppman/util.py...
[0/10] Reviewing src/cppman-git/setup.py, src/cppman-git/cppman/crawler.py, src/cppman-git/cppman/formatter/cppreference.py, src/cppman-git/cppman/formatter/cplusplus.py, src/cppman-git/cppman/main.py, src/cppman-git/cppman/environ.py, src/cppman-git/cppman/config.py, src/cppman-git/bin/cppman, src/cppman-git/cppman/util.py, src/cppman-git/cppman/lib/pager.sh...
LLM auditresponse for setup.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The setup.py file is a standard Python packaging script for the cppman package. It reads metadata from local files (&#x60;__version__.py&#x60;, &#x60;requirements.txt&#x60;, &#x60;README.rst&#x60;) and defines package data, data files, and dependencies for installation via distutils/setuptools. There are no network requests, obfuscated code, dangerous commands (eval, base64, curl, wget), or unusual file operations. The script only performs routine packaging operations and is consistent with normal Python packaging practices. No evidence of malicious behavior is present.
</details>
<summary>
Standard Python packaging script, no security concerns.
</summary>
</security_assessment>

[1/10] Reviewing src/cppman-git/cppman/crawler.py, src/cppman-git/cppman/formatter/cppreference.py, src/cppman-git/cppman/formatter/cplusplus.py, src/cppman-git/cppman/main.py, src/cppman-git/cppman/environ.py, src/cppman-git/cppman/config.py, src/cppman-git/bin/cppman, src/cppman-git/cppman/util.py, src/cppman-git/cppman/lib/pager.sh...
+ Reviewed src/cppman-git/setup.py. Status: SAFE -- Standard Python packaging script, no security concerns.
LLM auditresponse for config.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard configuration file handler for the cppman application (a C++ man page viewer). It reads/writes an INI-style config file using Python's `configparser`. There are no network requests, obfuscated code, dangerous commands, or any data exfiltration. The only file operations are reading and writing the configuration file itself, creating parent directories as needed. The bare `except` in `set_default()` and `save()` is poor exception handling but not a security issue. The `__getattr__` and `__setattr__` overrides are unconventional but purely functional (accessing config values and persisting changes). No supply-chain attack indicators are present.
</details>
<summary>
Clean config file, no malicious behavior detected.
</summary>
</security_assessment>

[2/10] Reviewing src/cppman-git/cppman/crawler.py, src/cppman-git/cppman/formatter/cppreference.py, src/cppman-git/cppman/formatter/cplusplus.py, src/cppman-git/cppman/main.py, src/cppman-git/cppman/environ.py, src/cppman-git/bin/cppman, src/cppman-git/cppman/util.py, src/cppman-git/cppman/lib/pager.sh...
+ Reviewed src/cppman-git/cppman/config.py. Status: SAFE -- Clean config file, no malicious behavior detected.
LLM auditresponse for cplusplus.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `cplusplus.py` is part of the cppman package, which fetches and formats C++ man pages from cplusplus.com. It contains HTML-to-Groff conversion logic, regular expression replacements, and test functions. The only network activity is in the test functions (`func_test` and `test`), which fetch HTML from `http://www.cplusplus.com/printf` and `http://www.cplusplus.com/vector` — the package's own upstream source. This is normal for a tool that retrieves documentation. There is no obfuscated code, no download-and-execute patterns, no data exfiltration, and no system modification outside the scope of producing man page output. The use of HTTP instead of HTTPS is a minor hygiene concern, not evidence of malice. The code is entirely consistent with its stated purpose.
</details>
<summary>Standard documentation formatting code, no malicious behavior.</summary>
</security_assessment>

[3/10] Reviewing src/cppman-git/cppman/crawler.py, src/cppman-git/cppman/formatter/cppreference.py, src/cppman-git/cppman/main.py, src/cppman-git/cppman/environ.py, src/cppman-git/bin/cppman, src/cppman-git/cppman/util.py, src/cppman-git/cppman/lib/pager.sh...
+ Reviewed src/cppman-git/cppman/formatter/cplusplus.py. Status: SAFE -- Standard documentation formatting code, no malicious behavior.
LLM auditresponse for util.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `util.py` contains standard utility functions for the `cppman` application (a CLI tool for browsing C++ reference man pages). All functions perform expected operations: managing a local `~/.manpath` configuration file, creating a symlink to the cache directory, retrieving terminal width, converting groff/HTML to man page format, and providing URL opening wrappers that only add a User-Agent header. There is no obfuscated code, no encoded strings, no suspicious network destinations (the URL functions are generic and will open whichever URL the application passes to them, which is normal), and no file operations outside the application’s own cache and configuration paths. The subprocess call in `groff2man` builds a command line from hardcoded strings and integer terminal dimensions, so no injection vector exists. Overall, the file implements only routine packaging/library functionality with no evidence of malicious intent.
</details>
<summary>Standard utility code; no malicious behavior found.</summary>
</security_assessment>

[4/10] Reviewing src/cppman-git/cppman/crawler.py, src/cppman-git/cppman/formatter/cppreference.py, src/cppman-git/cppman/main.py, src/cppman-git/cppman/environ.py, src/cppman-git/bin/cppman, src/cppman-git/cppman/lib/pager.sh...
+ Reviewed src/cppman-git/cppman/util.py. Status: SAFE -- Standard utility code; no malicious behavior found.
LLM auditresponse for crawler.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard web crawler utility used by the cppman package to fetch C++ reference documentation from upstream sources. It performs HTTP requests, parses HTML content for links, and supports configurable crawling behavior (depth, follow mode, content type filtering). All network activity is directed to URLs passed by the caller, and downloaded content is processed via the `process_document` callback (intended for subclassing). There is no obfuscated code, no execution of downloaded scripts or binaries, no file system modifications, and no exfiltration of local data. The custom `NoRedirection` handler simply avoids automatic redirects in favor of manual tracking, which is a legitimate feature for a crawler. The code is consistent with the stated purpose of cppman and does not contain any supply-chain attack indicators.
</details>
<summary>
Standard web crawler utility, no malicious behavior detected.</summary>
</security_assessment>

[5/10] Reviewing src/cppman-git/cppman/formatter/cppreference.py, src/cppman-git/cppman/main.py, src/cppman-git/cppman/environ.py, src/cppman-git/bin/cppman, src/cppman-git/cppman/lib/pager.sh...
+ Reviewed src/cppman-git/cppman/crawler.py. Status: SAFE -- Standard web crawler utility, no malicious behavior detected.
LLM auditresponse for environ.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `environ.py` is a standard Python module responsible for initializing cache and configuration directories for the `cppman` application. It uses only basic `os` module functions (`os.environ`, `os.getenv`, `os.path.join`, `os.makedirs`, `os.path.exists`) and imports from other `cppman` modules (`get_lib_path`, `Config`).  

No network requests, obfuscated code, dangerous commands (`eval`, `base64`, `curl`, `wget`), or suspicious file operations are present. The broad `except: pass` is poor practice but not malicious. There is a potential bug: `update_man3_link()` is called without being imported or defined in the file, which would raise a `NameError`—this is caught silently, but it does not indicate a supply-chain attack. The code does not exfiltrate data, download or execute external content, or modify system files outside the application’s own scope.
</details>
<summary>
Benign environment setup script, no malicious code.</summary>
</security_assessment>

[6/10] Reviewing src/cppman-git/cppman/formatter/cppreference.py, src/cppman-git/cppman/main.py, src/cppman-git/bin/cppman, src/cppman-git/cppman/lib/pager.sh...
+ Reviewed src/cppman-git/cppman/environ.py. Status: SAFE -- Benign environment setup script, no malicious code.
LLM auditresponse for cppman:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `cppman` is a standard Python entry point for the cppman application. It parses command-line arguments and delegates functionality to the `cppman` package modules. The only network interactions are with the application's declared upstream sources (`cppreference.com` and `cplusplus.com`) for caching man pages—this is normal application behavior. There is no obfuscated code, no execution of untrusted content, no exfiltration of data, and no unexpected system modifications beyond updating the man database path, which aligns with the application's purpose. The use of `os.waitpid` is for managing pager processes and is not suspicious.
</details>
<summary>
Standard entry point, no malicious code found.</summary>
</security_assessment>

[7/10] Reviewing src/cppman-git/cppman/formatter/cppreference.py, src/cppman-git/cppman/main.py, src/cppman-git/cppman/lib/pager.sh...
+ Reviewed src/cppman-git/bin/cppman. Status: SAFE -- Standard entry point, no malicious code found.
LLM auditresponse for pager.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `pager.sh` is a helper script from the cppman project that selects and invokes a pager (less, vim, nvim, etc.) to display pre‑formatted man‑page output. Its operations are limited to:

- Decompressing the man‑page file with `gunzip`.
- Converting it to terminal output using `groff`.
- Running the chosen pager command (vim/nvim, less, or a user‑set `$PAGER`/`$MANPAGER`).
- Optionally stripping escape sequences with `sed`.

No network requests, downloads, file tampering, obfuscated code, or exfiltration of system data occur. All commands are standard UNIX utilities invoked in a conventional packaging‑helper context. The script does not deviate from the expected upstream behavior of a documentation‑viewing tool.
</details>
<summary>Legitimate pager helper script, no malicious code</summary>
</security_assessment>

[8/10] Reviewing src/cppman-git/cppman/formatter/cppreference.py, src/cppman-git/cppman/main.py...
+ Reviewed src/cppman-git/cppman/lib/pager.sh. Status: SAFE -- Legitimate pager helper script, no malicious code
LLM auditresponse for cppreference.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a formatting module for the cppman application that converts HTML from cppreference.com into groff format for man pages. It imports only standard Python libraries (`re`, `string`, `datetime`, `functools`) and a `urlopen` helper from the package's own module. The only network accesses are to `http://en.cppreference.com` for fetching documentation, which is the package's stated purpose and upstream source. No obfuscated code, dangerous commands (eval, base64, curl), backdoors, or data exfiltration is present. The file is entirely focused on HTML parsing and text transformation. The use of HTTP instead of HTTPS is a minor hygiene concern but not evidence of malice.
</details>
<summary>Standard HTML-to-groff formatter for cppreference.com data.</summary>
</security_assessment>

[9/10] Reviewing src/cppman-git/cppman/main.py...
+ Reviewed src/cppman-git/cppman/formatter/cppreference.py. Status: SAFE -- Standard HTML-to-groff formatter for cppreference.com data.
LLM auditresponse for main.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is the main module of `cppman`, a C++ man page viewer. It performs the expected operations: crawling cplusplus.com and cppreference.com to build an index, caching man pages from those sources, displaying pages via a pager, and updating the mandb. All network requests target the project’s own upstream sources. There is no obfuscated code, no unexpected external downloads, and no exfiltration of local data. The use of `shell=True` in `subprocess.Popen` and `os.execl` with configurable arguments is characteristic of a pager tool and does not indicate malice. The code is consistent with the stated purpose of the application.
</details>
<summary>Legitimate C++ man page viewer; no supply-chain attack indicators.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/cppman-git/cppman/main.py. Status: SAFE -- Legitimate C++ man page viewer; no supply-chain attack indicators.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 52,741
  Completion Tokens: 9,125
  Total Tokens: 61,866
  Total Cost: $0.006389
  Execution Time: 75.67 seconds
Full audit report can be found in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-cppman-git.txt
Final Status: SAFE


No issues found.
