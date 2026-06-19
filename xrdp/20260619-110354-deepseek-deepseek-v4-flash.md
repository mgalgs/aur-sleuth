---
package: xrdp
pkgver: 0.10.6
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 11c93a0c95e2166961e3664fea6b5a63827ded10
prompt_tokens: 79821
completion_tokens: 7580
total_tokens: 87401
cost: 0.00854829
execution_time: 101.02
files_reviewed: 13
files_skipped: 0
date: 2026-06-19T11:03:54Z
file_verdicts:
  - file: xrdp.install
    status: safe
    summary: Standard xrdp install script; no malicious code.
  - file: arch-config.diff
    status: safe
    summary: Standard configuration patch for Arch Linux support.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR packaging, no malicious code.
  - file: src/xrdp-0.10.6/sesman/reconnectwm.sh
    status: safe
    summary: Empty placeholder script with no commands.
  - file: src/xrdp-0.10.6/configure.ac
    status: safe
    summary: Standard autoconf build configuration, no malicious content.
  - file: src/xrdp-0.10.6/common/trans.c
    status: safe
    summary: Legitimate xrdp transport layer code, no malicious behavior.
  - file: src/xrdp-0.10.6/genkeymap/dump-keymaps.sh
    status: safe
    summary: Legitimate keymap generation script; no malicious behavior.
  - file: src/xrdp-0.10.6/Makefile.am
    status: safe
    summary: Standard build file; no security concerns.
  - file: src/xrdp-0.10.6/common/base64.c
    status: safe
    summary: Standard base64 library code, no security issues.
  - file: src/xrdp-0.10.6/sesman/startwm.sh
    status: safe
    summary: Standard xrdp session startup script, no malicious behavior.
  - file: src/xrdp-0.10.6/common/os_calls.c
    status: safe
    summary: No malicious code; standard xrdp system call wrappers.
  - file: src/xrdp-0.10.6/librfxcodec/src/nasm_lt.sh
    status: safe
    summary: Standard NASM wrapper script; no malicious behavior.
  - file: src/xrdp-0.10.6/common/ssl_calls.c
    status: safe
    summary: Normal xrdp source file, no malicious indicators.
---

Cloning https://aur.archlinux.org/xrdp.git to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-k0ri7bax...
Cloned repository to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-k0ri7bax
Analyzing xrdp AUR package (working in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-k0ri7bax) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard packaging elements. The global scope defines sources, checksums, dependencies, and metadata. No top-level command substitutions, dangerous commands (like `curl`, `wget`, `eval`), or obfuscated code are present. The `source` array fetches the xrdp tarball from the official GitHub releases URL and a local diff file, both with pinned SHA-256 checksums. The `pkgver()` function is absent, so no code executes during sourcing beyond variable assignments. The `prepare()`, `build()`, and `package()` functions are not executed by the specified `makepkg` commands (`--nobuild --nodeps --noprepare`), and they contain only expected build/install operations. There is no evidence of malicious behavior.
</details>
<summary>Standard PKGBUILD, no dangerous top-level code.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- Standard PKGBUILD, no dangerous top-level code.[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/3] Reviewing PKGBUILD...
[0/3] Reviewing PKGBUILD, arch-config.diff...
[0/3] Reviewing PKGBUILD, arch-config.diff, xrdp.install...
LLM auditresponse for xrdp.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Arch Linux `.install` script for the xrdp package. It handles key generation during installation/upgrade and key removal during removal. All file operations are confined to xrdp's own configuration directory (`/etc/xrdp/rsakeys.ini`). The `xrdp-keygen` command is the upstream tool provided by the package itself. There are no network requests, obfuscated code, or any deviation from normal packaging practices. No malicious behavior detected.
</details>
<summary>Standard xrdp install script; no malicious code.</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, arch-config.diff...
+ Reviewed xrdp.install. Status: SAFE -- Standard xrdp install script; no malicious code.
LLM auditresponse for arch-config.diff:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a patch (`arch-config.diff`) that modifies the xrdp session manager's `startwm.sh` script to support Arch Linux's display environment. The changes are:

- Switch from sourcing `/etc/default/locale` to `/etc/locale.conf` (Arch's locale configuration file).
- Add blocks to source the user's `~/.xinitrc` and the system `/etc/X11/xinit/xinitrc` if they exist, which is the standard Arch way to start a desktop environment or window manager.

These modifications are standard and expected for integrating xrdp with Arch Linux. There is no obfuscated code, no network requests, no data exfiltration, no execution of untrusted content, and no deviation from normal packaging practices. The patch does exactly what it advertises: adapting the xrdp session manager to the Arch environment.
</details>
<summary>
Standard configuration patch for Arch Linux support.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed arch-config.diff. Status: SAFE -- Standard configuration patch for Arch Linux support.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices. It fetches the source tarball from the official upstream GitHub releases page (https://github.com/neutrinolabs/xrdp) with a pinned version and verifiable checksums. The build and install steps are typical autotools-based procedures (./configure, make, make install) with no evidence of obfuscation, backdoors, or exfiltration. The patch (arch-config.diff) is included in the source array and applied with fixed options. There are no dynamic downloads, curl|bash patterns, or encoded commands. The file is consistent with a normal AUR package for the xrdp remote desktop server.
</details>
<summary>Standard AUR packaging, no malicious code.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR packaging, no malicious code.
Reviewed all required files.
Deciding which files to review next...
Note: 676 files available for selection; offering the 50 highest-priority to the model. 458 lower-priority file(s) were not offered.
LLM response for file selection:
src/xrdp-0.10.6/Makefile.am
src/xrdp-0.10.6/configure.ac
src/xrdp-0.10.6/genkeymap/dump-keymaps.sh
src/xrdp-0.10.6/librfxcodec/src/nasm_lt.sh
src/xrdp-0.10.6/sesman/reconnectwm.sh
src/xrdp-0.10.6/sesman/startwm.sh
src/xrdp-0.10.6/common/ssl_calls.c
src/xrdp-0.10.6/common/os_calls.c
src/xrdp-0.10.6/common/trans.c
src/xrdp-0.10.6/common/base64.c
Decided to review 10 additional files: src/xrdp-0.10.6/Makefile.am, src/xrdp-0.10.6/configure.ac, src/xrdp-0.10.6/genkeymap/dump-keymaps.sh, src/xrdp-0.10.6/librfxcodec/src/nasm_lt.sh, src/xrdp-0.10.6/sesman/reconnectwm.sh, src/xrdp-0.10.6/sesman/startwm.sh, src/xrdp-0.10.6/common/ssl_calls.c, src/xrdp-0.10.6/common/os_calls.c, src/xrdp-0.10.6/common/trans.c, src/xrdp-0.10.6/common/base64.c
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/xrdp-0.10.6/configure.ac...
[0/10] Reviewing src/xrdp-0.10.6/configure.ac, src/xrdp-0.10.6/Makefile.am...
[0/10] Reviewing src/xrdp-0.10.6/configure.ac, src/xrdp-0.10.6/Makefile.am, src/xrdp-0.10.6/genkeymap/dump-keymaps.sh...
[0/10] Reviewing src/xrdp-0.10.6/configure.ac, src/xrdp-0.10.6/Makefile.am, src/xrdp-0.10.6/genkeymap/dump-keymaps.sh, src/xrdp-0.10.6/librfxcodec/src/nasm_lt.sh...
[0/10] Reviewing src/xrdp-0.10.6/configure.ac, src/xrdp-0.10.6/Makefile.am, src/xrdp-0.10.6/genkeymap/dump-keymaps.sh, src/xrdp-0.10.6/librfxcodec/src/nasm_lt.sh, src/xrdp-0.10.6/sesman/reconnectwm.sh...
[0/10] Reviewing src/xrdp-0.10.6/configure.ac, src/xrdp-0.10.6/Makefile.am, src/xrdp-0.10.6/genkeymap/dump-keymaps.sh, src/xrdp-0.10.6/librfxcodec/src/nasm_lt.sh, src/xrdp-0.10.6/sesman/reconnectwm.sh, src/xrdp-0.10.6/sesman/startwm.sh...
[0/10] Reviewing src/xrdp-0.10.6/configure.ac, src/xrdp-0.10.6/Makefile.am, src/xrdp-0.10.6/genkeymap/dump-keymaps.sh, src/xrdp-0.10.6/librfxcodec/src/nasm_lt.sh, src/xrdp-0.10.6/sesman/reconnectwm.sh, src/xrdp-0.10.6/sesman/startwm.sh, src/xrdp-0.10.6/common/ssl_calls.c...
[0/10] Reviewing src/xrdp-0.10.6/configure.ac, src/xrdp-0.10.6/Makefile.am, src/xrdp-0.10.6/genkeymap/dump-keymaps.sh, src/xrdp-0.10.6/librfxcodec/src/nasm_lt.sh, src/xrdp-0.10.6/sesman/reconnectwm.sh, src/xrdp-0.10.6/sesman/startwm.sh, src/xrdp-0.10.6/common/ssl_calls.c, src/xrdp-0.10.6/common/base64.c...
[0/10] Reviewing src/xrdp-0.10.6/configure.ac, src/xrdp-0.10.6/Makefile.am, src/xrdp-0.10.6/genkeymap/dump-keymaps.sh, src/xrdp-0.10.6/librfxcodec/src/nasm_lt.sh, src/xrdp-0.10.6/sesman/reconnectwm.sh, src/xrdp-0.10.6/sesman/startwm.sh, src/xrdp-0.10.6/common/ssl_calls.c, src/xrdp-0.10.6/common/base64.c, src/xrdp-0.10.6/common/trans.c...
[0/10] Reviewing src/xrdp-0.10.6/configure.ac, src/xrdp-0.10.6/Makefile.am, src/xrdp-0.10.6/genkeymap/dump-keymaps.sh, src/xrdp-0.10.6/librfxcodec/src/nasm_lt.sh, src/xrdp-0.10.6/sesman/reconnectwm.sh, src/xrdp-0.10.6/sesman/startwm.sh, src/xrdp-0.10.6/common/ssl_calls.c, src/xrdp-0.10.6/common/base64.c, src/xrdp-0.10.6/common/trans.c, src/xrdp-0.10.6/common/os_calls.c...
LLM auditresponse for reconnectwm.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The file contains only a shebang and a comment. No executable code or commands are present. It is a placeholder for user-defined reconnection procedures and poses no security threat.
</details>
<summary>Empty placeholder script with no commands.</summary>
</security_assessment>

[1/10] Reviewing src/xrdp-0.10.6/configure.ac, src/xrdp-0.10.6/Makefile.am, src/xrdp-0.10.6/genkeymap/dump-keymaps.sh, src/xrdp-0.10.6/librfxcodec/src/nasm_lt.sh, src/xrdp-0.10.6/sesman/startwm.sh, src/xrdp-0.10.6/common/ssl_calls.c, src/xrdp-0.10.6/common/base64.c, src/xrdp-0.10.6/common/trans.c, src/xrdp-0.10.6/common/os_calls.c...
+ Reviewed src/xrdp-0.10.6/sesman/reconnectwm.sh. Status: SAFE -- Empty placeholder script with no commands.
LLM auditresponse for configure.ac:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard autoconf configure.ac file for the xrdp remote desktop server package. It performs typical build-system tasks: checking for compilers, libraries (OpenSSL, PAM, libjpeg, FUSE, etc.), optional feature flags, and generating Makefiles. There are no network requests, obfuscated code, or unexpected system modifications. The only file output is writing build options to `./xrdp_configure_options.h`, which is a normal part of recording configure decisions. All dependencies are resolved via the package manager (`pkg-config`) or standard header checks. No evidence of supply-chain attack or malicious behavior is present.

The file is consistent with upstream xrdp's build system and does not contain any injected code that deviates from the project's stated purpose.
</details>
<summary>Standard autoconf build configuration, no malicious content.</summary>
</security_assessment>

[2/10] Reviewing src/xrdp-0.10.6/Makefile.am, src/xrdp-0.10.6/genkeymap/dump-keymaps.sh, src/xrdp-0.10.6/librfxcodec/src/nasm_lt.sh, src/xrdp-0.10.6/sesman/startwm.sh, src/xrdp-0.10.6/common/ssl_calls.c, src/xrdp-0.10.6/common/base64.c, src/xrdp-0.10.6/common/trans.c, src/xrdp-0.10.6/common/os_calls.c...
+ Reviewed src/xrdp-0.10.6/configure.ac. Status: SAFE -- Standard autoconf build configuration, no malicious content.
LLM auditresponse for trans.c:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard C source file from the xrdp project, implementing transport-layer abstractions (TCP, TLS, Unix sockets). The code is well-structured, includes proper error handling, and even contains a fix for CVE-2022-23479 (bounds checking on `header_size`). There are no obfuscated strings, no encoded commands, no unexpected network requests, no file exfiltration, and no execution of external code. All operations (socket creation, connect, listen, send/recv, TLS setup) are normal for a network server library. No supply-chain attack indicators are present.
</details>
<summary>Legitimate xrdp transport layer code, no malicious behavior.</summary>
</security_assessment>

[3/10] Reviewing src/xrdp-0.10.6/Makefile.am, src/xrdp-0.10.6/genkeymap/dump-keymaps.sh, src/xrdp-0.10.6/librfxcodec/src/nasm_lt.sh, src/xrdp-0.10.6/sesman/startwm.sh, src/xrdp-0.10.6/common/ssl_calls.c, src/xrdp-0.10.6/common/base64.c, src/xrdp-0.10.6/common/os_calls.c...
+ Reviewed src/xrdp-0.10.6/common/trans.c. Status: SAFE -- Legitimate xrdp transport layer code, no malicious behavior.
LLM auditresponse for dump-keymaps.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a build-time utility for the xrdp remote desktop server. It iterates through various keyboard layouts, temporarily switches to each layout using `setxkbmap`, and generates the corresponding keymap file by invoking a local binary `./xrdp-genkeymap`. The only external commands are standard X11 utilities (`setxkbmap`) and shell text processing tools (`sed`, `xargs`). There is no network activity, no exfiltration of data, no obfuscated code, and no installation of persistent backdoors. The script restores the original keyboard settings at the end (for the Dvorak variant, it saves and restores settings via `OLD_SETTINGS`). All operations are consistent with the stated purpose of generating keymap configuration files for xrdp.
</details>
<summary>Legitimate keymap generation script; no malicious behavior.</summary>
</security_assessment>

[4/10] Reviewing src/xrdp-0.10.6/Makefile.am, src/xrdp-0.10.6/librfxcodec/src/nasm_lt.sh, src/xrdp-0.10.6/sesman/startwm.sh, src/xrdp-0.10.6/common/ssl_calls.c, src/xrdp-0.10.6/common/base64.c, src/xrdp-0.10.6/common/os_calls.c...
+ Reviewed src/xrdp-0.10.6/genkeymap/dump-keymaps.sh. Status: SAFE -- Legitimate keymap generation script; no malicious behavior.
LLM auditresponse for Makefile.am:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Automake Makefile.am for the xrdp project. It defines build flags, subdirectory lists with conditionals (e.g., for optional components like neutrinordp, xrdpvr, libpainter, librfxcodec, ulalaca), and a distclean rule. There are no network operations, no encoded/obfuscated commands, no file exfiltration, and no unexpected system modifications. The file follows normal packaging practices and contains no evidence of malicious code injection.
</details>
<summary>Standard build file; no security concerns.</summary>
</security_assessment>

[5/10] Reviewing src/xrdp-0.10.6/librfxcodec/src/nasm_lt.sh, src/xrdp-0.10.6/sesman/startwm.sh, src/xrdp-0.10.6/common/ssl_calls.c, src/xrdp-0.10.6/common/base64.c, src/xrdp-0.10.6/common/os_calls.c...
+ Reviewed src/xrdp-0.10.6/Makefile.am. Status: SAFE -- Standard build file; no security concerns.
LLM auditresponse for base64.c:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard base64 encoder/decoder implementation (common/base64.c) from the xrdp project. It contains no network requests, obfuscated code, dangerous commands (eval/curl/wget), or unexpected system modifications. The code is well-structured, licensed under Apache 2.0, and performs only character encoding/decoding operations. No evidence of supply-chain compromise or malicious behavior is present. The file is consistent with legitimate packaging practices and serves its stated purpose.
</details>
<summary>Standard base64 library code, no security issues.</summary>
</security_assessment>

[6/10] Reviewing src/xrdp-0.10.6/librfxcodec/src/nasm_lt.sh, src/xrdp-0.10.6/sesman/startwm.sh, src/xrdp-0.10.6/common/ssl_calls.c, src/xrdp-0.10.6/common/os_calls.c...
+ Reviewed src/xrdp-0.10.6/common/base64.c. Status: SAFE -- Standard base64 library code, no security issues.
LLM auditresponse for startwm.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script `startwm.sh` is a standard X session startup script used by xrdp. It sources system-wide profiles (`/etc/profile`, `/etc/X11/Xsession`) and user dot files (`~/.bash_profile`, etc.), which is expected behavior for a login session handler. It also reads `.desktop` files from `/usr/share/xsessions/` to determine the session startup command, following XDG conventions. There are no network requests, no obfuscated code, no downloads, no execution of untrusted external content, and no modifications to system files outside of normal session initialization. All operations are consistent with a legitimate session manager startup script. No evidence of a supply-chain attack or malicious injection.
</details>
<summary>Standard xrdp session startup script, no malicious behavior.</summary>
</security_assessment>

[7/10] Reviewing src/xrdp-0.10.6/librfxcodec/src/nasm_lt.sh, src/xrdp-0.10.6/common/ssl_calls.c, src/xrdp-0.10.6/common/os_calls.c...
+ Reviewed src/xrdp-0.10.6/sesman/startwm.sh. Status: SAFE -- Standard xrdp session startup script, no malicious behavior.
LLM auditresponse for os_calls.c:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard source code file from the xrdp project (Apache 2.0 licensed). It provides OS abstraction wrappers for sockets, files, processes, and other system calls. The suspicious pattern matches reported (lines containing "exec", "execvp") are part of normal process spawning functionality required by a remote desktop server (e.g., launching user sessions). There is no obfuscated code, no unexpected network requests, no base64-encoded payloads, or any other indicators of a supply-chain attack. All operations serve the legitimate purpose of the xrdp package.
</details>
<summary>No malicious code; standard xrdp system call wrappers.</summary>
</security_assessment>

[8/10] Reviewing src/xrdp-0.10.6/librfxcodec/src/nasm_lt.sh, src/xrdp-0.10.6/common/ssl_calls.c...
+ Reviewed src/xrdp-0.10.6/common/os_calls.c. Status: SAFE -- No malicious code; standard xrdp system call wrappers.
LLM auditresponse for nasm_lt.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script (`nasm_lt.sh`) is a wrapper that translates GCC-style command-line flags into NASM-compatible flags. It is a commonly used helper in packages that need to build assembly files with NASM but whose build systems (e.g., configure/make) invoke the assembler with GCC arguments. The script simply iterates through arguments, strips or converts relevant flags (e.g., `-DPIC`, include paths, output specifiers), and assembles a final `nasm` command that is executed with `exec`. There are no network requests, no downloads, no obfuscated or encoded commands, and no operations that exfiltrate data or modify system files outside the build process. The use of unquoted variable expansions in `exec $command` is a minor shell scripting style concern, but it is typical for such build helpers and not indicative of malicious intent. The file performs exactly the function its name implies and does not deviate from standard packaging practices.
</details>
<summary>Standard NASM wrapper script; no malicious behavior.</summary>
</security_assessment>

[9/10] Reviewing src/xrdp-0.10.6/common/ssl_calls.c...
+ Reviewed src/xrdp-0.10.6/librfxcodec/src/nasm_lt.sh. Status: SAFE -- Standard NASM wrapper script; no malicious behavior.
LLM auditresponse for ssl_calls.c:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard C source file from the xrdp project, implementing TLS and SSL encryption functions. It uses OpenSSL APIs in a normal way for cryptographic operations (RSA key generation, RC4, SHA1, MD5, HMAC, etc.), TLS connection establishment, and certificate handling. There is no obfuscated code, no unexpected network requests, no downloads, and no attempts to exfiltrate data. The code follows the expected pattern for a package like xrdp. No evidence of a supply-chain attack or malicious intent.
</details>
<summary>
Normal xrdp source file, no malicious indicators.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/xrdp-0.10.6/common/ssl_calls.c. Status: SAFE -- Normal xrdp source file, no malicious indicators.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 79,821
  Completion Tokens: 7,580
  Total Tokens: 87,401
  Total Cost: $0.008548
  Execution Time: 101.02 seconds
Full audit report can be found in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-xrdp.txt
Final Status: SAFE


No issues found.
