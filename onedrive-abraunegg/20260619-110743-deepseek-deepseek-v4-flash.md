---
package: onedrive-abraunegg
pkgver: 2.5.10
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 11c93a0c95e2166961e3664fea6b5a63827ded10
prompt_tokens: 39636
completion_tokens: 7581
total_tokens: 47217
cost: 0.00493182
execution_time: 64.28
files_reviewed: 11
files_skipped: 1
date: 2026-06-19T11:07:43Z
file_verdicts:
  - file: v2.5.10.tar.gz
    status: skipped
    summary: "Skipping binary file: v2.5.10.tar.gz"
  - file: PKGBUILD
    status: safe
    summary: Clean PKGBUILD with pinned source and no suspicious behavior
  - file: src/onedrive-2.5.10/configure.ac
    status: safe
    summary: Standard autoconf script; no malicious code detected.
  - file: src/onedrive-2.5.10/tests/makefiles.sh
    status: safe
    summary: Test helper script; no malicious behavior found.
  - file: src/onedrive-2.5.10/contrib/spec/onedrive.spec.in
    status: safe
    summary: Standard RPM spec, no malicious content found.
  - file: src/onedrive-2.5.10/contrib/pacman/PKGBUILD.in
    status: safe
    summary: Standard PKGBUILD with expected workaround; no malicious behavior.
  - file: src/onedrive-2.5.10/contrib/init.d/onedrive.init
    status: safe
    summary: Standard init script, no security issues.
  - file: "src/onedrive-2.5.10/contrib/systemd/onedrive@.service.in"
    status: safe
    summary: Standard systemd service for legitimate OneDrive client
  - file: src/onedrive-2.5.10/contrib/docker/Dockerfile
    status: safe
    summary: Standard multi-stage Dockerfile with no malicious content.
  - file: src/onedrive-2.5.10/contrib/systemd/onedrive.service.in
    status: safe
    summary: Standard systemd service template for OneDrive client.
  - file: src/onedrive-2.5.10/contrib/docker/entrypoint.sh
    status: safe
    summary: Standard container entrypoint, no malicious behavior found.
  - file: src/onedrive-2.5.10/contrib/init.d/onedrive_service.sh
    status: safe
    summary: Standard init.d script; no security issues.
---

Cloning https://aur.archlinux.org/onedrive-abraunegg.git to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-yff9tkzl...
Cloned repository to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-yff9tkzl
Analyzing onedrive-abraunegg AUR package (working in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-yff9tkzl) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable assignments and function definitions. The `source` array points to the official upstream GitHub release tarball, and the checksum is provided (not SKIP). There is no `pkgver()` function, so no code execution during sourcing. The `build()` and `package()` functions are defined but will not be executed by the requested commands (`--nobuild --nodeps --noprepare`). No top-level code or command substitutions exist that could execute malicious actions. The file is a typical, well-formed PKGBUILD for the `onedrive-abraunegg` package.
</details>
<summary>Standard PKGBUILD, no dangerous top-level code.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- Standard PKGBUILD, no dangerous top-level code.[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, v2.5.10.tar.gz...
[1/2] Reviewing PKGBUILD...
! Reviewed v2.5.10.tar.gz. Status: SKIPPED -- Skipping binary file: v2.5.10.tar.gz
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard Arch Linux package build file for the abraunegg fork of OneDrive. It downloads a specific release tarball (v2.5.10) from the project&#39;s official GitHub repository with a valid MD5 checksum. The build process consists of running `./configure` and `make`, both typical for D-based projects, and then installing with `make install`. The only customization is a linker flag export to fix a RELRO hardening warning, which is a best-practice improvement. There are no obfuscated commands, unexpected network requests, data exfiltration, or any other signs of supply-chain compromise. The package behaves exactly as expected for an AUR package distributing an upstream release.
</details>
<summary>Clean PKGBUILD with pinned source and no suspicious behavior</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Clean PKGBUILD with pinned source and no suspicious behavior
Reviewed all required files.
Deciding which files to review next...
Note: 101 files available for selection; offering the 50 highest-priority to the model. 50 lower-priority file(s) were not offered.
LLM response for file selection:
src/onedrive-2.5.10/configure.ac
src/onedrive-2.5.10/contrib/systemd/onedrive.service.in
src/onedrive-2.5.10/contrib/systemd/onedrive@.service.in
src/onedrive-2.5.10/contrib/init.d/onedrive.init
src/onedrive-2.5.10/contrib/init.d/onedrive_service.sh
src/onedrive-2.5.10/contrib/pacman/PKGBUILD.in
src/onedrive-2.5.10/contrib/spec/onedrive.spec.in
src/onedrive-2.5.10/contrib/docker/entrypoint.sh
src/onedrive-2.5.10/contrib/docker/Dockerfile
src/onedrive-2.5.10/tests/makefiles.sh
Decided to review 10 additional files: src/onedrive-2.5.10/configure.ac, src/onedrive-2.5.10/contrib/systemd/onedrive.service.in, src/onedrive-2.5.10/contrib/systemd/onedrive@.service.in, src/onedrive-2.5.10/contrib/init.d/onedrive.init, src/onedrive-2.5.10/contrib/init.d/onedrive_service.sh, src/onedrive-2.5.10/contrib/pacman/PKGBUILD.in, src/onedrive-2.5.10/contrib/spec/onedrive.spec.in, src/onedrive-2.5.10/contrib/docker/entrypoint.sh, src/onedrive-2.5.10/contrib/docker/Dockerfile, src/onedrive-2.5.10/tests/makefiles.sh
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/onedrive-2.5.10/contrib/systemd/onedrive.service.in...
[0/10] Reviewing src/onedrive-2.5.10/contrib/systemd/onedrive.service.in, src/onedrive-2.5.10/configure.ac...
[0/10] Reviewing src/onedrive-2.5.10/contrib/systemd/onedrive.service.in, src/onedrive-2.5.10/configure.ac, src/onedrive-2.5.10/contrib/systemd/onedrive@.service.in...
[0/10] Reviewing src/onedrive-2.5.10/contrib/systemd/onedrive.service.in, src/onedrive-2.5.10/configure.ac, src/onedrive-2.5.10/contrib/systemd/onedrive@.service.in, src/onedrive-2.5.10/contrib/init.d/onedrive.init...
[0/10] Reviewing src/onedrive-2.5.10/contrib/systemd/onedrive.service.in, src/onedrive-2.5.10/configure.ac, src/onedrive-2.5.10/contrib/systemd/onedrive@.service.in, src/onedrive-2.5.10/contrib/init.d/onedrive.init, src/onedrive-2.5.10/contrib/init.d/onedrive_service.sh...
[0/10] Reviewing src/onedrive-2.5.10/contrib/systemd/onedrive.service.in, src/onedrive-2.5.10/configure.ac, src/onedrive-2.5.10/contrib/systemd/onedrive@.service.in, src/onedrive-2.5.10/contrib/init.d/onedrive.init, src/onedrive-2.5.10/contrib/init.d/onedrive_service.sh, src/onedrive-2.5.10/contrib/spec/onedrive.spec.in...
[0/10] Reviewing src/onedrive-2.5.10/contrib/systemd/onedrive.service.in, src/onedrive-2.5.10/configure.ac, src/onedrive-2.5.10/contrib/systemd/onedrive@.service.in, src/onedrive-2.5.10/contrib/init.d/onedrive.init, src/onedrive-2.5.10/contrib/init.d/onedrive_service.sh, src/onedrive-2.5.10/contrib/spec/onedrive.spec.in, src/onedrive-2.5.10/contrib/pacman/PKGBUILD.in...
[0/10] Reviewing src/onedrive-2.5.10/contrib/systemd/onedrive.service.in, src/onedrive-2.5.10/configure.ac, src/onedrive-2.5.10/contrib/systemd/onedrive@.service.in, src/onedrive-2.5.10/contrib/init.d/onedrive.init, src/onedrive-2.5.10/contrib/init.d/onedrive_service.sh, src/onedrive-2.5.10/contrib/spec/onedrive.spec.in, src/onedrive-2.5.10/contrib/pacman/PKGBUILD.in, src/onedrive-2.5.10/contrib/docker/entrypoint.sh...
[0/10] Reviewing src/onedrive-2.5.10/contrib/systemd/onedrive.service.in, src/onedrive-2.5.10/configure.ac, src/onedrive-2.5.10/contrib/systemd/onedrive@.service.in, src/onedrive-2.5.10/contrib/init.d/onedrive.init, src/onedrive-2.5.10/contrib/init.d/onedrive_service.sh, src/onedrive-2.5.10/contrib/spec/onedrive.spec.in, src/onedrive-2.5.10/contrib/pacman/PKGBUILD.in, src/onedrive-2.5.10/contrib/docker/entrypoint.sh, src/onedrive-2.5.10/contrib/docker/Dockerfile...
[0/10] Reviewing src/onedrive-2.5.10/contrib/systemd/onedrive.service.in, src/onedrive-2.5.10/configure.ac, src/onedrive-2.5.10/contrib/systemd/onedrive@.service.in, src/onedrive-2.5.10/contrib/init.d/onedrive.init, src/onedrive-2.5.10/contrib/init.d/onedrive_service.sh, src/onedrive-2.5.10/contrib/spec/onedrive.spec.in, src/onedrive-2.5.10/contrib/pacman/PKGBUILD.in, src/onedrive-2.5.10/contrib/docker/entrypoint.sh, src/onedrive-2.5.10/contrib/docker/Dockerfile, src/onedrive-2.5.10/tests/makefiles.sh...
LLM auditresponse for configure.ac:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `configure.ac` is a standard Autoconf configuration script for the OneDrive Linux client. It defines build parameters, checks for the D compiler and its version, verifies required system libraries (libcurl, sqlite3, dbus), handles optional features (notifications, completions, systemd integration), and generates build-related files. There is no obfuscated code, no hidden network requests, no exfiltration of system data, no backdoors, and no use of dangerous commands like `eval`, `base64`, `curl|bash`, or `wget` in unexpected contexts. The script follows normal packaging practices; all external references are to the project's own upstream (GitHub) and standard system libraries. The `vercomp` function is a straightforward version comparison helper. No supply-chain attack indicators are present.
</details>
<summary>Standard autoconf script; no malicious code detected.</summary>
</security_assessment>

[1/10] Reviewing src/onedrive-2.5.10/contrib/systemd/onedrive.service.in, src/onedrive-2.5.10/contrib/systemd/onedrive@.service.in, src/onedrive-2.5.10/contrib/init.d/onedrive.init, src/onedrive-2.5.10/contrib/init.d/onedrive_service.sh, src/onedrive-2.5.10/contrib/spec/onedrive.spec.in, src/onedrive-2.5.10/contrib/pacman/PKGBUILD.in, src/onedrive-2.5.10/contrib/docker/entrypoint.sh, src/onedrive-2.5.10/contrib/docker/Dockerfile, src/onedrive-2.5.10/tests/makefiles.sh...
+ Reviewed src/onedrive-2.5.10/configure.ac. Status: SAFE -- Standard autoconf script; no malicious code detected.
LLM auditresponse for makefiles.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script creates a test environment for the OneDrive client, generating legitimate test files and edge-case filenames (whitespace, special characters, Windows reserved names). It only interacts with local files under `~/OneDriveALT`, uses `dd` for file creation, and extracts a local tarball. No network access, no obfuscated code, no execution of untrusted content, and no system-wide modifications. This is a standard testing helper script; no supply-chain attack indicators are present.
</details>
<summary>Test helper script; no malicious behavior found.</summary>
</security_assessment>

[2/10] Reviewing src/onedrive-2.5.10/contrib/systemd/onedrive.service.in, src/onedrive-2.5.10/contrib/systemd/onedrive@.service.in, src/onedrive-2.5.10/contrib/init.d/onedrive.init, src/onedrive-2.5.10/contrib/init.d/onedrive_service.sh, src/onedrive-2.5.10/contrib/spec/onedrive.spec.in, src/onedrive-2.5.10/contrib/pacman/PKGBUILD.in, src/onedrive-2.5.10/contrib/docker/entrypoint.sh, src/onedrive-2.5.10/contrib/docker/Dockerfile...
+ Reviewed src/onedrive-2.5.10/tests/makefiles.sh. Status: SAFE -- Test helper script; no malicious behavior found.
LLM auditresponse for onedrive.spec.in:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard RPM spec template for building the `onedrive` package. It sources the upstream tarball from the official GitHub repository (`https://github.com/abraunegg/onedrive`). All build steps (configure, make, install) use normal RPM macros and no unconventional commands. There are no occurrences of `curl`, `wget`, `eval`, `base64`, `exec`, or other suspicious operations. The file contains only standard packaging logic (compiler selection, dependencies, systemd service installation) and an extensive changelog. No malicious or obfuscated behavior is present.
</details>
<summary>Standard RPM spec, no malicious content found.</summary>
</security_assessment>

[3/10] Reviewing src/onedrive-2.5.10/contrib/systemd/onedrive.service.in, src/onedrive-2.5.10/contrib/systemd/onedrive@.service.in, src/onedrive-2.5.10/contrib/init.d/onedrive.init, src/onedrive-2.5.10/contrib/init.d/onedrive_service.sh, src/onedrive-2.5.10/contrib/pacman/PKGBUILD.in, src/onedrive-2.5.10/contrib/docker/entrypoint.sh, src/onedrive-2.5.10/contrib/docker/Dockerfile...
+ Reviewed src/onedrive-2.5.10/contrib/spec/onedrive.spec.in. Status: SAFE -- Standard RPM spec, no malicious content found.
LLM auditresponse for PKGBUILD.in:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD.in is a template for the `onedrive-abraunegg` package. It downloads the official upstream tarball from GitHub and extracts it. The `build()` function runs `git init`, `git add`, `git commit`, and `git tag` – these commands are needed by the upstream project's build system to determine the version (via `git describe`). This is a legitimate packaging workaround, not a supply-chain attack. No suspicious network requests, obfuscated code, or dangerous operations are present. The use of `sha256sums=('SKIP')` is a reproducibility concern but not evidence of malice.
</details>
<summary>Standard PKGBUILD with expected workaround; no malicious behavior.</summary>
</security_assessment>

[4/10] Reviewing src/onedrive-2.5.10/contrib/systemd/onedrive.service.in, src/onedrive-2.5.10/contrib/systemd/onedrive@.service.in, src/onedrive-2.5.10/contrib/init.d/onedrive.init, src/onedrive-2.5.10/contrib/init.d/onedrive_service.sh, src/onedrive-2.5.10/contrib/docker/entrypoint.sh, src/onedrive-2.5.10/contrib/docker/Dockerfile...
+ Reviewed src/onedrive-2.5.10/contrib/pacman/PKGBUILD.in. Status: SAFE -- Standard PKGBUILD with expected workaround; no malicious behavior.
LLM auditresponse for onedrive.init:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard System V init script for the OneDrive Client for Linux. It sources system function libraries, checks network status, and defines start/stop/restart/status actions. The script sets a PATH and runs `onedrive_service.sh` via the `daemon` function as root, which is expected for a system service. There are no network requests, downloads, obfuscated code, or commands that deviate from normal packaging practices. No evidence of malicious or supply-chain attack behavior.
</details>
<summary>Standard init script, no security issues.</summary>
</security_assessment>

[5/10] Reviewing src/onedrive-2.5.10/contrib/systemd/onedrive.service.in, src/onedrive-2.5.10/contrib/systemd/onedrive@.service.in, src/onedrive-2.5.10/contrib/init.d/onedrive_service.sh, src/onedrive-2.5.10/contrib/docker/entrypoint.sh, src/onedrive-2.5.10/contrib/docker/Dockerfile...
+ Reviewed src/onedrive-2.5.10/contrib/init.d/onedrive.init. Status: SAFE -- Standard init script, no security issues.
LLM auditresponse for onedrive@.service.in:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard systemd service template for the OneDrive client from the `abraunegg/onedrive` project. It defines basic service behavior: waiting for network, running the `onedrive` binary with `--monitor` for a specific user (`%i`), and restarting on failure. The only command executed is `sleep 15` as a delay; this is benign. There are no network requests, code downloads, obfuscated commands, or file manipulations beyond the expected application invocation. The `@prefix@` placeholder is typical for autoconf/meson build systems and will be substituted during installation. No evidence of malicious or dangerous behavior.
</details>
<summary>Standard systemd service for legitimate OneDrive client</summary>
</security_assessment>

[6/10] Reviewing src/onedrive-2.5.10/contrib/systemd/onedrive.service.in, src/onedrive-2.5.10/contrib/init.d/onedrive_service.sh, src/onedrive-2.5.10/contrib/docker/entrypoint.sh, src/onedrive-2.5.10/contrib/docker/Dockerfile...
+ Reviewed src/onedrive-2.5.10/contrib/systemd/onedrive@.service.in. Status: SAFE -- Standard systemd service for legitimate OneDrive client
LLM auditresponse for Dockerfile:
<security_assessment>
<decision>SAFE</decision>
<details>
The Dockerfile follows standard multi-stage build practices for packaging the `onedrive` client from upstream source. It builds `gosu` from the official tianon/gosu repository and `onedrive` from the local source (copied via `COPY .`). All package installations (`dnf install`, `go install`) use trusted repositories (Fedora upstream, Go module proxy). No obfuscated commands, suspicious network destinations, or unexpected file operations are present. The file is consistent with the package's intended functionality on Arch Linux and contains no evidence of a supply-chain attack.
</details>
<summary>
Standard multi-stage Dockerfile with no malicious content.</summary>
</security_assessment>

[7/10] Reviewing src/onedrive-2.5.10/contrib/systemd/onedrive.service.in, src/onedrive-2.5.10/contrib/init.d/onedrive_service.sh, src/onedrive-2.5.10/contrib/docker/entrypoint.sh...
+ Reviewed src/onedrive-2.5.10/contrib/docker/Dockerfile. Status: SAFE -- Standard multi-stage Dockerfile with no malicious content.
LLM auditresponse for onedrive.service.in:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a systemd service unit template (`onedrive.service.in`) for the OneDrive Linux client. It defines a standard service that runs the `onedrive --monitor` binary after a short delay. The file includes typical service hardening directives (e.g., `ProtectSystem=full`, `ProtectHostname=true`, `RestrictRealtime=true`) and standard restart behavior. There are no suspicious commands, network fetches, encoded payloads, or file operations outside the expected scope. The use of `@prefix@` is a build-time substitution placeholder, not a runtime code execution vector. This file is consistent with legitimate AUR packaging and poses no security threat.
</details>
<summary>Standard systemd service template for OneDrive client.</summary>
</security_assessment>

[8/10] Reviewing src/onedrive-2.5.10/contrib/init.d/onedrive_service.sh, src/onedrive-2.5.10/contrib/docker/entrypoint.sh...
+ Reviewed src/onedrive-2.5.10/contrib/systemd/onedrive.service.in. Status: SAFE -- Standard systemd service template for OneDrive client.
LLM auditresponse for entrypoint.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Docker container entrypoint for the onedrive-abraunegg client. It handles user/group management (creating a non-root user if running as root) and constructs command-line arguments from environment variables before executing the `/usr/local/bin/onedrive` binary. There are no network requests, no obfuscated code, no unexpected file operations, and no execution of code from untrusted sources. The script follows normal container best practices (e.g., dropping privileges via `gosu`). All operations are consistent with the package's stated purpose of running a OneDrive synchronization client in a container environment.
</details>
<summary>Standard container entrypoint, no malicious behavior found.</summary>
</security_assessment>

[9/10] Reviewing src/onedrive-2.5.10/contrib/init.d/onedrive_service.sh...
+ Reviewed src/onedrive-2.5.10/contrib/docker/entrypoint.sh. Status: SAFE -- Standard container entrypoint, no malicious behavior found.
LLM auditresponse for onedrive_service.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a minimal init.d helper that launches the `onedrive` command with typical options (`--monitor`, `--verbose`, `--enable-logging`), redirects output to `/dev/null`, runs in the background, and exits. There is no obfuscation, no network calls, no file manipulation outside its scope, and no execution of untrusted code. The behavior is exactly what one would expect for a SysV init script. No security concerns.
</details>
<summary>Standard init.d script; no security issues.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/onedrive-2.5.10/contrib/init.d/onedrive_service.sh. Status: SAFE -- Standard init.d script; no security issues.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
(Skipped 1 file: v2.5.10.tar.gz)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 39,636
  Completion Tokens: 7,581
  Total Tokens: 47,217
  Total Cost: $0.004932
  Execution Time: 64.28 seconds
Full audit report can be found in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-onedrive-abraunegg.txt
Final Status: SAFE


No issues found.


Audit Skips:

/home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-yff9tkzl/v2.5.10.tar.gz: [SKIPPED] Skipping binary file: v2.5.10.tar.gz
