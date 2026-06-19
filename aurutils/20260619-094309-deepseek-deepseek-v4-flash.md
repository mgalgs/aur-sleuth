---
package: aurutils
pkgver: 20.5.8
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 11c93a0c95e2166961e3664fea6b5a63827ded10
prompt_tokens: 49064
completion_tokens: 11282
total_tokens: 60346
cost: 0.00644652
execution_time: 155.37
files_reviewed: 12
files_skipped: 1
date: 2026-06-19T09:43:09Z
file_verdicts:
  - file: aurutils-20.5.8.tar.gz
    status: skipped
    summary: "Skipping binary file: aurutils-20.5.8.tar.gz"
  - file: aurutils.install
    status: safe
    summary: Informational upgrade script, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD, no security concerns.
  - file: src/aurutils-20.5.8/lib/pacman/aur-srcver
    status: safe
    summary: Standard AUR helper script with no malicious behavior.
  - file: src/aurutils-20.5.8/makepkg/PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no malicious indicators.
  - file: src/aurutils-20.5.8/lib/aurweb/aur-query
    status: safe
    summary: Standard AUR query tool with no malicious content.
  - file: src/aurutils-20.5.8/aur.in
    status: safe
    summary: Standard AUR helper dispatcher, no malicious content.
  - file: src/aurutils-20.5.8/lib/aur-sync
    status: safe
    summary: Standard AUR synchronization script; no supply-chain attack indicators.
  - file: src/aurutils-20.5.8/completions/command_opts.sh
    status: safe
    summary: Standard aurutils helper; no malicious behavior found.
  - file: src/aurutils-20.5.8/lib/pacman/aur-build
    status: safe
    summary: Standard AUR build script; no malicious behavior.
  - file: src/aurutils-20.5.8/completions/bash/aurutils.in
    status: safe
    summary: Standard bash completion script; no security concerns.
  - file: src/aurutils-20.5.8/Makefile
    status: safe
    summary: A clean, standard build script; no malicious code found.
  - file: src/aurutils-20.5.8/lib/aurweb/aur-fetch
    status: safe
    summary: Standard AUR fetch script, no security issues.
---

Cloning https://aur.archlinux.org/aurutils.git to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-q54lot3z...
Cloned repository to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-q54lot3z
Analyzing aurutils AUR package (working in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-q54lot3z) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains variable definitions and standard packaging functions. The source is a pinned tarball from the official GitHub releases URL (`https://github.com/AladW/aurutils/archive/refs/tags/20.5.8.tar.gz`) with a valid SHA256 checksum. There is no `pkgver()` function and no executable code in the global scope that would run when sourcing the PKGBUILD. The `build()` and `package()` functions are present but will not execute under `--nobuild --noprepare`. Therefore, running the requested commands is safe.
</details>
<summary>Standard PKGBUILD, no executable global code</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- Standard PKGBUILD, no executable global code[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/3] Reviewing PKGBUILD...
[0/3] Reviewing PKGBUILD, aurutils-20.5.8.tar.gz...
[0/3] Reviewing PKGBUILD, aurutils-20.5.8.tar.gz, aurutils.install...
[1/3] Reviewing PKGBUILD, aurutils.install...
! Reviewed aurutils-20.5.8.tar.gz. Status: SKIPPED -- Skipping binary file: aurutils-20.5.8.tar.gz
LLM auditresponse for aurutils.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `aurutils.install` contains a single `post_upgrade()` function that prints upgrade notices to stderr when upgrading from older versions. It uses only `cat` and heredocs to display informative messages about version-specific changes (repose deprecation, pacman configuration path changes). There are no dangerous commands (`curl`, `wget`, `eval`, `base64`, etc.), no network requests, no file operations, and no encoded or obfuscated code. The URLs cited are documentation links shown to the user and are not executed. This file is standard AUR packaging practice for upgrade notifications and poses no security risk.
</details>
<summary>Informational upgrade script, no malicious content.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed aurutils.install. Status: SAFE -- Informational upgrade script, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a straightforward packaging script for the official `aurutils` repository. It downloads a pinned version tarball from the project's GitHub releases with a valid SHA-256 checksum. There are no suspicious network requests, encoded commands, or unexpected system modifications. The build and package functions execute standard `make` and `make install` commands with no dangerous options. The file adheres to normal AUR packaging practices and contains no indicators of supply-chain attack or malicious behavior.
</details>
<summary>Standard PKGBUILD, no security concerns.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD, no security concerns.
Reviewed all required files.
Deciding which files to review next...
Note: 121 files available for selection; offering the 50 highest-priority to the model. 63 lower-priority file(s) were not offered.
LLM response for file selection:
src/aurutils-20.5.8/Makefile
src/aurutils-20.5.8/makepkg/PKGBUILD
src/aurutils-20.5.8/aur.in
src/aurutils-20.5.8/completions/command_opts.sh
src/aurutils-20.5.8/completions/bash/aurutils.in
src/aurutils-20.5.8/lib/pacman/aur-build
src/aurutils-20.5.8/lib/aurweb/aur-fetch
src/aurutils-20.5.8/lib/aurweb/aur-query
src/aurutils-20.5.8/lib/pacman/aur-srcver
src/aurutils-20.5.8/lib/aur-sync
Decided to review 10 additional files: src/aurutils-20.5.8/Makefile, src/aurutils-20.5.8/makepkg/PKGBUILD, src/aurutils-20.5.8/aur.in, src/aurutils-20.5.8/completions/command_opts.sh, src/aurutils-20.5.8/completions/bash/aurutils.in, src/aurutils-20.5.8/lib/pacman/aur-build, src/aurutils-20.5.8/lib/aurweb/aur-fetch, src/aurutils-20.5.8/lib/aurweb/aur-query, src/aurutils-20.5.8/lib/pacman/aur-srcver, src/aurutils-20.5.8/lib/aur-sync
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/aurutils-20.5.8/Makefile...
[0/10] Reviewing src/aurutils-20.5.8/Makefile, src/aurutils-20.5.8/aur.in...
[0/10] Reviewing src/aurutils-20.5.8/Makefile, src/aurutils-20.5.8/aur.in, src/aurutils-20.5.8/completions/command_opts.sh...
[0/10] Reviewing src/aurutils-20.5.8/Makefile, src/aurutils-20.5.8/aur.in, src/aurutils-20.5.8/completions/command_opts.sh, src/aurutils-20.5.8/makepkg/PKGBUILD...
[0/10] Reviewing src/aurutils-20.5.8/Makefile, src/aurutils-20.5.8/aur.in, src/aurutils-20.5.8/completions/command_opts.sh, src/aurutils-20.5.8/makepkg/PKGBUILD, src/aurutils-20.5.8/completions/bash/aurutils.in...
[0/10] Reviewing src/aurutils-20.5.8/Makefile, src/aurutils-20.5.8/aur.in, src/aurutils-20.5.8/completions/command_opts.sh, src/aurutils-20.5.8/makepkg/PKGBUILD, src/aurutils-20.5.8/completions/bash/aurutils.in, src/aurutils-20.5.8/lib/pacman/aur-build...
[0/10] Reviewing src/aurutils-20.5.8/Makefile, src/aurutils-20.5.8/aur.in, src/aurutils-20.5.8/completions/command_opts.sh, src/aurutils-20.5.8/makepkg/PKGBUILD, src/aurutils-20.5.8/completions/bash/aurutils.in, src/aurutils-20.5.8/lib/pacman/aur-build, src/aurutils-20.5.8/lib/aurweb/aur-query...
[0/10] Reviewing src/aurutils-20.5.8/Makefile, src/aurutils-20.5.8/aur.in, src/aurutils-20.5.8/completions/command_opts.sh, src/aurutils-20.5.8/makepkg/PKGBUILD, src/aurutils-20.5.8/completions/bash/aurutils.in, src/aurutils-20.5.8/lib/pacman/aur-build, src/aurutils-20.5.8/lib/aurweb/aur-query, src/aurutils-20.5.8/lib/aurweb/aur-fetch...
[0/10] Reviewing src/aurutils-20.5.8/Makefile, src/aurutils-20.5.8/aur.in, src/aurutils-20.5.8/completions/command_opts.sh, src/aurutils-20.5.8/makepkg/PKGBUILD, src/aurutils-20.5.8/completions/bash/aurutils.in, src/aurutils-20.5.8/lib/pacman/aur-build, src/aurutils-20.5.8/lib/aurweb/aur-query, src/aurutils-20.5.8/lib/aurweb/aur-fetch, src/aurutils-20.5.8/lib/pacman/aur-srcver...
[0/10] Reviewing src/aurutils-20.5.8/Makefile, src/aurutils-20.5.8/aur.in, src/aurutils-20.5.8/completions/command_opts.sh, src/aurutils-20.5.8/makepkg/PKGBUILD, src/aurutils-20.5.8/completions/bash/aurutils.in, src/aurutils-20.5.8/lib/pacman/aur-build, src/aurutils-20.5.8/lib/aurweb/aur-query, src/aurutils-20.5.8/lib/aurweb/aur-fetch, src/aurutils-20.5.8/lib/pacman/aur-srcver, src/aurutils-20.5.8/lib/aur-sync...
LLM auditresponse for aur-srcver:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a standard AUR utility (`aur-srcver`) that runs `makepkg --nobuild --nodeps --skipinteg` for each specified package directory to obtain version information from the PKGBUILD. It uses a temporary directory, handles root-user warnings, and processes input from stdin, files, or arguments. There is no obfuscated code, no unexpected network requests, no downloads from non-standard sources, no file exfiltration, and no execution of untrusted code beyond the standard `makepkg` workflow. All operations are consistent with legitimate AUR packaging practices.
</details>
<summary>Standard AUR helper script with no malicious behavior.</summary>
</security_assessment>

[1/10] Reviewing src/aurutils-20.5.8/Makefile, src/aurutils-20.5.8/aur.in, src/aurutils-20.5.8/completions/command_opts.sh, src/aurutils-20.5.8/makepkg/PKGBUILD, src/aurutils-20.5.8/completions/bash/aurutils.in, src/aurutils-20.5.8/lib/pacman/aur-build, src/aurutils-20.5.8/lib/aurweb/aur-query, src/aurutils-20.5.8/lib/aurweb/aur-fetch, src/aurutils-20.5.8/lib/aur-sync...
+ Reviewed src/aurutils-20.5.8/lib/pacman/aur-srcver. Status: SAFE -- Standard AUR helper script with no malicious behavior.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard VCS (git) package for `aurutils`, with source from the official upstream repository (`https://github.com/AladW/aurutils`). The only external commands executed are `git describe`, `make`, and `make install`, all of which are typical and expected for building a Go-based tool from source. The checksum is set to `SKIP`, which is normal for VCS sources. No obfuscation, no unexpected network requests, no data exfiltration, and no execution of fetched code outside the standard build workflow. This file adheres to normal AUR packaging practices and contains no supply-chain attack indicators.
</details>
<summary>Standard AUR PKGBUILD with no malicious indicators.</summary>
</security_assessment>

[2/10] Reviewing src/aurutils-20.5.8/Makefile, src/aurutils-20.5.8/aur.in, src/aurutils-20.5.8/completions/command_opts.sh, src/aurutils-20.5.8/completions/bash/aurutils.in, src/aurutils-20.5.8/lib/pacman/aur-build, src/aurutils-20.5.8/lib/aurweb/aur-query, src/aurutils-20.5.8/lib/aurweb/aur-fetch, src/aurutils-20.5.8/lib/aur-sync...
+ Reviewed src/aurutils-20.5.8/makepkg/PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no malicious indicators.
LLM auditresponse for aur-query:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a standard Perl-based AUR query utility that uses AUR::Query and AUR::Options modules (part of the same package). It parses command-line arguments, handles `-` as an alias for `/dev/stdin` for reading package names from standard input (a common AUR packaging pattern), and delegates to `query` or `query_multi` functions. There are no suspicious network calls, no obfuscation, no dangerous command execution (`eval`, `base64`, `curl|bash`, etc.), and no file operations outside normal argument handling. The code is consistent with the stated purpose of querying the AUR and contains no injected malicious behavior.
</details>
<summary>Standard AUR query tool with no malicious content.</summary>
</security_assessment>

[3/10] Reviewing src/aurutils-20.5.8/Makefile, src/aurutils-20.5.8/aur.in, src/aurutils-20.5.8/completions/command_opts.sh, src/aurutils-20.5.8/completions/bash/aurutils.in, src/aurutils-20.5.8/lib/pacman/aur-build, src/aurutils-20.5.8/lib/aurweb/aur-fetch, src/aurutils-20.5.8/lib/aur-sync...
+ Reviewed src/aurutils-20.5.8/lib/aurweb/aur-query. Status: SAFE -- Standard AUR query tool with no malicious content.
LLM auditresponse for aur.in:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a standard command dispatcher for the `aur` tool. It loads environment variables from a user-controlled config file (`~/.config/aurutils/env`), lists available subcommands from a designated library directory, and executes them via `exec`. No obfuscation, network requests, downloads, or dangerous operations (eval, base64, curl, wget) are present. The `wait &quot;$!&quot;` usage is a benign synchronisation pattern for process substitution. All operations are within expected AUR packaging workflow boundaries.
</details>
<summary>Standard AUR helper dispatcher, no malicious content.</summary>
</security_assessment>

[4/10] Reviewing src/aurutils-20.5.8/Makefile, src/aurutils-20.5.8/completions/command_opts.sh, src/aurutils-20.5.8/completions/bash/aurutils.in, src/aurutils-20.5.8/lib/pacman/aur-build, src/aurutils-20.5.8/lib/aurweb/aur-fetch, src/aurutils-20.5.8/lib/aur-sync...
+ Reviewed src/aurutils-20.5.8/aur.in. Status: SAFE -- Standard AUR helper dispatcher, no malicious content.
LLM auditresponse for aur-sync:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard component of the `aurutils` package for Arch Linux. It automates downloading, building, and managing AUR packages. All operations (fetching from AUR via `aur fetch`, calling `makepkg`, managing dependency graphs with `tsort`, and optionally importing GPG keys with `gpg --recv-keys`) are normal packaging workflow actions. The only unusual feature is the `--allan` option which displays an obfuscated (ROT13) Easter egg – this is a benign inside joke, not malicious code. There is no evidence of data exfiltration, backdoors, hidden downloads, or execution of unexpected third-party code.
</details>
<summary>Standard AUR synchronization script; no supply-chain attack indicators.</summary>
</security_assessment>

[5/10] Reviewing src/aurutils-20.5.8/Makefile, src/aurutils-20.5.8/completions/command_opts.sh, src/aurutils-20.5.8/completions/bash/aurutils.in, src/aurutils-20.5.8/lib/pacman/aur-build, src/aurutils-20.5.8/lib/aurweb/aur-fetch...
+ Reviewed src/aurutils-20.5.8/lib/aur-sync. Status: SAFE -- Standard AUR synchronization script; no supply-chain attack indicators.
LLM auditresponse for command_opts.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard helper script from the `aurutils` package. It defines commands that support `--dump-options` and iterates over local files under `../lib` (part of the same package) to collect default options. The use of `find … -exec bash` executes the package’s own scripts with a known argument; this is not unusual for build-time generation of configuration. There are no network requests, no obfuscated code, and no actions outside the expected packaging workflow. The script does not exfiltrate data, download or execute external code, or modify system files.
</details>
<summary>Standard aurutils helper; no malicious behavior found.</summary>
</security_assessment>

[6/10] Reviewing src/aurutils-20.5.8/Makefile, src/aurutils-20.5.8/completions/bash/aurutils.in, src/aurutils-20.5.8/lib/pacman/aur-build, src/aurutils-20.5.8/lib/aurweb/aur-fetch...
+ Reviewed src/aurutils-20.5.8/completions/command_opts.sh. Status: SAFE -- Standard aurutils helper; no malicious behavior found.
LLM auditresponse for aur-build:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard build script from the `aurutils` package. It orchestrates building packages from PKGBUILD files, managing a local repository, signing packages, and syncing with pacman. All operations are consistent with normal packaging practices:
- Network operations use only standard pacman/aur commands (e.g., `pacsync`, `pacman -Sup`, `aur chroot`).
- No obfuscated code, base64 decoding, eval, or external downloads from unexpected hosts.
- File operations are limited to temporary build directories and the local repository database.
- The script respects user-configured environment variables (e.g., `AUR_MAKEPKG`, `AUR_GPG`) without injecting untrusted content.
- There is no evidence of exfiltration, backdoors, or behavior outside the stated purpose of building and installing Arch Linux packages.

The `--arg-file` and `--results` options allow controlled input/output paths, but these are documented features and not inherently malicious. The script includes safety checks (e.g., non-root warning, permission checks) and uses secure temporary file creation.
</details>
<summary>Standard AUR build script; no malicious behavior.</summary>
</security_assessment>

[7/10] Reviewing src/aurutils-20.5.8/Makefile, src/aurutils-20.5.8/completions/bash/aurutils.in, src/aurutils-20.5.8/lib/aurweb/aur-fetch...
+ Reviewed src/aurutils-20.5.8/lib/pacman/aur-build. Status: SAFE -- Standard AUR build script; no malicious behavior.
LLM auditresponse for aurutils.in:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard bash completion script for the `aurutils` package. It sources a companion file (`command_opts.sh`) and defines completion functions for subcommands like `build`, `repo`, `sync`, etc. There are no obfuscated commands, no network requests, no file modifications, and no suspicious operations. The script only provides command-line tab-completion logic. The sourcing of a relative path is normal for such helper scripts within the same package and does not indicate malice.
</details>
<summary>Standard bash completion script; no security concerns.</summary>
</security_assessment>

[8/10] Reviewing src/aurutils-20.5.8/Makefile, src/aurutils-20.5.8/lib/aurweb/aur-fetch...
+ Reviewed src/aurutils-20.5.8/completions/bash/aurutils.in. Status: SAFE -- Standard bash completion script; no security concerns.
LLM auditresponse for Makefile:
<security_assessment>
<decision>SAFE</decision>
<details>
The Makefile is a standard build and installation script for the `aurutils` package. It defines paths, builds the main script (`aur`) from `aur.in` using `sed`, builds completions, and installs files into standard system directories (`/usr/bin`, `/usr/lib`, etc.). There are no suspicious network requests (no `curl`, `wget`, or external downloads), no obfuscated code, no `eval` or encoded commands, and no file operations that deviate from expected packaging behavior. The only dynamic command is `git describe --tags`, which is a common pattern for retrieving the version from a git repository, with a hardcoded fallback. All targets (build, test, install) perform routine packaging tasks. No evidence of supply-chain attack or malicious intent is present.
</details>
<summary>A clean, standard build script; no malicious code found.</summary>
</security_assessment>

[9/10] Reviewing src/aurutils-20.5.8/lib/aurweb/aur-fetch...
+ Reviewed src/aurutils-20.5.8/Makefile. Status: SAFE -- A clean, standard build script; no malicious code found.
LLM auditresponse for aur-fetch:
<security_assessment>
<decision>SAFE</decision>
<details>
The script `aur-fetch` is a standard AUR package retrieval utility from the aurutils package. Its purpose is to clone and update package build files from the official Arch User Repository (`https://aur.archlinux.org`). The base64 block in the `usage()` function decodes to a harmless ASCII art (a penguin) and is not obfuscated malicious code. All network operations (git clone, git fetch, git ls-remote) target the official AUR server or local mirrors as configured. The script uses standard Git commands for merging, rebasing, and fetching, with no unexpected downloads or execution of arbitrary code. It does not exfiltrate data, modify system files outside the repository workspace, or contain any backdoors. The use of `flock` and file locking is appropriate for concurrent access. Overall, the script performs only its documented functionality without any malicious behavior.
</details>
<summary>Standard AUR fetch script, no security issues.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/aurutils-20.5.8/lib/aurweb/aur-fetch. Status: SAFE -- Standard AUR fetch script, no security issues.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
(Skipped 1 file: aurutils-20.5.8.tar.gz)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 49,064
  Completion Tokens: 11,282
  Total Tokens: 60,346
  Total Cost: $0.006447
  Execution Time: 155.37 seconds
Full audit report can be found in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-aurutils.txt
Final Status: SAFE


No issues found.


Audit Skips:

/home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-q54lot3z/aurutils-20.5.8.tar.gz: [SKIPPED] Skipping binary file: aurutils-20.5.8.tar.gz
