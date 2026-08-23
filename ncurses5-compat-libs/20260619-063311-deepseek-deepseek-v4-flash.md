---
package: ncurses5-compat-libs
pkgver: 6.6
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 5790943c1b39200ecdf449522971aa7db90ade4a
prompt_tokens: 47845
completion_tokens: 8763
total_tokens: 56608
cost: 0.00588339
execution_time: 94.33
files_reviewed: 11
files_skipped: 1
date: 2026-06-19T06:33:11Z
file_verdicts:
  - file: ncurses-6.6.tar.gz.sig
    status: skipped
    summary: "Skipping binary file: ncurses-6.6.tar.gz.sig"
  - file: PKGBUILD
    status: safe
    summary: Standard ncurses5 compat library packaging, safe.
  - file: src/ncurses-6.6/c++/edit_cfg.sh
    status: safe
    summary: Standard build configuration script, no malicious behavior.
  - file: src/ncurses-6.6/Ada95/configure.in
    status: safe
    summary: Standard autoconf input; no malicious behavior detected.
  - file: src/ncurses-6.6/include/MKhashsize.sh
    status: safe
    summary: Standard build helper script, no malicious content.
  - file: src/ncurses-6.6/man/MKterminfo.sh
    status: safe
    summary: Legitimate upstream build script; no security concerns.
  - file: src/ncurses-6.6/Ada95/include/MKncurses_def.sh
    status: safe
    summary: Standard ncurses build script; no security concerns.
  - file: src/ncurses-6.6/ncurses/base/MKlib_gen.sh
    status: safe
    summary: Standard ncurses build script, no security issues.
  - file: src/ncurses-6.6/include/MKkey_defs.sh
    status: safe
    summary: Safe; standard ncurses build script for key definitions.
  - file: src/ncurses-6.6/Ada95/src/library-cfg.sh
    status: safe
    summary: "Safe: upstream ncurses script, no malicious behavior found."
  - file: src/ncurses-6.6/ncurses/tinfo/MKfallback.sh
    status: safe
    summary: Upstream build helper; no malicious behavior found.
  - file: src/ncurses-6.6/include/MKparametrized.sh
    status: safe
    summary: Standard ncurses source generation script; no security issues.
---

Cloning https://aur.archlinux.org/ncurses5-compat-libs.git to /tmp/aur-sleuth/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-jrds0g4n...
Cloned repository to /tmp/aur-sleuth/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-jrds0g4n
Analyzing ncurses5-compat-libs AUR package (working in /tmp/aur-sleuth/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-jrds0g4n) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD contains no dangerous top-level code or `pkgver()` function that would execute during the source-fetching or parsing stage. The `prepare()`, `build()`, and `package()` functions are defined but will not be executed due to the `--noprepare` and `--nobuild` flags. The `source` array uses a standard HTTPS download from the official GNU FTP server and includes a checksum (not SKIP) for the tarball, consistent with normal packaging practices. No obfuscation, unexpected network requests, or executable payloads are present in the global scope.</details>
<summary>Standard PKGBUILD with no dangerous top-level code.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- Standard PKGBUILD with no dangerous top-level code.[/]
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
This PKGBUILD is a standard packaging of the ncurses library with ABI 5 compatibility. The source is fetched from the official GNU FTP mirror (`ftp.gnu.org`), and the package uses the upstream maintainer's PGP key for verification. The build process follows normal steps: configuring with appropriate flags, building two variants (wide and no-widec), and installing libraries with symlinks for compatibility. The removal of include directories, pkgconfig files, and `.so`/`.a` files is typical for compatibility packages that only distribute shared objects for the old ABI. No obfuscated code, unexpected network requests, or dangerous operations are present. The only unusual aspect is the use of `--with-versioned-syms` and `--with-cxx-shared` which are standard ncurses options. The symlinks `libtinfo.so.5` and `libtic.so.5` point to `libncurses.so.5` within the same package directory, which is expected behavior for this compatibility library.
</details>
<summary>Standard ncurses5 compat library packaging, safe.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard ncurses5 compat library packaging, safe.
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
src/ncurses-6.6/ncurses/tinfo/MKfallback.sh
Decided to review 10 additional files: src/ncurses-6.6/Ada95/configure.in, src/ncurses-6.6/Ada95/include/MKncurses_def.sh, src/ncurses-6.6/Ada95/src/library-cfg.sh, src/ncurses-6.6/c++/edit_cfg.sh, src/ncurses-6.6/include/MKhashsize.sh, src/ncurses-6.6/include/MKkey_defs.sh, src/ncurses-6.6/include/MKparametrized.sh, src/ncurses-6.6/man/MKterminfo.sh, src/ncurses-6.6/ncurses/base/MKlib_gen.sh, src/ncurses-6.6/ncurses/tinfo/MKfallback.sh
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/ncurses-6.6/Ada95/include/MKncurses_def.sh...
[0/10] Reviewing src/ncurses-6.6/Ada95/include/MKncurses_def.sh, src/ncurses-6.6/Ada95/src/library-cfg.sh...
[0/10] Reviewing src/ncurses-6.6/Ada95/include/MKncurses_def.sh, src/ncurses-6.6/Ada95/src/library-cfg.sh, src/ncurses-6.6/Ada95/configure.in...
[0/10] Reviewing src/ncurses-6.6/Ada95/include/MKncurses_def.sh, src/ncurses-6.6/Ada95/src/library-cfg.sh, src/ncurses-6.6/Ada95/configure.in, src/ncurses-6.6/include/MKkey_defs.sh...
[0/10] Reviewing src/ncurses-6.6/Ada95/include/MKncurses_def.sh, src/ncurses-6.6/Ada95/src/library-cfg.sh, src/ncurses-6.6/Ada95/configure.in, src/ncurses-6.6/include/MKkey_defs.sh, src/ncurses-6.6/c++/edit_cfg.sh...
[0/10] Reviewing src/ncurses-6.6/Ada95/include/MKncurses_def.sh, src/ncurses-6.6/Ada95/src/library-cfg.sh, src/ncurses-6.6/Ada95/configure.in, src/ncurses-6.6/include/MKkey_defs.sh, src/ncurses-6.6/c++/edit_cfg.sh, src/ncurses-6.6/include/MKparametrized.sh...
[0/10] Reviewing src/ncurses-6.6/Ada95/include/MKncurses_def.sh, src/ncurses-6.6/Ada95/src/library-cfg.sh, src/ncurses-6.6/Ada95/configure.in, src/ncurses-6.6/include/MKkey_defs.sh, src/ncurses-6.6/c++/edit_cfg.sh, src/ncurses-6.6/include/MKparametrized.sh, src/ncurses-6.6/man/MKterminfo.sh...
[0/10] Reviewing src/ncurses-6.6/Ada95/include/MKncurses_def.sh, src/ncurses-6.6/Ada95/src/library-cfg.sh, src/ncurses-6.6/Ada95/configure.in, src/ncurses-6.6/include/MKkey_defs.sh, src/ncurses-6.6/c++/edit_cfg.sh, src/ncurses-6.6/include/MKparametrized.sh, src/ncurses-6.6/man/MKterminfo.sh, src/ncurses-6.6/include/MKhashsize.sh...
[0/10] Reviewing src/ncurses-6.6/Ada95/include/MKncurses_def.sh, src/ncurses-6.6/Ada95/src/library-cfg.sh, src/ncurses-6.6/Ada95/configure.in, src/ncurses-6.6/include/MKkey_defs.sh, src/ncurses-6.6/c++/edit_cfg.sh, src/ncurses-6.6/include/MKparametrized.sh, src/ncurses-6.6/man/MKterminfo.sh, src/ncurses-6.6/include/MKhashsize.sh, src/ncurses-6.6/ncurses/base/MKlib_gen.sh...
[0/10] Reviewing src/ncurses-6.6/Ada95/include/MKncurses_def.sh, src/ncurses-6.6/Ada95/src/library-cfg.sh, src/ncurses-6.6/Ada95/configure.in, src/ncurses-6.6/include/MKkey_defs.sh, src/ncurses-6.6/c++/edit_cfg.sh, src/ncurses-6.6/include/MKparametrized.sh, src/ncurses-6.6/man/MKterminfo.sh, src/ncurses-6.6/include/MKhashsize.sh, src/ncurses-6.6/ncurses/base/MKlib_gen.sh, src/ncurses-6.6/ncurses/tinfo/MKfallback.sh...
LLM auditresponse for edit_cfg.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script `edit_cfg.sh` performs a standard substitution of autoconf-generated definitions from `ncurses_cfg.h` into `etip.h`. It uses only basic shell utilities (`grep`, `sed`, `cmp`, `mv`, `rm`) and does not initiate any network requests, download external code, execute base64 or eval, or manipulate files outside its intended scope. All operations are confined to the two files passed as arguments, which are part of the ncurses build system. There is no obfuscation, no unexpected data exfiltration, and no deviation from normal packaging practices. The file is a legitimate upstream build helper, not a supply-chain attack.
</details>
<summary>Standard build configuration script, no malicious behavior.</summary>
</security_assessment>

[1/10] Reviewing src/ncurses-6.6/Ada95/include/MKncurses_def.sh, src/ncurses-6.6/Ada95/src/library-cfg.sh, src/ncurses-6.6/Ada95/configure.in, src/ncurses-6.6/include/MKkey_defs.sh, src/ncurses-6.6/include/MKparametrized.sh, src/ncurses-6.6/man/MKterminfo.sh, src/ncurses-6.6/include/MKhashsize.sh, src/ncurses-6.6/ncurses/base/MKlib_gen.sh, src/ncurses-6.6/ncurses/tinfo/MKfallback.sh...
+ Reviewed src/ncurses-6.6/c++/edit_cfg.sh. Status: SAFE -- Standard build configuration script, no malicious behavior.
LLM auditresponse for configure.in:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard autoconf configuration input (`configure.in`) for the AdaCurses package (Ada bindings for ncurses). It contains only well-known autoconf macros (`AC_ARG_ENABLE`, `AC_SUBST`, `AC_DEFINE`, `CF_PROG_*`, etc.) used to detect compiler features, set build options, and generate makefiles. There is no evidence of obfuscated code, network requests, data exfiltration, backdoors, or any behavior outside the normal scope of a build configuration script. The file is consistent with upstream ncurses packaging and does not present a supply-chain attack vector.
</details>
<summary>Standard autoconf input; no malicious behavior detected.</summary>
</security_assessment>

[2/10] Reviewing src/ncurses-6.6/Ada95/include/MKncurses_def.sh, src/ncurses-6.6/Ada95/src/library-cfg.sh, src/ncurses-6.6/include/MKkey_defs.sh, src/ncurses-6.6/include/MKparametrized.sh, src/ncurses-6.6/man/MKterminfo.sh, src/ncurses-6.6/include/MKhashsize.sh, src/ncurses-6.6/ncurses/base/MKlib_gen.sh, src/ncurses-6.6/ncurses/tinfo/MKfallback.sh...
+ Reviewed src/ncurses-6.6/Ada95/configure.in. Status: SAFE -- Standard autoconf input; no malicious behavior detected.
LLM auditresponse for MKhashsize.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script (`MKhashsize.sh`) is a standard build helper from the ncurses project. It reads capability definition files, filters out comments and special directives, counts lines, and generates C header defines for hash table sizes. There are no network calls, no obfuscated code, no file operations outside the build context, and no use of dangerous commands like `eval`, `curl`, or `wget`. The script only uses `cat`, `grep`, `wc`, and `echo` to produce a header file. This behavior is entirely consistent with normal upstream packaging and poses no security threat.
</details>
<summary>
Standard build helper script, no malicious content.</summary>
</security_assessment>

[3/10] Reviewing src/ncurses-6.6/Ada95/include/MKncurses_def.sh, src/ncurses-6.6/Ada95/src/library-cfg.sh, src/ncurses-6.6/include/MKkey_defs.sh, src/ncurses-6.6/include/MKparametrized.sh, src/ncurses-6.6/man/MKterminfo.sh, src/ncurses-6.6/ncurses/base/MKlib_gen.sh, src/ncurses-6.6/ncurses/tinfo/MKfallback.sh...
+ Reviewed src/ncurses-6.6/include/MKhashsize.sh. Status: SAFE -- Standard build helper script, no malicious content.
LLM auditresponse for MKterminfo.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script `MKterminfo.sh` is a standard build-time tool from the upstream ncurses source distribution. It processes tabular `Caps` data to generate the `terminfo(5)` man page. All operations are limited to text processing using common shell utilities (`sed`, `sort`, `cat`, `tr`, etc.) on locally provided input files. There are no network requests (`curl`, `wget`), no execution of downloaded code, no obfuscation or encoded payloads, and no manipulation of system files outside the build environment. Temporary file creation uses `mktemp` and proper cleanup is enforced via `trap`. This is normal packaging infrastructure and contains no malicious code.
</details>
<summary>
Legitimate upstream build script; no security concerns.</summary>
</security_assessment>

[4/10] Reviewing src/ncurses-6.6/Ada95/include/MKncurses_def.sh, src/ncurses-6.6/Ada95/src/library-cfg.sh, src/ncurses-6.6/include/MKkey_defs.sh, src/ncurses-6.6/include/MKparametrized.sh, src/ncurses-6.6/ncurses/base/MKlib_gen.sh, src/ncurses-6.6/ncurses/tinfo/MKfallback.sh...
+ Reviewed src/ncurses-6.6/man/MKterminfo.sh. Status: SAFE -- Legitimate upstream build script; no security concerns.
LLM auditresponse for MKncurses_def.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script `MKncurses_def.sh` is a standard build helper for the ncurses library. It reads a definitions file (`ncurses_defs`) and generates a C header with `#ifndef` / `#define` fallback blocks to silence `-Wundef` warnings. No network requests, obfuscated code, dangerous command substitution, or unusual file operations are present. The script uses `awk` and standard shell constructs in a transparent manner. There are no supply-chain attack indicators; it is a routine part of the ncurses build system.
</details>
<summary>
Standard ncurses build script; no security concerns.</summary>
</security_assessment>

[5/10] Reviewing src/ncurses-6.6/Ada95/src/library-cfg.sh, src/ncurses-6.6/include/MKkey_defs.sh, src/ncurses-6.6/include/MKparametrized.sh, src/ncurses-6.6/ncurses/base/MKlib_gen.sh, src/ncurses-6.6/ncurses/tinfo/MKfallback.sh...
+ Reviewed src/ncurses-6.6/Ada95/include/MKncurses_def.sh. Status: SAFE -- Standard ncurses build script; no security concerns.
LLM auditresponse for MKlib_gen.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard build-time code generation script from the upstream ncurses project. It uses `sed`, `awk`, and the C preprocessor (`cpp`) to generate C source files from macro definitions in `curses.h`. There are no network requests, no downloads, no obfuscated code, no exfiltration of data, and no unexpected system modifications. The script creates temporary files with a PID suffix and cleans them up via `trap`. The only external commands are standard Unix tools and the preprocessor, all invoked with expected arguments for building ncurses. No malicious or suspicious behavior is present.
</details>
<summary>Standard ncurses build script, no security issues.</summary>
</security_assessment>

[6/10] Reviewing src/ncurses-6.6/Ada95/src/library-cfg.sh, src/ncurses-6.6/include/MKkey_defs.sh, src/ncurses-6.6/include/MKparametrized.sh, src/ncurses-6.6/ncurses/tinfo/MKfallback.sh...
+ Reviewed src/ncurses-6.6/ncurses/base/MKlib_gen.sh. Status: SAFE -- Standard ncurses build script, no security issues.
LLM auditresponse for MKkey_defs.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a standard build-time helper from the ncurses project. It processes a Caps file (terminal capability data) to generate C preprocessor definitions for function keys in `curses.h`. The script uses only basic Unix utilities (`awk`, `sed`, `sort`, `cat`, `trap`) and no network requests, obfuscation, or dangerous operations. Temporary files are created with predictable names and cleaned up via `trap` on exit, which is normal practice. The copyright and comments are consistent with the upstream ncurses source. There is no evidence of malicious code, data exfiltration, or supply-chain attack.
</details>
<summary>Safe; standard ncurses build script for key definitions.</summary>
</security_assessment>

[7/10] Reviewing src/ncurses-6.6/Ada95/src/library-cfg.sh, src/ncurses-6.6/include/MKparametrized.sh, src/ncurses-6.6/ncurses/tinfo/MKfallback.sh...
+ Reviewed src/ncurses-6.6/include/MKkey_defs.sh. Status: SAFE -- Safe; standard ncurses build script for key definitions.
LLM auditresponse for library-cfg.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard upstream script (from the ncurses project) used to patch Ada project files (`.gpr`) for compatibility with certain versions of `gnat`. It performs only local file operations: it reads an input file, creates a temporary `sed` script in the current directory, applies that script with `sed`, removes the temporary file, and exits. There are no network requests, no encoded or obfuscated commands, no execution of downloaded code, and no exfiltration of data. The script uses `rm -f` without confirmation but this is routine cleanup.

The only notable hygiene concern is the use of a fixed-name temporary file (`library-cfg.tmp`) in the current working directory, which could be susceptible to a symbolic link attack if the build environment is untrusted. However, this is a build-time script run in a controlled package build environment, and it does not perform any action that rises to the level of malicious intent. The script is consistent with standard packaging behavior and contains no supply-chain attack indicators.
</details>
<summary>
Safe: upstream ncurses script, no malicious behavior found.
</summary>
</security_assessment>

[8/10] Reviewing src/ncurses-6.6/include/MKparametrized.sh, src/ncurses-6.6/ncurses/tinfo/MKfallback.sh...
+ Reviewed src/ncurses-6.6/Ada95/src/library-cfg.sh. Status: SAFE -- Safe: upstream ncurses script, no malicious behavior found.
LLM auditresponse for MKfallback.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is an upstream build helper script from the ncurses project (`MKfallback.sh`). It generates a C source file containing fallback terminfo entries for terminal types specified as arguments.  

The script:
- Accepts paths for `tic` and `infocmp` tools (reasonable for a build) and prepends a directory to `$PATH` if the path is absolute — this is standard **upstream** behavior for locating utilities during cross-compilation or custom builds.
- Creates a temporary directory, compiles a terminfo source via `tic`, then uses `infocmp` to generate embedded C structures.
- Cleans up the temporary directory afterwards.
- Makes no network requests, no downloads, no obfuscated code, no remote execution, and no modification of system files outside the build tree.

The unusual `#(vi` on the `case` line is simply a shell comment (the `#` makes the rest of that line inert); the next line `/*)` is the actual case pattern. This is a cosmetic quirk, not an obfuscation or malicious attempt.  

There is no evidence of supply-chain attack, backdoor, credential theft, or any deviation from standard packaging practices. The file is exactly the upstream version shipped with ncurses.
</details>
<summary>Upstream build helper; no malicious behavior found.</summary>
</security_assessment>

[9/10] Reviewing src/ncurses-6.6/include/MKparametrized.sh...
+ Reviewed src/ncurses-6.6/ncurses/tinfo/MKfallback.sh. Status: SAFE -- Upstream build helper; no malicious behavior found.
LLM auditresponse for MKparametrized.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard upstream script from the ncurses project (`MKparametrized.sh`) that generates C source code for internal use. It reads terminfo/termcap capability files (by default "Caps") and outputs an array of flags. There are no network operations, no obfuscation, no dangerous commands (eval, base64, curl, wget), and no unexpected file modifications outside the build directory. The script's behavior is fully documented and consistent with normal packaging and build practices.
</details>
<summary>Standard ncurses source generation script; no security issues.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/ncurses-6.6/include/MKparametrized.sh. Status: SAFE -- Standard ncurses source generation script; no security issues.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
(Skipped 1 file: ncurses-6.6.tar.gz.sig)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 47,845
  Completion Tokens: 8,763
  Total Tokens: 56,608
  Total Cost: $0.005883
  Execution Time: 94.33 seconds
Full audit report can be found in /tmp/aur-sleuth/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-ncurses5-compat-libs.txt
Final Status: SAFE


No issues found.


Audit Skips:

/tmp/aur-sleuth/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-jrds0g4n/ncurses-6.6.tar.gz.sig: [SKIPPED] Skipping binary file: ncurses-6.6.tar.gz.sig
