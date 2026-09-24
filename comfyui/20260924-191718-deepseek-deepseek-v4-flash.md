---
package: comfyui
pkgver: 0.37.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 25996
completion_tokens: 5581
total_tokens: 31577
cost: 0.00272070876
execution_time: 54.47
files_reviewed: 9
files_skipped: 0
maintainer_files: 9
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-24T19:17:17Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: A standard .gitignore file with no security concerns.
  - file: README.md
    status: safe
    summary: Documentation file, no executable or malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD for ComfyUI; no malicious content detected.
  - file: comfyui.service
    status: safe
    summary: Standard systemd service file, no security issues.
  - file: .SRCINFO
    status: safe
    summary: Declarative AUR metadata; official pinned upstream source; no malicious indicators.
  - file: comfyui.sysusers
    status: safe
    summary: Standard sysusers.d user definition; no security issues found.
  - file: comfyui.tmpfiles
    status: safe
    summary: Standard tmpfiles configuration, no security concerns.
  - file: comfyui.install
    status: safe
    summary: No malicious behavior found; install script performs normal package setup operations.
  - file: comfyui.sh
    status: safe
    summary: Standard launcher; no malicious behavior detected.
---

Materializing comfyui from local mirror...
Materialized comfyui
Analyzing comfyui AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard top-level variable definitions, arrays (depends, source, sha256sums, backup, options), and function definitions for `build()` and `package()`. No command substitutions, external command executions, or other active code exists in the global scope that would execute when the file is sourced by `makepkg --printsrcinfo`. The only dynamic expansion is `$_prefix` defaulting to `/opt/comfyui`, which is a simple variable assignment with no dangerous side effects.
</details>
<evidence></evidence>
<summary>No dangerous top-level code in PKGBUILD.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code in PKGBUILD.
Reviewing the 9 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/9] Reviewing .SRCINFO...
[0/9] Reviewing .SRCINFO, .gitignore...
[0/9] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` used to prevent build artifacts and manual archive backups from being tracked in version control. The listed patterns (`*.pkg.tar.zst`, `*.tar.gz`, `src/`, `pkg/`, `comfyui.install.orig`, `PKGBUILD.v*`) are entirely normal for an AUR package repository. There is no executable code, no network requests, no obfuscation, and no system modification commands. The file serves only to exclude files from `git` tracking.
</details>
<evidence></evidence>
<summary>A standard .gitignore file with no security concerns.</summary>
</security_assessment>

[0/9] Reviewing .SRCINFO, .gitignore, PKGBUILD, README.md...
[1/9] Reviewing .SRCINFO, PKGBUILD, README.md...
+ Reviewed .gitignore. Status: SAFE -- A standard .gitignore file with no security concerns.
LLM auditresponse for README.md:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a documentation file (README.md) for the ComfyUI AUR package. It contains no executable code, network requests, obfuscated content, or system-modifying instructions. All content is standard usage guidance and configuration examples. No security concerns are present.
</details>
<evidence>
</evidence>
<summary>Documentation file, no executable or malicious content.</summary>
</security_assessment>

[1/9] Reviewing .SRCINFO, PKGBUILD, README.md, comfyui.install...
[2/9] Reviewing .SRCINFO, PKGBUILD, comfyui.install...
+ Reviewed README.md. Status: SAFE -- Documentation file, no executable or malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard, well-structured Arch Linux package for the ComfyUI application. It downloads the official source tarball from GitHub (tagged release) and includes a SHA256 sum for verification, with SKIP on the auxiliary local files (comfyui.install, comfyui.sh, etc.), which is ordinary for files maintained alongside the PKGBUILD. The build and package stages perform routine operations: extracting the tarball, installing files to the prefix, creating template configuration files under /etc, and installing a launcher script, systemd service, sysusers, and tmpfiles. There is no obfuscated code, no network requests to unexpected hosts, no execution of untrusted fetched content, and no exfiltration of data. All operations serve the package's stated purpose. The SKIP checksums on the local files are standard AUR practice and not a security concern.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD for ComfyUI; no malicious content detected.</summary>
</security_assessment>

[2/9] Reviewing .SRCINFO, PKGBUILD, comfyui.install, comfyui.service...
[3/9] Reviewing .SRCINFO, comfyui.install, comfyui.service...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD for ComfyUI; no malicious content detected.
LLM auditresponse for comfyui.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service file for the ComfyUI application. It defines a simple service that runs the `/usr/bin/comfyui` binary as the `comfy` user and group, listens only on the localhost interface (`127.0.0.1`), and restarts on failure. The environment file is sourced from `/etc/comfyui/comfyui.conf` (optional, as indicated by the leading `-`). The `WorkingDirectory` placeholder `_PREFIX_` is a typical packaging variable that will be substituted during installation (e.g., with `/usr`). There are no dangerous commands, no network fetches, no obfuscation, and no deviation from standard packaging practices. The file is safe.
</details>
<evidence></evidence>
<summary>Standard systemd service file, no security issues.</summary>
</security_assessment>

[3/9] Reviewing .SRCINFO, comfyui.install, comfyui.service, comfyui.sh...
[4/9] Reviewing .SRCINFO, comfyui.install, comfyui.sh...
+ Reviewed comfyui.service. Status: SAFE -- Standard systemd service file, no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is purely declarative AUR metadata (.SRCINFO). It contains no executable code, no obfuscation, no suspicious URLs, and no network requests beyond declaring the package's upstream source. The only remote source is the official ComfyUI release tarball from the project's own GitHub repository (github.com/Comfy-Org/ComfyUI), pinned to a specific version tag (v0.37.0) and accompanied by a SHA-256 checksum, which is standard and safe packaging practice. The remaining sources are local package files (install script, shell wrapper, systemd service, sysusers/tmpfiles configs) with SKIP checksums — a common hygiene choice that is not evidence of malice. No supply-chain attack indicators are present in this metadata file.
</details>
<evidence>
</evidence>
<summary>
Declarative AUR metadata; official pinned upstream source; no malicious indicators.</summary>
</security_assessment>

[5/9] Reviewing comfyui.install, comfyui.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Declarative AUR metadata; official pinned upstream source; no malicious indicators.
[5/9] Reviewing comfyui.install, comfyui.sh, comfyui.sysusers...
LLM auditresponse for comfyui.sysusers:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `sysusers.d` configuration snippet used during package installation. It defines a system user named `comfy` with no password, a description, and a home directory of `/var/lib/comfyui`. This is a normal packaging practice for creating an unprivileged service account and does not perform any network activity, execute code, modify system files, or otherwise present malicious behavior.
</details>
<evidence>
</evidence>
<summary>
Standard sysusers.d user definition; no security issues found.</summary>
</security_assessment>

[5/9] Reviewing comfyui.install, comfyui.sh, comfyui.sysusers, comfyui.tmpfiles...
[6/9] Reviewing comfyui.install, comfyui.sh, comfyui.tmpfiles...
+ Reviewed comfyui.sysusers. Status: SAFE -- Standard sysusers.d user definition; no security issues found.
LLM auditresponse for comfyui.tmpfiles:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard systemd-tmpfiles configuration. It declares three directories under `/var/lib/comfyui` with ownership set to the `comfy` user and group. Such files are commonly used in AUR packages to ensure runtime data directories exist with correct permissions. There is no executable code, network access, obfuscation, or any other suspicious behavior. The content is entirely declarative and benign.
</details>
<evidence></evidence>
<summary>Standard tmpfiles configuration, no security concerns.</summary>
</security_assessment>

[7/9] Reviewing comfyui.install, comfyui.sh...
+ Reviewed comfyui.tmpfiles. Status: SAFE -- Standard tmpfiles configuration, no security concerns.
LLM auditresponse for comfyui.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This .install script performs routine package post-install/upgrade/removal actions: it creates a system user via systemd-sysusers, sets up data directories via systemd-tmpfiles, creates a Python virtual environment, and installs PyTorch/ComfyUI dependencies with pip. The network sources are official and directly tied to the package: download.pytorch.org and the package's own requirements.txt via PyPI. There is no exfiltration of local data, no download-and-execute from an unexpected host, no obfuscated or encoded commands, and no tampering with unrelated system files.

The `rm -rf` calls target only the package-owned venv and cache paths under `_PREFIX_`, and `chown -R comfy:comfy _PREFIX_` sets ownership of the package's own install prefix to its service user. These are plausible operations for a self-contained ComfyUI installation. Installing dependencies at package install time is unconventional for Arch binary packages, and pip fetching unpinned requirements is a supply-chain hygiene consideration, but it is not malicious behavior. The script is SAFE.
</details>
<evidence>

</evidence>
<summary>
No malicious behavior found; install script performs normal package setup operations.</summary>
</security_assessment>

[8/9] Reviewing comfyui.sh...
+ Reviewed comfyui.install. Status: SAFE -- No malicious behavior found; install script performs normal package setup operations.
LLM auditresponse for comfyui.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard launcher script for ComfyUI. It validates that the Python virtual environment and PyTorch exist (failures produce user-friendly error messages), then activates the venv and runs the application with predefined data directories and a configuration file. There are no network requests, no obfuscated code, no file exfiltration, and no execution of untrusted content. All operations are limited to the package’s own installation paths (`$_prefix`, `/etc/comfyui/`, `/var/lib/comfyui/`) and environment variables set by the user. The script follows normal Arch packaging practices.
</details>
<evidence></evidence>
<summary>Standard launcher; no malicious behavior detected.</summary>
</security_assessment>

[9/9] Reviewing ...
+ Reviewed comfyui.sh. Status: SAFE -- Standard launcher; no malicious behavior detected.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 25,996
  Completion Tokens: 5,581
  Total Tokens: 31,577
  Total Cost: $0.002721
  Execution Time: 54.47 seconds

Final Status: SAFE


No issues found.
