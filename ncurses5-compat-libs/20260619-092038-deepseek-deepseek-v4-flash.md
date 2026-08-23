---
package: ncurses5-compat-libs
pkgver: 6.6
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 11c93a0c95e2166961e3664fea6b5a63827ded10
prompt_tokens: 53290
completion_tokens: 8350
total_tokens: 61640
cost: 0.00629910
execution_time: 177.53
files_reviewed: 11
files_skipped: 1
date: 2026-06-19T09:20:37Z
file_verdicts:
  - file: ncurses-6.6.tar.gz.sig
    status: skipped
    summary: "Skipping binary file: ncurses-6.6.tar.gz.sig"
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with no malicious indicators.
  - file: src/ncurses-6.6/ncurses/base/MKlib_gen.sh
    status: safe
    summary: Legitimate ncurses build script; no malicious behavior found.
  - file: src/ncurses-6.6/include/MKparametrized.sh
    status: safe
    summary: Legitimate build script for ncurses termcap handling.
  - file: src/ncurses-6.6/Ada95/gen/gen.c
    status: safe
    summary: Standard ncurses code generator; no security concerns.
  - file: src/ncurses-6.6/include/MKhashsize.sh
    status: safe
    summary: Standard ncurses build script; no malicious behavior detected.
  - file: src/ncurses-6.6/c++/edit_cfg.sh
    status: safe
    summary: Normal build configuration script, no malicious behavior.
  - file: src/ncurses-6.6/Ada95/src/library-cfg.sh
    status: safe
    summary: Standard script for patching GNAT project files; no security issues.
  - file: src/ncurses-6.6/Ada95/include/MKncurses_def.sh
    status: safe
    summary: Standard ncurses build script with no malicious content.
  - file: src/ncurses-6.6/man/MKterminfo.sh
    status: safe
    summary: Standard documentation generation script; no malicious behavior.
  - file: src/ncurses-6.6/Ada95/configure.in
    status: safe
    summary: A standard autoconf build configuration file with no security issues.
  - file: src/ncurses-6.6/include/MKkey_defs.sh
    status: safe
    summary: Standard build script, no malicious behavior.
---

Cloning https://aur.archlinux.org/ncurses5-compat-libs.git to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-qejhg0ci...
Cloned repository to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-qejhg0ci
Analyzing ncurses5-compat-libs AUR package (working in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-qejhg0ci) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only defines variables and functions. No code is executed in the global scope. The `source` array fetches from `ftp.gnu.org`, an official and trusted mirror. The `pkgver()` function is absent. All potentially dangerous operations (`prepare()`, `build()`, `package()`) are not executed during the requested commands (`--noprepare` and `--nobuild`). There is no obfuscation, no command substitution, no network requests to unexpected hosts, and no evidence of malicious payloads. The content is standard and follows packaging conventions.
</details>
<summary>
No malicious code in global scope, safe to fetch sources.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- No malicious code in global scope, safe to fetch sources.[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, ncurses-6.6.tar.gz.sig...
[1/2] Reviewing PKGBUILD...
! Reviewed ncurses-6.6.tar.gz.sig. Status: SKIPPED -- Skipping binary file: ncurses-6.6.tar.gz.sig
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard Arch Linux package recipe for building the ncurses library with ABI version 5 compatibility. It downloads the source tarball from the official GNU FTP server (ftp.gnu.org) with a verified SHA256 checksum and a valid PGP key for the upstream maintainer. The build process involves configuring, compiling, and installing only the shared libraries, followed by removing headers and static files as intended for a compatibility library package. No suspicious commands, network destinations, obfuscation, or system modifications are present. The only deviation from a typical PKGBUILD is the removal of headers and pkgconfig files, which is expected for this type of package to avoid conflict with the main ncurses package.
</details>
<summary>Standard PKGBUILD with no malicious indicators.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with no malicious indicators.
Reviewed all required files.
Deciding which files to review next...
Note: 1249 files available for selection; offering the 50 highest-priority to the model. 1108 lower-priority file(s) were not offered.
LLM response for file selection:
src/ncurses-6.6/Ada95/configure.in
src/ncurses-6.6/Ada95/include/MKncurses_def.sh
src/ncurses-6.6/Ada95/src/library-cfg.sh
src/ncurses-6.6/c++/edit_cfg.sh
src/ncurses-6.6/include/MKhashsize.sh
src/ncurses-6.6/include/MKkey_defs.sh
src/ncurses-6.6/include/MKparametrized.sh
src/ncurses-6.6/man/MKterminfo.sh
src/ncurses-6.6/ncurses/base/MKlib_gen.sh
src/ncurses-6.6/Ada95/gen/gen.c
Decided to review 10 additional files: src/ncurses-6.6/Ada95/configure.in, src/ncurses-6.6/Ada95/include/MKncurses_def.sh, src/ncurses-6.6/Ada95/src/library-cfg.sh, src/ncurses-6.6/c++/edit_cfg.sh, src/ncurses-6.6/include/MKhashsize.sh, src/ncurses-6.6/include/MKkey_defs.sh, src/ncurses-6.6/include/MKparametrized.sh, src/ncurses-6.6/man/MKterminfo.sh, src/ncurses-6.6/ncurses/base/MKlib_gen.sh, src/ncurses-6.6/Ada95/gen/gen.c
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/ncurses-6.6/Ada95/src/library-cfg.sh...
[0/10] Reviewing src/ncurses-6.6/Ada95/src/library-cfg.sh, src/ncurses-6.6/c++/edit_cfg.sh...
[0/10] Reviewing src/ncurses-6.6/Ada95/src/library-cfg.sh, src/ncurses-6.6/c++/edit_cfg.sh, src/ncurses-6.6/include/MKhashsize.sh...
[0/10] Reviewing src/ncurses-6.6/Ada95/src/library-cfg.sh, src/ncurses-6.6/c++/edit_cfg.sh, src/ncurses-6.6/include/MKhashsize.sh, src/ncurses-6.6/include/MKkey_defs.sh...
[0/10] Reviewing src/ncurses-6.6/Ada95/src/library-cfg.sh, src/ncurses-6.6/c++/edit_cfg.sh, src/ncurses-6.6/include/MKhashsize.sh, src/ncurses-6.6/include/MKkey_defs.sh, src/ncurses-6.6/Ada95/configure.in...
[0/10] Reviewing src/ncurses-6.6/Ada95/src/library-cfg.sh, src/ncurses-6.6/c++/edit_cfg.sh, src/ncurses-6.6/include/MKhashsize.sh, src/ncurses-6.6/include/MKkey_defs.sh, src/ncurses-6.6/Ada95/configure.in, src/ncurses-6.6/include/MKparametrized.sh...
[0/10] Reviewing src/ncurses-6.6/Ada95/src/library-cfg.sh, src/ncurses-6.6/c++/edit_cfg.sh, src/ncurses-6.6/include/MKhashsize.sh, src/ncurses-6.6/include/MKkey_defs.sh, src/ncurses-6.6/Ada95/configure.in, src/ncurses-6.6/include/MKparametrized.sh, src/ncurses-6.6/Ada95/include/MKncurses_def.sh...
[0/10] Reviewing src/ncurses-6.6/Ada95/src/library-cfg.sh, src/ncurses-6.6/c++/edit_cfg.sh, src/ncurses-6.6/include/MKhashsize.sh, src/ncurses-6.6/include/MKkey_defs.sh, src/ncurses-6.6/Ada95/configure.in, src/ncurses-6.6/include/MKparametrized.sh, src/ncurses-6.6/Ada95/include/MKncurses_def.sh, src/ncurses-6.6/man/MKterminfo.sh...
[0/10] Reviewing src/ncurses-6.6/Ada95/src/library-cfg.sh, src/ncurses-6.6/c++/edit_cfg.sh, src/ncurses-6.6/include/MKhashsize.sh, src/ncurses-6.6/include/MKkey_defs.sh, src/ncurses-6.6/Ada95/configure.in, src/ncurses-6.6/include/MKparametrized.sh, src/ncurses-6.6/Ada95/include/MKncurses_def.sh, src/ncurses-6.6/man/MKterminfo.sh, src/ncurses-6.6/Ada95/gen/gen.c...
[0/10] Reviewing src/ncurses-6.6/Ada95/src/library-cfg.sh, src/ncurses-6.6/c++/edit_cfg.sh, src/ncurses-6.6/include/MKhashsize.sh, src/ncurses-6.6/include/MKkey_defs.sh, src/ncurses-6.6/Ada95/configure.in, src/ncurses-6.6/include/MKparametrized.sh, src/ncurses-6.6/Ada95/include/MKncurses_def.sh, src/ncurses-6.6/man/MKterminfo.sh, src/ncurses-6.6/Ada95/gen/gen.c, src/ncurses-6.6/ncurses/base/MKlib_gen.sh...
LLM auditresponse for MKlib_gen.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a legitimate build-time script from the ncurses project, authored by Thomas Dickey (the ncurses maintainer). It generates C source code from macro definitions in `curses.h` using standard Unix tools (`sed`, `awk`, `cpp`). There are no network requests, obfuscation, or unexpected system modifications. Temporary files are created with a PID-based naming scheme and cleaned up via traps, which is standard practice for build scripts. The script is well-documented and performs only its stated purpose: transforming macro definitions into callable C functions for XSI Curses compliance. All operations are confined to the build directory and use expected tools. No evidence of malicious or anomalous behavior.
</details>
<summary>Legitimate ncurses build script; no malicious behavior found.</summary>
</security_assessment>

[1/10] Reviewing src/ncurses-6.6/Ada95/src/library-cfg.sh, src/ncurses-6.6/c++/edit_cfg.sh, src/ncurses-6.6/include/MKhashsize.sh, src/ncurses-6.6/include/MKkey_defs.sh, src/ncurses-6.6/Ada95/configure.in, src/ncurses-6.6/include/MKparametrized.sh, src/ncurses-6.6/Ada95/include/MKncurses_def.sh, src/ncurses-6.6/man/MKterminfo.sh, src/ncurses-6.6/Ada95/gen/gen.c...
+ Reviewed src/ncurses-6.6/ncurses/base/MKlib_gen.sh. Status: SAFE -- Legitimate ncurses build script; no malicious behavior found.
LLM auditresponse for MKparametrized.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard build helper script from the ncurses project. It generates C source code for an array that indicates whether termcap capabilities should undergo padding and parameter translation. The script processes an input file (default "Caps") using `cat` and `awk`, and outputs a header file. There are no network requests, downloads, obfuscated commands, or suspicious file operations. The content is consistent with upstream ncurses packaging and poses no supply-chain risk.
</details>
<summary>Legitimate build script for ncurses termcap handling.</summary>
</security_assessment>

[2/10] Reviewing src/ncurses-6.6/Ada95/src/library-cfg.sh, src/ncurses-6.6/c++/edit_cfg.sh, src/ncurses-6.6/include/MKhashsize.sh, src/ncurses-6.6/include/MKkey_defs.sh, src/ncurses-6.6/Ada95/configure.in, src/ncurses-6.6/Ada95/include/MKncurses_def.sh, src/ncurses-6.6/man/MKterminfo.sh, src/ncurses-6.6/Ada95/gen/gen.c...
+ Reviewed src/ncurses-6.6/include/MKparametrized.sh. Status: SAFE -- Legitimate build script for ncurses termcap handling.
LLM auditresponse for gen.c:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard C source file from the upstream ncurses project (copyrighted by Thomas E. Dickey and Free Software Foundation). It generates an Ada package specification (`Terminal_Interface.Curses_Constants`) that exports C constant values from ncurses, menu, and form libraries. The code performs no network operations, no obfuscated or encoded commands, no suspicious file manipulation beyond writing the generated Ada source to stdout or a file specified via command-line argument. All file writes are to the intended output destination. The logic is entirely transparent: it uses macro expansions and printf to emit constant definitions based on the headers. There is no evidence of a supply-chain attack or malicious behavior; this is a normal build-time code generation tool.
</details>
<summary>Standard ncurses code generator; no security concerns.</summary>
</security_assessment>

[3/10] Reviewing src/ncurses-6.6/Ada95/src/library-cfg.sh, src/ncurses-6.6/c++/edit_cfg.sh, src/ncurses-6.6/include/MKhashsize.sh, src/ncurses-6.6/include/MKkey_defs.sh, src/ncurses-6.6/Ada95/configure.in, src/ncurses-6.6/Ada95/include/MKncurses_def.sh, src/ncurses-6.6/man/MKterminfo.sh...
+ Reviewed src/ncurses-6.6/Ada95/gen/gen.c. Status: SAFE -- Standard ncurses code generator; no security concerns.
LLM auditresponse for MKhashsize.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This shell script is part of the ncurses build system (specifically generating hash table sizes). It uses standard Unix commands (cat, grep, wc) to count lines in input files matching certain patterns and outputs C preprocessor definitions. There are no network requests, obfuscated code, dangerous commands (eval, base64, curl, wget), or any operations beyond reading local files and printing constants. The copyright headers and file path (`$Id`) indicate it comes from the ncurses project itself. No evidence of supply-chain injection or malicious behavior.
</details>
<summary>
Standard ncurses build script; no malicious behavior detected.</summary>
</security_assessment>

[4/10] Reviewing src/ncurses-6.6/Ada95/src/library-cfg.sh, src/ncurses-6.6/c++/edit_cfg.sh, src/ncurses-6.6/include/MKkey_defs.sh, src/ncurses-6.6/Ada95/configure.in, src/ncurses-6.6/Ada95/include/MKncurses_def.sh, src/ncurses-6.6/man/MKterminfo.sh...
+ Reviewed src/ncurses-6.6/include/MKhashsize.sh. Status: SAFE -- Standard ncurses build script; no malicious behavior detected.
LLM auditresponse for edit_cfg.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script `edit_cfg.sh` is a standard build-time configuration tool for the ncurses library. It reads autoconf-generated defines from one file (e.g., `ncurses_cfg.h`) and substitutes corresponding values into another file (`etip.h`) using `sed`. All operations are local file manipulations (mv, rm, cmp, grep, sed) with no network access, execution of downloaded code, obfuscation, or any behavior outside the expected build workflow. The script originates from Thomas E. Dickey, the maintainer of ncurses, and matches the standard ncurses source distribution. There is no evidence of supply-chain attack or malicious intent.
</details>
<summary>Normal build configuration script, no malicious behavior.</summary>
</security_assessment>

[5/10] Reviewing src/ncurses-6.6/Ada95/src/library-cfg.sh, src/ncurses-6.6/include/MKkey_defs.sh, src/ncurses-6.6/Ada95/configure.in, src/ncurses-6.6/Ada95/include/MKncurses_def.sh, src/ncurses-6.6/man/MKterminfo.sh...
+ Reviewed src/ncurses-6.6/c++/edit_cfg.sh. Status: SAFE -- Normal build configuration script, no malicious behavior.
LLM auditresponse for library-cfg.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a helper that filters compiler flags from command-line arguments and uses `sed` to patch a GNAT project file. It creates a temporary file (`.tmp`) in the current directory, writes a small `sed` script into it, processes the input, then removes the temp file. No network requests, code execution from external sources, obfuscation, or unexpected system modifications. The script only handles flags like `-O`, `-g`, `-D`, `-I`, `-W`, `-f` — standard compiler options. No malicious behavior.
</details>
<summary>Standard script for patching GNAT project files; no security issues.</summary>
</security_assessment>

[6/10] Reviewing src/ncurses-6.6/include/MKkey_defs.sh, src/ncurses-6.6/Ada95/configure.in, src/ncurses-6.6/Ada95/include/MKncurses_def.sh, src/ncurses-6.6/man/MKterminfo.sh...
+ Reviewed src/ncurses-6.6/Ada95/src/library-cfg.sh. Status: SAFE -- Standard script for patching GNAT project files; no security issues.
LLM auditresponse for MKncurses_def.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard build helper script from the upstream ncurses project (copyright Thomas E. Dickey and Free Software Foundation). It generates fallback `#ifndef` / `#define` blocks for header definitions to suppress compiler warnings like `-Wundef`. The script reads a single file (`ncurses_defs` by default) via `awk` and outputs header content to stdout. There are no network requests, obfuscated code, dangerous commands (e.g., `eval`, `curl`, `base64`), or unexpected system modifications. The file is consistent with routine packaging and build automation. No supply-chain attack indicators are present.
</details>
<summary>Standard ncurses build script with no malicious content.</summary>
</security_assessment>

[7/10] Reviewing src/ncurses-6.6/include/MKkey_defs.sh, src/ncurses-6.6/Ada95/configure.in, src/ncurses-6.6/man/MKterminfo.sh...
+ Reviewed src/ncurses-6.6/Ada95/include/MKncurses_def.sh. Status: SAFE -- Standard ncurses build script with no malicious content.
LLM auditresponse for MKterminfo.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard build helper for generating the **terminfo(5)** man page from upstream source data. It performs only local file operations on command-line arguments (a head file, Caps data files, and a tail file), using `sed`, `tr`, `sort`, and temporary files under a cleaned-up temporary directory. There are no network requests (`curl`, `wget`, etc.), no obfuscated or encoded commands, no execution of downloaded code, and no access to sensitive system files. The temporary directory creation uses `mktemp` with a fallback that, while not perfectly secure, is a common idiom in build scripts and is paired with `mkdir -p` and `trap` cleanup. The comment about embedded control characters (`\005` as a newline placeholder) is a documented upstream technique, not an attempt to hide malicious logic. The script's behavior is entirely consistent with its stated purpose: splicing tables into a man page source.
</details>
<summary>Standard documentation generation script; no malicious behavior.</summary>
</security_assessment>

[8/10] Reviewing src/ncurses-6.6/include/MKkey_defs.sh, src/ncurses-6.6/Ada95/configure.in...
+ Reviewed src/ncurses-6.6/man/MKterminfo.sh. Status: SAFE -- Standard documentation generation script; no malicious behavior.
LLM auditresponse for configure.in:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard autoconf `configure.in` input file for the `AdaCurses` package (part of the ncurses project). It contains typical build configuration macros (checks for compilers, libraries, headers, and options like shared/static, pthreads, reentrant, and tracing). There are no network requests, no obfuscated code, no `curl|bash` or similar patterns, and no unexpected file operations. The file follows normal packaging and build practices for a well-known open-source library. No evidence of malicious or dangerous behavior is present.
</details>
<summary>A standard autoconf build configuration file with no security issues.</summary>
</security_assessment>

[9/10] Reviewing src/ncurses-6.6/include/MKkey_defs.sh...
+ Reviewed src/ncurses-6.6/Ada95/configure.in. Status: SAFE -- A standard autoconf build configuration file with no security issues.
LLM auditresponse for MKkey_defs.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script (`MKkey_defs.sh`) is a standard component of the ncurses source distribution, used to generate C preprocessor definitions for function-key codes from a terminal capabilities file (e.g., `Caps`). It performs only local file operations: sorting, filtering with `sed` and `awk`, and writing temporary files that are cleaned up via `trap`. There are no network requests, no obfuscated or encoded commands, no use of `eval`, `base64`, `curl`, or `wget`. The script does not modify system files or execute any external payloads. Its behavior is consistent with routine upstream build automation and poses no security threat.
</details>
<summary>Standard build script, no malicious behavior.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/ncurses-6.6/include/MKkey_defs.sh. Status: SAFE -- Standard build script, no malicious behavior.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
(Skipped 1 file: ncurses-6.6.tar.gz.sig)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 53,290
  Completion Tokens: 8,350
  Total Tokens: 61,640
  Total Cost: $0.006299
  Execution Time: 177.53 seconds
Full audit report can be found in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-ncurses5-compat-libs.txt
Final Status: SAFE


No issues found.


Audit Skips:

/home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-qejhg0ci/ncurses-6.6.tar.gz.sig: [SKIPPED] Skipping binary file: ncurses-6.6.tar.gz.sig
