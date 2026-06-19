---
package: i2p
pkgver: 2.12.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 11c93a0c95e2166961e3664fea6b5a63827ded10
prompt_tokens: 50813
completion_tokens: 11115
total_tokens: 61928
cost: 0.00657387
execution_time: 86.83
files_reviewed: 13
files_skipped: 0
date: 2026-06-19T09:36:44Z
file_verdicts:
  - file: i2p.install
    status: safe
    summary: Standard package install script, no malicious behavior.
  - file: chromium-i2p.sh
    status: safe
    summary: Safe wrapper for Chromium over I2P proxy
  - file: PKGBUILD
    status: safe
    summary: Standard AUR package, no malicious content
  - file: i2prouter.bash
    status: safe
    summary: Standard shell completion script, no security issues.
  - file: i2prouter.service
    status: safe
    summary: Standard secure systemd service file for i2p router.
  - file: src/i2p-2.12.0/core/c/jbigi/patches/arm64-x18.diff
    status: safe
    summary: Legitimate GMP patch to avoid reserved register on Darwin.
  - file: src/i2p-2.12.0/core/c/jbigi/build_jbigi.sh
    status: safe
    summary: Standard build script, no supply chain risks.
  - file: src/i2p-2.12.0/core/c/mbuild.sh
    status: safe
    summary: Standard build script; no supply chain risk.
  - file: i2prouter.sh
    status: safe
    summary: Standard I2P service script, no signs of malice.
  - file: src/i2p-2.12.0/core/c/jbigi/build-all.sh
    status: safe
    summary: Standard build script for jbigi; no malice found.
  - file: src/i2p-2.12.0/core/c/jbigi/download_gmp.sh
    status: safe
    summary: Standard helper script; no malicious behavior detected.
  - file: src/i2p-2.12.0/core/c/jbigi/mbuild-all.sh
    status: safe
    summary: Standard build script, no malicious behavior detected.
  - file: src/i2p-2.12.0/Slackware/i2p/doinst.sh
    status: safe
    summary: Standard Slackware post-install script, no malice found.
---

Cloning https://aur.archlinux.org/i2p.git to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-1obq1of9...
Cloned repository to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-1obq1of9
Analyzing i2p AUR package (working in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-1obq1of9) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains no top-level code or `pkgver()` function that executes dangerous commands. The `source` array fetches from the official I2P project HTTPS URL (`https://files.i2p-projekt.de/`) and includes local files. All checksums are provided (with `SKIP` only for the `.sig` file, which is standard). There are no obfuscated commands, no `curl|bash` patterns, and no unexpected network destinations. The commented-out line using `$(date +%Y-%m)` is not active. The `prepare()`, `build()`, and `package()` functions are not executed during `makepkg --nobuild --nodeps --noprepare` or `--printsrcinfo`, so their content is out of scope for this gate. No malicious behavior is present in the executed scope.
</details>
<summary>Safe: no malicious top-level code or source fetching.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- Safe: no malicious top-level code or source fetching.[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/3] Reviewing PKGBUILD...
[0/3] Reviewing PKGBUILD, i2p.install...
[0/3] Reviewing PKGBUILD, i2p.install, chromium-i2p.sh...
LLM auditresponse for i2p.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Arch Linux .install script for the i2p package. The `post_install` function prints informational messages about accessing the I2P router web interface. The `post_remove` function cleans up the package's installation directory (`/opt/i2p/`) by removing library files (`lib*.so*`), temporary files (`.tmp`), and cache (`.cache`). These operations are confined to the package's own directory and are typical for package removal scripts. There is no evidence of malicious behavior such as data exfiltration, network requests, obfuscated code, or tampering with unrelated system files.
</details>
<summary>Standard package install script, no malicious behavior.</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, chromium-i2p.sh...
+ Reviewed i2p.install. Status: SAFE -- Standard package install script, no malicious behavior.
LLM auditresponse for chromium-i2p.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a straightforward wrapper that creates a per-user configuration directory and launches the Chromium browser configured to use a local I2P proxy. It performs no network requests beyond launching Chromium itself, writes no files outside the user's own `~/.config/chromium-i2p` directory, and contains no obfuscated code, base64-encoded payloads, eval calls, or unexpected system modifications. All commands are standard packaging practices (directory creation, file redirection, sourcing a user-owned config). The flags passed to Chromium are typical privacy/hardening options for routing traffic through I2P and do not introduce security risks. No evidence of supply-chain attack or backdoor behavior exists.
</details>
<summary>Safe wrapper for Chromium over I2P proxy</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed chromium-i2p.sh. Status: SAFE -- Safe wrapper for Chromium over I2P proxy
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD conforms to standard Arch Linux packaging practices. It downloads the official i2p source tarball from the project's own distributed URL (`files.i2p-projekt.de`), verifies it with GPG signatures using known release signing keys, and includes no obfuscated or hidden commands. All source files (systemd service, tmpfiles, wrapper config, etc.) are either from the upstream repository or provided as part of the package. The build and install steps use the upstream Ant build system and standard `install`/`cp`/`sed` operations. The only non‑trivial modifications are disabling the web server and browser auto‑start in `clients.config`—a normal configuration choice. No evidence of exfiltration, backdoors, or supply‑chain tampering is present.
</details>
<summary>Standard AUR package, no malicious content</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR package, no malicious content
Reviewed all required files.
Deciding which files to review next...
Note: 3439 files available for selection; offering the 50 highest-priority to the model. 2602 lower-priority file(s) were not offered.
LLM response for file selection:
i2prouter.bash
i2prouter.service
i2prouter.sh
src/i2p-2.12.0/Slackware/i2p/doinst.sh
src/i2p-2.12.0/core/c/jbigi/download_gmp.sh
src/i2p-2.12.0/core/c/jbigi/build_jbigi.sh
src/i2p-2.12.0/core/c/jbigi/build-all.sh
src/i2p-2.12.0/core/c/jbigi/mbuild-all.sh
src/i2p-2.12.0/core/c/jbigi/patches/arm64-x18.diff
src/i2p-2.12.0/core/c/mbuild.sh
Decided to review 10 additional files: i2prouter.bash, i2prouter.service, i2prouter.sh, src/i2p-2.12.0/Slackware/i2p/doinst.sh, src/i2p-2.12.0/core/c/jbigi/download_gmp.sh, src/i2p-2.12.0/core/c/jbigi/build_jbigi.sh, src/i2p-2.12.0/core/c/jbigi/build-all.sh, src/i2p-2.12.0/core/c/jbigi/mbuild-all.sh, src/i2p-2.12.0/core/c/jbigi/patches/arm64-x18.diff, src/i2p-2.12.0/core/c/mbuild.sh
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing i2prouter.bash...
[0/10] Reviewing i2prouter.bash, i2prouter.service...
[0/10] Reviewing i2prouter.bash, i2prouter.service, i2prouter.sh...
[0/10] Reviewing i2prouter.bash, i2prouter.service, i2prouter.sh, src/i2p-2.12.0/core/c/jbigi/download_gmp.sh...
[0/10] Reviewing i2prouter.bash, i2prouter.service, i2prouter.sh, src/i2p-2.12.0/core/c/jbigi/download_gmp.sh, src/i2p-2.12.0/Slackware/i2p/doinst.sh...
[0/10] Reviewing i2prouter.bash, i2prouter.service, i2prouter.sh, src/i2p-2.12.0/core/c/jbigi/download_gmp.sh, src/i2p-2.12.0/Slackware/i2p/doinst.sh, src/i2p-2.12.0/core/c/jbigi/build_jbigi.sh...
[0/10] Reviewing i2prouter.bash, i2prouter.service, i2prouter.sh, src/i2p-2.12.0/core/c/jbigi/download_gmp.sh, src/i2p-2.12.0/Slackware/i2p/doinst.sh, src/i2p-2.12.0/core/c/jbigi/build_jbigi.sh, src/i2p-2.12.0/core/c/jbigi/mbuild-all.sh...
[0/10] Reviewing i2prouter.bash, i2prouter.service, i2prouter.sh, src/i2p-2.12.0/core/c/jbigi/download_gmp.sh, src/i2p-2.12.0/Slackware/i2p/doinst.sh, src/i2p-2.12.0/core/c/jbigi/build_jbigi.sh, src/i2p-2.12.0/core/c/jbigi/mbuild-all.sh, src/i2p-2.12.0/core/c/jbigi/patches/arm64-x18.diff...
[0/10] Reviewing i2prouter.bash, i2prouter.service, i2prouter.sh, src/i2p-2.12.0/core/c/jbigi/download_gmp.sh, src/i2p-2.12.0/Slackware/i2p/doinst.sh, src/i2p-2.12.0/core/c/jbigi/build_jbigi.sh, src/i2p-2.12.0/core/c/jbigi/mbuild-all.sh, src/i2p-2.12.0/core/c/jbigi/patches/arm64-x18.diff, src/i2p-2.12.0/core/c/mbuild.sh...
[0/10] Reviewing i2prouter.bash, i2prouter.service, i2prouter.sh, src/i2p-2.12.0/core/c/jbigi/download_gmp.sh, src/i2p-2.12.0/Slackware/i2p/doinst.sh, src/i2p-2.12.0/core/c/jbigi/build_jbigi.sh, src/i2p-2.12.0/core/c/jbigi/mbuild-all.sh, src/i2p-2.12.0/core/c/jbigi/patches/arm64-x18.diff, src/i2p-2.12.0/core/c/mbuild.sh, src/i2p-2.12.0/core/c/jbigi/build-all.sh...
LLM auditresponse for i2prouter.bash:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a Bash completion script for the `i2prouter` command. It defines a function `_i2prouter` that provides tab-completion for the subcommands `console`, `start`, `stop`, `graceful`, `restart`, and `dump`. There are no network operations, file manipulations, obfuscated code, or any other dangerous behavior. The script is a standard, benign packaging helper that improves the user experience. The HTML-encoded quotes (`&quot;`) are likely an artifact of the text format, not an obfuscation technique.
</details>
<summary>Standard shell completion script, no security issues.</summary>
</security_assessment>

[1/10] Reviewing i2prouter.service, i2prouter.sh, src/i2p-2.12.0/core/c/jbigi/download_gmp.sh, src/i2p-2.12.0/Slackware/i2p/doinst.sh, src/i2p-2.12.0/core/c/jbigi/build_jbigi.sh, src/i2p-2.12.0/core/c/jbigi/mbuild-all.sh, src/i2p-2.12.0/core/c/jbigi/patches/arm64-x18.diff, src/i2p-2.12.0/core/c/mbuild.sh, src/i2p-2.12.0/core/c/jbigi/build-all.sh...
+ Reviewed i2prouter.bash. Status: SAFE -- Standard shell completion script, no security issues.
LLM auditresponse for i2prouter.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit file for the i2p router. It defines a forking service that runs a Java wrapper binary. The service file follows best practices for security: it runs as a dedicated unprivileged user (`i2p`), enables `NoNewPrivileges`, uses `PrivateTmp` and `PrivateDevices`, restricts device access to only `/dev/null` and `/dev/urandom`, and limits the number of open file descriptors. No network requests, code execution outside the intended Java service, obfuscation, or any other suspicious patterns are present. The comments about not modifying the file directly and using drop‑in overrides are standard systemd packaging advice. This file contains no supply‑chain attack indicators.
</details>
<summary>Standard secure systemd service file for i2p router.</summary>
</security_assessment>

[2/10] Reviewing i2prouter.sh, src/i2p-2.12.0/core/c/jbigi/download_gmp.sh, src/i2p-2.12.0/Slackware/i2p/doinst.sh, src/i2p-2.12.0/core/c/jbigi/build_jbigi.sh, src/i2p-2.12.0/core/c/jbigi/mbuild-all.sh, src/i2p-2.12.0/core/c/jbigi/patches/arm64-x18.diff, src/i2p-2.12.0/core/c/mbuild.sh, src/i2p-2.12.0/core/c/jbigi/build-all.sh...
+ Reviewed i2prouter.service. Status: SAFE -- Standard secure systemd service file for i2p router.
LLM auditresponse for arm64-x18.diff:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard patch (diff) for the GMP library (GNU Multiple Precision Arithmetic Library) that replaces uses of the ARM64 `x18` register with other available registers (`x17`, `x6`, `x14`). The change is documented as "Avoid the x18 register since it is reserved on Darwin." There is no obfuscated code, no network requests, no execution of external commands, no file operations outside the package scope, no backdoors, no data exfiltration, and no deviating from standard packaging practices. The patch comes from the official GMP mercurial repository and is authored by Torbjorn Granlund, a known GMP developer.
</details>
<summary>Legitimate GMP patch to avoid reserved register on Darwin.</summary>
</security_assessment>

[3/10] Reviewing i2prouter.sh, src/i2p-2.12.0/core/c/jbigi/download_gmp.sh, src/i2p-2.12.0/Slackware/i2p/doinst.sh, src/i2p-2.12.0/core/c/jbigi/build_jbigi.sh, src/i2p-2.12.0/core/c/jbigi/mbuild-all.sh, src/i2p-2.12.0/core/c/mbuild.sh, src/i2p-2.12.0/core/c/jbigi/build-all.sh...
+ Reviewed src/i2p-2.12.0/core/c/jbigi/patches/arm64-x18.diff. Status: SAFE -- Legitimate GMP patch to avoid reserved register on Darwin.
LLM auditresponse for build_jbigi.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard build script for the jbigi native JNI library, part of the I2P project. It compiles C code with GCC against GMP (GNU MP) and JNI headers. The script handles multiple platforms (Linux, Windows, macOS, Android, etc.) by setting appropriate compiler and linker flags. No network requests are made, no obfuscated or encoded commands are present, and no suspicious file operations (such as reading sensitive system files) are performed. The sourcing of `../find-java-home` is a routine helper to locate the JDK's JNI headers when `JAVA_HOME` is unset. All activities are consistent with legitimate packaging and building of a native library.
</details>
<summary>Standard build script, no supply chain risks.</summary>
</security_assessment>

[4/10] Reviewing i2prouter.sh, src/i2p-2.12.0/core/c/jbigi/download_gmp.sh, src/i2p-2.12.0/Slackware/i2p/doinst.sh, src/i2p-2.12.0/core/c/jbigi/mbuild-all.sh, src/i2p-2.12.0/core/c/mbuild.sh, src/i2p-2.12.0/core/c/jbigi/build-all.sh...
+ Reviewed src/i2p-2.12.0/core/c/jbigi/build_jbigi.sh. Status: SAFE -- Standard build script, no supply chain risks.
LLM auditresponse for mbuild.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a build helper for the I2P project's native library (jbigi). It runs sub‑build scripts (jcpuid/build.sh and jbigi/mbuild-all.sh) that are part of the upstream source, copies compiled libraries into a temporary directory, strips them, and packages them into a jar. All file operations are confined to the source tree (relative paths like `../../../installer/lib/jbigi`). There are no network requests, no download of external content, no obfuscated commands, and no exfiltration or system modification outside the build scope. The script follows standard packaging automation practices and does not exhibit any malicious behavior.
</details>
<summary>Standard build script; no supply chain risk.</summary>
</security_assessment>

[5/10] Reviewing i2prouter.sh, src/i2p-2.12.0/core/c/jbigi/download_gmp.sh, src/i2p-2.12.0/Slackware/i2p/doinst.sh, src/i2p-2.12.0/core/c/jbigi/mbuild-all.sh, src/i2p-2.12.0/core/c/jbigi/build-all.sh...
+ Reviewed src/i2p-2.12.0/core/c/mbuild.sh. Status: SAFE -- Standard build script; no supply chain risk.
LLM auditresponse for i2prouter.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard init/management script for the I2P router. It manages starting, stopping, restarting, and dumping the I2P wrapper process. The script drops privileges to the `i2p` user and uses `java-service-wrapper` with a hardcoded configuration path. All operations are consistent with expected packaging for a service wrapper. There is no obfuscated code, no unexpected network requests, no data exfiltration, no backdoors, and no execution of downloaded content. The `eval` on the command line uses trusted, hardcoded variables (not user input). The use of `su` to drop privileges and `pgrep`/`kill` for process management is normal. No evidence of malicious or dangerous behavior.
</details>
<summary>Standard I2P service script, no signs of malice.</summary>
</security_assessment>

[6/10] Reviewing src/i2p-2.12.0/core/c/jbigi/download_gmp.sh, src/i2p-2.12.0/Slackware/i2p/doinst.sh, src/i2p-2.12.0/core/c/jbigi/mbuild-all.sh, src/i2p-2.12.0/core/c/jbigi/build-all.sh...
+ Reviewed i2prouter.sh. Status: SAFE -- Standard I2P service script, no signs of malice.
LLM auditresponse for build-all.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard build automation tool for the jbigi native library used by I2P. It iterates over a list of common CPU architectures, configures and builds the GMP dependency from source (via the sourced `download_gmp.sh`), compiles the jbigi shared library, and copies the result to the expected directory. There are no network requests, no obfuscated code, no exfiltration, and no unexpected system modifications. All operations (mkdir, configure, make, cp) are routine packaging and build steps. The architecture list is hardcoded and safe. No suspicious behavior is present.
</details>
<summary>Standard build script for jbigi; no malice found.</summary>
</security_assessment>

[7/10] Reviewing src/i2p-2.12.0/core/c/jbigi/download_gmp.sh, src/i2p-2.12.0/Slackware/i2p/doinst.sh, src/i2p-2.12.0/core/c/jbigi/mbuild-all.sh...
+ Reviewed src/i2p-2.12.0/core/c/jbigi/build-all.sh. Status: SAFE -- Standard build script for jbigi; no malice found.
LLM auditresponse for download_gmp.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The `download_gmp.sh` script is a helper script that downloads the GMP library from the official GNU mirror (ftp.gnu.org) over HTTPS and optionally applies patches from a local `patches/` directory. This is standard behavior for a package that depends on GMP (e.g., i2p).  
No obfuscation, no unexpected network destinations, and no execution of fetched code beyond extracting the tarball and applying bundled patches. The script does not verify checksums or GPG signatures of the downloaded tarball, which is a best-practice concern but not evidence of malice. The patches are provided with the AUR package and are under the user's control.  
There are no red flags such as data exfiltration, backdoors, or execution of attacker-controlled code. The script performs exactly the tasks a maintainer helper should: download, extract, and patch an upstream library.
</details>
<summary>Standard helper script; no malicious behavior detected.</summary>
</security_assessment>

[8/10] Reviewing src/i2p-2.12.0/Slackware/i2p/doinst.sh, src/i2p-2.12.0/core/c/jbigi/mbuild-all.sh...
+ Reviewed src/i2p-2.12.0/core/c/jbigi/download_gmp.sh. Status: SAFE -- Standard helper script; no malicious behavior detected.
LLM auditresponse for mbuild-all.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a standard build automation script for compiling JBigi native libraries with GMP. It sources `download_gmp.sh` (a separate helper script for fetching GMP) and optionally `../find-java-home` — both are expected packaging components. There are no suspicious network requests, obfuscated code, dangerous commands beyond standard build operations (configure, make, cp), or attempts to exfiltrate data. An `eval` is used to expand a cross-compilation host string, but the input comes entirely from predefined variables within the script, not from external untrusted sources. The script operates entirely within the build directory and produces output to `lib/net/i2p/util/`, which is standard behavior. No signs of intentional supply-chain attack.
</details>
<summary>Standard build script, no malicious behavior detected.</summary>
</security_assessment>

[9/10] Reviewing src/i2p-2.12.0/Slackware/i2p/doinst.sh...
+ Reviewed src/i2p-2.12.0/core/c/jbigi/mbuild-all.sh. Status: SAFE -- Standard build script, no malicious behavior detected.
LLM auditresponse for doinst.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a standard Slackware `doinst.sh` post-installation script for the i2p package. It performs routine packaging operations:

- Defines configuration file handling via `config()` for `.new` files, a common Slackware mechanism.
- Creates symlinks for binaries (`eepget`, `i2prouter`) and architecture-specific `i2psvc`.
- Warns about superseded packages and cleans up old `rc.local` entries (the `sed` command fixes a prior packaging issue by removing an extraneous `sh` from the i2p init script invocation).
- No network requests, obfuscated code, encoded payloads, or data exfiltration. All operations are local file manipulations within the package's own installation directory and `/etc/rc.d/`, consistent with its purpose. There is no evidence of supply-chain attack or malicious behavior.
</details>
<summary>
Standard Slackware post-install script, no malice found.
</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/i2p-2.12.0/Slackware/i2p/doinst.sh. Status: SAFE -- Standard Slackware post-install script, no malice found.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 50,813
  Completion Tokens: 11,115
  Total Tokens: 61,928
  Total Cost: $0.006574
  Execution Time: 86.83 seconds
Full audit report can be found in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-i2p.txt
Final Status: SAFE


No issues found.
