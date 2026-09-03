---
package: obs-plugin-looking-glass-git
pkgbase: looking-glass-git
pkgver: B7.r826.g236efcb1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: b9e20f728bbe0de1871ebaca31738c802edc31f8
prompt_tokens: 16189
completion_tokens: 2491
total_tokens: 18680
cost: 0.00155014062
execution_time: 181.27
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: ok
upstream_files: 1602
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-01T19:18:08Z
file_verdicts:
  - file: client.install
    status: safe
    summary: Install script with only informational messages.
  - file: .SRCINFO
    status: safe
    summary: Pure metadata file with standard VCS sources; no malicious or suspicious content found.
  - file: host.install
    status: safe
    summary: Simple warning message, no malicious behavior.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR VCS package, no security issues found.
---

obs-plugin-looking-glass-git is built from looking-glass-git
Cloning https://aur.archlinux.org/looking-glass-git.git...
Cloned obs-plugin-looking-glass-git
Analyzing obs-plugin-looking-glass-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard packaging code in its global scope and `pkgver()` function. The global scope defines variables (`pkgname`, `pkgver`, `source`, etc.) and function stubs. The `pkgver()` function runs `git describe` and `printf` – both benign operations. All source URLs reference legitimate upstream repositories (GitHub/GitLab). There are no malicious commands (e.g., curl, wget, eval, base64 decoding, data exfiltration) in the top-level or `pkgver()` code. While `prepare()` contains `git submodule` operations, these are not executed due to the `--noprepare` flag. Therefore, running `makepkg --nobuild --nodeps --noprepare` to fetch sources and print SRCINFO is safe.
</details>
<evidence></evidence>
<summary>Only standard code in top-level and pkgver(); safe to fetch.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Only standard code in top-level and pkgver(); safe to fetch.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Reviewing the 4 file(s) in the AUR repository. The 1602 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, PKGBUILD...
[0/4] Reviewing .SRCINFO, PKGBUILD, client.install...
LLM auditresponse for client.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file contains only `post_install()` and `post_upgrade()` functions that print informational messages to the user. There are no network requests, file operations, system modifications, obfuscated code, or any other potentially dangerous behavior. The escape sequences are standard terminal color codes used for display purposes only. This is a benign install script that simply reminds the user to download the Windows host application from the official Looking Glass website.
</details>
<evidence></evidence>
<summary>Install script with only informational messages.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, PKGBUILD, client.install, host.install...
[1/4] Reviewing .SRCINFO, PKGBUILD, host.install...
+ Reviewed client.install. Status: SAFE -- Install script with only informational messages.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard AUR `.SRCINFO` metadata file for the `looking-glass-git` package and its split packages. It contains only packaging metadata: package name, description, dependencies, source URLs, and `SKIP` checksums. There is no executable code, no network-exfiltrating commands, no obfuscated data, and no unexpected file operations.

All sources point to the project's upstream repositories (`github.com/gnif/...`, `github.com/cimgui/...`, `gitlab.freedesktop.org/...`, etc.), which is expected for VCS-based packaging. The `sha512sums = SKIP` entries are required for git sources and are a normal Arch packaging practice for `-git` packages, not a sign of malice. No suspicious downloads, backdoors, or build-time mutations are present.
</details>
<evidence>
</evidence>
<evidence>
</evidence>
<summary>
Pure metadata file with standard VCS sources; no malicious or suspicious content found.
</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, host.install...
+ Reviewed .SRCINFO. Status: SAFE -- Pure metadata file with standard VCS sources; no malicious or suspicious content found.
LLM auditresponse for host.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The `host.install` script contains only two functions: `post_install()` and `post_upgrade()`. Both functions do nothing more than print a warning message using `echo -e`. There are no network requests, file operations, execution of external code, or any commands that could exfiltrate data or modify the system outside the package's normal behavior. The warning is a static text string; no user-controlled or variable content is evaluated. This script is benign and poses no supply-chain or security risk.
</details>
<evidence></evidence>
<summary>Simple warning message, no malicious behavior.</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed host.install. Status: SAFE -- Simple warning message, no malicious behavior.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard AUR VCS package for the Looking Glass project. All sources are fetched from the official upstream repositories (GitHub, GitLab). Checksums are set to `SKIP`, which is normal for `-git` packages. The `prepare()` function initializes git submodules and points them to local copies of the dependencies already fetched via the `source` array – this is a common pattern for AUR VCS packages to avoid network fetches during `makepkg`. The build process uses `cmake` and `make` with standard flags. Installation steps copy files to expected system paths (`/usr/lib/obs-plugins`, `/usr/src/`, etc.). There are no suspicious network requests, obfuscated code, or unexpected system modifications. The `.install` files referenced (`client.install`, `host.install`) are not provided here, but they are standard Arch Linux post-installation scripts and are common for this package. No evidence of supply-chain attack or malicious behavior.
</details>
<evidence>
</evidence>
<summary>Standard AUR VCS package, no security issues found.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR VCS package, no security issues found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 16,189
  Completion Tokens: 2,491
  Total Tokens: 18,680
  Total Cost: $0.001550
  Execution Time: 181.27 seconds

Final Status: SAFE


No issues found.
