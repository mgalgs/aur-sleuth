---
package: fcitx5-lotus-runit
pkgbase: fcitx5-lotus
pkgver: 3.5.6
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 13836
completion_tokens: 2414
total_tokens: 16250
cost: 0.00158345376
execution_time: 57.29
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: ok
upstream_files: 241
upstream_named_files: 0
unpinned_sources: 0
date: 2026-08-29T07:04:47Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO, no malicious content.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with mutable submodule source; not malicious.
  - file: fcitx5-lotus.install
    status: safe
    summary: Standard post-install script, no malicious content.
---

fcitx5-lotus-runit is built from fcitx5-lotus
Cloning https://aur.archlinux.org/fcitx5-lotus.git...
Cloned fcitx5-lotus-runit
Analyzing fcitx5-lotus-runit AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable assignments in the global scope. The source array points to the official upstream repositories (LotusInputMethod/fcitx5-lotus and LotusInputMethod/bamboo-core) via git+https. No command substitutions, obfuscated code, or network requests to unexpected hosts occur at the top level. The single SKIP checksum for the bamboo-core VCS source is normal and does not execute any code during source fetching. The `pkgver()` function is absent, so no code runs there. All potentially dangerous operations (git submodule init/update, cmake, make install) are confined to `prepare()`, `build()`, and `package_*()` functions, which are not executed by `makepkg --nobuild --nodeps --noprepare` or `makepkg --printsrcinfo`. Therefore, running those two commands is safe.
</details>
<evidence></evidence>
<summary>No malicious code in global scope; safe to fetch sources.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code in global scope; safe to fetch sources.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Reviewing the 4 file(s) in the AUR repository. The 241 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .gitignore...
[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.SRCINFO` metadata file for an AUR package. It declares the package source from the project's own GitHub repository (`github.com/LotusInputMethod/fcitx5-lotus`), pinned to tag `v3.5.6` with a checksum, and an unpinned VCS dependency (`bamboo-core` with `SKIP` checksum, which is normal for git sources). No executable code, network requests, obfuscation, or system modifications are present. The file only describes package metadata. No security issues.
</details>
<evidence>
</evidence>
<summary>Standard .SRCINFO, no malicious content.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD, fcitx5-lotus.install...
[1/4] Reviewing .gitignore, PKGBUILD, fcitx5-lotus.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO, no malicious content.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` for an AUR package build environment. It ignores common build artifacts (`pkg/`, `src/`, package archives) and source directories (`fcitx5-lotus/`, `bamboo-core/`). There are no commands, network requests, obfuscation, or any behavior beyond ignoring files in version control. This is completely benign and standard packaging practice.
</details>
<evidence>
</evidence>
<summary>Standard .gitignore file, no security issues.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, fcitx5-lotus.install...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore file, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard Arch packaging practices. It fetches the upstream source from the project&#39;s official GitHub repository at a pinned tag (`v3.5.6`) and a submodule dependency (`bamboo-core`) via `git+https`. The build process uses `cmake` and `make`, and the package functions install files into standard locations (`/usr`, `/etc/init.d`, `/etc/runit/sv/`). There are no obfuscated commands, unexpected network calls, data exfiltration, or backdoors.

One supply-chain hygiene note: the `bamboo-core` source is unpinned (no commit hash or tag) and its checksum is set to `SKIP`. This means the downloaded content is mutable and not verified, which could allow an upstream compromise to propagate. However, this is a common practice for VCS sources in AUR packages and does not, by itself, indicate malicious intent. No other red flags are present.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with mutable submodule source; not malicious.</summary>
</security_assessment>

[3/4] Reviewing fcitx5-lotus.install...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with mutable submodule source; not malicious.
LLM auditresponse for fcitx5-lotus.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard post-install script for the fcitx5-lotus input method engine. It prints colored setup instructions in Vietnamese and runs common system commands (`modprobe uinput`, `udevadm control --reload-rules`, `udevadm trigger`) to ensure the uinput kernel module is loaded and udev rules are applied. These operations are expected for an input method package that requires uinput. There is no obfuscation, no network requests, no execution of externally fetched code, and no exfiltration of data. The script does not deviate from standard packaging practices.
</details>
<evidence></evidence>
<summary>Standard post-install script, no malicious content.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed fcitx5-lotus.install. Status: SAFE -- Standard post-install script, no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,836
  Completion Tokens: 2,414
  Total Tokens: 16,250
  Total Cost: $0.001583
  Execution Time: 57.29 seconds

Final Status: SAFE


No issues found.
