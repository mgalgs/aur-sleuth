---
package: open-webui
pkgver: 0.11.2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: b9e20f728bbe0de1871ebaca31738c802edc31f8
prompt_tokens: 23655
completion_tokens: 3312
total_tokens: 26967
cost: 0.00245017668
execution_time: 46.94
files_reviewed: 9
files_skipped: 0
maintainer_files: 9
source_fetch: ok
upstream_files: 7
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-01T07:26:42Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard AUR .gitignore file, no malicious content.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no executable or suspicious content.
  - file: open-webui.install
    status: safe
    summary: Standard AUR install script; no malicious behavior detected.
  - file: open-webui.override
    status: safe
    summary: File contains only comments; no malicious or suspicious content detected.
  - file: open-webui.service
    status: safe
    summary: Standard systemd service file, no security issues found.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with no malicious indicators.
  - file: open-webui.sysusers
    status: safe
    summary: Standard sysusers config, no malicious content.
  - file: open-webui.env
    status: safe
    summary: Plain configuration file with no malicious content.
  - file: open-webui.tmpfiles
    status: safe
    summary: Standard tmpfiles.d configuration, no security issues.
---

Cloning https://aur.archlinux.org/open-webui.git...
Cloned open-webui
Analyzing open-webui AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD sources are fetched from the official upstream repository (raw.githubusercontent.com/open-webui/open-webui) and local auxiliary files. The global scope contains only variable assignments and no command substitutions, external downloads, or code execution. There is no `pkgver()` function. The `prepare()`, `build()`, and `package()` functions are not executed during the narrow gate (`–nobuild –nodeps –noprepare`). All source entries use standard HTTPS URLs and have explicit checksums. No malicious behavior is present in the sourced code or source definitions.
</details>
<evidence>
</evidence>
<summary>Safe: no malicious code in sourced scope or source definitions.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe: no malicious code in sourced scope or source definitions.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Reviewing the 9 file(s) in the AUR repository. The 7 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/9] Reviewing .SRCINFO...
[0/9] Reviewing .SRCINFO, .gitignore...
[0/9] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file for an AUR package repository. It ignores all files by default, then selectively includes `.gitignore`, `.SRCINFO`, `PKGBUILD`, and any files matching `open-webui.*`. This pattern is commonly used by AUR maintainers to track only the essential packaging files and avoid committing generated or irrelevant artifacts. There is no executable code, no network operations, no obfuscation, and no indication of malicious intent.
</details>
<evidence></evidence>
<summary>Standard AUR .gitignore file, no malicious content.</summary>
</security_assessment>

[0/9] Reviewing .SRCINFO, .gitignore, PKGBUILD, open-webui.env...
[1/9] Reviewing .SRCINFO, PKGBUILD, open-webui.env...
+ Reviewed .gitignore. Status: SAFE -- Standard AUR .gitignore file, no malicious content.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a metadata descriptor for the AUR package, containing only package information, dependencies, source URLs, and checksums. All sources point to the project&#39;s own GitHub repository (open-webui) or are local auxiliary files. Checksums are provided for all sources and are not set to SKIP. There is no executable code, obfuscated content, network requests, or any instructions that could be executed. The file is a standard, non-executable package manifest and does not contain any malicious or suspicious behavior.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file, no executable or suspicious content.</summary>
</security_assessment>

[1/9] Reviewing .SRCINFO, PKGBUILD, open-webui.env, open-webui.install...
[2/9] Reviewing PKGBUILD, open-webui.env, open-webui.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no executable or suspicious content.
LLM auditresponse for open-webui.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Arch Linux `.install` script used for package lifecycle hooks. It performs typical operations: creating system users and temporary files via systemd utilities, providing user instructions, and cleaning up the application's own cache and user account on removal. All commands are benign and expected for a well-behaved AUR package. There is no code that downloads, executes, or exfiltrates data; no obfuscation; no deviation from normal packaging practices.
</details>
<evidence></evidence>
<summary>Standard AUR install script; no malicious behavior detected.</summary>
</security_assessment>

[2/9] Reviewing PKGBUILD, open-webui.env, open-webui.install, open-webui.override...
[3/9] Reviewing PKGBUILD, open-webui.env, open-webui.override...
+ Reviewed open-webui.install. Status: SAFE -- Standard AUR install script; no malicious behavior detected.
LLM auditresponse for open-webui.override:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a requirements.txt override file for the open-webui package. It contains only two comment lines and no executable content, no network requests, no file operations, and no suspicious code. There is nothing that could constitute a security threat or supply-chain risk. It is entirely benign.
</details>
<evidence>
</evidence>
<summary>
File contains only comments; no malicious or suspicious content detected.</summary>
</security_assessment>

[4/9] Reviewing PKGBUILD, open-webui.env...
+ Reviewed open-webui.override. Status: SAFE -- File contains only comments; no malicious or suspicious content detected.
[4/9] Reviewing PKGBUILD, open-webui.env, open-webui.service...
LLM auditresponse for open-webui.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit file for the `open-webui` application. It defines a simple service that runs the `/usr/bin/open-webui` binary with specified environment variables and dependencies. No malicious or suspicious content is present. The file does not contain any commands or operations that deviate from normal packaging practices.
</details>
<evidence></evidence>
<summary>Standard systemd service file, no security issues found.</summary>
</security_assessment>

[4/9] Reviewing PKGBUILD, open-webui.env, open-webui.service, open-webui.sysusers...
[5/9] Reviewing PKGBUILD, open-webui.env, open-webui.sysusers...
+ Reviewed open-webui.service. Status: SAFE -- Standard systemd service file, no security issues found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard Arch packaging practices: it downloads the upstream license from the official GitHub repository, includes all necessary runtime configuration files (environment, service, sysusers, tmpfiles), and generates a startup script that initializes a secret key from /dev/urandom before launching the application via `uvx`. There are no obfuscated commands, no unexpected network requests or downloads, no exfiltration of data, and no modifications to system files outside the package's own paths. All source files have pinned sha256 checksums, providing integrity assurance.

The `prepare()` function creates a shell script that runs `uvx --python 3.11 ${pkgname}@${pkgver} serve`. This invokes the upstream application from PyPI (via `uvx`), which is the intended method to run the tool. The script generates a secret key once on first run and stores it in `/var/lib/open-webui/secret_key`—this is a standard, secure pattern for key generation and does not involve any suspicious network calls or code execution.

Nothing in this file deviates from normal packaging behavior or exhibits signs of a supply chain attack.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with no malicious indicators.</summary>
</security_assessment>

[6/9] Reviewing open-webui.env, open-webui.sysusers...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with no malicious indicators.
[6/9] Reviewing open-webui.env, open-webui.sysusers, open-webui.tmpfiles...
LLM auditresponse for open-webui.sysusers:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard sysusers.d configuration snippet for Arch Linux, used to create a dedicated system user and group for the Open WebUI service. The single line defines a user `open-webui` with a home directory `/var/lib/open-webui` and shell `/usr/bin/nologin`. This is a routine and expected packaging practice for services that need an unprivileged system user. There is no malicious content, network access, obfuscation, or dangerous command execution.
</details>
<evidence></evidence>
<summary>Standard sysusers config, no malicious content.</summary>
</security_assessment>

[7/9] Reviewing open-webui.env, open-webui.tmpfiles...
+ Reviewed open-webui.sysusers. Status: SAFE -- Standard sysusers config, no malicious content.
LLM auditresponse for open-webui.env:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `open-webui.env` is a plain environment configuration file. It sets CORS polices, disables analytics, and configures a local Ollama URL. There is no executable code, no network requests, no obfuscation, and no system modifications. All settings are standard for an application configuration.
</details>
<evidence>
</evidence>
<summary>Plain configuration file with no malicious content.</summary>
</security_assessment>

[8/9] Reviewing open-webui.tmpfiles...
+ Reviewed open-webui.env. Status: SAFE -- Plain configuration file with no malicious content.
LLM auditresponse for open-webui.tmpfiles:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard systemd tmpfiles.d configuration snippet. It creates two directories (`/var/lib/open-webui` and `/var/cache/open-webui`) with safe permissions (0750) and ownership (open-webui:open-webui). Such files are commonly used in Arch Linux packages to ensure required runtime directories exist with appropriate access controls. There is no obfuscation, network activity, or malicious intent. The content is benign and follows packaging best practices.
</details>
<evidence>
</evidence>
<summary>Standard tmpfiles.d configuration, no security issues.</summary>
</security_assessment>

[9/9] Reviewing ...
+ Reviewed open-webui.tmpfiles. Status: SAFE -- Standard tmpfiles.d configuration, no security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 23,655
  Completion Tokens: 3,312
  Total Tokens: 26,967
  Total Cost: $0.002450
  Execution Time: 46.94 seconds

Final Status: SAFE


No issues found.
