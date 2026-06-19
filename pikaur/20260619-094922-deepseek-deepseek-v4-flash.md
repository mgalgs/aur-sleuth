---
package: pikaur
pkgver: 1.33.3
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 11c93a0c95e2166961e3664fea6b5a63827ded10
prompt_tokens: 84594
completion_tokens: 8983
total_tokens: 93577
cost: 0.00923040
execution_time: 72.06
files_reviewed: 11
files_skipped: 1
date: 2026-06-19T09:49:22Z
file_verdicts:
  - file: pikaur-1.33.3.tar.gz
    status: skipped
    summary: "Skipping binary file: pikaur-1.33.3.tar.gz"
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no malicious indicators.
  - file: src/pikaur-1.33.3/packaging/usr/lib/systemd/user/pikaur-cache.service
    status: safe
    summary: Standard package cache cleanup service, no security concerns.
  - file: src/pikaur-1.33.3/pikaur/main.py
    status: safe
    summary: Obfuscated warning but no genuine malicious behavior found.
  - file: src/pikaur-1.33.3/Makefile
    status: safe
    summary: Standard build Makefile, no malicious code detected.
  - file: src/pikaur-1.33.3/pikaur/privilege.py
    status: safe
    summary: Standard AUR helper privilege code, no malicious behavior.
  - file: src/pikaur-1.33.3/pikaur/pacman.py
    status: safe
    summary: Standard AUR helper module, no signs of malicious injection.
  - file: src/pikaur-1.33.3/pikaur/install_cli.py
    status: safe
    summary: Legitimate AUR helper code, no malicious content.
  - file: src/pikaur-1.33.3/pikaur/args.py
    status: safe
    summary: Pure argument parsing code; no malicious behavior.
  - file: src/pikaur-1.33.3/pikaur/build.py
    status: safe
    summary: Standard pikaur build module, no malicious code.
  - file: src/pikaur-1.33.3/pikaur/config.py
    status: safe
    summary: Clean configuration module, no malicious code found.
  - file: src/pikaur-1.33.3/pikaur/aur.py
    status: safe
    summary: Standard AUR RPC client, no malicious behavior.
---

Cloning https://aur.archlinux.org/pikaur.git to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-zr6e8qic...
Cloned repository to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-zr6e8qic
Analyzing pikaur AUR package (working in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-zr6e8qic) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only static variable assignments, arrays, and function definitions. There is no code executing in the global scope or in `pkgver()` that could perform dangerous operations. The source array references a pinned version tarball from the official GitHub repository with a valid checksum. No commands such as `eval`, `curl`, `wget`, or any obfuscated constructs are present. Because `prepare()`, `build()`, and `package()` are not executed by the requested `makepkg` commands, their contents are out of scope for this narrow check.
</details>
<summary>PKGBUILD is standard; no malicious code runs during sourcing or source fetch.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- PKGBUILD is standard; no malicious code runs during sourcing or source fetch.[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, pikaur-1.33.3.tar.gz...
[1/2] Reviewing PKGBUILD...
! Reviewed pikaur-1.33.3.tar.gz. Status: SKIPPED -- Skipping binary file: pikaur-1.33.3.tar.gz
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard, well-structured packaging script for the pikaur AUR helper. It downloads a specific version tarball from the official GitHub repository with a verified checksum (b2sum). Build and package steps use standard tools (make, python -m build, python -m installer) without any dangerous or obfuscated commands. No unexpected network requests, file operations, or system modifications are present. All operations are consistent with normal AUR packaging practices.
</details>
<summary>Standard AUR PKGBUILD with no malicious indicators.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no malicious indicators.
Reviewed all required files.
Deciding which files to review next...
Note: 154 files available for selection; offering the 50 highest-priority to the model. 95 lower-priority file(s) were not offered.
LLM response for file selection:
src/pikaur-1.33.3/Makefile
src/pikaur-1.33.3/pikaur/build.py
src/pikaur-1.33.3/pikaur/install_cli.py
src/pikaur-1.33.3/pikaur/privilege.py
src/pikaur-1.33.3/pikaur/pacman.py
src/pikaur-1.33.3/pikaur/config.py
src/pikaur-1.33.3/pikaur/aur.py
src/pikaur-1.33.3/pikaur/args.py
src/pikaur-1.33.3/pikaur/main.py
src/pikaur-1.33.3/packaging/usr/lib/systemd/user/pikaur-cache.service
Decided to review 10 additional files: src/pikaur-1.33.3/Makefile, src/pikaur-1.33.3/pikaur/build.py, src/pikaur-1.33.3/pikaur/install_cli.py, src/pikaur-1.33.3/pikaur/privilege.py, src/pikaur-1.33.3/pikaur/pacman.py, src/pikaur-1.33.3/pikaur/config.py, src/pikaur-1.33.3/pikaur/aur.py, src/pikaur-1.33.3/pikaur/args.py, src/pikaur-1.33.3/pikaur/main.py, src/pikaur-1.33.3/packaging/usr/lib/systemd/user/pikaur-cache.service
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/pikaur-1.33.3/pikaur/build.py...
[0/10] Reviewing src/pikaur-1.33.3/pikaur/build.py, src/pikaur-1.33.3/pikaur/privilege.py...
[0/10] Reviewing src/pikaur-1.33.3/pikaur/build.py, src/pikaur-1.33.3/pikaur/privilege.py, src/pikaur-1.33.3/Makefile...
[0/10] Reviewing src/pikaur-1.33.3/pikaur/build.py, src/pikaur-1.33.3/pikaur/privilege.py, src/pikaur-1.33.3/Makefile, src/pikaur-1.33.3/pikaur/install_cli.py...
[0/10] Reviewing src/pikaur-1.33.3/pikaur/build.py, src/pikaur-1.33.3/pikaur/privilege.py, src/pikaur-1.33.3/Makefile, src/pikaur-1.33.3/pikaur/install_cli.py, src/pikaur-1.33.3/pikaur/pacman.py...
[0/10] Reviewing src/pikaur-1.33.3/pikaur/build.py, src/pikaur-1.33.3/pikaur/privilege.py, src/pikaur-1.33.3/Makefile, src/pikaur-1.33.3/pikaur/install_cli.py, src/pikaur-1.33.3/pikaur/pacman.py, src/pikaur-1.33.3/pikaur/config.py...
[0/10] Reviewing src/pikaur-1.33.3/pikaur/build.py, src/pikaur-1.33.3/pikaur/privilege.py, src/pikaur-1.33.3/Makefile, src/pikaur-1.33.3/pikaur/install_cli.py, src/pikaur-1.33.3/pikaur/pacman.py, src/pikaur-1.33.3/pikaur/config.py, src/pikaur-1.33.3/pikaur/aur.py...
[0/10] Reviewing src/pikaur-1.33.3/pikaur/build.py, src/pikaur-1.33.3/pikaur/privilege.py, src/pikaur-1.33.3/Makefile, src/pikaur-1.33.3/pikaur/install_cli.py, src/pikaur-1.33.3/pikaur/pacman.py, src/pikaur-1.33.3/pikaur/config.py, src/pikaur-1.33.3/pikaur/aur.py, src/pikaur-1.33.3/pikaur/args.py...
[0/10] Reviewing src/pikaur-1.33.3/pikaur/build.py, src/pikaur-1.33.3/pikaur/privilege.py, src/pikaur-1.33.3/Makefile, src/pikaur-1.33.3/pikaur/install_cli.py, src/pikaur-1.33.3/pikaur/pacman.py, src/pikaur-1.33.3/pikaur/config.py, src/pikaur-1.33.3/pikaur/aur.py, src/pikaur-1.33.3/pikaur/args.py, src/pikaur-1.33.3/pikaur/main.py...
[0/10] Reviewing src/pikaur-1.33.3/pikaur/build.py, src/pikaur-1.33.3/pikaur/privilege.py, src/pikaur-1.33.3/Makefile, src/pikaur-1.33.3/pikaur/install_cli.py, src/pikaur-1.33.3/pikaur/pacman.py, src/pikaur-1.33.3/pikaur/config.py, src/pikaur-1.33.3/pikaur/aur.py, src/pikaur-1.33.3/pikaur/args.py, src/pikaur-1.33.3/pikaur/main.py, src/pikaur-1.33.3/packaging/usr/lib/systemd/user/pikaur-cache.service...
LLM auditresponse for pikaur-cache.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service file that runs `paccache` to clean the user's local pikaur package cache directory (`~/.cache/pikaur/pkg`). It performs no network operations, no obfuscated code, and no unexpected system modifications. The command and path are fixed and expected for this package.
</details>
<summary>Standard package cache cleanup service, no security concerns.</summary>
</security_assessment>

[1/10] Reviewing src/pikaur-1.33.3/pikaur/build.py, src/pikaur-1.33.3/pikaur/privilege.py, src/pikaur-1.33.3/Makefile, src/pikaur-1.33.3/pikaur/install_cli.py, src/pikaur-1.33.3/pikaur/pacman.py, src/pikaur-1.33.3/pikaur/config.py, src/pikaur-1.33.3/pikaur/aur.py, src/pikaur-1.33.3/pikaur/args.py, src/pikaur-1.33.3/pikaur/main.py...
+ Reviewed src/pikaur-1.33.3/packaging/usr/lib/systemd/user/pikaur-cache.service. Status: SAFE -- Standard package cache cleanup service, no security concerns.
LLM auditresponse for main.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `main.py` is the entry point for the pikaur AUR helper. It implements standard CLI operations (install, search, info, upgrade, etc.) and system integration tasks (directory setup, signal handling, privilege escalation).  

The only unusual element is an obfuscated warning message constructed via `chr(ord(c)-1)` in `check_runtime_deps()`. This decodes to a message advising users to read the Arch Wiki before "borking" their computer and not to report issues about the absence of sudo to pikaur. The obfuscation is a deliberate anti‑grep trick (noted in a comment) to discourage users from ignoring the warning. It is **not** a supply‑chain attack – it does not exfiltrate data, download remote code, install backdoors, or perform any other malicious action.  

No other suspicious patterns appear: network requests are limited to the package’s own upstream (AUR and Arch repos), file operations are confined to standard cache and data directories, and all command executions (pacman, systemd‑run, sudo) are expected for a package manager. The code behaves as a normal AUR helper, with no hidden or injected malicious functionality.
</details>
<summary>Obfuscated warning but no genuine malicious behavior found.</summary>
</security_assessment>

[2/10] Reviewing src/pikaur-1.33.3/pikaur/build.py, src/pikaur-1.33.3/pikaur/privilege.py, src/pikaur-1.33.3/Makefile, src/pikaur-1.33.3/pikaur/install_cli.py, src/pikaur-1.33.3/pikaur/pacman.py, src/pikaur-1.33.3/pikaur/config.py, src/pikaur-1.33.3/pikaur/aur.py, src/pikaur-1.33.3/pikaur/args.py...
+ Reviewed src/pikaur-1.33.3/pikaur/main.py. Status: SAFE -- Obfuscated warning but no genuine malicious behavior found.
LLM auditresponse for Makefile:
<security_assessment>
<decision>SAFE</decision>
<details>
This Makefile is a standard build automation file for the pikaur AUR package. It defines targets for compilation, linting, testing, and packaging. All operations are limited to the project directory (`dist/`, `locale/`, etc.) and use standard tools (`python`, `find`, `xargs`, `sed`, `grep`, `rm`, `mkdir`, `ruff`, `flake8`, `pylint`, `mypy`, `vulture`, `shellcheck`, `validate-pyproject`). There are no network requests (no `curl`, `wget`), no obfuscated code, no encoded or eval-based commands, and no attempts to read sensitive files or modify system configuration outside the build environment. The `standalone` target runs a script (`make.fish`) under `pikaur_static/`, which is part of the upstream source code and expected for packaging. The file contains no malicious or supply-chain attack indicators.
</details>
<summary>Standard build Makefile, no malicious code detected.</summary>
</security_assessment>

[3/10] Reviewing src/pikaur-1.33.3/pikaur/build.py, src/pikaur-1.33.3/pikaur/privilege.py, src/pikaur-1.33.3/pikaur/install_cli.py, src/pikaur-1.33.3/pikaur/pacman.py, src/pikaur-1.33.3/pikaur/config.py, src/pikaur-1.33.3/pikaur/aur.py, src/pikaur-1.33.3/pikaur/args.py...
+ Reviewed src/pikaur-1.33.3/Makefile. Status: SAFE -- Standard build Makefile, no malicious code detected.
LLM auditresponse for privilege.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file contains helper functions for privilege escalation and process isolation in the pikaur AUR helper. It constructs command lines for `sudo`, `doas`, or `systemd-run` based on configuration and runtime conditions. The code reads environment variables and arguments to preserve them across privilege boundaries, which is normal and expected behavior for a package manager that needs to run build commands as non-root or with limited privileges.

No obfuscated code, network requests, unexpected file operations, or backdoor mechanisms are present. The use of configurable privilege escalation tools (sudo/doas) is standard practice. The `isolate_root_cmd` function uses `systemd-run` with `DynamicUser=yes` for running commands in a sandboxed environment when running as root, which is a security feature, not a vulnerability. There is no evidence of supply-chain injection, data exfiltration, or execution of untrusted code from external sources.
</details>
<summary>Standard AUR helper privilege code, no malicious behavior.</summary>
</security_assessment>

[4/10] Reviewing src/pikaur-1.33.3/pikaur/build.py, src/pikaur-1.33.3/pikaur/install_cli.py, src/pikaur-1.33.3/pikaur/pacman.py, src/pikaur-1.33.3/pikaur/config.py, src/pikaur-1.33.3/pikaur/aur.py, src/pikaur-1.33.3/pikaur/args.py...
+ Reviewed src/pikaur-1.33.3/pikaur/privilege.py. Status: SAFE -- Standard AUR helper privilege code, no malicious behavior.
LLM auditresponse for pacman.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `pacman.py` is a standard module for the pikaur AUR helper. It interacts with pacman via subprocess calls and uses pyalpm for package database operations. The code constructs pacman command lines, parses output, and manages caches. There are no obfuscated strings, no unexpected network requests (e.g., no curl/wget to unknown hosts), no base64 decoding, no `eval`/`exec` of untrusted input, and no exfiltration of sensitive data. All network operations are delegated to pacman itself, which is normal for a package manager frontend. The only file operations are standard package installation and cache management. The use of `sudo` and `spawn` follows expected patterns for an AUR helper. No malicious or suspicious behavior was detected.
</details>
<summary>Standard AUR helper module, no signs of malicious injection.</summary>
</security_assessment>

[5/10] Reviewing src/pikaur-1.33.3/pikaur/build.py, src/pikaur-1.33.3/pikaur/install_cli.py, src/pikaur-1.33.3/pikaur/config.py, src/pikaur-1.33.3/pikaur/aur.py, src/pikaur-1.33.3/pikaur/args.py...
+ Reviewed src/pikaur-1.33.3/pikaur/pacman.py. Status: SAFE -- Standard AUR helper module, no signs of malicious injection.
LLM auditresponse for install_cli.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `install_cli.py` is a standard component of the pikaur AUR helper. It contains no obfuscated code, no suspicious network destinations, no data exfiltration, and no unexpected execution of attacker-controlled code. All operations (cloning AUR repositories, editing PKGBUILDs, building packages, and installing via pacman) are normal, expected behaviors for an AUR helper. The use of `sudo`, `interactive_spawn`, and `ThreadPool` is consistent with the tool's purpose. There are no signs of supply-chain attack or malicious injection.
</details>
<summary>Legitimate AUR helper code, no malicious content.</summary>
</security_assessment>

[6/10] Reviewing src/pikaur-1.33.3/pikaur/build.py, src/pikaur-1.33.3/pikaur/config.py, src/pikaur-1.33.3/pikaur/aur.py, src/pikaur-1.33.3/pikaur/args.py...
+ Reviewed src/pikaur-1.33.3/pikaur/install_cli.py. Status: SAFE -- Legitimate AUR helper code, no malicious content.
LLM auditresponse for args.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a command-line argument parsing module for the pikaur AUR helper. It defines argument schemas (flags, string options, count options) for both pacman and pikaur-specific operations, parses raw command-line arguments via `argparse`, and validates dependencies/conflicts between arguments. There are no network requests, no obfuscated code, no file system modifications (beyond standard I/O to stderr), no execution of external programs, and no exfiltration of data. All operations are confined to argument parsing and configuration reading (via `PikaurConfig`, which reads local configuration files). The code is transparent, well-structured, and performs exactly the functions expected from an argument parsing component of an AUR helper.

The only potential concern is that `PikaurConfig` reads configuration files whose paths can be influenced by options like `--pikaur-config`, `--xdg-config-home`, etc. This is standard for configurable tools and does not constitute a supply-chain attack—it's expected functionality for users to customize behavior. No malicious injection or unexpected behavior is present.
</details>
<summary>Pure argument parsing code; no malicious behavior.</summary>
</security_assessment>

[7/10] Reviewing src/pikaur-1.33.3/pikaur/build.py, src/pikaur-1.33.3/pikaur/config.py, src/pikaur-1.33.3/pikaur/aur.py...
+ Reviewed src/pikaur-1.33.3/pikaur/args.py. Status: SAFE -- Pure argument parsing code; no malicious behavior.
LLM auditresponse for build.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard module of the pikaur AUR helper, responsible for building packages from the Arch User Repository. Its code performs routine packaging operations: cloning or pulling git repos, running `makepkg`, installing dependencies via pacman, and cleaning up. There is no evidence of malicious intent. All git operations target the package’s own upstream repository (the AUR), which is expected for AUR helpers. The `git pull` in `update_aur_repo()` fetches from the package’s own remote, not from an unrelated host. No obfuscated code, base64-encoded commands, network exfiltration, backdoors, or unexpected system modifications are present. The use of `sudo`, `isolate_root_cmd`, and `FileLock` follows standard pikaur policy for privilege separation and concurrency control. There are no hygiene concerns that warrant marking the file unsafe.
</details>
<summary>Standard pikaur build module, no malicious code.</summary>
</security_assessment>

[8/10] Reviewing src/pikaur-1.33.3/pikaur/config.py, src/pikaur-1.33.3/pikaur/aur.py...
+ Reviewed src/pikaur-1.33.3/pikaur/build.py. Status: SAFE -- Standard pikaur build module, no malicious code.
LLM auditresponse for config.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard configuration module for the pikaur AUR helper. It defines configuration schema, path resolution using XDG directories and command-line overrides, config file reading/writing, and migration of deprecated settings. No suspicious activities are present:
- No network requests (no curl, wget, or HTTP calls)
- No obfuscated code (no base64, eval, or encoded strings)
- No attempts to exfiltrate data or modify system files beyond the package's own configuration
- The use of `random.randint` for a lock filename is weak but not malicious (noted with `nosec`/`noqa` comments)
- The `validate_config` method prevents setting `PacmanPath` to pikaur itself (a shell bomb guard), which is a legitimate safety check
- All file operations (writing config, chown) are within the package's own config/cache directories

The file is consistent with normal AUR packaging practices and contains no supply-chain attack indicators.
</details>
<summary>Clean configuration module, no malicious code found.</summary>
</security_assessment>

[9/10] Reviewing src/pikaur-1.33.3/pikaur/aur.py...
+ Reviewed src/pikaur-1.33.3/pikaur/config.py. Status: SAFE -- Clean configuration module, no malicious code found.
LLM auditresponse for aur.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `aur.py` implements standard AUR RPC client functionality for the pikaur AUR helper. It constructs URLs to query the official AUR API (via the configurable `AurBaseUrl`), properly encodes user-provided search terms using `urllib.parse.urlencode` and `urllib.parse.quote`, and fetches responses through helper modules. It includes caching classes and thread‑pool‑based parallel requests to improve performance.

There is no obfuscated code, no unexpected network destinations, no dangerous commands (eval, base64, curl, wget), and no exfiltration of local data. All operations serve the legitimate purpose of searching and retrieving package information from the AUR. The code follows normal packaging and URL‑construction practices.
</details>
<summary>Standard AUR RPC client, no malicious behavior.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/pikaur-1.33.3/pikaur/aur.py. Status: SAFE -- Standard AUR RPC client, no malicious behavior.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
(Skipped 1 file: pikaur-1.33.3.tar.gz)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 84,594
  Completion Tokens: 8,983
  Total Tokens: 93,577
  Total Cost: $0.009230
  Execution Time: 72.06 seconds
Full audit report can be found in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-pikaur.txt
Final Status: SAFE


No issues found.


Audit Skips:

/home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-zr6e8qic/pikaur-1.33.3.tar.gz: [SKIPPED] Skipping binary file: pikaur-1.33.3.tar.gz
