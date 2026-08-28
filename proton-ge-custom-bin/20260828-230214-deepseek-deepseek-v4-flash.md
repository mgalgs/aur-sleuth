---
package: proton-ge-custom-bin
pkgver: GE_Proton11_6
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 59300
completion_tokens: 4405
total_tokens: 63705
cost: 0.00589287720
execution_time: 112.86
files_reviewed: 10
files_skipped: 0
maintainer_files: 10
source_fetch: ok
upstream_files: 8090
upstream_named_files: 1
unpinned_sources: 0
date: 2026-08-28T23:02:13Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Harmless gitignore file, no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD; no malicious activity found.
  - file: changelog.md
    status: safe
    summary: Plain-text changelog with no executable content.
  - file: add-to-changelog.sh
    status: safe
    summary: "Safe: Routine changelog updater script with no malicious behavior."
  - file: launcher.sh
    status: safe
    summary: Proton GE launcher script, no malicious code.
  - file: pleasenote.install
    status: safe
    summary: Informational install script, no malicious activity.
  - file: user_settings.py
    status: safe
    summary: Static config dictionary, no executable code.
  - file: pam_limits.conf
    status: safe
    summary: Standard PAM limits config for gaming.
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config for upstream version tracking.
---

Cloning https://aur.archlinux.org/proton-ge-custom-bin.git...
Cloned proton-ge-custom-bin
Analyzing proton-ge-custom-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains variable assignments, array definitions, and function definitions (`build()` and `package()`). There is no `pkgver()` function, and no command substitutions or code execution in the global/top-level scope. The source array references local files and pre-built tarballs from the official GitHub releases of the upstream project (GloriousEggroll/proton-ge-custom). No dangerous commands such as `eval`, `curl|bash`, or base64-encoded payloads are present. Running `makepkg --nobuild --nodeps --noprepare` will only fetch and extract these sources; it will not execute any code from the PKGBUILD beyond sourcing it. The checksums are provided (not SKIP), so the source verification is routine. No evidence of malicious behavior for this narrow gate.
</details>
<evidence></evidence>
<summary>No dangerous code in global scope; safe to fetch sources.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous code in global scope; safe to fetch sources.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: the PKGBUILD names 1 file(s) in the downloaded sources (src/GE-Proton11-6-x86_64/files/bin/wine); they are upstream content and were not reviewed.
Reviewing the 10 file(s) in the AUR repository. The 8090 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/10] Reviewing .SRCINFO...
[0/10] Reviewing .SRCINFO, .gitignore...
[0/10] Reviewing .SRCINFO, .gitignore, .nvchecker.toml...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file for a PKGBUILD repository. It excludes build artifacts (`pkg/`, `src/`), compressed releases (`*.tar.zst`, `GE*.tar.gz`, `GE*.tar.gz.part`), and editor/IDE configuration directories (`.trunk/`, `.vscode/`, `.idea`, `.shellcheckrc`). No executable code, network operations, or obfuscated content is present. The file contains only static pattern lines and is not capable of performing any malicious actions.
</details>
<evidence></evidence>
<summary>Harmless gitignore file, no security concerns.</summary>
</security_assessment>

[0/10] Reviewing .SRCINFO, .gitignore, .nvchecker.toml, PKGBUILD...
[1/10] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Harmless gitignore file, no security concerns.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard AUR .SRCINFO metadata file that describes the `proton-ge-custom-bin` package. It contains no executable code, no obfuscated strings, no network requests, and no dangerous operations. All source archives are fetched from the official upstream GitHub releases of GloriousEggroll/proton-ge-custom using pinned version tags, and each source has a corresponding SHA-512 checksum listed. There are no `SKIP` checksums, no suspicious URLs, and no unusual dependencies or files. The file is purely declarative and follows normal packaging practices for a prebuilt binary AUR package.
</details>
<evidence></evidence>
<summary>Standard AUR metadata; no malicious content.</summary>
</security_assessment>

[2/10] Reviewing .nvchecker.toml, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; no malicious content.
[2/10] Reviewing .nvchecker.toml, PKGBUILD, add-to-changelog.sh...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard Arch Linux packaging practices for a binary distribution of Proton-GE. It downloads a prebuilt tarball from the official GitHub releases page over HTTPS, validates it with SHA-512 checksums, and installs files into the expected directories. The `sed` commands in `build()` modify the launcher and a VDF file to adjust paths — this is normal packaging adaptation, not malicious code injection. The `install` commands place configuration files (`pam_limits.conf`, `user_settings.py`) into system paths, which is appropriate for this application. There is no obfuscated code, no unexpected network requests, no data exfiltration, and no execution of untrusted code. The group 50 (`games`) permission on `user_settings.py` is a minor packaging nuance but not a security threat.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD; no malicious activity found.</summary>
</security_assessment>

[3/10] Reviewing .nvchecker.toml, add-to-changelog.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD; no malicious activity found.
[3/10] Reviewing .nvchecker.toml, add-to-changelog.sh, changelog.md...
LLM auditresponse for changelog.md:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a changelog (release notes) for the GE-Proton custom Proton builds. It contains only plain-text descriptions of version history, bug fixes, feature additions, and links to upstream commits. No executable code, obfuscated commands, network requests, or system modifications are present. The content is standard documentation for a software project and poses no security risk.
</details>
<evidence></evidence>
<summary>Plain-text changelog with no executable content.</summary>
</security_assessment>

[3/10] Reviewing .nvchecker.toml, add-to-changelog.sh, changelog.md, launcher.sh...
[4/10] Reviewing .nvchecker.toml, add-to-changelog.sh, launcher.sh...
+ Reviewed changelog.md. Status: SAFE -- Plain-text changelog with no executable content.
LLM auditresponse for add-to-changelog.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a maintainer helper that automates updating the package changelog. It uses `curl` to fetch release notes from the official GitHub API (`api.github.com/repos/GloriousEggroll/proton-ge-custom/releases/tags/$version`) and `jq` to parse the JSON response. The only file modifications are to `changelog.md` in the current directory. There is no obfuscation, no download-and-execute, no exfiltration of data, and no unusual network destinations. The script is transparent and aligns with standard AUR packaging helper practices.
</details>
<evidence></evidence>
<summary>Safe: Routine changelog updater script with no malicious behavior.</summary>
</security_assessment>

[5/10] Reviewing .nvchecker.toml, launcher.sh...
+ Reviewed add-to-changelog.sh. Status: SAFE -- Safe: Routine changelog updater script with no malicious behavior.
[5/10] Reviewing .nvchecker.toml, launcher.sh, pam_limits.conf...
LLM auditresponse for launcher.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a Proton GE launcher script that sets up environment variables for Steam compatibility and DXVK state cache paths, then invokes the Proton executable with the provided arguments. It performs no network requests, executes no obfuscated code, and does not read or exfiltrate any system files. The only file operations are creating the Wine prefix directory and the DXVK cache directory using `install -d`, which is standard for Proton launchers. The script is well-documented and follows expected AUR packaging practices for a Proton GE helper.
</details>
<evidence>
</evidence>
<summary>Proton GE launcher script, no malicious code.</summary>
</security_assessment>

[5/10] Reviewing .nvchecker.toml, launcher.sh, pam_limits.conf, pleasenote.install...
[6/10] Reviewing .nvchecker.toml, pam_limits.conf, pleasenote.install...
+ Reviewed launcher.sh. Status: SAFE -- Proton GE launcher script, no malicious code.
LLM auditresponse for pleasenote.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file &#34;pleasenote.install&#34; is a typical post-installation script for an AUR package. It contains only informational echo statements that advise the user about adding themselves to the &#39;games&#39; group to allow nicer niceness adjustments for Wine/Proton. There are no network requests, no file operations, no obfuscated code, and no execution of untrusted content. The script is purely advisory and poses no security risk.
</details>
<evidence></evidence>
<summary>Informational install script, no malicious activity.</summary>
</security_assessment>

[7/10] Reviewing .nvchecker.toml, pam_limits.conf...
+ Reviewed pleasenote.install. Status: SAFE -- Informational install script, no malicious activity.
[7/10] Reviewing .nvchecker.toml, pam_limits.conf, user_settings.py...
LLM auditresponse for user_settings.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `user_settings.py` is a static Python dictionary containing only commented-out environment variable settings for Proton GE (a popular community build of Proton for gaming on Linux). There is no executable code, no imports, no function calls, no network operations, no file writes or reads, and no obfuscation. Every entry is a well-known environment variable used by Proton, DXVK, VKD3D, or Wine (e.g., `PROTON_NO_D3D12`, `DXVK_HUD`, `WINEDEBUG`). The file is purely a user configuration template and does not perform any actions. It contains no malicious or suspicious behavior.
</details>
<evidence></evidence>
<summary>Static config dictionary, no executable code.</summary>
</security_assessment>

[8/10] Reviewing .nvchecker.toml, pam_limits.conf...
+ Reviewed user_settings.py. Status: SAFE -- Static config dictionary, no executable code.
LLM auditresponse for pam_limits.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a PAM limits configuration snippet that grants the `games` group a higher nice priority (-11). Such a setting is standard for gaming packages to improve performance. There is no executable code, network activity, or any unexpected behavior. It is a benign system configuration file.
</details>
<evidence></evidence>
<summary>Standard PAM limits config for gaming.</summary>
</security_assessment>

[9/10] Reviewing .nvchecker.toml...
+ Reviewed pam_limits.conf. Status: SAFE -- Standard PAM limits config for gaming.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a configuration file for `nvchecker`, a tool that checks for new upstream versions. It points to the official GitHub repository of GloriousEggroll's Proton GE Custom, uses regex patterns to parse tags, and defines a version transformation. There is no code execution, network request to an unexpected host, or any other malicious activity. It is a standard packaging helper file.
</details>
<evidence></evidence>
<summary>Standard nvchecker config for upstream version tracking.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config for upstream version tracking.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 59,300
  Completion Tokens: 4,405
  Total Tokens: 63,705
  Total Cost: $0.005893
  Execution Time: 112.86 seconds

Final Status: SAFE


No issues found.
