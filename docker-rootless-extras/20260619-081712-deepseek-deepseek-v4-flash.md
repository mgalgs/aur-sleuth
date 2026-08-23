---
package: docker-rootless-extras
pkgver: 29.6.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 11c93a0c95e2166961e3664fea6b5a63827ded10
prompt_tokens: 26460
completion_tokens: 2705
total_tokens: 29165
cost: 0.00286830
execution_time: 35.95
files_reviewed: 6
files_skipped: 0
date: 2026-06-19T08:17:12Z
file_verdicts:
  - file: 99-docker-rootless.conf
    status: safe
    summary: Standard sysctl config for Docker rootless; no risk.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with legitimate upstream sources and safe operations.
  - file: docker-rootless-extras.install
    status: safe
    summary: Informational post-install script, no malicious code.
  - file: dockerd-rootless-29.6.0.sh
    status: safe
    summary: Standard Docker rootless startup script, no malicious behavior.
  - file: dockerd-rootless-setuptool-29.6.0.sh
    status: safe
    summary: Standard Docker rootless setup tool, no malicious content.
  - file: docker.socket
    status: safe
    summary: Standard Docker socket unit, no security issues.
---

Cloning https://aur.archlinux.org/docker-rootless-extras.git to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-z3hd90u2...
Cloned repository to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-z3hd90u2
Analyzing docker-rootless-extras AUR package (working in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-z3hd90u2) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only defines variables and a `package()` function that is not executed during `makepkg --nobuild --nodeps --noprepare`. The global scope contains only standard variable assignments, an `install=` line, and a series of `: "${var}"` no-op expansions which have no side effects. No dangerous commands (eval, curl|bash, base64 decoding, etc.) are present in the global scope or any executed function. The `source` array downloads files from the official Docker GitHub repository (`raw.githubusercontent.com/moby/moby`), which is the expected upstream source. Checksums are provided and pinned to a specific version tag. No obfuscation, unexpected network destinations, or exfiltration patterns are visible. Running the two specified commands is safe.
</details>
<summary>No dangerous code in global scope or source fetching.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- No dangerous code in global scope or source fetching.[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/3] Reviewing PKGBUILD...
[0/3] Reviewing PKGBUILD, docker-rootless-extras.install...
[0/3] Reviewing PKGBUILD, docker-rootless-extras.install, 99-docker-rootless.conf...
LLM auditresponse for 99-docker-rootless.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a sysctl configuration snippet (placed in `/etc/sysctl.d/`) that sets `kernel.unprivileged_userns_clone=1`. This kernel parameter is required for Docker rootless mode to function properly, as it enables unprivileged user namespace creation. The file contains no executable code, no network requests, no obfuscation, and no references to other files or commands. It is a standard, non-malicious packaging adjustment.
</details>
<summary>Standard sysctl config for Docker rootless; no risk.</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, docker-rootless-extras.install...
+ Reviewed 99-docker-rootless.conf. Status: SAFE -- Standard sysctl config for Docker rootless; no risk.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD fetches scripts from the official moby/moby GitHub repository (raw.githubusercontent.com/moby/moby/...) with pinned version `docker-v${pkgver}` and provides valid SHA-256 checksums. The build process installs these scripts, a systemd socket file, and a sysctl configuration into standard system paths. It uses `awk` and `sed` to extract a systemd service unit from one of the upstream scripts—a transparent and justifiable packaging technique to avoid running an installer that would modify `$HOME`. There are no network requests to unexpected hosts, no obfuscated code, no dangerous commands (curl|bash, eval, base64 decode), and no attempt to exfiltrate or modify data outside the package scope. All operations are standard for an AUR PKGBUILD. The only noteworthy point is the use of `sed` and `awk` on the upstream script, but this is fully explained in comments and serves a legitimate purpose (extracting a service file without executing the script). No security issues.
</details>
<summary>Standard AUR PKGBUILD with legitimate upstream sources and safe operations.</summary>
</security_assessment>

[2/3] Reviewing docker-rootless-extras.install...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with legitimate upstream sources and safe operations.
LLM auditresponse for docker-rootless-extras.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard post-installation script for an AUR package. It runs `sysctl --system` to reload kernel parameters and then prints a help message to the user with instructions on how to configure rootless Docker. There are no network requests, no downloads of code from external sources, no obfuscation, and no dangerous commands like `eval`, `curl`, or `wget`. The behavior is purely informational and follows normal packaging practices.
</details>
<summary>
Informational post-install script, no malicious code.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed docker-rootless-extras.install. Status: SAFE -- Informational post-install script, no malicious code.
Reviewed all required files.
Deciding which files to review next...
Decided to review 3 additional files: docker.socket, dockerd-rootless-29.6.0.sh, dockerd-rootless-setuptool-29.6.0.sh
Reviewing additional files...
Reviewing additional files...
[0/3] Reviewing docker.socket...
[0/3] Reviewing docker.socket, dockerd-rootless-29.6.0.sh...
[0/3] Reviewing docker.socket, dockerd-rootless-29.6.0.sh, dockerd-rootless-setuptool-29.6.0.sh...
LLM auditresponse for dockerd-rootless-29.6.0.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is the standard `dockerd-rootless.sh` from Docker's official rootless extras, used to launch dockerd in a rootless environment via rootlesskit. It performs no suspicious activities: it checks for required dependencies (rootlesskit, slirp4netns, etc.), constructs command-line arguments for rootlesskit, and then executes either rootlesskit (in the parent context) or dockerd (in the child context). All network destinations and executables are the package's own upstream tools (rootlesskit, dockerd, slirp4netns, etc.) from standard locations. There is no obfuscated code, no unexpected network requests, no exfiltration of data, and no system modifications outside the package's scope. The use of `exec`, `mount`, `nsenter`, and `sysctl` are normal for this kind of container runtime helper script. The file exactly matches the upstream source for the `docker-rootless-extras` package and contains no injected malicious code.
</details>
<summary>Standard Docker rootless startup script, no malicious behavior.</summary>
</security_assessment>

[1/3] Reviewing docker.socket, dockerd-rootless-setuptool-29.6.0.sh...
+ Reviewed dockerd-rootless-29.6.0.sh. Status: SAFE -- Standard Docker rootless startup script, no malicious behavior.
LLM auditresponse for dockerd-rootless-setuptool-29.6.0.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a legitimate setup tool for Docker rootless mode. It performs standard checks (OS, user, dependencies, subuid/subgid) and installs systemd units or prints manual instructions. All operations are typical for this type of tool: validating prerequisites, creating service files, creating Docker CLI contexts, and providing setup guidance. There is no obfuscation, no unexpected network requests, no code downloading, no exfiltration of data, and no execution of attacker-controlled content. The script only interacts with system configuration in expected ways (e.g., writing systemd unit files under `~/.config/systemd/user/`). No supply-chain attack indicators are present.
</details>
<summary>Standard Docker rootless setup tool, no malicious content.</summary>
</security_assessment>

[2/3] Reviewing docker.socket...
+ Reviewed dockerd-rootless-setuptool-29.6.0.sh. Status: SAFE -- Standard Docker rootless setup tool, no malicious content.
LLM auditresponse for docker.socket:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard systemd socket unit for the Docker daemon. It creates a Unix socket at `/run/docker.sock` with permissions 0660. There are no suspicious commands, network requests, obfuscated content, or deviations from expected packaging. The content is clean and serves its intended purpose without any security concerns.
</details>
<summary>Standard Docker socket unit, no security issues.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed docker.socket. Status: SAFE -- Standard Docker socket unit, no security issues.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 26,460
  Completion Tokens: 2,705
  Total Tokens: 29,165
  Total Cost: $0.002868
  Execution Time: 35.95 seconds
Full audit report can be found in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-docker-rootless-extras.txt
Final Status: SAFE


No issues found.
