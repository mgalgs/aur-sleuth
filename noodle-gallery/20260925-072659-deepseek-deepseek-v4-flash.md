---
package: noodle-gallery
pkgver: 5.7.0
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 14686
completion_tokens: 2371
total_tokens: 17057
cost: 0.000951972
execution_time: 36.9
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-25T07:26:59Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard gitignore for AUR package build artifacts.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with pinned checksums, no malicious code.
  - file: noodle-gallery.service
    status: safe
    summary: Standard systemd service for Docker Compose.
  - file: noodle-gallery.install
    status: safe
    summary: Standard AUR install script, no malicious content found.
---

Materializing noodle-gallery from local mirror...
Materialized noodle-gallery
Analyzing noodle-gallery AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable assignments and function definitions at the top level. There are no command substitutions, `eval`, `curl`, `wget`, or any other executable statements that could run during `makepkg --printsrcinfo`. The `package()` function is defined but not executed during this step. All URLs point to the project's own upstream repository. No obfuscation or suspicious patterns are present. Therefore, sourcing this file to print metadata is safe.
</details>
<evidence></evidence>
<summary>No dangerous code executes during --printsrcinfo.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous code executes during --printsrcinfo.
Reviewing the 5 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, .gitignore...
[0/5] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `.gitignore` is a standard git ignore list for an Arch Linux AUR package build directory. It contains only common patterns (build artifacts, configuration templates, license file) that any AUR maintainer would want git to ignore. No commands, no network access, no obfuscation, and no deviation from expected packaging infrastructure. There is no evidence of any supply-chain attack or malicious intent.
</details>
<evidence></evidence>
<summary>Standard gitignore for AUR package build artifacts.</summary>
</security_assessment>

[0/5] Reviewing .SRCINFO, .gitignore, PKGBUILD, noodle-gallery.install...
[1/5] Reviewing .SRCINFO, PKGBUILD, noodle-gallery.install...
+ Reviewed .gitignore. Status: SAFE -- Standard gitignore for AUR package build artifacts.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is standard AUR metadata. All source URLs point to the project's own GitHub repository (`github.com/open-noodle/gallery`). Checksums are provided for every source file and are not set to SKIP, providing integrity verification. No suspicious network destinations, obfuscated content, or unusual directives are present. The file simply describes the package sources, dependencies, and checksums—everything expected of a legitimate AUR package.
</details>
<evidence></evidence>
<summary>Standard AUR metadata, no security issues.</summary>
</security_assessment>

[2/5] Reviewing PKGBUILD, noodle-gallery.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no security issues.
[2/5] Reviewing PKGBUILD, noodle-gallery.install, noodle-gallery.service...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard packaging script for a Docker Compose-based application. It downloads the expected files (docker-compose.yml, example.env, LICENSE) from the official GitHub releases of the open-noodle/gallery project, with pinned checksums. The package() function only installs files into the package directory. There is no build() function, no network requests beyond the declared sources, no obfuscated code, and no dangerous commands. The file follows normal AUR practices.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with pinned checksums, no malicious code.</summary>
</security_assessment>

[3/5] Reviewing noodle-gallery.install, noodle-gallery.service...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with pinned checksums, no malicious code.
LLM auditresponse for noodle-gallery.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This systemd service file is a standard unit for managing a Docker Compose application. It defines a oneshot service that starts and stops containers using `/usr/bin/docker compose` commands. The working directory points to `/etc/noodle-gallery` and checks for the existence of a `docker-compose.yml` file. There is no suspicious network request, obfuscated code, or unexpected system modification. All commands are legitimate Docker operations consistent with the package's stated purpose of self-hosted photo and video management.
</details>
<evidence></evidence>
<summary>Standard systemd service for Docker Compose.</summary>
</security_assessment>

[4/5] Reviewing noodle-gallery.install...
+ Reviewed noodle-gallery.service. Status: SAFE -- Standard systemd service for Docker Compose.
LLM auditresponse for noodle-gallery.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR `.install` script that performs routine post-installation setup for a Docker-based photo gallery (Noodle Gallery, a wrapper around Immich). The script:
- Stops the service on removal (pre_remove).
- On first install, creates a configuration directory under `/etc/noodle-gallery`, copies default config files from the package's own directory (`/usr/share/noodle-gallery/`), generates a random database password using `/dev/urandom`, and patches the `.env` file with paths and version. All file operations are local and within the package's scope.
- On upgrade, reloads systemd and prints a message.
- On removal, prints cleanup instructions.

There are **no network requests**, no downloads from external hosts, no execution of fetched code, no obfuscation, and no operations outside the package's own directories. The script uses only standard shell commands (`systemctl`, `install`, `tr`, `head`, `sed`, `printf`). No evidence of supply-chain attack or malicious behavior.
</details>
<evidence></evidence>
<summary>Standard AUR install script, no malicious content found.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed noodle-gallery.install. Status: SAFE -- Standard AUR install script, no malicious content found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 14,686
  Completion Tokens: 2,371
  Total Tokens: 17,057
  Total Cost: $0.000952
  Execution Time: 36.90 seconds

Final Status: SAFE


No issues found.
