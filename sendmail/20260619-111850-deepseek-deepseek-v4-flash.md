---
package: sendmail
pkgver: 8.18.2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 11c93a0c95e2166961e3664fea6b5a63827ded10
prompt_tokens: 37380
completion_tokens: 6897
total_tokens: 44277
cost: 0.00460566
execution_time: 85.11
files_reviewed: 12
files_skipped: 0
date: 2026-06-19T11:18:50Z
file_verdicts:
  - file: sm-client.service
    status: safe
    summary: Standard systemd unit for Sendmail client; no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard sendmail PKGBUILD, no security issues.
  - file: sendmail.service
    status: safe
    summary: Standard systemd service file for Sendmail; no security issues.
  - file: Patch02-Allow-setting-local-CFLAGS-devtools-M4-UNIX-defines.patch
    status: safe
    summary: Build system tweak, no security concerns.
  - file: sendmail-8.17.2-sasl2-in-etc.patch
    status: safe
    summary: Standard config path relocation; no malicious code.
  - file: sasl2.conf
    status: safe
    summary: Static SASL config, no security issues.
  - file: src/sendmail-8.18.2/Makefile
    status: safe
    summary: Standard sendmail build Makefile, no malicious activity detected.
  - file: src/sendmail-8.18.2/cf/sh/makeinfo.sh
    status: safe
    summary: Build info script; no malicious content found.
  - file: src/sendmail-8.18.2/editmap/editmap.c
    status: safe
    summary: Standard sendmail map editing utility, no malicious code found.
  - file: sendmail.conf
    status: safe
    summary: Standard sendmail configuration file, no security issues.
  - file: src/sendmail-8.18.2/devtools/bin/install.sh
    status: safe
    summary: Standard install script, no malicious behavior.
  - file: src/sendmail-8.18.2/devtools/bin/configure.sh
    status: safe
    summary: Standard upstream configure script; no signs of malicious code.
---

Cloning https://aur.archlinux.org/sendmail.git to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-ay3q2v8k...
Cloned repository to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-ay3q2v8k
Analyzing sendmail AUR package (working in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-ay3q2v8k) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable assignments, arrays for sources and checksums, and simple arithmetic expansion in the `provides` array. There is no `pkgver()` function, and no command substitutions, external commands, or downloads executed at global scope. The source array points to the official upstream FTP server and local patch files. All top-level code is benign and does not perform any network activity or system modifications beyond what `makepkg` would normally initiate to fetch the declared sources. Therefore, running `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo` is safe.
</details>
<summary>No dangerous top-level code; safe to fetch sources.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- No dangerous top-level code; safe to fetch sources.[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, sm-client.service...
LLM auditresponse for sm-client.service:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard systemd service unit for the Sendmail mail transport client. It defines dependencies, a fork-type service, a PID file location, and an `ExecStartPre` command that removes stale lock files (`/var/spool/mqueue/xf*`) — a routine and expected cleanup for a Mail Transport Agent (MTA). The `ExecStart` runs `/usr/sbin/sendmail` with configuration options from an environment file. There is no evidence of malicious activity: no network requests, obfuscated code, data exfiltration, or unusual system modifications. The content is consistent with normal packaging practices for a mail server.
</details>
<summary>Standard systemd unit for Sendmail client; no malicious content.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed sm-client.service. Status: SAFE -- Standard systemd unit for Sendmail client; no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for the well-known `sendmail` MTA. All sources are downloaded from the official upstream `ftp.sendmail.org`, with a valid PGP signature check (using a 2024 upstream key) and SHA-256 hashes for all non-signature tarballs (the `.sig` file appropriately uses `SKIP`). The `prepare()` and `build()` functions only apply upstream patches and run the standard `./Build` system; no unexpected network requests, code execution, obfuscation, or data exfiltration is present. The `package()` function installs files and services into standard system paths without manipulating data outside the package’s scope. The obfuscated email address in a contributor header comment (`sed 's/[0-9]//g'`) is purely cosmetic metadata and poses no security risk. No malicious or supply‑chain attack indicators are found.
</details>
<summary>Standard sendmail PKGBUILD, no security issues.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard sendmail PKGBUILD, no security issues.
Reviewed all required files.
Deciding which files to review next...
Note: 811 files available for selection; offering the 50 highest-priority to the model. 690 lower-priority file(s) were not offered.
LLM response for file selection:
Patch02-Allow-setting-local-CFLAGS-devtools-M4-UNIX-defines.patch
sendmail-8.17.2-sasl2-in-etc.patch
sendmail.service
src/sendmail-8.18.2/Makefile
src/sendmail-8.18.2/devtools/bin/configure.sh
src/sendmail-8.18.2/devtools/bin/install.sh
src/sendmail-8.18.2/cf/sh/makeinfo.sh
sasl2.conf
sendmail.conf
src/sendmail-8.18.2/editmap/editmap.c
Decided to review 10 additional files: Patch02-Allow-setting-local-CFLAGS-devtools-M4-UNIX-defines.patch, sendmail-8.17.2-sasl2-in-etc.patch, sendmail.service, src/sendmail-8.18.2/Makefile, src/sendmail-8.18.2/devtools/bin/configure.sh, src/sendmail-8.18.2/devtools/bin/install.sh, src/sendmail-8.18.2/cf/sh/makeinfo.sh, sasl2.conf, sendmail.conf, src/sendmail-8.18.2/editmap/editmap.c
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing sendmail-8.17.2-sasl2-in-etc.patch...
[0/10] Reviewing sendmail-8.17.2-sasl2-in-etc.patch, Patch02-Allow-setting-local-CFLAGS-devtools-M4-UNIX-defines.patch...
[0/10] Reviewing sendmail-8.17.2-sasl2-in-etc.patch, Patch02-Allow-setting-local-CFLAGS-devtools-M4-UNIX-defines.patch, sendmail.service...
[0/10] Reviewing sendmail-8.17.2-sasl2-in-etc.patch, Patch02-Allow-setting-local-CFLAGS-devtools-M4-UNIX-defines.patch, sendmail.service, src/sendmail-8.18.2/Makefile...
[0/10] Reviewing sendmail-8.17.2-sasl2-in-etc.patch, Patch02-Allow-setting-local-CFLAGS-devtools-M4-UNIX-defines.patch, sendmail.service, src/sendmail-8.18.2/Makefile, src/sendmail-8.18.2/devtools/bin/configure.sh...
[0/10] Reviewing sendmail-8.17.2-sasl2-in-etc.patch, Patch02-Allow-setting-local-CFLAGS-devtools-M4-UNIX-defines.patch, sendmail.service, src/sendmail-8.18.2/Makefile, src/sendmail-8.18.2/devtools/bin/configure.sh, src/sendmail-8.18.2/cf/sh/makeinfo.sh...
[0/10] Reviewing sendmail-8.17.2-sasl2-in-etc.patch, Patch02-Allow-setting-local-CFLAGS-devtools-M4-UNIX-defines.patch, sendmail.service, src/sendmail-8.18.2/Makefile, src/sendmail-8.18.2/devtools/bin/configure.sh, src/sendmail-8.18.2/cf/sh/makeinfo.sh, sasl2.conf...
[0/10] Reviewing sendmail-8.17.2-sasl2-in-etc.patch, Patch02-Allow-setting-local-CFLAGS-devtools-M4-UNIX-defines.patch, sendmail.service, src/sendmail-8.18.2/Makefile, src/sendmail-8.18.2/devtools/bin/configure.sh, src/sendmail-8.18.2/cf/sh/makeinfo.sh, sasl2.conf, src/sendmail-8.18.2/devtools/bin/install.sh...
[0/10] Reviewing sendmail-8.17.2-sasl2-in-etc.patch, Patch02-Allow-setting-local-CFLAGS-devtools-M4-UNIX-defines.patch, sendmail.service, src/sendmail-8.18.2/Makefile, src/sendmail-8.18.2/devtools/bin/configure.sh, src/sendmail-8.18.2/cf/sh/makeinfo.sh, sasl2.conf, src/sendmail-8.18.2/devtools/bin/install.sh, sendmail.conf...
[0/10] Reviewing sendmail-8.17.2-sasl2-in-etc.patch, Patch02-Allow-setting-local-CFLAGS-devtools-M4-UNIX-defines.patch, sendmail.service, src/sendmail-8.18.2/Makefile, src/sendmail-8.18.2/devtools/bin/configure.sh, src/sendmail-8.18.2/cf/sh/makeinfo.sh, sasl2.conf, src/sendmail-8.18.2/devtools/bin/install.sh, sendmail.conf, src/sendmail-8.18.2/editmap/editmap.c...
LLM auditresponse for sendmail.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit file for the Sendmail mail transport agent. It defines a forking service that starts `/usr/sbin/sendmail -bd` with optional environment‑variable‑driven arguments, runs `/usr/bin/newaliases` before starting, and supports reload via `kill -HUP`. The file contains no network requests, no obfuscated code, no unexpected file operations, and no commands that would exfiltrate data or execute untrusted code. The `sleep 2` in the reload command is a pragmatic workaround for systemd’s asynchronous signal handling, not a security issue. The service follows standard packaging practices and is consistent with the expected behavior of an MTA package.
</details>
<summary>Standard systemd service file for Sendmail; no security issues.</summary>
</security_assessment>

[1/10] Reviewing sendmail-8.17.2-sasl2-in-etc.patch, Patch02-Allow-setting-local-CFLAGS-devtools-M4-UNIX-defines.patch, src/sendmail-8.18.2/Makefile, src/sendmail-8.18.2/devtools/bin/configure.sh, src/sendmail-8.18.2/cf/sh/makeinfo.sh, sasl2.conf, src/sendmail-8.18.2/devtools/bin/install.sh, sendmail.conf, src/sendmail-8.18.2/editmap/editmap.c...
+ Reviewed sendmail.service. Status: SAFE -- Standard systemd service file for Sendmail; no security issues.
LLM auditresponse for Patch02-Allow-setting-local-CFLAGS-devtools-M4-UNIX-defines.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch modifies a single line in `devtools/M4/UNIX/defines.m4` for the sendmail build system, changing the `CFLAGS` assignment from `=` (deferred expansion) to `:=` (immediate expansion). This is a routine build configuration tweak that only affects how the variable is evaluated during compilation. There is no code execution, network access, file manipulation, or any other security-relevant behavior. The patch is purely a packaging/maintenance adjustment with no malicious intent or capability.
</details>
<summary>Build system tweak, no security concerns.</summary>
</security_assessment>

[2/10] Reviewing sendmail-8.17.2-sasl2-in-etc.patch, src/sendmail-8.18.2/Makefile, src/sendmail-8.18.2/devtools/bin/configure.sh, src/sendmail-8.18.2/cf/sh/makeinfo.sh, sasl2.conf, src/sendmail-8.18.2/devtools/bin/install.sh, sendmail.conf, src/sendmail-8.18.2/editmap/editmap.c...
+ Reviewed Patch02-Allow-setting-local-CFLAGS-devtools-M4-UNIX-defines.patch. Status: SAFE -- Build system tweak, no security concerns.
LLM auditresponse for sendmail-8.17.2-sasl2-in-etc.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch changes the behavior of the `safesaslfile` function in `sendmail/usersmtp.c` to allow Sendmail to continue looking for its SASL configuration file if it is missing from `/usr/lib/sasl2/` but expected in `/etc/sasl2/`. The change is purely logical: if the file is not found in the old path (with error ENOENT) and the path starts with `/usr/lib`, it returns `SASL_CONTINUE` instead of failing. This is a standard packaging adjustment to relocate configuration files, not an injection of malicious behavior. There are no network operations, obfuscated code, dangerous commands, or unexpected system modifications. The patch is consistent with typical AUR packaging practices for sendmail.
</details>
<summary>Standard config path relocation; no malicious code.</summary>
</security_assessment>

[3/10] Reviewing src/sendmail-8.18.2/Makefile, src/sendmail-8.18.2/devtools/bin/configure.sh, src/sendmail-8.18.2/cf/sh/makeinfo.sh, sasl2.conf, src/sendmail-8.18.2/devtools/bin/install.sh, sendmail.conf, src/sendmail-8.18.2/editmap/editmap.c...
+ Reviewed sendmail-8.17.2-sasl2-in-etc.patch. Status: SAFE -- Standard config path relocation; no malicious code.
LLM auditresponse for sasl2.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a configuration snippet for Cyrus SASL (Simple Authentication and Security Layer). It sets `pwcheck_method` to `saslauthd`, which is a standard method for password verification. The file contains no executable code, no network requests, no file operations, and no obfuscation. It is a simple, static configuration file with no potential for security issues.
</details>
<summary>Static SASL config, no security issues.</summary>
</security_assessment>

[4/10] Reviewing src/sendmail-8.18.2/Makefile, src/sendmail-8.18.2/devtools/bin/configure.sh, src/sendmail-8.18.2/cf/sh/makeinfo.sh, src/sendmail-8.18.2/devtools/bin/install.sh, sendmail.conf, src/sendmail-8.18.2/editmap/editmap.c...
+ Reviewed sasl2.conf. Status: SAFE -- Static SASL config, no security issues.
LLM auditresponse for Makefile:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard build Makefile for sendmail, iterating over its subdirectories (libsm, sendmail, etc.) and invoking the `./Build` script with parameters. There is no obfuscated code, no unexpected network requests, and no file operations outside of normal build steps. The `${SUBDIRS}` are well-known sendmail components. The file is consistent with ordinary packaging and presents no signs of supply-chain attack or malicious injection.
</details>
<summary>Standard sendmail build Makefile, no malicious activity detected.</summary>
</security_assessment>

[5/10] Reviewing src/sendmail-8.18.2/devtools/bin/configure.sh, src/sendmail-8.18.2/cf/sh/makeinfo.sh, src/sendmail-8.18.2/devtools/bin/install.sh, sendmail.conf, src/sendmail-8.18.2/editmap/editmap.c...
+ Reviewed src/sendmail-8.18.2/Makefile. Status: SAFE -- Standard sendmail build Makefile, no malicious activity detected.
LLM auditresponse for makeinfo.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script `makeinfo.sh` is a standard build information utility used by the sendmail build system. It determines the current user and hostname (via `whoami`/`LOGNAME` and `hostname`/`uname -n`) and outputs a header comment with build context (user, host, date, working directory, config directory). There are no network requests, no downloads, no obfuscated commands, no file modifications beyond simple `echo` output, and no exfiltration of sensitive data. The only minor issue is the naive parsing of `$PATH` (splitting on colons and treating each element as a directory), which could be brittle if paths contain spaces, but this is a classic shell script idiom and not malicious. The script performs no actions that deviate from the expected behavior of a packaging or build helper.
</details>
<summary>Build info script; no malicious content found.</summary>
</security_assessment>

[6/10] Reviewing src/sendmail-8.18.2/devtools/bin/configure.sh, src/sendmail-8.18.2/devtools/bin/install.sh, sendmail.conf, src/sendmail-8.18.2/editmap/editmap.c...
+ Reviewed src/sendmail-8.18.2/cf/sh/makeinfo.sh. Status: SAFE -- Build info script; no malicious content found.
LLM auditresponse for editmap.c:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `editmap.c` is a standard sendmail utility source file. It implements a command-line tool to query, insert, update, or delete entries in sendmail database maps (e.g., hash, btree). The code uses standard libraries and sendmail internals (smdb). There is no obfuscated code, no network operations, no execution of external commands, no file exfiltration, and no unexpected system modifications. All operations are confined to the intended database management functionality. The file does not contain any malicious or supply-chain attack indicators.
</details>
<summary>Standard sendmail map editing utility, no malicious code found.</summary>
</security_assessment>

[7/10] Reviewing src/sendmail-8.18.2/devtools/bin/configure.sh, src/sendmail-8.18.2/devtools/bin/install.sh, sendmail.conf...
+ Reviewed src/sendmail-8.18.2/editmap/editmap.c. Status: SAFE -- Standard sendmail map editing utility, no malicious code found.
LLM auditresponse for sendmail.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard configuration file for the sendmail package. It sets environment variables `SENDMAIL_OPTS` and `CLIENTMQUEUE_OPTS` with typical sendmail daemon flags (`-bd -q30m` for running as a daemon with a 30-minute queue processing interval). There is no obfuscation, network requests, file operations, or any executable code. The content is purely declarative configuration and does not exhibit any suspicious or malicious behavior.
</details>
<summary>Standard sendmail configuration file, no security issues.</summary>
</security_assessment>

[8/10] Reviewing src/sendmail-8.18.2/devtools/bin/configure.sh, src/sendmail-8.18.2/devtools/bin/install.sh...
+ Reviewed sendmail.conf. Status: SAFE -- Standard sendmail configuration file, no security issues.
LLM auditresponse for install.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard install script from the sendmail distribution. It performs file copying (`mv` or `cp`), optional stripping, and setting of owner/group/mode via standard system utilities (`chown`, `chgrp`, `chmod`). No network requests, obfuscated code, dangerous command substitutions, or data exfiltration are present. The lack of quoting on variables is a minor shell scripting hygiene issue but not indicative of a supply-chain attack. The script is entirely consistent with its intended purpose of installing files.
</details>
<summary>Standard install script, no malicious behavior.</summary>
</security_assessment>

[9/10] Reviewing src/sendmail-8.18.2/devtools/bin/configure.sh...
+ Reviewed src/sendmail-8.18.2/devtools/bin/install.sh. Status: SAFE -- Standard install script, no malicious behavior.
LLM auditresponse for configure.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is an upstream Sendmail `configure.sh` script, part of the official distribution (not an AUR-injected file). Its purpose is to autoconfigure the build for M4 by probing the local environment: it looks for `whoami`, `hostname`, `mkdep`, `ranlib`, and several roff programs (`groff`, `nroff`, `mandoc`) in `$PATH`, and scans library directories for `libdb`, `libcdb`, `libbind`, `libresolv`, and `lib44bsd`. All operations are limited to reading the filesystem (checking existence of files) and printing M4 `define` directives to stdout.

There are no network requests (`curl`, `wget`, `git fetch`, etc.), no obfuscated or encoded commands (no `base64`, `eval`, hex/octal encoding), no writes to any file outside the build directory, and no execution of fetched or untrusted code. The script does not modify system files, exfiltrate data, or install backdoors. It behaves exactly as expected for a conventional configure script shipped with a long-standing open-source project.

All security-relevant actions (checking `PATH`, reading `$LIBDIRS`, iterating through file paths) are standard and not indicative of a supply-chain attack. No red flags are present.
</details>
<summary>Standard upstream configure script; no signs of malicious code.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/sendmail-8.18.2/devtools/bin/configure.sh. Status: SAFE -- Standard upstream configure script; no signs of malicious code.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 37,380
  Completion Tokens: 6,897
  Total Tokens: 44,277
  Total Cost: $0.004606
  Execution Time: 85.11 seconds
Full audit report can be found in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-sendmail.txt
Final Status: SAFE


No issues found.
