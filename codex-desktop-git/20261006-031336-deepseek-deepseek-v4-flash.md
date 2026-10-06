---
package: codex-desktop-git
pkgver: 26.930.51102.r2164.gb1b3da24
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 16532
completion_tokens: 2637
total_tokens: 19169
cost: 0.0037126128
execution_time: 42.93
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-06T03:13:36Z
file_verdicts:
  - file: LicenseRef-OpenAI-Terms
    status: safe
    summary: Informational license file, no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; no malicious content detected.
  - file: PKGBUILD
    status: safe
    summary: Standard packaging script; no malicious code found.
  - file: codex-desktop-git.install
    status: safe
    summary: Legitimate install script, no malicious behavior.
---

Materializing codex-desktop-git from local mirror...
Materialized codex-desktop-git
Analyzing codex-desktop-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources only the global/top-level scope of this PKGBUILD. In that scope, the file contains only standard variable assignments (`pkgname`, `pkgver`, `pkgrel`, `arch`, `url`, `license`, dependencies, `source`, `sha256sums`, etc.) and function definitions (`prepare()`, `pkgver()`, `package()`). There are no top-level command substitutions, no `eval`, no `curl`/`wget` calls, no obfuscated encoding, and no network access or data exfiltration that would execute while the PKGBUILD is sourced.

The potentially interesting behavior — `install.sh` downloading OpenAI’s official deb, `pkgver()` reading `build-info.json`, and the `package()` staging logic — is all contained inside functions that are not executed by `makepkg --printsrcinfo`. Those are out of scope for this narrow gate and will be reviewed in the full audit. The `SKIP` checksum for the git source is also not relevant to this step, since no sources are downloaded or verified while running `--printsrcinfo`.
</details>
<evidence>
</evidence>
<summary>
Top-level PKGBUILD scope is safe; only definitions execute during --printsrcinfo.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD scope is safe; only definitions execute during --printsrcinfo.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, LicenseRef-OpenAI-Terms...
[0/4] Reviewing .SRCINFO, LicenseRef-OpenAI-Terms, PKGBUILD...
LLM auditresponse for LicenseRef-OpenAI-Terms:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a plain-text licensing notice. It contains no executable code, no network requests, no obfuscation, and no system-modification instructions. It simply explains the licensing terms for the AUR package (MIT for the port) and that the original ChatGPT application is downloaded from OpenAI's official CDN during the build process. This is standard for a wrapper package that distributes a third-party binary under different terms. There is no evidence of malicious behavior; the file is purely informational.
</details>
<evidence>
</evidence>
<summary>Informational license file, no security concerns.</summary>
</security_assessment>

[1/4] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed LicenseRef-OpenAI-Terms. Status: SAFE -- Informational license file, no security concerns.
[1/4] Reviewing .SRCINFO, PKGBUILD, codex-desktop-git.install...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is standard AUR package metadata. It defines a VCS package (`codex-desktop-git`) that pulls source code from the legitimate upstream GitHub repository (`ilysenko/codex-desktop-linux`). All dependencies are typical for an Electron-based desktop application (bash, xdg-utils, libraries like gtk3, mesa, etc.). The only checksummed file (`LicenseRef-OpenAI-Terms`) has a valid sha256sum, and the VCS source appropriately uses `SKIP` for its checksum. There are no embedded scripts, obfuscated commands, unexpected network requests, or any evidence of supply-chain injection. The file is purely declarative and conforms to AUR packaging conventions.
</details>
<evidence></evidence>
<summary>Standard AUR metadata; no malicious content detected.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, codex-desktop-git.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; no malicious content detected.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a well-documented, standard Arch packaging script for the `codex-desktop-git` package. It clones the upstream repository from GitHub, runs its `install.sh` script (which fetches and verifies the official OpenAI Linux deb package from OpenAI's own signed APT repository), then stages and installs the resulting files. All network destinations (GitHub for the source, `persistent.oaistatic.com` for the deb) are the project's own upstream or official distribution point. There is no obfuscated code, no unexpected file operations, no exfiltration, and no backdoor. The updater component (`codex-update-manager`) is explicitly disabled (`PACKAGE_WITH_UPDATER=0`), reducing attack surface. The use of `sha256sums='SKIP'` for the VCS source is normal and not evidence of malice. The packaging functions called (e.g., `stage_common_package_files`, `write_launcher_stub`) are upstream scripts performing routine build/install tasks. No malicious behavior detected.
</details>
<evidence></evidence>
<summary>Standard packaging script; no malicious code found.</summary>
</security_assessment>

[3/4] Reviewing codex-desktop-git.install...
+ Reviewed PKGBUILD. Status: SAFE -- Standard packaging script; no malicious code found.
LLM auditresponse for codex-desktop-git.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard pacman install script that conditionally sources helper scripts shipped by the package itself from `/opt/codex-desktop/.codex-linux/`. These helpers are placed by the package's own `package()` function, not from an external source. The script runs cleanup and desktop entry repair functions only when those helpers exist, which is a normal packaging pattern for handling upgrades and transitions. There is no obfuscated code, no network activity (no curl/wget), no arbitrary code execution from untrusted sources, and no exfiltration of system data. The file behaves exactly as expected for an AUR install script dealing with an application lifecycle.
</details>
<evidence></evidence>
<summary>Legitimate install script, no malicious behavior.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed codex-desktop-git.install. Status: SAFE -- Legitimate install script, no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 16,532
  Completion Tokens: 2,637
  Total Tokens: 19,169
  Total Cost: $0.003713
  Execution Time: 42.93 seconds

Final Status: SAFE


No issues found.
