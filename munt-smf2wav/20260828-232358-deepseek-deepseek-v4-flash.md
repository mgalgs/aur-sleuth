---
package: munt-smf2wav
pkgbase: munt
pkgver: 2.8.2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 17167
completion_tokens: 2612
total_tokens: 19779
cost: 0.00193726932
execution_time: 219.4
files_reviewed: 6
files_skipped: 0
maintainer_files: 6
source_fetch: ok
upstream_files: 324
upstream_named_files: 0
unpinned_sources: 0
date: 2026-08-28T23:23:58Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with pinned checksums and upstream sources; no malicious behavior found.
  - file: .gitignore
    status: safe
    summary: Standard AUR .gitignore; no malicious content.
  - file: munt-daemon.install
    status: safe
    summary: Standard .install script; no malicious content.
  - file: munt-daemon.service
    status: safe
    summary: Standard systemd service file for MT-32 daemon.
  - file: munt.install
    status: safe
    summary: Standard install script with informational message only.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no security issues.
---

munt-smf2wav is built from munt
Cloning https://aur.archlinux.org/munt.git...
Cloned munt-smf2wav
Analyzing munt-smf2wav AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only static variable assignments and array definitions in its global scope. There is no `pkgver()` function, no top-level command substitutions, and no dangerous operations (e.g., `curl`, `eval`, `base64`) that would execute during `makepkg --nobuild --nodeps --noprepare` or `makepkg --printsrcinfo`. The `source` array references a tarball from the official GitHub repository and a local service file, both with provided checksums. No code in `prepare()`, `build()`, or `package()` is executed during the requested commands, so any content there is out of scope for this gate. The file is safe to source and fetch sources.
</details>
<evidence>
</evidence>
<summary>No malicious code in global scope or pkgver().</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code in global scope or pkgver().
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Reviewing the 6 file(s) in the AUR repository. The 324 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/6] Reviewing .SRCINFO...
[0/6] Reviewing .SRCINFO, .gitignore...
[0/6] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard AUR `.SRCINFO` metadata file for the `munt` package family. It declares upstream sources (a tagged GitHub release tarball and a systemd service file), checksums for both, and package split metadata. There are no network requests beyond the declared source URLs, no shell commands, no encoded or obfuscated content, and no file operations that would suggest supply-chain tampering.

The source URL points to the project's own upstream GitHub repository, and the checksums are pinned b2sums rather than `SKIP`, which is good packaging hygiene. The package configuration itself (dependencies, conflicts, replaces, install scripts) is consistent with normal Arch packaging practice. No evidence of malicious behavior was found.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata with pinned checksums and upstream sources; no malicious behavior found.
</summary>
</security_assessment>

[0/6] Reviewing .SRCINFO, .gitignore, PKGBUILD, munt-daemon.install...
[1/6] Reviewing .gitignore, PKGBUILD, munt-daemon.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with pinned checksums and upstream sources; no malicious behavior found.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file for an AUR package repository. It ignores all files by default (`*`) and then un-ignores only the essential packaging files: `PKGBUILD`, `.SRCINFO`, the `.gitignore` itself, and several `.install` files plus a systemd service file. There are no commands, network operations, or any executable content. It performs no malicious actions and is consistent with normal AUR packaging practices.
</details>
<evidence></evidence>
<summary>Standard AUR .gitignore; no malicious content.</summary>
</security_assessment>

[1/6] Reviewing .gitignore, PKGBUILD, munt-daemon.install, munt-daemon.service...
[2/6] Reviewing PKGBUILD, munt-daemon.install, munt-daemon.service...
+ Reviewed .gitignore. Status: SAFE -- Standard AUR .gitignore; no malicious content.
LLM auditresponse for munt-daemon.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Arch Linux .install script. It contains only `post_install` and `post_upgrade` functions that display a reminder message to the user about placing ROM files in the correct directory. There are no network operations, file modifications, obfuscated code, or any other malicious behavior. The script is entirely benign and consistent with normal packaging practices.
</details>
<evidence>
</evidence>
<summary>Standard .install script; no malicious content.</summary>
</security_assessment>

[2/6] Reviewing PKGBUILD, munt-daemon.install, munt-daemon.service, munt.install...
[3/6] Reviewing PKGBUILD, munt-daemon.service, munt.install...
+ Reviewed munt-daemon.install. Status: SAFE -- Standard .install script; no malicious content.
LLM auditresponse for munt-daemon.service:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard systemd service unit for the Munt MT-32 emulator daemon. It runs `/usr/bin/mt32d` as a simple service with no arguments, no environment variables, no network access, and no unusual commands. There are no signs of obfuscation, data exfiltration, or malicious activity. The service only starts the package's own binary at boot.
</details>
<evidence>
</evidence>
<summary>Standard systemd service file for MT-32 daemon.</summary>
</security_assessment>

[4/6] Reviewing PKGBUILD, munt.install...
+ Reviewed munt-daemon.service. Status: SAFE -- Standard systemd service file for MT-32 daemon.
LLM auditresponse for munt.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is an Arch Linux package install script (`.install`) that defines a `post_install()` function. The function outputs a plain text message to the user via `cat` with a here-document, informing them that the software requires proprietary ROMs from a Roland MT-32 / CM-32L / LAPC-I device. There are no network requests, no file writes (other than stdout), no execution of external code, no obfuscation, and no system modifications. This is standard and expected behavior for a package install script. No security issues are present.
</details>
<evidence></evidence>
<summary>Standard install script with informational message only.</summary>
</security_assessment>

[5/6] Reviewing PKGBUILD...
+ Reviewed munt.install. Status: SAFE -- Standard install script with informational message only.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Arch Linux packaging practices. The source is fetched from the upstream project's official GitHub repository with valid BLAKE2 checksums (not SKIP). The build process uses cmake and make in a conventional way. The `build()` function includes a separate make invocation for the ALSA driver component, but that is part of the upstream project and uses standard compiler flags. No obfuscated code, unauthorized network requests, or dangerous commands (eval, curl, wget in unexpected contexts) are present. The file only performs legitimate packaging operations: building the software, installing binaries, and placing a systemd service file. There are no indicators of supply-chain compromise or malicious injection.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with no security issues.</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 17,167
  Completion Tokens: 2,612
  Total Tokens: 19,779
  Total Cost: $0.001937
  Execution Time: 219.40 seconds

Final Status: SAFE


No issues found.
