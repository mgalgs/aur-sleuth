---
package: docker-desktop
pkgver: 4.90.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 16845
completion_tokens: 2646
total_tokens: 19491
cost: 0.001961471022
execution_time: 38.34
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-08T11:01:23Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Clean metadata file, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard Docker Desktop packaging with pinned checksum and benign official license fetch.
  - file: .gitignore
    status: safe
    summary: Standard gitignore no malicious content
  - file: docker-desktop.install
    status: safe
    summary: Standard Docker Desktop install script, no supply-chain risks.
  - file: nvchecker.toml
    status: safe
    summary: Standard nvchecker config for version checking.
---

Materializing docker-desktop from local mirror...
Materialized docker-desktop
Analyzing docker-desktop AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources only the global/top-level scope of this PKGBUILD. The global scope contains only standard variable and array definitions: `pkgname`, `pkgver`, `pkgrel`, `pkgdesc`, `arch`, `url`, `license`, `depends`, `conflicts`, `provides`, `makedepends`, `install`, `source`, and `sha256sums`. There are no top-level command substitutions, no `eval`, no network downloads, no file modifications, and no obfuscated code that would execute when the file is sourced.

The `package()` function contains an `install` of files and a `w3m -dump` network fetch of the Docker license; however, function bodies are not executed by `makepkg --printsrcinfo`. That behavior is out of scope for this narrow gate and will be reviewed in the full PKGBUILD audit. The checksum is pinned, but even a missing or SKIPped checksum would not fail this gate because no sources are downloaded or verified during `--printsrcinfo`.
</details>
<evidence>
</evidence>
<summary>
Top-level scope is standard metadata only; no code executes during printsrcinfo.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level scope is standard metadata only; no code executes during printsrcinfo.
Reviewing the 5 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, PKGBUILD...
[0/5] Reviewing .SRCINFO, PKGBUILD, .gitignore...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `.SRCINFO` is a standard Arch Linux package metadata file. It contains no executable code, no obfuscated strings, and no suspicious network operations. The source URL points to the official Docker Desktop release on `desktop.docker.com`, and a SHA256 checksum is provided for integrity verification. The dependencies are reasonable for a Docker Desktop package. There is no evidence of supply-chain attack or malicious behavior.
</details>
<evidence></evidence>
<summary>Clean metadata file, no malicious content.</summary>
</security_assessment>

[1/5] Reviewing PKGBUILD, .gitignore...
+ Reviewed .SRCINFO. Status: SAFE -- Clean metadata file, no malicious content.
[1/5] Reviewing PKGBUILD, .gitignore, docker-desktop.install...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a prebuilt binary package. The source is downloaded from Docker's official `desktop.docker.com` URL with a pinned `sha256sums` value, and the `package()` function only installs files from the unpacked upstream package into `$pkgdir`. There are no suspicious commands such as `eval`, `base64`, `curl | bash`, or encoded/obfuscated content, and no writes outside the package destination.

The only network operation is `w3m -dump https://www.docker.com/legal/docker-subscription-service-agreement/` to fetch the upstream license text into the package license directory. This is a benign, non-executing download from Docker's own official site and serves the package's stated licensing purpose. It is a minor reproducibility concern because the license text is fetched at build time without a checksum, but it is not malicious and does not warrant an UNSAFE decision.
</details>
<evidence>
</evidence>
<summary>
Standard Docker Desktop packaging with pinned checksum and benign official license fetch.</summary>
</security_assessment>

[1/5] Reviewing PKGBUILD, .gitignore, docker-desktop.install, nvchecker.toml...
[2/5] Reviewing .gitignore, docker-desktop.install, nvchecker.toml...
+ Reviewed PKGBUILD. Status: SAFE -- Standard Docker Desktop packaging with pinned checksum and benign official license fetch.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file for an AUR package repository. It ignores compiled package archives (*.tar.zst), the source extraction directory (src/), and the package assembly directory (pkg/). There is no code execution, no network activity, no obfuscation, and no deviation from normal packaging practices. No security concerns.
</details>
<evidence></evidence>
<summary>Standard gitignore no malicious content</summary>
</security_assessment>

[3/5] Reviewing docker-desktop.install, nvchecker.toml...
+ Reviewed .gitignore. Status: SAFE -- Standard gitignore no malicious content
LLM auditresponse for docker-desktop.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is an install script (`.install`) for the `docker-desktop` AUR package. It performs standard post-install, upgrade, and removal operations for Docker Desktop on Linux.  
- Sets `cap_net_bind_service,cap_sys_resource` capabilities on the backend binary – expected for binding privileged ports.  
- Adds a `kubernetes.docker.internal` entry to `/etc/hosts` – part of Docker Desktop’s Kubernetes context feature.  
- Creates symlinks in `/usr/local/bin` for `docker` and `compose-bridge` – typical for desktop integration.  
- For each logged-in user, adds entries to `/etc/subuid` and `/etc/subgid` for user namespace remapping (file sharing feature).  
- Manages user-scoped systemd units (`docker-desktop`) via `loginctl` and `systemctl --user` – routine for per-user services.  
No malicious code is present: no network downloads, no obfuscated commands, no exfiltration, no backdoors. All operations align with the upstream application’s documented behavior and standard AUR packaging practices.
</details>
<evidence></evidence>
<summary>Standard Docker Desktop install script, no supply-chain risks.</summary>
</security_assessment>

[4/5] Reviewing nvchecker.toml...
+ Reviewed docker-desktop.install. Status: SAFE -- Standard Docker Desktop install script, no supply-chain risks.
LLM auditresponse for nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a configuration file for nvchecker, a tool that monitors upstream software releases. It defines a single entry for `docker-desktop` that scrapes the official Docker release-notes page on GitHub using a regex to extract version numbers. The source URL points to the legitimate Docker documentation repository (`github.com/docker/docs`), and the regex pattern only matches version strings. There is no obfuscation, no network request to an unexpected host, and no execution of arbitrary code. This is a standard and benign packaging utility configuration.
</details>
<evidence></evidence>
<summary>Standard nvchecker config for version checking.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed nvchecker.toml. Status: SAFE -- Standard nvchecker config for version checking.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 16,845
  Completion Tokens: 2,646
  Total Tokens: 19,491
  Total Cost: $0.001961
  Execution Time: 38.34 seconds

Final Status: SAFE


No issues found.
