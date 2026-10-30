---
package: paperless-ngx-venv
pkgver: 3.4.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 46235
completion_tokens: 8305
total_tokens: 54540
cost: 0.005718895
execution_time: 49.8
files_reviewed: 17
files_skipped: 0
maintainer_files: 17
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-30T15:10:42Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file, no security issues.
  - file: LICENSE
    status: safe
    summary: No security issues; standard license file.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no malicious content.
  - file: paperless-consumer.service
    status: safe
    summary: Standard systemd service unit, no security concerns.
  - file: paperless-scheduler.service
    status: safe
    summary: Standard systemd service unit, no security concerns.
  - file: paperless-task-queue.service
    status: safe
    summary: Standard systemd service unit, no malicious content.
  - file: paperless-webserver.service
    status: safe
    summary: Standard systemd service file, no security concerns.
  - file: paperless.conf
    status: safe
    summary: Standard configuration file, no security concerns.
  - file: paperless.hook
    status: safe
    summary: Standard database migration hook, no malicious content.
  - file: paperless.install
    status: safe
    summary: Standard install script with no malicious behavior.
  - file: paperless.sysusers
    status: safe
    summary: Standard sysusers config; no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no malicious content.
  - file: paperless.target
    status: safe
    summary: Standard systemd target unit file, no security issues.
  - file: paperless.tmpfiles
    status: safe
    summary: Legitimate systemd-tmpfiles config for paperless-ngx.
  - file: requirements.patch
    status: safe
    summary: Routine patch downgrading a Python dependency version.
  - file: whoosh-filters.patch
    status: safe
    summary: Benign patch fixing regex escaping in Whoosh.
  - file: whoosh-intraword.patch
    status: safe
    summary: Routine patch with no security concerns.
---

Materializing paperless-ngx-venv from local mirror...
Materialized paperless-ngx-venv
Analyzing paperless-ngx-venv AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD file contains only top-level variable assignments, array definitions, and function declarations (prepare, package). There is no top-level code that executes command substitution, external commands, or network requests. The function bodies are not called during `makepkg --printsrcinfo`; they are only defined. Therefore, sourcing this PKGBUILD does not execute any malicious code, and running `makepkg --printsrcinfo` is safe.
</details>
<evidence></evidence>
<summary>Top-level only defines variables and functions; no code executes on source.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level only defines variables and functions; no code executes on source.
Reviewing the 17 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/17] Reviewing .gitignore...
[0/17] Reviewing .gitignore, .SRCINFO...
[0/17] Reviewing .gitignore, .SRCINFO, LICENSE...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` for an Arch Linux AUR package, containing only patterns to exclude common build artifacts (`*.tar.*`, `*.tar`, `src`, `pkg`). There are no executable commands, network requests, obfuscated code, or any suspicious content. This is typical and benign.
</details>
<evidence></evidence>
<summary>Standard .gitignore file, no security issues.</summary>
</security_assessment>

[0/17] Reviewing .gitignore, .SRCINFO, LICENSE, PKGBUILD...
[1/17] Reviewing .SRCINFO, LICENSE, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore file, no security issues.
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard open source license (BSD Zero Clause License). It contains only copyright notices and legal text. No executable code, network requests, obfuscation, or system modifications are present. It serves purely as a licensing document for the package.
</details>
<evidence></evidence>
<summary>No security issues; standard license file.</summary>
</security_assessment>

[1/17] Reviewing .SRCINFO, LICENSE, PKGBUILD, paperless-consumer.service...
[2/17] Reviewing .SRCINFO, PKGBUILD, paperless-consumer.service...
+ Reviewed LICENSE. Status: SAFE -- No security issues; standard license file.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard AUR `.SRCINFO` metadata file. It contains only package metadata such as name, version, dependencies, sources, and checksums. There is no executable code, no network requests, no obfuscated or encoded content, and no unexpected operations. The content is consistent with normal AUR packaging practices and does not exhibit any signs of malicious behavior.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file, no malicious content.</summary>
</security_assessment>

[2/17] Reviewing .SRCINFO, PKGBUILD, paperless-consumer.service, paperless-scheduler.service...
[3/17] Reviewing PKGBUILD, paperless-consumer.service, paperless-scheduler.service...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no malicious content.
LLM auditresponse for paperless-consumer.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit file for the paperless-ngx document consumer. It specifies the service description, dependencies (redis), user/group (paperless), working directory, and the executable command `/usr/bin/paperless-manage document_consumer`. There are no network requests, obfuscated code, dangerous commands, or unexpected file operations. The file is entirely normal and follows standard packaging practices.
</details>
<evidence></evidence>
<summary>Standard systemd service unit, no security concerns.</summary>
</security_assessment>

[3/17] Reviewing PKGBUILD, paperless-consumer.service, paperless-scheduler.service, paperless-task-queue.service...
[4/17] Reviewing PKGBUILD, paperless-scheduler.service, paperless-task-queue.service...
+ Reviewed paperless-consumer.service. Status: SAFE -- Standard systemd service unit, no security concerns.
LLM auditresponse for paperless-scheduler.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit file for the Paperless Celery Beat scheduler. It contains no executable code, no network fetching, no obfuscation, and no unusual file operations. It specifies the service to run as the `paperless` user and group, with the binary located at `/usr/lib/paperless/scheduler`. The unit depends on `redis.service` and belongs to `paperless.target`, all of which are consistent with the expected behavior of the Paperless-ngx application. No supply-chain attack indicators are present.
</details>
<evidence></evidence>
<summary>Standard systemd service unit, no security concerns.</summary>
</security_assessment>

[5/17] Reviewing PKGBUILD, paperless-task-queue.service...
+ Reviewed paperless-scheduler.service. Status: SAFE -- Standard systemd service unit, no security concerns.
[5/17] Reviewing PKGBUILD, paperless-task-queue.service, paperless-webserver.service...
LLM auditresponse for paperless-task-queue.service:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard systemd service unit for running Paperless Celery workers. It sets up the service to run after network.target, requires redis.service, and runs as the 'paperless' user and group. The ExecStart points to a binary in /usr/lib/paperless/task-queue, which is expected for a packaged application. No suspicious content such as obfuscation, network downloads, or file operations outside the package's scope. This is a normal configuration file.
</details>
<evidence></evidence>
<summary>Standard systemd service unit, no malicious content.</summary>
</security_assessment>

[5/17] Reviewing PKGBUILD, paperless-task-queue.service, paperless-webserver.service, paperless.conf...
[6/17] Reviewing PKGBUILD, paperless-webserver.service, paperless.conf...
+ Reviewed paperless-task-queue.service. Status: SAFE -- Standard systemd service unit, no malicious content.
LLM auditresponse for paperless-webserver.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit file for the Paperless webserver. It defines a service that runs under a dedicated user and group, reads an environment file from `/etc/paperless.conf`, sets the working directory to the application source, and executes the webserver binary. There are no suspicious commands, network calls, obfuscation, or any deviation from normal packaging practices. The file is benign and performs no unexpected operations.
</details>
<evidence></evidence>
<summary>Standard systemd service file, no security concerns.</summary>
</security_assessment>

[7/17] Reviewing PKGBUILD, paperless.conf...
+ Reviewed paperless-webserver.service. Status: SAFE -- Standard systemd service file, no security concerns.
[7/17] Reviewing PKGBUILD, paperless.conf, paperless.hook...
LLM auditresponse for paperless.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard configuration file for the Paperless-ngx document management system. It contains commented-out environment variable definitions and a few uncommented path settings pointing to system directories under `/var/lib/paperless/` and `/usr/share/paperless/`. The entire file is declarative (no commands, no code execution, no network operations, no obfuscation). There is no evidence of supply-chain compromise, backdoors, or any deviation from normal packaging practices.
</details>
<evidence></evidence>
<summary>Standard configuration file, no security concerns.</summary>
</security_assessment>

[7/17] Reviewing PKGBUILD, paperless.conf, paperless.hook, paperless.install...
[8/17] Reviewing PKGBUILD, paperless.hook, paperless.install...
+ Reviewed paperless.conf. Status: SAFE -- Standard configuration file, no security concerns.
LLM auditresponse for paperless.hook:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard pacman hook that triggers after upgrading the `paperless-ngx-venv` package. It runs `paperless-manage migrate` as the `paperless` user to perform database migrations. This is a routine and expected operation for an application that manages its own database schema. There is no suspicious network activity, obfuscation, unauthorized file access, or deviation from normal packaging practices.
</details>
<evidence>
</evidence>
<summary>Standard database migration hook, no malicious content.</summary>
</security_assessment>

[8/17] Reviewing PKGBUILD, paperless.hook, paperless.install, paperless.sysusers...
[9/17] Reviewing PKGBUILD, paperless.install, paperless.sysusers...
+ Reviewed paperless.hook. Status: SAFE -- Standard database migration hook, no malicious content.
LLM auditresponse for paperless.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.install` script for Arch Linux packages, containing only informational messages for the user during post-install and post-upgrade steps. It prints instructions for database migration, superuser creation, and service activation, and suggests optional configuration of a pacman hook file. No network requests, code execution, obfuscation, or system file modifications are present. The use of `vercmp` and heredocs is normal and expected in package maintainer scripts.
</details>
<evidence></evidence>
<summary>Standard install script with no malicious behavior.</summary>
</security_assessment>

[10/17] Reviewing PKGBUILD, paperless.sysusers...
+ Reviewed paperless.install. Status: SAFE -- Standard install script with no malicious behavior.
[10/17] Reviewing PKGBUILD, paperless.sysusers, paperless.target...
LLM auditresponse for paperless.sysusers:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard systemd sysusers configuration used to create a dedicated system account for the Paperless-ngx service. It defines a user named `paperless` with no group, a description, and a home directory at `/var/lib/paperless`. There is no code execution, network activity, obfuscation, or any behavior outside of normal packaging practices. The use of `&quot;` to represent double quotes is typical in these configuration files and is not suspicious.
</details>
<evidence></evidence>
<summary>Standard sysusers config; no security issues.</summary>
</security_assessment>

[10/17] Reviewing PKGBUILD, paperless.sysusers, paperless.target, paperless.tmpfiles...
[11/17] Reviewing PKGBUILD, paperless.target, paperless.tmpfiles...
+ Reviewed paperless.sysusers. Status: SAFE -- Standard sysusers config; no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a Python application distributed as a virtual environment. All source files are pinned with BLAKE2b checksums, including the upstream tarball from the official GitHub releases. The build process creates a Python venv, installs dependencies from the upstream-shipped `requirements.txt` using `uv pip install`, and copies the application and venv into the package directory. Generated wrapper scripts (paperless-manage, scheduler, task-queue, webserver) are simple bash wrappers that activate the venv and launch the respective application components. There are no obfuscated commands, no external network requests beyond fetching the verified upstream tarball and installing packages from PyPI (the standard Python package index), and no modifications to system files outside the expected installation paths. A loop that detects installed Redis forks and adapts service file references is benign configuration logic. No evidence of exfiltration, backdoors, or anything beyond normal packaging behavior was found.
</details>
<evidence>
</evidence>
<summary>Standard AUR PKGBUILD with no malicious content.</summary>
</security_assessment>

[11/17] Reviewing PKGBUILD, paperless.target, paperless.tmpfiles, requirements.patch...
[12/17] Reviewing paperless.target, paperless.tmpfiles, requirements.patch...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no malicious content.
LLM auditresponse for paperless.target:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd target unit file for the Paperless-ngx application. It declares dependencies and ordering between services, which is normal and expected for a multi-component service. There is no executable code, no network requests, no obfuscation, and no deviation from standard packaging or service management practices. The file is benign.
</details>
<evidence></evidence>
<summary>Standard systemd target unit file, no security issues.</summary>
</security_assessment>

[13/17] Reviewing paperless.tmpfiles, requirements.patch...
+ Reviewed paperless.target. Status: SAFE -- Standard systemd target unit file, no security issues.
[13/17] Reviewing paperless.tmpfiles, requirements.patch, whoosh-filters.patch...
LLM auditresponse for paperless.tmpfiles:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard systemd-tmpfiles configuration snippet for the paperless-ngx application. It defines expected directories and a configuration file location with appropriate ownership and permissions for the paperless user and group. No network operations, obfuscation, or malicious code is present. The content follows normal packaging conventions for setting up runtime directories and configuration files.
</details>
<evidence></evidence>
<summary>Legitimate systemd-tmpfiles config for paperless-ngx.</summary>
</security_assessment>

[13/17] Reviewing paperless.tmpfiles, requirements.patch, whoosh-filters.patch, whoosh-intraword.patch...
[14/17] Reviewing requirements.patch, whoosh-filters.patch, whoosh-intraword.patch...
+ Reviewed paperless.tmpfiles. Status: SAFE -- Legitimate systemd-tmpfiles config for paperless-ngx.
LLM auditresponse for requirements.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a patch that downgrades the `channels` Python dependency from version 4.2.0 to 4.0.0 in `requirements.txt`. This is a routine dependency version adjustment, likely to resolve compatibility issues with other packages or the application itself. There is no obfuscated code, no network requests, no execution of untrusted content, and no deviation from standard packaging practices. The change does not exhibit any signs of a supply-chain attack or malicious intent.
</details>
<evidence>
</evidence>
<summary>Routine patch downgrading a Python dependency version.</summary>
</security_assessment>

[15/17] Reviewing whoosh-filters.patch, whoosh-intraword.patch...
+ Reviewed requirements.patch. Status: SAFE -- Routine patch downgrading a Python dependency version.
LLM auditresponse for whoosh-filters.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
The patch file "whoosh-filters.patch" contains only straightforward regex escaping fixes for the Whoosh library's `filters.py`. It changes `\S+` to `\\S+` and `\w+` to `\\w+` in a few places to ensure proper string escaping in Python regex patterns. All modifications are limited to three lines: one in a regex pattern and two in docstring examples. There is no obfuscation, network activity, file manipulation, or any behavior outside normal patching practices. The patch is a routine fix for correct regex handling and poses no security risk.
</details>
<evidence></evidence>
<summary>Benign patch fixing regex escaping in Whoosh.</summary>
</security_assessment>

[16/17] Reviewing whoosh-intraword.patch...
+ Reviewed whoosh-filters.patch. Status: SAFE -- Benign patch fixing regex escaping in Whoosh.
LLM auditresponse for whoosh-intraword.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard patch file for the Whoosh Python library, fixing regex escaping in docstrings and a default delimiter string. It contains no suspicious behavior such as network requests, obfuscation, or system modifications. The changes are consistent with routine upstream code maintenance and do not pose any security risk.
</details>
<evidence></evidence>
<summary>Routine patch with no security concerns.</summary>
</security_assessment>

[17/17] Reviewing ...
+ Reviewed whoosh-intraword.patch. Status: SAFE -- Routine patch with no security concerns.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 46,235
  Completion Tokens: 8,305
  Total Tokens: 54,540
  Total Cost: $0.005719
  Execution Time: 49.80 seconds

Final Status: SAFE


No issues found.
