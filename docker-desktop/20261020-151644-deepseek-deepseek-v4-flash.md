---
package: docker-desktop
pkgver: 4.96.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 16748
completion_tokens: 2530
total_tokens: 19278
cost: 0.001984528
execution_time: 29.56
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-20T15:16:43Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: "Standard `.gitignore` for AUR packaging; no security issues."
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with pinned checksum from official source.
  - file: nvchecker.toml
    status: safe
    summary: Standard nvchecker config for Docker version tracking.
  - file: docker-desktop.install
    status: safe
    summary: Standard Docker Desktop installer; no malicious code.
---

Materializing docker-desktop from local mirror...
Materialized docker-desktop
Analyzing docker-desktop AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources only the global/top-level scope of this PKGBUILD. The global scope contains standard variable assignments (`pkgname`, `pkgver`, `source`, `sha256sums`, etc.) and no command substitutions, no `eval`, no network fetch, and no executable payload. The `package()` function is not executed during `--printsrcinfo`, so its `w3m -dump` license download is out of scope for this narrow gate and will be reviewed in the full PKGBUILD audit.

The `source` array points to Docker's official desktop.docker.com URL with a pinned revision and a specific sha256sum. Even if the checksum were SKIPped, that would not affect this gate because no sources are downloaded or verified during `--printsrcinfo`.
</details>
<evidence>
</evidence>
<summary>
Top-level PKGBUILD scope is safe; package() actions are not executed during printsrcinfo.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD scope is safe; package() actions are not executed during printsrcinfo.
Reviewing the 5 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, .gitignore...
[0/5] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.gitignore` file contains only standard patterns to ignore build artifacts (`*.tar.zst`, `src/`, `pkg/`). There is no executable code, network requests, obfuscation, or any malicious behavior. It is a typical file used in AUR packaging workflows.
</details>
<evidence>
</evidence>
<summary>Standard `.gitignore` for AUR packaging; no security issues.</summary>
</security_assessment>

[0/5] Reviewing .SRCINFO, .gitignore, PKGBUILD, docker-desktop.install...
[1/5] Reviewing .SRCINFO, PKGBUILD, docker-desktop.install...
+ Reviewed .gitignore. Status: SAFE -- Standard `.gitignore` for AUR packaging; no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file is a standard AUR metadata file. It declares package metadata, dependencies, and a single source tarball fetched from the official Docker Desktop download server (`desktop.docker.com`). The source URL points to a `.pkg.tar.zst` file, and a SHA-256 checksum is provided (not skipped). There are no embedded scripts, no suspicious commands, no obfuscation, and no outbound requests to unexpected hosts. The content conforms to normal AUR packaging practices. No evidence of a supply-chain attack or malicious behavior was found.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file, no malicious content.</summary>
</security_assessment>

[2/5] Reviewing PKGBUILD, docker-desktop.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no malicious content.
[2/5] Reviewing PKGBUILD, docker-desktop.install, nvchecker.toml...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard Arch package definition for Docker Desktop, a precompiled binary application. The source tarball is downloaded from the official Docker desktop domain (`desktop.docker.com`) with a pinned SHA-256 checksum, ensuring integrity. The `package()` function installs binaries, plugins, and configuration files extracted from the tarball. The only dynamic network operation is a `w3m` call to fetch the Docker subscription agreement from `https://www.docker.com/legal/docker-subscription-service-agreement/` and save it as a license file. This is a legitimate packaging step to include the upstream license text and not an attempt to fetch or execute arbitrary code. All dependencies and conflicts are appropriate for the package. No obfuscated code, dangerous command execution, or unexpected system modifications are present.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with pinned checksum from official source.</summary>
</security_assessment>

[3/5] Reviewing docker-desktop.install, nvchecker.toml...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with pinned checksum from official source.
LLM auditresponse for nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard nvchecker configuration that uses a regex to extract version numbers from Docker's official release notes on GitHub. The URL points to `raw.githubusercontent.com/docker/docs`, which is the legitimate upstream source for Docker documentation. There is no obfuscated code, no dangerous commands (eval, curl, wget, etc.), no data exfiltration, and no deviation from expected packaging tooling. The configuration simply defines the version detection method for the `docker-desktop` package.
</details>
<evidence></evidence>
<summary>Standard nvchecker config for Docker version tracking.</summary>
</security_assessment>

[4/5] Reviewing docker-desktop.install...
+ Reviewed nvchecker.toml. Status: SAFE -- Standard nvchecker config for Docker version tracking.
LLM auditresponse for docker-desktop.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Arch Linux `.install` script for the `docker-desktop` package. It performs expected post-installation configuration tasks:

- Sets `cap_net_bind_service` and `cap_sys_resource` capabilities on the Docker Desktop backend binary to allow binding to privileged ports.
- Adds `kubernetes.docker.internal` to `/etc/hosts` (a documented Docker Desktop requirement for consistent kube context).
- Creates convenience symlinks in `/usr/local/bin` for `docker` and `compose-bridge`.
- Updates the desktop database via `update-desktop-database`.
- Configures user namespace ID mappings (`/etc/subuid` and `/etc/subgid`) for all logged-in users, enabling file sharing as documented by Docker Desktop.
- Manages the `docker-desktop` systemd user service for all users during install, upgrade, and removal.

All operations are within the expected scope of the application and use standard system utilities (`setcap`, `systemctl`, `loginctl`, `tee`, `ln`). There is no evidence of obfuscation, data exfiltration, unexpected network requests, or execution of untrusted code. The script modifies system configuration files only to enable Docker Desktop's stated functionality. No malicious supply-chain behavior is present.
</details>
<evidence>
</evidence>
<summary>Standard Docker Desktop installer; no malicious code.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed docker-desktop.install. Status: SAFE -- Standard Docker Desktop installer; no malicious code.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 16,748
  Completion Tokens: 2,530
  Total Tokens: 19,278
  Total Cost: $0.001985
  Execution Time: 29.56 seconds

Final Status: SAFE


No issues found.
