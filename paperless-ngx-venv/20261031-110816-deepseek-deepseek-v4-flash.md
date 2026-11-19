---
package: paperless-ngx-venv
pkgver: 3.4.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 46092
completion_tokens: 7305
total_tokens: 53397
cost: 0.005523882
execution_time: 58.17
files_reviewed: 17
files_skipped: 0
maintainer_files: 17
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-31T11:08:16Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: Standard license file, no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; no security issues.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file, no security issues.
  - file: paperless-consumer.service
    status: safe
    summary: Standard systemd service unit for Paperless.
  - file: paperless-scheduler.service
    status: safe
    summary: Standard systemd unit file, no security concerns.
  - file: PKGBUILD
    status: safe
    summary: Standard packaging, no malicious behavior found.
  - file: paperless-task-queue.service
    status: safe
    summary: Standard systemd service file, no security issues.
  - file: paperless-webserver.service
    status: safe
    summary: Standard systemd service file, no security concerns.
  - file: paperless.conf
    status: safe
    summary: Pure config file, no malicious content.
  - file: paperless.hook
    status: safe
    summary: Routine database migration hook, no security issues.
  - file: paperless.install
    status: safe
    summary: Standard post-install informational script, no malicious behavior.
  - file: paperless.sysusers
    status: safe
    summary: Standard sysusers config, no security issues.
  - file: paperless.target
    status: safe
    summary: Standard systemd target file, no security issues.
  - file: paperless.tmpfiles
    status: safe
    summary: Standard tmpfiles configuration, no security issues.
  - file: requirements.patch
    status: safe
    summary: Simple dependency version patch, no malice.
  - file: whoosh-intraword.patch
    status: safe
    summary: Standard bugfix patch, no security issues.
  - file: whoosh-filters.patch
    status: safe
    summary: Patch only corrects regex escaping; no malicious behavior.
---

Materializing paperless-ngx-venv from local mirror...
Materialized paperless-ngx-venv
Analyzing paperless-ngx-venv AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only top-level variable assignments and function definitions (`prepare()`, `package()`). No command substitutions, backtick expressions, `eval`, `source`, or other executable constructs appear in the global scope. The functions are not invoked during `makepkg --printsrcinfo`, so they cannot execute at this step. All operations that could potentially be dangerous (fetching dependencies, modifying files) are contained within the functions and will be audited in the full review. Therefore, running `makepkg --printsrcinfo` on this PKGBUILD is safe.
</details>
<evidence>
</evidence>
<summary>No executable code in global scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No executable code in global scope.
Reviewing the 17 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/17] Reviewing .SRCINFO...
[0/17] Reviewing .SRCINFO, .gitignore...
[0/17] Reviewing .SRCINFO, .gitignore, LICENSE...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard BSD Zero Clause License, which is a common open-source license. It contains no executable code, no instructions, no network requests, no file operations, and no obfuscation. It is purely a legal text file. There is no evidence of any malicious or suspicious behavior.
</details>
<evidence></evidence>
<summary>Standard license file, no security issues.</summary>
</security_assessment>

[0/17] Reviewing .SRCINFO, .gitignore, LICENSE, PKGBUILD...
[1/17] Reviewing .SRCINFO, .gitignore, PKGBUILD...
+ Reviewed LICENSE. Status: SAFE -- Standard license file, no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file contains standard package metadata for the paperless-ngx-venv AUR package. All source files point to the official GitHub release of paperless-ngx (https://github.com/paperless-ngx/paperless-ngx/releases/download/v3.4.1/paperless-ngx-v3.4.1.tar.xz) and local configuration/service files. Checksums (b2sums) are provided for every source. No obfuscation, suspicious network requests, or dangerous commands are present. The file adheres to normal AUR packaging practices.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata; no security issues.</summary>
</security_assessment>

[1/17] Reviewing .SRCINFO, .gitignore, PKGBUILD, paperless-consumer.service...
[2/17] Reviewing .gitignore, PKGBUILD, paperless-consumer.service...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; no security issues.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.gitignore` file contains standard patterns for ignoring tarballs (`*.tar.*`, `*.tar`) and build directories (`src`, `pkg`) used in Arch Linux packaging workflows. There is no obfuscated code, network operations, file manipulation, or any other behavior indicative of a supply-chain attack. The file is entirely benign and serves its intended purpose of excluding build artifacts from version control.
</details>
<evidence>
</evidence>
<summary>Standard .gitignore file, no security issues.</summary>
</security_assessment>

[2/17] Reviewing .gitignore, PKGBUILD, paperless-consumer.service, paperless-scheduler.service...
[3/17] Reviewing PKGBUILD, paperless-consumer.service, paperless-scheduler.service...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore file, no security issues.
LLM auditresponse for paperless-consumer.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit file for the Paperless document management system. It runs the application's own `paperless-manage document_consumer` command under a dedicated `paperless` user/group. Dependencies on `network.target` and `redis.service` are normal for an application that uses a network and Redis backend. There is no obfuscated code, no unexpected network or file operations, and no deviation from standard packaging practices.
</details>
<evidence></evidence>
<summary>Standard systemd service unit for Paperless.</summary>
</security_assessment>

[4/17] Reviewing PKGBUILD, paperless-scheduler.service...
+ Reviewed paperless-consumer.service. Status: SAFE -- Standard systemd service unit for Paperless.
[4/17] Reviewing PKGBUILD, paperless-scheduler.service, paperless-task-queue.service...
LLM auditresponse for paperless-scheduler.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit file for the paperless-ngx application. It defines a Celery Beat scheduler service with typical directives: User/Group isolation, a specific WorkingDirectory, and ExecStart pointing to an expected binary within the package installation path. There is no obfuscation, no network calls, no dangerous commands, and no deviation from normal packaging practices. The file is benign and contains only configuration metadata.
</details>
<evidence></evidence>
<summary>Standard systemd unit file, no security concerns.</summary>
</security_assessment>

[4/17] Reviewing PKGBUILD, paperless-scheduler.service, paperless-task-queue.service, paperless-webserver.service...
[5/17] Reviewing PKGBUILD, paperless-task-queue.service, paperless-webserver.service...
+ Reviewed paperless-scheduler.service. Status: SAFE -- Standard systemd unit file, no security concerns.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a Python venv-based application. The source tarball is downloaded from the official GitHub release page with a valid b2sum checksum, ensuring integrity. The `prepare()` function creates a virtual environment and installs dependencies from the upstream `requirements.txt` file using `uv pip install`. The subsequent loop to detect and patch for Redis forks is a local operation (`pacman -Qq`) and only modifies the local service file strings; it does not fetch any external code or data. The `package()` function installs files and creates wrapper scripts for the application’s own components. No obfuscated code, hidden network requests, or suspicious system modifications are present. All operations are consistent with the stated purpose of packaging paperless-ngx for Arch Linux.
</details>
<evidence></evidence>
<summary>Standard packaging, no malicious behavior found.</summary>
</security_assessment>

[5/17] Reviewing PKGBUILD, paperless-task-queue.service, paperless-webserver.service, paperless.conf...
[6/17] Reviewing paperless-task-queue.service, paperless-webserver.service, paperless.conf...
+ Reviewed PKGBUILD. Status: SAFE -- Standard packaging, no malicious behavior found.
LLM auditresponse for paperless-task-queue.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service file for the Paperless-ngx Celery workers. It defines a service that runs as a dedicated user, with appropriate dependencies (network, redis) and a target membership. No malicious or suspicious content is present. The file follows standard packaging practices for systemd units.
</details>
<evidence></evidence>
<summary>Standard systemd service file, no security issues.</summary>
</security_assessment>

[6/17] Reviewing paperless-task-queue.service, paperless-webserver.service, paperless.conf, paperless.hook...
[7/17] Reviewing paperless-webserver.service, paperless.conf, paperless.hook...
+ Reviewed paperless-task-queue.service. Status: SAFE -- Standard systemd service file, no security issues.
LLM auditresponse for paperless-webserver.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit file for the Paperless webserver component. It defines the service description, dependencies, execution environment (user, group, working directory, environment file), and restart behavior. No unusual or suspicious directives are present. The file does not contain any code execution, network requests, obfuscation, or attempts to modify the system beyond normal service operation.
</details>
<evidence></evidence>
<summary>Standard systemd service file, no security concerns.</summary>
</security_assessment>

[7/17] Reviewing paperless-webserver.service, paperless.conf, paperless.hook, paperless.install...
[8/17] Reviewing paperless.conf, paperless.hook, paperless.install...
+ Reviewed paperless-webserver.service. Status: SAFE -- Standard systemd service file, no security concerns.
LLM auditresponse for paperless.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard configuration file for Paperless-ngx, containing only environment variable definitions (mostly commented out) and explanatory comments. No executable code, network requests, obfuscation, or system modifications are present. The file simply sets application paths, ports, and other benign parameters. No supply-chain attack indicators found.
</details>
<evidence></evidence>
<summary>Pure config file, no malicious content.</summary>
</security_assessment>

[8/17] Reviewing paperless.conf, paperless.hook, paperless.install, paperless.sysusers...
[9/17] Reviewing paperless.hook, paperless.install, paperless.sysusers...
+ Reviewed paperless.conf. Status: SAFE -- Pure config file, no malicious content.
LLM auditresponse for paperless.hook:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard pacman hook file for the `paperless-ngx-venv` package. It triggers after an upgrade of that package and runs a database migration command (`/usr/bin/paperless-manage migrate --noinput`) as the `paperless` user via `runuser`. This is normal behavior for applications that need to apply schema changes after an update. There are no suspicious network requests, obfuscated code, or attempts to exfiltrate data. The command only invokes the application's own management tool, consistent with the package's stated purpose.
</details>
<evidence>
</evidence>
<summary>Routine database migration hook, no security issues.</summary>
</security_assessment>

[9/17] Reviewing paperless.hook, paperless.install, paperless.sysusers, paperless.target...
[10/17] Reviewing paperless.install, paperless.sysusers, paperless.target...
+ Reviewed paperless.hook. Status: SAFE -- Routine database migration hook, no security issues.
LLM auditresponse for paperless.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `paperless.install` contains only informational messages displayed to the user during package installation and upgrade. It prints instructions for completing setup (database migration, superuser creation, service start) and version-specific upgrade notes. No commands are executed beyond `cat` and `test -e` (checking if a hook file exists). All other commands (`sudo`, `systemctl`, `mkdir`, `ln`) appear only inside heredocs as user-facing text, not as executed code. There is no network activity, file modification, obfuscation, or any behavior beyond standard AUR install script conventions.
</details>
<evidence></evidence>
<summary>Standard post-install informational script, no malicious behavior.</summary>
</security_assessment>

[10/17] Reviewing paperless.install, paperless.sysusers, paperless.target, paperless.tmpfiles...
[11/17] Reviewing paperless.sysusers, paperless.target, paperless.tmpfiles...
+ Reviewed paperless.install. Status: SAFE -- Standard post-install informational script, no malicious behavior.
LLM auditresponse for paperless.sysusers:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard systemd sysusers.d configuration snippet. It creates a system user named `paperless` with the comment &quot;Paperless user&quot; and home directory `/var/lib/paperless`. This is a typical and expected practice for services that should run under a dedicated unprivileged user account. No malicious behavior, network requests, obfuscation, or unexpected operations are present.
</details>
<evidence></evidence>
<summary>Standard sysusers config, no security issues.</summary>
</security_assessment>

[11/17] Reviewing paperless.sysusers, paperless.target, paperless.tmpfiles, requirements.patch...
[12/17] Reviewing paperless.target, paperless.tmpfiles, requirements.patch...
+ Reviewed paperless.sysusers. Status: SAFE -- Standard sysusers config, no security issues.
LLM auditresponse for paperless.target:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a systemd target unit file (`paperless.target`) used to group and orchestrate the Paperless services (webserver, consumer, scheduler, task-queue). It declares standard dependencies (`After=network.target`, `Wants=...`, `Requires=redis.service`) and installation target (`WantedBy=multi-user.target`). There is no executable code, no network requests, no obfuscation, and no system modifications beyond typical systemd unit semantics. The file is benign and follows expected AUR packaging practices.
</details>
<evidence>
</evidence>
<summary>Standard systemd target file, no security issues.</summary>
</security_assessment>

[12/17] Reviewing paperless.target, paperless.tmpfiles, requirements.patch, whoosh-filters.patch...
[13/17] Reviewing paperless.tmpfiles, requirements.patch, whoosh-filters.patch...
+ Reviewed paperless.target. Status: SAFE -- Standard systemd target file, no security issues.
LLM auditresponse for paperless.tmpfiles:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a systemd tmpfiles.d configuration snippet. It declares a configuration file (`/etc/paperless.conf`) and several directories under `/var/lib/paperless/` with appropriate ownership and permissions for the `paperless` user and group. These are standard practices for creating application state directories and ensuring the correct runtime environment. There is no executable code, no network access, no obfuscation, and no deviation from expected packaging conventions. The content is entirely benign.
</details>
<evidence></evidence>
<summary>Standard tmpfiles configuration, no security issues.</summary>
</security_assessment>

[13/17] Reviewing paperless.tmpfiles, requirements.patch, whoosh-filters.patch, whoosh-intraword.patch...
[14/17] Reviewing requirements.patch, whoosh-filters.patch, whoosh-intraword.patch...
+ Reviewed paperless.tmpfiles. Status: SAFE -- Standard tmpfiles configuration, no security issues.
LLM auditresponse for requirements.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
The patch file simply downgrades the `channels` Python package from version 4.2.0 to 4.0.0 in the `requirements.txt` of paperless-ngx. This is a standard dependency version change, likely for compatibility reasons with the application or other dependencies. There is no obfuscation, network activity, code execution, or any other behavior indicative of a supply-chain attack. While version downgrades can introduce security vulnerabilities, that is a software quality concern rather than evidence of malicious intent in the packaging script itself.
</details>
<evidence></evidence>
<summary>Simple dependency version patch, no malice.</summary>
</security_assessment>

[15/17] Reviewing whoosh-filters.patch, whoosh-intraword.patch...
+ Reviewed requirements.patch. Status: SAFE -- Simple dependency version patch, no malice.
LLM auditresponse for whoosh-intraword.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch corrects two docstring examples and a default argument in the Whoosh search library's `intraword.py`. The changes involve proper escaping of backslashes in regex patterns and a backslash before the pipe character in a delimiter string. There is no malicious code, obfuscation, network activity, or system modification. The patch is a standard bugfix for correct string escaping and does not deviate from legitimate packaging practices.
</details>
<evidence></evidence>
<summary>Standard bugfix patch, no security issues.</summary>
</security_assessment>

[16/17] Reviewing whoosh-filters.patch...
+ Reviewed whoosh-intraword.patch. Status: SAFE -- Standard bugfix patch, no security issues.
LLM auditresponse for whoosh-filters.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch file modifies regular expression patterns and docstrings in the Whoosh search library's `filters.py`. All changes are purely cosmetic fixes to escape sequences — adding double backslashes to raw strings to avoid unintended escape interpretation. There is no code that downloads anything, executes external commands, exfiltrates data, or performs any system modification. The changes are consistent with a standard maintenance patch to correct string escaping.
</details>
<evidence></evidence>
<summary>Patch only corrects regex escaping; no malicious behavior.</summary>
</security_assessment>

[17/17] Reviewing ...
+ Reviewed whoosh-filters.patch. Status: SAFE -- Patch only corrects regex escaping; no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 46,092
  Completion Tokens: 7,305
  Total Tokens: 53,397
  Total Cost: $0.005524
  Execution Time: 58.17 seconds

Final Status: SAFE


No issues found.
