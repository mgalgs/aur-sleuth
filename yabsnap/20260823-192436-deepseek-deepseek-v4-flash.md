---
package: yabsnap
pkgver: 2.4.2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 4fdfd87aaec54365f5eb3ea9cd4b5b3cd402f1d8
prompt_tokens: 43977
completion_tokens: 7434
total_tokens: 51411
cost: 0.00287516670
execution_time: 58.76
files_reviewed: 12
files_skipped: 1
files_unauditable: 0
unpinned_sources: 0
date: 2026-08-23T19:24:35Z
file_verdicts:
  - file: yabsnap-2.4.2.tar.gz
    status: skipped
    summary: "Skipping binary file: yabsnap-2.4.2.tar.gz"
  - file: yabsnap.install
    status: safe
    summary: Clean install script with only standard package maintenance operations.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no malicious indicators.
  - file: src/yabsnap-2.4.2/artifacts/services/yabsnap.service
    status: safe
    summary: Standard systemd service unit; no malicious content.
  - file: src/yabsnap-2.4.2/artifacts/pacman/01-yabsnap-pacman-pre.hook
    status: safe
    summary: Standard pacman hook, no malicious content.
  - file: src/yabsnap-2.4.2/src/code/main.py
    status: safe
    summary: Standard snapshot tool entry point, no threats.
  - file: src/yabsnap-2.4.2/src/code/mechanisms/btrfs_mechanism.py
    status: safe
    summary: Legitimate Btrfs snapshot code, no malicious indicators.
  - file: src/yabsnap-2.4.2/src/code/mechanisms/rsync_mechanism.py
    status: safe
    summary: Clean rsync snapshot mechanism, no malicious code found.
  - file: src/yabsnap-2.4.2/src/code/snapshot_logic/rollbacker.py
    status: safe
    summary: Legitimate rollback script generator with user confirmation.
  - file: src/yabsnap-2.4.2/src/code/utils/btrfs_utils.py
    status: safe
    summary: Legitimate Btrfs utility module, no security issues.
  - file: src/yabsnap-2.4.2/src/code/snapshot_logic/snap_operator.py
    status: safe
    summary: Normal application logic; no malicious behavior found.
  - file: src/yabsnap-2.4.2/src/code/snapshot_logic/scheduled_snapshot_ttl.py
    status: safe
    summary: No malicious code; standard upstream snapshot TTL logic.
  - file: src/yabsnap-2.4.2/src/code/configs.py
    status: safe
    summary: Standard configuration code, no supply-chain risk.
---

Cloning https://aur.archlinux.org/yabsnap.git...
Cloned yabsnap
Analyzing yabsnap AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only variable assignments and function definitions in its top-level scope. No `pkgver()` function exists (the version is a literal string). The `source` array points to a pinned release tarball from the official GitHub repository with a valid SHA-256 checksum. There are no global command substitutions, evals, or dangerous network operations. The `build()` and `package()` functions are not executed under `--nobuild --noprepare`, so their content is out of scope for this gate. Running `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo` is safe.
</details>
<evidence></evidence>
<summary>Safe: no malicious top-level code.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe: no malicious top-level code.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/3] Reviewing PKGBUILD...
[0/3] Reviewing PKGBUILD, yabsnap.install...
[0/3] Reviewing PKGBUILD, yabsnap.install, yabsnap-2.4.2.tar.gz...
[1/3] Reviewing PKGBUILD, yabsnap.install...
! Reviewed yabsnap-2.4.2.tar.gz. Status: SKIPPED -- Skipping binary file: yabsnap-2.4.2.tar.gz
LLM auditresponse for yabsnap.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Arch package install script performing routine maintenance operations. It runs `restorecon` only when SELinux is enabled, prints a user notice, removes stale Python bytecode files (`*.opt-1.pyc`) during upgrades, and cleans up the package's own directory during removal. No network access, no encoded/obfuscated commands, no unexpected file modifications, and no execution of untrusted code. All operations are confined to the package's own installation paths (`/usr/share/yabsnap`) and are clearly related to the package's lifecycle.
</details>
<evidence>
</evidence>
<summary>
Clean install script with only standard package maintenance operations.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed yabsnap.install. Status: SAFE -- Clean install script with only standard package maintenance operations.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a Btrfs snapshot manager. The source tarball is pinned to a specific version with a checksum, eliminating the risk of unexpected content changes at build time. All operations in `build()` and `package()` are routine: extracting the upstream archive, installing executables, configuration files, completions, man pages, systemd units, and Python bytecode compilation. No suspicious network requests, obfuscated code, dangerous commands, or unexpected system modifications are present. The `install=` reference to `yabsnap.install` is normal for AUR packages, though the content of that file is not evaluated here.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with no malicious indicators.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no malicious indicators.
Reviewed all required files.
Deciding which files to review next...
Note: 78 files available for selection; offering the 50 highest-priority to the model. 23 lower-priority file(s) were not offered.
LLM response for file selection:
src/yabsnap-2.4.2/artifacts/pacman/01-yabsnap-pacman-pre.hook
src/yabsnap-2.4.2/artifacts/services/yabsnap.service
src/yabsnap-2.4.2/src/code/main.py
src/yabsnap-2.4.2/src/code/mechanisms/btrfs_mechanism.py
src/yabsnap-2.4.2/src/code/mechanisms/rsync_mechanism.py
src/yabsnap-2.4.2/src/code/snapshot_logic/rollbacker.py
src/yabsnap-2.4.2/src/code/snapshot_logic/snap_operator.py
src/yabsnap-2.4.2/src/code/utils/btrfs_utils.py
src/yabsnap-2.4.2/src/code/configs.py
src/yabsnap-2.4.2/src/code/snapshot_logic/scheduled_snapshot_ttl.py
Decided to review 10 additional files: src/yabsnap-2.4.2/artifacts/pacman/01-yabsnap-pacman-pre.hook, src/yabsnap-2.4.2/artifacts/services/yabsnap.service, src/yabsnap-2.4.2/src/code/main.py, src/yabsnap-2.4.2/src/code/mechanisms/btrfs_mechanism.py, src/yabsnap-2.4.2/src/code/mechanisms/rsync_mechanism.py, src/yabsnap-2.4.2/src/code/snapshot_logic/rollbacker.py, src/yabsnap-2.4.2/src/code/snapshot_logic/snap_operator.py, src/yabsnap-2.4.2/src/code/utils/btrfs_utils.py, src/yabsnap-2.4.2/src/code/configs.py, src/yabsnap-2.4.2/src/code/snapshot_logic/scheduled_snapshot_ttl.py
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/yabsnap-2.4.2/artifacts/pacman/01-yabsnap-pacman-pre.hook...
[0/10] Reviewing src/yabsnap-2.4.2/artifacts/pacman/01-yabsnap-pacman-pre.hook, src/yabsnap-2.4.2/src/code/main.py...
[0/10] Reviewing src/yabsnap-2.4.2/artifacts/pacman/01-yabsnap-pacman-pre.hook, src/yabsnap-2.4.2/src/code/main.py, src/yabsnap-2.4.2/artifacts/services/yabsnap.service...
LLM auditresponse for yabsnap.service:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard systemd service unit for the yabsnap package. It defines a oneshot service that runs as root and executes the yabsnap binary with the `--sync internal-cronrun` argument, which is consistent with the package's purpose of creating Btrfs snapshots. There are no network requests, obfuscated code, or suspicious operations. The file is well-formed and follows normal packaging practices for systemd services.
</details>
<evidence></evidence>
<summary>Standard systemd service unit; no malicious content.</summary>
</security_assessment>

[1/10] Reviewing src/yabsnap-2.4.2/artifacts/pacman/01-yabsnap-pacman-pre.hook, src/yabsnap-2.4.2/src/code/main.py...
+ Reviewed src/yabsnap-2.4.2/artifacts/services/yabsnap.service. Status: SAFE -- Standard systemd service unit; no malicious content.
[1/10] Reviewing src/yabsnap-2.4.2/artifacts/pacman/01-yabsnap-pacman-pre.hook, src/yabsnap-2.4.2/src/code/main.py, src/yabsnap-2.4.2/src/code/mechanisms/btrfs_mechanism.py...
LLM auditresponse for 01-yabsnap-pacman-pre.hook:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `01-yabsnap-pacman-pre.hook` is a standard pacman hook configuration. It triggers on all package operations (Install, Upgrade, Remove) for any package and executes `/usr/share/yabsnap/yabsnap.sh internal-preupdate` from the package's own installation directory during the PreTransaction phase. There is no obfuscated code, no network requests, no unexpected file operations, and no deviation from normal packaging practices. The hook simply calls a script that is part of the same package, which is a typical pattern for snapshot tools (e.g., snap-pac, snapper). No security issues are present in this file.
</details>
<evidence></evidence>
<summary>Standard pacman hook, no malicious content.</summary>
</security_assessment>

[1/10] Reviewing src/yabsnap-2.4.2/artifacts/pacman/01-yabsnap-pacman-pre.hook, src/yabsnap-2.4.2/src/code/main.py, src/yabsnap-2.4.2/src/code/mechanisms/btrfs_mechanism.py, src/yabsnap-2.4.2/src/code/mechanisms/rsync_mechanism.py...
[2/10] Reviewing src/yabsnap-2.4.2/src/code/main.py, src/yabsnap-2.4.2/src/code/mechanisms/btrfs_mechanism.py, src/yabsnap-2.4.2/src/code/mechanisms/rsync_mechanism.py...
+ Reviewed src/yabsnap-2.4.2/artifacts/pacman/01-yabsnap-pacman-pre.hook. Status: SAFE -- Standard pacman hook, no malicious content.
LLM auditresponse for main.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is the main entry point for the `yabsnap` snapshot management tool. It implements standard command-line dispatching for creating, deleting, listing, rolling back, and batch-deleting snapshots. All operations operate on the package's own configuration and snapshot paths, and user confirmation is required for destructive actions. There are no obfuscated strings, network requests, or unexpected system modifications. The optional TUI import is handled gracefully with a clear error message. The code is consistent with the expected behavior of a system snapshot utility and contains no evidence of malicious intent.
</details>
<evidence></evidence>
<summary>Standard snapshot tool entry point, no threats.</summary>
</security_assessment>

[3/10] Reviewing src/yabsnap-2.4.2/src/code/mechanisms/btrfs_mechanism.py, src/yabsnap-2.4.2/src/code/mechanisms/rsync_mechanism.py...
+ Reviewed src/yabsnap-2.4.2/src/code/main.py. Status: SAFE -- Standard snapshot tool entry point, no threats.
[3/10] Reviewing src/yabsnap-2.4.2/src/code/mechanisms/btrfs_mechanism.py, src/yabsnap-2.4.2/src/code/mechanisms/rsync_mechanism.py, src/yabsnap-2.4.2/src/code/snapshot_logic/rollbacker.py...
LLM auditresponse for btrfs_mechanism.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Btrfs snapshot mechanism implementation for the yabsnap application. It executes only well-known btrfs commands (`stat`, `btrfs subvolume snapshot`, `btrfs subvolume delete`, `btrfs subvolume sync`) and utility commands to verify filesystem type and inode numbers. All commands are called through the application's own `os_utils` wrappers. There is no obfuscated code, no network requests, no data exfiltration, no execution of downloaded content, and no deviation from the expected functionality of a Btrfs snapshot tool. The file is consistent with normal upstream packaging practices and contains no supply-chain attack indicators.
</details>
<evidence></evidence>
<summary>Legitimate Btrfs snapshot code, no malicious indicators.</summary>
</security_assessment>

[3/10] Reviewing src/yabsnap-2.4.2/src/code/mechanisms/btrfs_mechanism.py, src/yabsnap-2.4.2/src/code/mechanisms/rsync_mechanism.py, src/yabsnap-2.4.2/src/code/snapshot_logic/rollbacker.py, src/yabsnap-2.4.2/src/code/snapshot_logic/snap_operator.py...
[4/10] Reviewing src/yabsnap-2.4.2/src/code/mechanisms/rsync_mechanism.py, src/yabsnap-2.4.2/src/code/snapshot_logic/rollbacker.py, src/yabsnap-2.4.2/src/code/snapshot_logic/snap_operator.py...
+ Reviewed src/yabsnap-2.4.2/src/code/mechanisms/btrfs_mechanism.py. Status: SAFE -- Legitimate Btrfs snapshot code, no malicious indicators.
LLM auditresponse for rsync_mechanism.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file implements an rsync-based snapshot mechanism for yabsnap. It performs standard filesystem operations: creating hardlinks from a previous snapshot using `cp -al`, creating snapshots via `rsync`, deleting snapshots with `rm -rf`, and verifying source readability. All external commands are properly quoted with `shlex.quote`. There are no network requests, no code download/execution, no obfuscated strings, and no exfiltration of data. The code is straightforward and consistent with the expected behavior of a snapshot tool. No signs of supply-chain attack or malicious injection are present.
</details>
<evidence></evidence>
<summary>Clean rsync snapshot mechanism, no malicious code found.</summary>
</security_assessment>

[4/10] Reviewing src/yabsnap-2.4.2/src/code/mechanisms/rsync_mechanism.py, src/yabsnap-2.4.2/src/code/snapshot_logic/rollbacker.py, src/yabsnap-2.4.2/src/code/snapshot_logic/snap_operator.py, src/yabsnap-2.4.2/src/code/utils/btrfs_utils.py...
[5/10] Reviewing src/yabsnap-2.4.2/src/code/snapshot_logic/rollbacker.py, src/yabsnap-2.4.2/src/code/snapshot_logic/snap_operator.py, src/yabsnap-2.4.2/src/code/utils/btrfs_utils.py...
+ Reviewed src/yabsnap-2.4.2/src/code/mechanisms/rsync_mechanism.py. Status: SAFE -- Clean rsync snapshot mechanism, no malicious code found.
LLM auditresponse for rollbacker.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a legitimate component of the yabsnap snapshot rollback tool. It generates a bash script from snapshot metadata (obtained via `snap_operator.find_target` and `snap_mechanisms`) and optionally executes it, but only after displaying the script to the user and requiring explicit confirmation unless `--no-confirm` is passed. The script is written to a secure temporary directory, made executable, and run via `subprocess.run`. No network requests, obfuscation, or unexpected system modifications occur. The code follows the standard pattern for a rollback utility and does not exhibit any supply-chain attack indicators.
</details>
<evidence></evidence>
<summary>Legitimate rollback script generator with user confirmation.</summary>
</security_assessment>

[5/10] Reviewing src/yabsnap-2.4.2/src/code/snapshot_logic/rollbacker.py, src/yabsnap-2.4.2/src/code/snapshot_logic/snap_operator.py, src/yabsnap-2.4.2/src/code/utils/btrfs_utils.py, src/yabsnap-2.4.2/src/code/configs.py...
[6/10] Reviewing src/yabsnap-2.4.2/src/code/snapshot_logic/snap_operator.py, src/yabsnap-2.4.2/src/code/utils/btrfs_utils.py, src/yabsnap-2.4.2/src/code/configs.py...
+ Reviewed src/yabsnap-2.4.2/src/code/snapshot_logic/rollbacker.py. Status: SAFE -- Legitimate rollback script generator with user confirmation.
LLM auditresponse for btrfs_utils.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard utility module for interacting with Btrfs subvolumes. It runs `btrfs subvolume list -a` via `os_utils.runsh_or_error` with proper shell quoting using `shlex.quote(directory)`. There is no network access, no obfuscation, no suspicious file operations, and no execution of untrusted code. The only command executed is the system `btrfs` tool with a user-supplied directory path, which is safely quoted. The logic parses the output to find nested subvolumes. This is purely normal packaging functionality for a Btrfs snapshot manager.
</details>
<evidence></evidence>
<summary>Legitimate Btrfs utility module, no security issues.</summary>
</security_assessment>

[6/10] Reviewing src/yabsnap-2.4.2/src/code/snapshot_logic/snap_operator.py, src/yabsnap-2.4.2/src/code/utils/btrfs_utils.py, src/yabsnap-2.4.2/src/code/configs.py, src/yabsnap-2.4.2/src/code/snapshot_logic/scheduled_snapshot_ttl.py...
[7/10] Reviewing src/yabsnap-2.4.2/src/code/snapshot_logic/snap_operator.py, src/yabsnap-2.4.2/src/code/configs.py, src/yabsnap-2.4.2/src/code/snapshot_logic/scheduled_snapshot_ttl.py...
+ Reviewed src/yabsnap-2.4.2/src/code/utils/btrfs_utils.py. Status: SAFE -- Legitimate Btrfs utility module, no security issues.
LLM auditresponse for snap_operator.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a core module of the yabsnap snapshot management tool. It contains no network requests, obfuscated code, or unexpected system modifications. All operations (reading directories, creating and deleting snapshots, logging) are standard for a backup/snapshot utility. The code imports only standard library modules and internal package modules, with no external dependencies or remote calls. The logic is transparent and serves the legitimate purpose of managing btrfs snapshots based on configuration. There is no evidence of supply-chain tampering or malicious injection.</details>
<evidence></evidence>
<summary>Normal application logic; no malicious behavior found.</summary>
</security_assessment>

[8/10] Reviewing src/yabsnap-2.4.2/src/code/configs.py, src/yabsnap-2.4.2/src/code/snapshot_logic/scheduled_snapshot_ttl.py...
+ Reviewed src/yabsnap-2.4.2/src/code/snapshot_logic/snap_operator.py. Status: SAFE -- Normal application logic; no malicious behavior found.
LLM auditresponse for scheduled_snapshot_ttl.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard upstream application module implementing snapshot TTL logic. It imports datetime and a local configs module, performs arithmetic on timedelta objects, and returns a TTL integer. There are no network calls, no obfuscation, no execution of arbitrary commands, no file system writes, and no exfiltration of data. The code is consistent with the stated purpose of the yabsnap package (managing Btrfs/ZFS snapshot retention). No supply-chain attack indicators are present.
</details>
<evidence></evidence>
<summary>No malicious code; standard upstream snapshot TTL logic.</summary>
</security_assessment>

[9/10] Reviewing src/yabsnap-2.4.2/src/code/configs.py...
+ Reviewed src/yabsnap-2.4.2/src/code/snapshot_logic/scheduled_snapshot_ttl.py. Status: SAFE -- No malicious code; standard upstream snapshot TTL logic.
LLM auditresponse for configs.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard configuration management module for the yabsnap backup tool. It reads configuration files from `/etc/yabsnap/configs` or a user-specified path, parses snapshot retention policies, and provides utilities to iterate over configurations. The `post_transaction_scripts` feature runs user-defined scripts — this is intentional application functionality, not a supply-chain attack. There are no network requests, obfuscated code, or suspicious file operations. The `create_config` function writes example config files with proper path validation. All operations are within the expected scope of a backup/snapshot management tool.
</details>
<evidence></evidence>
<summary>Standard configuration code, no supply-chain risk.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/yabsnap-2.4.2/src/code/configs.py. Status: SAFE -- Standard configuration code, no supply-chain risk.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
(Skipped 1 file: yabsnap-2.4.2.tar.gz)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 43,977
  Completion Tokens: 7,434
  Total Tokens: 51,411
  Total Cost: $0.002875
  Execution Time: 58.76 seconds

Final Status: SAFE


No issues found.


Audit Skips:

yabsnap-2.4.2.tar.gz: [SKIPPED] Skipping binary file: yabsnap-2.4.2.tar.gz
