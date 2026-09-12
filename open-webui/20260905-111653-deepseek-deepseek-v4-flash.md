---
package: open-webui
pkgver: 0.11.3
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 23396
completion_tokens: 4694
total_tokens: 28090
cost: 0.00279516384
execution_time: 164.52
files_reviewed: 9
files_skipped: 0
maintainer_files: 9
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-05T11:16:53Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Metadata file, no malicious content.
  - file: open-webui.env
    status: safe
    summary: Plain config file, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Clean packaging wrapper; runtime PyPI fetch is design, not attack.
  - file: open-webui.override
    status: safe
    summary: Empty comment file, no security concerns.
  - file: open-webui.install
    status: safe
    summary: Standard install script; no malicious indicators found.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore for AUR; no malicious content.
  - file: open-webui.sysusers
    status: safe
    summary: Standard sysusers user creation, no malicious content.
  - file: open-webui.tmpfiles
    status: safe
    summary: Standard tmpfiles config with no security issues.
  - file: open-webui.service
    status: safe
    summary: Standard systemd service unit file.
---

Materializing open-webui from local mirror...
Materialized open-webui
Analyzing open-webui AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard top-level variable definitions (pkgname, pkgver, source, sha256sums, etc.) and function definitions (prepare, package). No dangerous command substitutions, backtick executions, or eval-like constructs exist at the global scope. The source array references upstream GitHub URLs and local files, all typical for AUR packaging. The `prepare()` and `package()` functions are not executed during `makepkg --printsrcinfo`, so any content within them is out of scope for this gate. Consequently, sourcing this PKGBUILD poses no immediate risk.
</details>
<evidence></evidence>
<summary>No malicious top-level code during sourcing.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious top-level code during sourcing.
Reviewing the 9 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/9] Reviewing .SRCINFO...
[0/9] Reviewing .SRCINFO, PKGBUILD...
[0/9] Reviewing .SRCINFO, PKGBUILD, .gitignore...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a metadata file for the AUR package. It lists package information, dependencies, sources, and checksums. All sources are either local files or a LICENSE file fetched from the official GitHub repository (raw.githubusercontent.com/open-webui/open-webui). All checksums are provided (none are SKIP), and no unusual or suspicious entries are present. The file does not contain any executable code, obfuscation, or instructions that deviate from standard AUR packaging practices. The referenced install script (`open-webui.install`) is not included in this file, so its content cannot be assessed here, but the .SRCINFO itself is benign.
</details>
<evidence></evidence>
<summary>Metadata file, no malicious content.</summary>
</security_assessment>

[0/9] Reviewing .SRCINFO, PKGBUILD, .gitignore, open-webui.env...
[1/9] Reviewing PKGBUILD, .gitignore, open-webui.env...
+ Reviewed .SRCINFO. Status: SAFE -- Metadata file, no malicious content.
LLM auditresponse for open-webui.env:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard environment configuration for the open-webui application. It sets environment variables such as CORS_ALLOW_ORIGIN, FORWARDED_ALLOW_IPS, and telemetry opt-out flags (SCARF_NO_ANALYTICS, DO_NOT_TRACK, ANONYMIZED_TELEMETRY). The OLLAMA_BASE_URL points to a localhost address (localhost:11434). There is no code execution, no network requests, no obfuscation, and no file operations. The configuration is purely declarative and aligns with the application's documented settings. No supply-chain attack vectors are present.
</details>
<evidence></evidence>
<summary>Plain config file, no malicious content.</summary>
</security_assessment>

[1/9] Reviewing PKGBUILD, .gitignore, open-webui.env, open-webui.install...
[2/9] Reviewing PKGBUILD, .gitignore, open-webui.install...
+ Reviewed open-webui.env. Status: SAFE -- Plain config file, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard Arch packaging practices for a service wrapper. The `source` array pins specific files (LICENSE, configs) with SHA-256 checksums. The `prepare()` function generates a startup script that uses `uvx` to run the pinned upstream PyPI package (`open-webui@0.11.3`). While the actual application code is fetched at runtime rather than built from source, this is a deliberate upstream packaging pattern, not a supply-chain injection. There are no obfuscated commands, no unexpected network destinations, no exfiltration, no backdoors, and no dangerous system modifications. The use of `uvx` with a pinned version is equivalent to calling `pip install` at runtime—a design choice that is not inherently malicious.
</details>
<evidence></evidence>
<summary>Clean packaging wrapper; runtime PyPI fetch is design, not attack.</summary>
</security_assessment>

[2/9] Reviewing PKGBUILD, .gitignore, open-webui.install, open-webui.override...
[3/9] Reviewing .gitignore, open-webui.install, open-webui.override...
+ Reviewed PKGBUILD. Status: SAFE -- Clean packaging wrapper; runtime PyPI fetch is design, not attack.
LLM auditresponse for open-webui.override:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a simple comment-only placeholder intended for users to override dependency versions. It contains no executable code, no network requests, no file operations, and no obfuscation. There is no evidence of any malicious behavior.
</details>
<evidence>
</evidence>
<summary>Empty comment file, no security concerns.</summary>
</security_assessment>

[4/9] Reviewing .gitignore, open-webui.install...
+ Reviewed open-webui.override. Status: SAFE -- Empty comment file, no security concerns.
[4/9] Reviewing .gitignore, open-webui.install, open-webui.service...
LLM auditresponse for open-webui.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Arch Linux `.install` script for the `open-webui` package. It performs expected operations: creating system users/tmpfiles via systemd helpers, managing the systemd service (start/stop/disable on removal), and cleaning up cache and data directories (`/var/cache/open-webui`) and the user on post-remove. No network requests, obfuscated code, or suspicious commands are present. The `rm -rf` and `userdel` calls target only the package-specific paths and user, which is normal cleanup behavior. There is no evidence of supply-chain attack or malicious intent.
</details>
<evidence>

</evidence>
<summary>Standard install script; no malicious indicators found.</summary>
</security_assessment>

[5/9] Reviewing .gitignore, open-webui.service...
+ Reviewed open-webui.install. Status: SAFE -- Standard install script; no malicious indicators found.
[5/9] Reviewing .gitignore, open-webui.service, open-webui.sysusers...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.gitignore` file follows standard AUR packaging practices by ignoring all files except those necessary for the package (`.gitignore`, `.SRCINFO`, `PKGBUILD`, and `open-webui.*`). There is no suspicious content, no commands, no network requests, and no obfuscation. It poses no security risk.
</details>
<evidence></evidence>
<summary>Standard .gitignore for AUR; no malicious content.</summary>
</security_assessment>

[5/9] Reviewing .gitignore, open-webui.service, open-webui.sysusers, open-webui.tmpfiles...
[6/9] Reviewing open-webui.service, open-webui.sysusers, open-webui.tmpfiles...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore for AUR; no malicious content.
LLM auditresponse for open-webui.sysusers:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a systemd sysusers configuration snippet that creates a dedicated system user (`open-webui`) with a home directory (`/var/lib/open-webui`) and a nologin shell. This is a standard, secure packaging practice for running services under an unprivileged account. No suspicious commands, network requests, obfuscation, or data exfiltration are present. The HTML entity `&quot;` in the comment string is likely an artifact of how the file was presented; in actual use it would be a double quote or would cause a harmless syntax error, not a security issue.
</details>
<evidence></evidence>
<summary>Standard sysusers user creation, no malicious content.</summary>
</security_assessment>

[7/9] Reviewing open-webui.service, open-webui.tmpfiles...
+ Reviewed open-webui.sysusers. Status: SAFE -- Standard sysusers user creation, no malicious content.
LLM auditresponse for open-webui.tmpfiles:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd-tmpfiles configuration file. It creates two directories (`/var/lib/open-webui` and `/var/cache/open-webui`) with restricted permissions (0750) owned by the `open-webui` user and group. These are typical runtime and cache directories for a service daemon. There is no executable code, no network requests, no obfuscation, and no deviation from normal packaging practices. The file is safe.
</details>
<evidence>
</evidence>
<summary>Standard tmpfiles config with no security issues.</summary>
</security_assessment>

[8/9] Reviewing open-webui.service...
+ Reviewed open-webui.tmpfiles. Status: SAFE -- Standard tmpfiles config with no security issues.
LLM auditresponse for open-webui.service:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard systemd service unit for running the Open WebUI application. It follows typical packaging conventions: it runs as a dedicated user (`open-webui`), loads an optional environment file, sets a few environment variables for data/cache directories, and executes the packaged binary `/usr/bin/open-webui`. There are no dangerous commands, network requests, obfuscated code, or any deviations from normal systemd service definitions. The dependency on `ollama.service` is expected for the stated application purpose. No security issues are present.
</details>
<evidence></evidence>
<summary>Standard systemd service unit file.</summary>
</security_assessment>

[9/9] Reviewing ...
+ Reviewed open-webui.service. Status: SAFE -- Standard systemd service unit file.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 23,396
  Completion Tokens: 4,694
  Total Tokens: 28,090
  Total Cost: $0.002795
  Execution Time: 164.52 seconds

Final Status: SAFE


No issues found.
