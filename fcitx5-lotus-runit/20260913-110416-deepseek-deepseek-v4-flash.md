---
package: fcitx5-lotus-runit
pkgbase: fcitx5-lotus
pkgver: 3.5.9
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 13791
completion_tokens: 3446
total_tokens: 17237
cost: 0.001013467
execution_time: 65.79
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-13T11:04:16Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore for AUR build artifacts; no security concerns.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD, no malicious content found.
  - file: fcitx5-lotus.install
    status: safe
    summary: "Clean post-install script: only udev reload and informational echo output."
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; no malicious content.
---

fcitx5-lotus-runit is built from fcitx5-lotus
Materializing fcitx5-lotus-runit from local mirror...
Materialized fcitx5-lotus-runit
Analyzing fcitx5-lotus-runit AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The top-level scope of this PKGBUILD only contains variable definitions and function definitions. There are no command substitutions, backtick executions, or any code that would execute during sourcing. All values are static strings or arrays. The `$pkgver` expansion in the source array is a simple variable substitution, not a command. No functions (`prepare()`, `build()`, `prepare_staging()`, `package_*()`) are executed during `makepkg --printsrcinfo`. Therefore, no malicious code runs at this step.
</details>
<evidence></evidence>
<summary>Safe: no executable code at top-level.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe: no executable code at top-level.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .gitignore...
[0/4] Reviewing .gitignore, .SRCINFO...
[0/4] Reviewing .gitignore, .SRCINFO, PKGBUILD...
LLM auditresponse for .gitignore:
 <security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file for an AUR package build workflow. It excludes the typical makepkg artifacts: the `pkg/` and `src/` build directories, cloned source directories (`fcitx5-lotus/`, `bamboo-core/`), and built package archives (`*.pkg.tar`, `*.pkg.tar.zst`). There is no executable code, no network activity, no obfuscation, and no file operations outside the normal packaging scope. Nothing in this file deviates from standard packaging practice.
</details>
<evidence>
</evidence>
<summary>
Standard .gitignore for AUR build artifacts; no security concerns.</summary>
</security_assessment>

[0/4] Reviewing .gitignore, .SRCINFO, PKGBUILD, fcitx5-lotus.install...
[1/4] Reviewing .SRCINFO, PKGBUILD, fcitx5-lotus.install...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore for AUR build artifacts; no security concerns.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a well-structured, standard AUR package for the fcitx5-lotus Vietnamese input method. All operations are confined to the package&#x27;s own build and installation:

- **Sources**: Both come from the legitimate upstream GitHub repository (`LotusInputMethod/fcitx5-lotus` and `LotusInputMethod/bamboo-core`). The second source uses an unpinned VCS handle with `SKIP` checksum, which is normal for git sources and not evidence of malice.
- **prepare()**: Initializes the upstream git submodule and overrides its URL to point to the local `$srcdir/bamboo-core` copy to avoid redundant network fetching. This is a standard technique for offline submodule resolution. The `-c protocol.file.allow=always` flag is required for git to allow file-based submodule URLs.
- **build()**: Invokes cmake and make with expected flags for fcitx5 plugin compilation, including enabling OpenRC and runit service installation.
- **package functions**: Use `prepare_staging` to install the built files into a temporary staging directory via `make install DESTDIR=...`, then copy them into `$pkgdir`. This is a common pattern for splitting packages. All file operations are limited to the package&#x27;s own build root and destination directories.
- No network requests, encoded or obfuscated commands, data exfiltration, backdoors, or unexpected system modifications are present. Every command serves a legitimate packaging purpose.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD, no malicious content found.</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, fcitx5-lotus.install...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD, no malicious content found.
LLM auditresponse for fcitx5-lotus.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This is an Arch Linux `.install` script for the fcitx5-lotus package. It defines a `post_install()` function that prints Vietnamese-language post-installation instructions and runs `udevadm control --reload-rules` and `udevadm trigger`. Reloading udev rules is a standard packaging step for packages that ship udev/input configuration, and the rest of the script is limited to `echo` output. There are no network operations, no downloads, no `eval`, no encoded/obfuscated commands, and no file manipulation outside normal post-install behavior. The script contains no evidence of malicious or injected code.
</details>
<evidence>
</evidence>
<summary>
Clean post-install script: only udev reload and informational echo output.</summary>
</security_assessment>

[3/4] Reviewing .SRCINFO...
+ Reviewed fcitx5-lotus.install. Status: SAFE -- Clean post-install script: only udev reload and informational echo output.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a standard AUR metadata file that defines package sources, dependencies, and splits. All sources point to the project&#x27;s own GitHub repositories (LotusInputMethod), which is expected and not suspicious. The second VCS source (`bamboo-core.git`) is unpinned and uses `SKIP` for its checksum, which is normal for VCS sources in AUR packaging. While the first source (a git tag) has a checksum hash rather than `SKIP`, this is an unusual but not malicious practice &mdash; it may cause a build issue but does not indicate a supply chain attack. There is no obfuscated code, network requests to unexpected hosts, or any other malicious behavior. The file purely defines package metadata and does not contain executable instructions.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata; no malicious content.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,791
  Completion Tokens: 3,446
  Total Tokens: 17,237
  Total Cost: $0.001013
  Execution Time: 65.79 seconds

Final Status: SAFE


No issues found.
