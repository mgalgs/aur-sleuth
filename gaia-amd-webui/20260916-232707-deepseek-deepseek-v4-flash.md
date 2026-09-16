---
package: gaia-amd-webui
pkgbase: gaia-amd
pkgver: 0.24.1
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 26471
completion_tokens: 9817
total_tokens: 36288
cost: 0.0035178115
execution_time: 342.5
files_reviewed: 8
files_skipped: 0
maintainer_files: 8
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-16T23:27:06Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: Standard license file, no security issues.
  - file: .gitignore
    status: safe
    summary: Standard AUR .gitignore with no security issues.
  - file: gaia-amd.install
    status: safe
    summary: Standard .install script, no malicious behavior.
  - file: gaia-user.service
    status: safe
    summary: A clean systemd service file with no security concerns.
  - file: gaia.service
    status: safe
    summary: Standard systemd service unit, no security issues found.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no malicious behavior.
  - file: gaia.sysusers
    status: safe
    summary: Sysusers file for gaia user; no security issues.
  - file: .SRCINFO
    status: safe
    summary: Declarative AUR metadata with pinned checksums from the official upstream AMD repository. No malicious behavior found.
---

gaia-amd-webui is built from gaia-amd
Materializing gaia-amd-webui from local mirror...
Materialized gaia-amd-webui
Analyzing gaia-amd-webui AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
 <security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources only the top-level (global) scope of this PKGBUILD. At that scope the file contains only standard PKGBUILD metadata: pkgname, pkgver, arch, url, depends, optdepends, makedepends, sha256sums, the source array, and the function definitions for prepare(), build(), package_gaia-amd(), and package_gaia-amd-webui(). Merely defining a function does not execute it, so the sed/npm/electron-builder/install logic inside those functions cannot run during this gate.

I found no dangerous top-level constructs: no command substitutions (`$(` or backticks), no eval, no base64/hex-decoded payloads, no curl or wget at global scope, no sourcing of external scripts, and no global code that reads or exfiltrates local files. `pkgver` is a literal value (0.24.1), so it does not trigger code execution. The source array points to the package's own upstream GitHub tag, and a real checksum is provided for that tarball; in any case `makepkg --printsrcinfo` does not download or verify sources, so checksum/SKIP considerations are out of scope for this gate.

The prepare(), build(), and package_*() functions contain extensive patching and build operations (source-tree modifications, npm install/build, electron-builder, systemd and desktop-file installation). Those are exactly the operations that need review in the full PKGBUILD audit that follows, but they are out of scope here because `makepkg --printsrcinfo` never invokes them.

Hygiene notes for the later audit (not grounds to fail this gate): auxiliary sources such as gaia.service and gaia-user.service may have unpinned or SKIP checksums, which is a reproducibility concern rather than an execution risk at this step.
</details>
<evidence></evidence>
<summary>
No executable or exfiltrating code exists in the global/top-level scope that would run during `makepkg --printsrcinfo`. All build, patch, and install logic is confined to function bodies that this command does not invoke. Sourcing this PKGBUILD for metadata printing is safe.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No executable or exfiltrating code exists in the global/top-level scope that would run during `makepkg --printsrcinfo`. All build, patch, and install logic is confined to function bodies that this command does not invoke. Sourcing this PKGBUILD for metadata printing is safe.
Reviewing the 8 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/8] Reviewing .SRCINFO...
[0/8] Reviewing .SRCINFO, .gitignore...
[0/8] Reviewing .SRCINFO, .gitignore, LICENSE...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard permissive software license (ISC-style). It contains only legal text granting permissions and disclaiming warranties. No executable code, network requests, obfuscation, or system modifications are present. This is a normal and expected file in any package repository.
</details>
<evidence></evidence>
<summary>Standard license file, no security issues.</summary>
</security_assessment>

[0/8] Reviewing .SRCINFO, .gitignore, LICENSE, PKGBUILD...
[1/8] Reviewing .SRCINFO, .gitignore, PKGBUILD...
+ Reviewed LICENSE. Status: SAFE -- Standard license file, no security issues.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file for an AUR package that excludes build artifacts (`pkg/`, `src/`) and compressed package archives. It contains no code execution, no network requests, no encoded or obfuscated content, and no system modifications. It is a routine configuration file with no security concerns.
</details>
<evidence></evidence>
<summary>Standard AUR .gitignore with no security issues.</summary>
</security_assessment>

[1/8] Reviewing .SRCINFO, .gitignore, PKGBUILD, gaia-amd.install...
[2/8] Reviewing .SRCINFO, PKGBUILD, gaia-amd.install...
+ Reviewed .gitignore. Status: SAFE -- Standard AUR .gitignore with no security issues.
LLM auditresponse for gaia-amd.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Arch Linux .install script for the gaia-amd-webui package. It performs routine operations: reloading systemd daemon, printing informational messages to the user about how to start services (lemond, gaia-webui), and managing systemd units during upgrade and removal. All commands (`systemctl`, `echo`) are standard and expected. There is no obfuscated code, no network requests, no file operations outside of the package's own services, and no execution of downloaded content. The script is consistent with legitimate packaging practices.
</details>
<evidence></evidence>
<summary>Standard .install script, no malicious behavior.</summary>
</security_assessment>

[2/8] Reviewing .SRCINFO, PKGBUILD, gaia-amd.install, gaia-user.service...
[3/8] Reviewing .SRCINFO, PKGBUILD, gaia-user.service...
+ Reviewed gaia-amd.install. Status: SAFE -- Standard .install script, no malicious behavior.
LLM auditresponse for gaia-user.service:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard systemd user service unit that launches the `gaia` binary with the `--ui` flag. It sets two environment variables: `PYTHON_KEYRING_BACKEND` to disable keyring prompts (common for headless or automated environments) and `GAIA_SKIP_DEVICE_CHECK=1` to bypass hardware checks. These are legitimate configuration options for the upstream AMD Gaia project. There is no network activity, file manipulation, obfuscation, or execution of external content. The service follows standard packaging practices for launching a daemon and restarting on failure.
</details>
<evidence></evidence>
<summary>A clean systemd service file with no security concerns.</summary>
</security_assessment>

[3/8] Reviewing .SRCINFO, PKGBUILD, gaia-user.service, gaia.service...
[4/8] Reviewing .SRCINFO, PKGBUILD, gaia.service...
+ Reviewed gaia-user.service. Status: SAFE -- A clean systemd service file with no security concerns.
LLM auditresponse for gaia.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard systemd unit file for the AMD Gaia Agent UI. It defines a simple service that runs `/usr/bin/gaia --ui` as the `gaia` user and group. The environment variables set are for application configuration (null keyring backend, skip device check). There is no evidence of malicious activity: no downloads, encoded commands, file exfiltration, or backdoors. The file follows conventional packaging practices for a service unit.
</details>
<evidence></evidence>
<summary>Standard systemd service unit, no security issues found.</summary>
</security_assessment>

[4/8] Reviewing .SRCINFO, PKGBUILD, gaia.service, gaia.sysusers...
[5/8] Reviewing .SRCINFO, PKGBUILD, gaia.sysusers...
+ Reviewed gaia.service. Status: SAFE -- Standard systemd service unit, no security issues found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD for gaia-amd and gaia-amd-webui follows standard Arch packaging practices. All source downloads point to the official upstream GitHub repository (amd/gaia). The prepare() function applies well-documented sed patches to fix upstream bugs and adapt the software for the system Electron package — these are normal maintenance adjustments, not obfuscated or malicious modifications. The build() and package() functions use standard tools (cmake, npm, python -m build, electron-builder) and install files to expected locations. No suspicious network requests, encoded commands, or exfiltration of data are present. The use of `--no-sandbox` for Electron is a known workaround on Linux and not inherently malicious. The overall script is transparent and consistent with its stated purpose.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with no malicious behavior.</summary>
</security_assessment>

[6/8] Reviewing .SRCINFO, gaia.sysusers...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no malicious behavior.
LLM auditresponse for gaia.sysusers:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard systemd sysusers.d configuration that creates a system user named "gaia" with a home directory under /var/lib/gaia. This is a normal practice for daemons or services that need a dedicated user account. There are no suspicious commands, network requests, obfuscated code, or any deviation from expected packaging conventions.
</details>
<evidence></evidence>
<summary>Sysusers file for gaia user; no security issues.</summary>
</security_assessment>

[7/8] Reviewing .SRCINFO...
+ Reviewed gaia.sysusers. Status: SAFE -- Sysusers file for gaia user; no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR `.SRCINFO` metadata file for a split package (`gaia-amd` / `gaia-amd-webui`) — an Electron UI wrapping AMD's upstream Gaia inference engine. It contains only declarative metadata: `pkgdesc`, `url`, `arch`, `license`, dependency lists, source URLs, and checksums. There is no executable code, shell command, obfuscated string, or network fetch in this file itself.

The source tarball is pulled from the project's own upstream (`https://github.com/amd/gaia/archive/refs/tags/v0.24.1.tar.gz`), which is standard packaging practice. All four `sha256sums` entries are pinned hashes (none are `SKIP`), so the tarball and the bundled service/sysusers files are checksum-verified. The dependency list is consistent with the stated purpose (Python ML stack, FastAPI/uvicorn backend, Electron UI) and raises no red flags. The `ngrok` optdepends is transparently described as an upstream feature ("mobile access / remote tunnel feature") and is the application's own optional functionality, not an injected remote-execution vector.

The install/systemd/sysusers files referenced (`gaia-amd.install`, `gaia.service`, `gaia-user.service`, `gaia.sysusers`) are not included in this file, but their mere existence is normal packaging practice. Nothing in this `.SRCINFO` suggests exfiltration, obfuscated code, backdoors, or execution of untrusted content. At worst, one could note that the actual installer/service contents aren't visible here, but there is no evidence of malice in the metadata presented.
</details>
<evidence></evidence>
<summary>
Declarative AUR metadata with pinned checksums from the official upstream AMD repository. No malicious behavior found.
</summary>
</security_assessment>

[8/8] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Declarative AUR metadata with pinned checksums from the official upstream AMD repository. No malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 26,471
  Completion Tokens: 9,817
  Total Tokens: 36,288
  Total Cost: $0.003518
  Execution Time: 342.50 seconds

Final Status: SAFE


No issues found.
