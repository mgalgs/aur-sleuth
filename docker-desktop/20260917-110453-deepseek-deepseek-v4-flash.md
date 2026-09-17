---
package: docker-desktop
pkgver: 4.91.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 16841
completion_tokens: 2925
total_tokens: 19766
cost: 0.002010558746
execution_time: 68.39
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-17T11:04:52Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Benign .gitignore with no security concerns.
  - file: .SRCINFO
    status: safe
    summary: AUR metadata file with safe, declarative content only.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with pinned checksum and official source.
  - file: docker-desktop.install
    status: safe
    summary: Routine install script for docker-desktop; no malicious behavior found.
  - file: nvchecker.toml
    status: safe
    summary: "Standard nvchecker config checking Docker's official release notes; no malicious behavior."
---

Materializing docker-desktop from local mirror...
Materialized docker-desktop
Analyzing docker-desktop AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable assignments and a `package()` function. No code executes in the global/top-level scope that could be dangerous when sourced by `makepkg --printsrcinfo`. The only command (`w3m` fetching a license) resides inside `package()`, which is not run during this step. The source URL points to the official Docker Desktop distribution, and checksums are pinned. There is no obfuscated code, network exfiltration, or unexpected system modifications in the top-level scope.
</details>
<evidence></evidence>
<summary>No top-level code executes; safe to parse.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level code executes; safe to parse.
Reviewing the 5 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, .gitignore...
[0/5] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` used in Arch Linux packaging workflows. It ignores common build artifacts (`*.tar.zst`, `src/`, `pkg/`). There is no executable code, no network requests, no obfuscation, and no deviation from normal packaging practices. No security concerns.
</details>
<evidence>
</evidence>
<summary>Benign .gitignore with no security concerns.</summary>
</security_assessment>

[1/5] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Benign .gitignore with no security concerns.
[1/5] Reviewing .SRCINFO, PKGBUILD, docker-desktop.install...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard AUR `.SRCINFO` metadata file, containing only declarative information such as package version, dependencies, source URLs, and checksums. The source URL points to the official Docker Desktop release tarball on `desktop.docker.com`, and a valid SHA-256 checksum is provided (not SKIP), ensuring integrity. No scripts, commands, or executable content are present. There is no evidence of obfuscation, exfiltration, or other malicious behavior. The file conforms to normal packaging practices and poses no supply-chain security risk.
</details>
<evidence>
</evidence>
<summary>AUR metadata file with safe, declarative content only.</summary>
</security_assessment>

[1/5] Reviewing .SRCINFO, PKGBUILD, docker-desktop.install, nvchecker.toml...
[2/5] Reviewing PKGBUILD, docker-desktop.install, nvchecker.toml...
+ Reviewed .SRCINFO. Status: SAFE -- AUR metadata file with safe, declarative content only.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices. It downloads a prebuilt binary tarball from an official Docker domain (desktop.docker.com) with a pinned SHA256 checksum. The `package()` function installs files from the extracted tarball into the package directory. The only network request is a `w3m -dump` of the Docker subscription agreement from docker.com, which is used to include the license text in the package – this is expected and not suspicious. There is no obfuscated code, no execution of downloaded scripts, no backdoors, and no exfiltration of local data. The file is consistent with a legitimate AUR package.
</details>
<evidence>
</evidence>
<summary>Standard PKGBUILD with pinned checksum and official source.</summary>
</security_assessment>

[3/5] Reviewing docker-desktop.install, nvchecker.toml...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with pinned checksum and official source.
LLM auditresponse for docker-desktop.install:
 <security_assessment>
<decision>SAFE</decision>
<details>
This `.install` script performs only routine packaging operations for the docker-desktop package. The `setcap` call grants the Docker Desktop backend the ability to bind to privileged ports and adjust resource limits, which directly serves the application&apos;s stated purpose of running containers. The `/etc/hosts` modification adds a well-known `kubernetes.docker.internal` entry that Docker Desktop itself documents as needed for host/container kube context compatibility; it is idempotently appended and clearly labeled.

The `loginctl`/`systemctl --user --machine=...` invocations iterate over logged-in users to stop, enable, start, and reload the `docker-desktop` user service during install/upgrade/removal. This is the standard way to manage per-user systemd services for all logged-in users and matches the AUR package&apos;s install logic. The `/etc/subuid` and `/etc/subgid` entries are explicitly part of Docker Desktop&apos;s documented file-sharing feature and are only appended when the user is missing.

There is no obfuscation, no network fetching, no `curl|bash`, no base64/eval, no exfiltration, and no tampering with files outside the application&apos;s own scope beyond the documented, purpose-specific configuration changes described above. All behavior is consistent with ordinary packaging and upstream application functionality.
</details>
<evidence>
</evidence>
<summary>Routine install script for docker-desktop; no malicious behavior found.</summary>
</security_assessment>

[4/5] Reviewing nvchecker.toml...
+ Reviewed docker-desktop.install. Status: SAFE -- Routine install script for docker-desktop; no malicious behavior found.
LLM auditresponse for nvchecker.toml:
 <security_assessment>
<decision>SAFE</decision>
<details>
This is a standard nvchecker configuration file used to monitor upstream releases of docker-desktop. The `source = "regex"` directive tells nvchecker to fetch the Docker Desktop release notes from the official `docker/docs` GitHub repository, and the regex extracts semantic version numbers (e.g. 1.2.3) from markdown headings. This is an ordinary, expected use of nvchecker by an AUR maintainer.

There is no code execution, no obfuscation, no data exfiltration, no binary download, and no dangerous shell activity. The URL points to Docker's own documentation repository, which is the correct upstream source for release notes. Tracking the `main` branch is normal for a version checker whose purpose is to detect the latest release; it is not a supply-chain vector in this context. Nothing here deviates from standard packaging practice.
</details>
<evidence>
</evidence>
<summary>Standard nvchecker config checking Docker's official release notes; no malicious behavior.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed nvchecker.toml. Status: SAFE -- Standard nvchecker config checking Docker's official release notes; no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 16,841
  Completion Tokens: 2,925
  Total Tokens: 19,766
  Total Cost: $0.002011
  Execution Time: 68.39 seconds

Final Status: SAFE


No issues found.
