---
package: open-webui
pkgver: 0.11.4
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 23646
completion_tokens: 3462
total_tokens: 27108
cost: 0.00514074
execution_time: 50.62
files_reviewed: 9
files_skipped: 0
maintainer_files: 9
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-05T23:15:03Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR package metadata with pinned upstream source and checksums; no malicious behavior found.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore for AUR package repository.
  - file: open-webui.install
    status: safe
    summary: Standard Arch install script, no suspicious behavior.
  - file: open-webui.env
    status: safe
    summary: Safe environment configuration file, no malicious code.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no malicious content.
  - file: open-webui.override
    status: safe
    summary: Harmless override file with only comments.
  - file: open-webui.service
    status: safe
    summary: Standard systemd service unit file, no security issues.
  - file: open-webui.tmpfiles
    status: safe
    summary: Standard tmpfiles config, no malicious content.
  - file: open-webui.sysusers
    status: safe
    summary: Standard sysusers config, no security concerns.
---

Materializing open-webui from local mirror...
Materialized open-webui
Analyzing open-webui AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources only the top-level/global scope of this PKGBUILD. The global scope contains only standard metadata variable definitions (`pkgname`, `pkgver`, `arch`, `depends`, `source`, `sha256sums`, `options`, etc.), a few plain path variables, and definitions of `prepare()` and `package()` functions. There are no top-level command substitutions, no eval/curl/wget/base64 invocations, no network requests, and no file-modifying operations that would execute during sourcing. The `prepare()` and `package()` function bodies are not executed by `makepkg --printsrcinfo`, so their content is out of scope for this gate and will be reviewed in the full audit. Nothing in the global scope is genuinely malicious.
</details>
<evidence></evidence>
<summary>Sourcing PKGBUILD only defines variables and functions; no malicious top-level code executes.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Sourcing PKGBUILD only defines variables and functions; no malicious top-level code executes.
Reviewing the 9 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/9] Reviewing .SRCINFO...
[0/9] Reviewing .SRCINFO, .gitignore...
[0/9] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard AUR `.SRCINFO` metadata file for the `open-webui` package. It declares the package name, version, dependencies, runtime options, and eight source files, each with a corresponding SHA-256 checksum. The only remote source is the project's own `LICENSE` file fetched from the upstream GitHub repository at the tagged release `v0.11.4`. This is a normal and expected packaging practice.

No obfuscated code, suspicious network endpoints, encoded commands, or unexpected file operations are present. The remaining sources are local packaging files (`open-webui.env`, service units, install scripts, sysusers/tmpfiles configs) which are standard for an Arch package. There is no evidence of injected malicious behavior; the file is entirely declarative metadata.
</details>
<evidence>
</evidence>
<summary>
Standard AUR package metadata with pinned upstream source and checksums; no malicious behavior found.</summary>
</security_assessment>

[0/9] Reviewing .SRCINFO, .gitignore, PKGBUILD, open-webui.env...
[1/9] Reviewing .gitignore, PKGBUILD, open-webui.env...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR package metadata with pinned upstream source and checksums; no malicious behavior found.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard .gitignore file used in AUR package repositories. It ignores all files except essential package files (.gitignore, .SRCINFO, PKGBUILD, open-webui.*) to prevent accidental tracking of source tarballs or build artifacts. There is no evidence of malicious behavior—no commands, network requests, obfuscation, or system modifications.
</details>
<evidence>
</evidence>
<summary>Standard .gitignore for AUR package repository.</summary>
</security_assessment>

[1/9] Reviewing .gitignore, PKGBUILD, open-webui.env, open-webui.install...
[2/9] Reviewing PKGBUILD, open-webui.env, open-webui.install...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore for AUR package repository.
LLM auditresponse for open-webui.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Arch Linux package .install script. It runs systemd-sysusers and systemd-tmpfiles during installation, manages the open-webui service lifecycle (start, stop, disable), and cleans up its own cache and user on removal. There are no network requests, no obfuscated or encoded commands, no execution of untrusted content, and no operations targeting data outside the package's scope. All actions are expected for a service-oriented package and follow normal packaging practices.
</details>
<evidence></evidence>
<summary>Standard Arch install script, no suspicious behavior.</summary>
</security_assessment>

[3/9] Reviewing PKGBUILD, open-webui.env...
+ Reviewed open-webui.install. Status: SAFE -- Standard Arch install script, no suspicious behavior.
[3/9] Reviewing PKGBUILD, open-webui.env, open-webui.override...
LLM auditresponse for open-webui.env:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a plain environment configuration file for Open WebUI. It sets standard environment variables for CORS, telemetry opt-out, and an Ollama base URL. No executable code, no network requests, no file operations, no obfuscation. The content is benign and consistent with upstream documentation.
</details>
<evidence>
</evidence>
<summary>Safe environment configuration file, no malicious code.</summary>
</security_assessment>

[3/9] Reviewing PKGBUILD, open-webui.env, open-webui.override, open-webui.service...
[4/9] Reviewing PKGBUILD, open-webui.override, open-webui.service...
+ Reviewed open-webui.env. Status: SAFE -- Safe environment configuration file, no malicious code.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard Arch packaging practices. It downloads source files from the official upstream GitHub repo pinned to a specific version tag, with all checksums provided. The `prepare()` function creates a startup script that generates a `WEBUI_SECRET_KEY` from `/dev/urandom` and runs the application via `uvx` -- this is normal application startup logic, not a supply-chain attack. The `package()` function only installs files and the license. There are no suspicious network requests (beyond the declared sources), no obfuscated code, no dangerous commands like `curl`/`wget`/`eval`, and no tampering with unrelated system files. The use of `SKIP` checksums is absent; all checksums are pinned. The file is consistent with benign packaging.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with no malicious content.</summary>
</security_assessment>

[4/9] Reviewing PKGBUILD, open-webui.override, open-webui.service, open-webui.sysusers...
[5/9] Reviewing open-webui.override, open-webui.service, open-webui.sysusers...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no malicious content.
LLM auditresponse for open-webui.override:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a simple comment file for users to optionally override dependency versions in the open-webui package. It contains only two lines of comments and no executable code, obfuscation, network requests, or any other potentially malicious operations. There are no security concerns.
</details>
<evidence></evidence>
<summary>Harmless override file with only comments.</summary>
</security_assessment>

[6/9] Reviewing open-webui.service, open-webui.sysusers...
+ Reviewed open-webui.override. Status: SAFE -- Harmless override file with only comments.
[6/9] Reviewing open-webui.service, open-webui.sysusers, open-webui.tmpfiles...
LLM auditresponse for open-webui.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit file for the open-webui package. It defines a simple service that runs `/usr/bin/open-webui` after `network.target` and `ollama.service`. It sets environment variables for data, cache, and an optional override file. There are no obfuscated commands, no network requests, no execution of untrusted code, and no unexpected file operations. The file follows normal packaging practices for a service unit.
</details>
<evidence></evidence>
<summary>Standard systemd service unit file, no security issues.</summary>
</security_assessment>

[7/9] Reviewing open-webui.sysusers, open-webui.tmpfiles...
+ Reviewed open-webui.service. Status: SAFE -- Standard systemd service unit file, no security issues.
LLM auditresponse for open-webui.tmpfiles:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard systemd tmpfiles configuration snippet. It defines two directories (`/var/lib/open-webui` and `/var/cache/open-webui`) with restricted permissions (0750) owned by the `open-webui` user and group. This is a normal and expected packaging practice for applications that require dedicated runtime data and cache directories. There is no network access, code execution, obfuscation, or any other suspicious behavior.
</details>
<evidence></evidence>
<summary>Standard tmpfiles config, no malicious content.</summary>
</security_assessment>

[8/9] Reviewing open-webui.sysusers...
+ Reviewed open-webui.tmpfiles. Status: SAFE -- Standard tmpfiles config, no malicious content.
LLM auditresponse for open-webui.sysusers:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard systemd sysusers configuration snippet for Arch Linux. It creates a system user `open-webui` with a home directory `/var/lib/open-webui` and a nologin shell. No network requests, obfuscated code, file operations, or any other suspicious behavior is present. The file is purely declarative and follows expected packaging practices for service users.
</details>
<evidence></evidence>
<summary>Standard sysusers config, no security concerns.</summary>
</security_assessment>

[9/9] Reviewing ...
+ Reviewed open-webui.sysusers. Status: SAFE -- Standard sysusers config, no security concerns.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 23,646
  Completion Tokens: 3,462
  Total Tokens: 27,108
  Total Cost: $0.005141
  Execution Time: 50.62 seconds

Final Status: SAFE


No issues found.
