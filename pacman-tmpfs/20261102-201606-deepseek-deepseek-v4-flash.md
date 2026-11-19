---
package: pacman-tmpfs
pkgver: 2026.11.02
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 14770
completion_tokens: 3613
total_tokens: 18383
cost: 0.002001636
execution_time: 26.61
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-02T20:16:06Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Static metadata file, no executable code or threats.
  - file: install.sh
    status: safe
    summary: Standard install script, no malicious behavior.
  - file: PKGBUILD
    status: safe
    summary: No malicious code; standard AUR wrapper package.
  - file: pacman-tmpfs.sh
    status: safe
    summary: Legitimate tmpfs wrapper, no malicious behavior.
---

Materializing pacman-tmpfs from local mirror...
Materialized pacman-tmpfs
Analyzing pacman-tmpfs AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD’s top-level scope reads a quoted here-document into `_usage` and then writes that fixed usage text to `/tmp/pacman-tmpfs_usage.txt` with `echo -n`. There is no command substitution, network access, decoding of obfuscated data, or execution of downloaded content during sourcing.

The top-level `/tmp` write is an unusual packaging side effect and could warrant a hygiene/symlink note in a fuller audit, but it does not execute malicious code and is not sufficient to fail this narrow `makepkg --printsrcinfo` gate. The `pkgver()`, `prepare()`, `build()`, and `package()` functions are not executed by this command.
</details>
<evidence>
</evidence>
<summary>
Top-level code only writes usage text to /tmp; no malicious execution.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level code only writes usage text to /tmp; no malicious execution.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, PKGBUILD...
[0/4] Reviewing .SRCINFO, PKGBUILD, install.sh...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.SRCINFO` metadata file for an AUR package. It contains only package metadata such as name, version, description, dependencies, and source file references. No code, commands, or executable instructions are present. The `source` array lists a single script with a pinned SHA-256 checksum, and the only file referenced is a standard install script (`install.sh`). There is no evidence of malicious content, obfuscation, network downloads, or system modifications. This file is purely declarative and cannot execute.
</details>
<evidence></evidence>
<summary>Static metadata file, no executable code or threats.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, PKGBUILD, install.sh, pacman-tmpfs.sh...
[1/4] Reviewing PKGBUILD, install.sh, pacman-tmpfs.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Static metadata file, no executable code or threats.
LLM auditresponse for install.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Arch Linux package install script. It reads a pre-generated usage message from a temporary file and prints it to the terminal, then removes the file. There are no dangerous commands, no network requests, no obfuscation, and no operations outside the expected packaging workflow. The behavior is benign and typical for displaying post-install information.
</details>
<evidence></evidence>
<summary>Standard install script, no malicious behavior.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, pacman-tmpfs.sh...
+ Reviewed install.sh. Status: SAFE -- Standard install script, no malicious behavior.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD defines a wrapper that redirects package manager caches to tmpfs. It sources a single shell script (`pacman-tmpfs.sh`) with a pinned SHA-256 checksum, creates symlinks in `/usr/local/bin/` for `pacman`, `yay`, and `paru`, and references an install script (`install.sh`). The only top-level side effect is a harmless `echo` writing usage text to `/tmp` (a temporary file that persists only during the build). There are no network fetches beyond the declared source (the AUR git repo itself), no obfuscated or encoded commands, no exfiltration of system data, and no execution of untrusted code. The package’s purpose — wrapping package managers to use tmpfs caches — is clearly stated, and its implementation is straightforward and consistent with AUR packaging conventions.
</details>
<evidence>
</evidence>
<summary>No malicious code; standard AUR wrapper package.</summary>
</security_assessment>

[3/4] Reviewing pacman-tmpfs.sh...
+ Reviewed PKGBUILD. Status: SAFE -- No malicious code; standard AUR wrapper package.
LLM auditresponse for pacman-tmpfs.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a wrapper for pacman and AUR helpers (yay, paru) that redirects temporary and cache directories to a tmpfs location. It creates temporary directories, copies system configuration files, and runs the packer with the modified environment. All file operations are confined to the script's own temporary workspace (`/tmp/.packer_wrapper_tmp/`) and standard cache/user directories that the AUR helpers normally use.  

There is no network downloads, obfuscated commands, eval, base64 decoding, or any code that exfiltrates data or installs backdoors. The `rm -rf` calls on `/var/cache/pacman/pkg/*` and home cache directories are intentional cleanup operations documented in comments (workaround for a pacman bug). The script does not load or execute any code from untrusted sources. It only invokes the system's own pacman or AUR helper binary based on the script's name.  

The use of `mktemp --dry-run` is safe (it only outputs a path). The modification of temporary copies of `/etc/pacman.conf` and `/etc/makepkg.conf` is standard practice for overriding settings. No security concerns are present.
</details>
<evidence></evidence>
<summary>Legitimate tmpfs wrapper, no malicious behavior.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed pacman-tmpfs.sh. Status: SAFE -- Legitimate tmpfs wrapper, no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 14,770
  Completion Tokens: 3,613
  Total Tokens: 18,383
  Total Cost: $0.002002
  Execution Time: 26.61 seconds

Final Status: SAFE


No issues found.
