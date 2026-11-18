---
package: paperless-ngx-venv
pkgver: 3.5.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 46641
completion_tokens: 9227
total_tokens: 55868
cost: 0.00585855
execution_time: 45.72
files_reviewed: 17
files_skipped: 0
maintainer_files: 17
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-18T16:10:59Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: Standard license file with no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Declarative metadata file, no code, no threats found.
  - file: .gitignore
    status: safe
    summary: Benign standard gitignore for AUR.
  - file: paperless-scheduler.service
    status: safe
    summary: Standard systemd unit file, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR package, no malicious behavior.
  - file: paperless-webserver.service
    status: safe
    summary: Standard systemd unit, no malicious content.
  - file: paperless-consumer.service
    status: safe
    summary: Standard systemd service unit, no security issues.
  - file: paperless.conf
    status: safe
    summary: Inert configuration file with no executable content.
  - file: paperless-task-queue.service
    status: safe
    summary: Standard systemd service file, no malicious content.
  - file: paperless.hook
    status: safe
    summary: Standard database migration hook, no security issues.
  - file: paperless.sysusers
    status: safe
    summary: Benign system user configuration file.
  - file: paperless.target
    status: safe
    summary: Standard systemd target unit, no security issues.
  - file: paperless.tmpfiles
    status: safe
    summary: Standard tmpfiles config, no security issues.
  - file: paperless.install
    status: safe
    summary: Standard .install script; no malicious behavior found.
  - file: whoosh-filters.patch
    status: safe
    summary: Patch fixes regex escapes; no malicious behavior.
  - file: requirements.patch
    status: safe
    summary: Simple dependency version patch; no malicious content.
  - file: whoosh-intraword.patch
    status: safe
    summary: Standard regex escaping fix; no malicious content.
---

Materializing paperless-ngx-venv from local mirror...
Materialized paperless-ngx-venv
Analyzing paperless-ngx-venv AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable definitions and function declarations at the top level. No command substitutions, global code execution, or dangerous operations are present. The `prepare()` and `package()` functions contain commands (e.g., `uv pip install`, `curl`, `sed`) but these are defined within function bodies and are **not** executed when the PKGBUILD is sourced for `makepkg --printsrcinfo`. All variables (`pkgname`, `pkgver`, `source`, `b2sums`, etc.) are static string assignments, with no embedded `$()` or backtick command substitutions. Therefore, sourcing this file for metadata parsing is safe.
</details>
<evidence>
</evidence>
<summary>No global execution risk; safe for printsrcinfo.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No global execution risk; safe for printsrcinfo.
Reviewing the 17 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/17] Reviewing .gitignore...
[0/17] Reviewing .gitignore, .SRCINFO...
[0/17] Reviewing .gitignore, .SRCINFO, LICENSE...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard open-source license file (BSD Zero Clause License). It contains only legal text and copyright attributions. There is no executable code, no network requests, no obfuscation, and no system commands. Nothing in this file deviates from ordinary packaging practices or poses any security risk.
</details>
<evidence></evidence>
<summary>Standard license file with no security concerns.</summary>
</security_assessment>

[0/17] Reviewing .gitignore, .SRCINFO, LICENSE, PKGBUILD...
[1/17] Reviewing .gitignore, .SRCINFO, PKGBUILD...
+ Reviewed LICENSE. Status: SAFE -- Standard license file with no security concerns.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a declarative metadata file for the paperless-ngx-venv package. It contains no executable code, no network requests, no obfuscated strings, and no file manipulation instructions. All sources point to the official GitHub release and local configuration files. All checksums are provided (no SKIP entries). The dependencies and options (`!strip`, `!debug`) are standard for a Python venv package. There is no evidence of any malicious or suspicious activity.
</details>
<evidence></evidence>
<summary>Declarative metadata file, no code, no threats found.</summary>
</security_assessment>

[2/17] Reviewing .gitignore, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Declarative metadata file, no code, no threats found.
[2/17] Reviewing .gitignore, PKGBUILD, paperless-consumer.service...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` file used by the Git version control system. The patterns it contains (`src`, `pkg`, `*.tar.*`, `*.tar`) are the standard and expected patterns for any Arch Linux AUR package built with `makepkg`. They prevent the upstream source extracts in the `src/` directory and the packaged build artifacts in the `pkg/` directory from being tracked by Git. The file contains no code, no network requests, no obfuscation, and no executable instructions. It is a completely benign and necessary part of a well-maintained AUR repository.
</details>
<evidence></evidence>
<summary>Benign standard gitignore for AUR.</summary>
</security_assessment>

[2/17] Reviewing .gitignore, PKGBUILD, paperless-consumer.service, paperless-scheduler.service...
[3/17] Reviewing PKGBUILD, paperless-consumer.service, paperless-scheduler.service...
+ Reviewed .gitignore. Status: SAFE -- Benign standard gitignore for AUR.
LLM auditresponse for paperless-scheduler.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit file for Paperless' Celery Beat scheduler. It defines normal dependencies (network.target, redis.service), runs as a dedicated user and group, and executes the scheduler binary from the expected path. There are no network requests, file operations, encoded commands, or any other suspicious patterns. The file is consistent with ordinary packaging practices for a systemd-managed application.
</details>
<evidence></evidence>
<summary>Standard systemd unit file, no security issues.</summary>
</security_assessment>

[3/17] Reviewing PKGBUILD, paperless-consumer.service, paperless-scheduler.service, paperless-task-queue.service...
[4/17] Reviewing PKGBUILD, paperless-consumer.service, paperless-task-queue.service...
+ Reviewed paperless-scheduler.service. Status: SAFE -- Standard systemd unit file, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard Arch packaging practices for a Python venv-based application. It downloads the official release tarball from the project's GitHub releases, verifies checksums (b2sums are provided for all sources), creates a virtual environment using `uv`, and installs dependencies from the upstream `requirements.txt`. The script also includes logic to detect and patch service files for alternative Redis-compatible forks, which is legitimate customization. No obfuscated code, unexpected network requests, or system modifications beyond the package's intended scope are present. The wrapper scripts generated are standard for activating the venv and running the application's components (manage.py, celery, granian). This appears to be a benign and well-maintained package.
</details>
<evidence></evidence>
<summary>Standard AUR package, no malicious behavior.</summary>
</security_assessment>

[4/17] Reviewing PKGBUILD, paperless-consumer.service, paperless-task-queue.service, paperless-webserver.service...
[5/17] Reviewing paperless-consumer.service, paperless-task-queue.service, paperless-webserver.service...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR package, no malicious behavior.
LLM auditresponse for paperless-webserver.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd unit file for running the Paperless webserver service. It defines typical service metadata: a description, network dependency, user/group separation, an environment file, working directory, and the binary path. No obfuscation, network requests, downloads, eval, or other suspicious operations are present. The configuration follows normal packaging practices for a daemon service.
</details>
<evidence></evidence>
<summary>Standard systemd unit, no malicious content.</summary>
</security_assessment>

[5/17] Reviewing paperless-consumer.service, paperless-task-queue.service, paperless-webserver.service, paperless.conf...
[6/17] Reviewing paperless-consumer.service, paperless-task-queue.service, paperless.conf...
+ Reviewed paperless-webserver.service. Status: SAFE -- Standard systemd unit, no malicious content.
LLM auditresponse for paperless-consumer.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard systemd service unit definition for the Paperless-ngx consumer process. It defines a service that runs the `paperless-manage document_consumer` command under a dedicated `paperless` user and group, with appropriate dependencies and restart behavior. There is no obfuscation, no unexpected network requests, no execution of untrusted code, and no deviation from normal packaging practices. All paths and commands are consistent with the expected installation of the Paperless-ngx application. No security concerns are present.
</details>
<evidence>
</evidence>
<summary>Standard systemd service unit, no security issues.</summary>
</security_assessment>

[7/17] Reviewing paperless-task-queue.service, paperless.conf...
+ Reviewed paperless-consumer.service. Status: SAFE -- Standard systemd service unit, no security issues.
[7/17] Reviewing paperless-task-queue.service, paperless.conf, paperless.hook...
LLM auditresponse for paperless.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a configuration file for the paperless-ngx application. It contains solely environment variable definitions and comments. There are no scripts, no executable commands, no network requests, and no obfuscated code. All entries are either commented out example settings or plain path/port assignments. Nothing in this file deviates from standard packaging practices for an application configuration file. The file does not attempt to execute any code, connect to any network, or modify the system in any way.
</details>
<evidence></evidence>
<summary>Inert configuration file with no executable content.</summary>
</security_assessment>

[8/17] Reviewing paperless-task-queue.service, paperless.hook...
+ Reviewed paperless.conf. Status: SAFE -- Inert configuration file with no executable content.
[8/17] Reviewing paperless-task-queue.service, paperless.hook, paperless.install...
LLM auditresponse for paperless-task-queue.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit file for the Paperless task queue (Celery workers). It defines dependencies on `redis.service` and the `paperless.target`, sets the working directory to `/usr/share/paperless/src`, and runs the binary at `/usr/lib/paperless/task-queue` as the `paperless` user and group. There are no unexpected commands, network requests, file operations, or obfuscated code. The file follows normal packaging conventions for system services.
</details>
<evidence></evidence>
<summary>Standard systemd service file, no malicious content.</summary>
</security_assessment>

[8/17] Reviewing paperless-task-queue.service, paperless.hook, paperless.install, paperless.sysusers...
[9/17] Reviewing paperless.hook, paperless.install, paperless.sysusers...
+ Reviewed paperless-task-queue.service. Status: SAFE -- Standard systemd service file, no malicious content.
LLM auditresponse for paperless.hook:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard pacman hook file that triggers a database migration for the Paperless-ngx application after an upgrade. The command runs `/usr/bin/paperless-manage migrate --noinput` as the `paperless` user via `runuser`. This is normal and expected behavior for a package that manages a database schema. There is no evidence of malicious activity, network requests, obfuscated code, or unauthorized system modifications.
</details>
<evidence></evidence>
<summary>Standard database migration hook, no security issues.</summary>
</security_assessment>

[10/17] Reviewing paperless.install, paperless.sysusers...
+ Reviewed paperless.hook. Status: SAFE -- Standard database migration hook, no security issues.
[10/17] Reviewing paperless.install, paperless.sysusers, paperless.target...
LLM auditresponse for paperless.sysusers:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard systemd sysusers configuration snippet used to create a dedicated system user and group for the application. The format `u paperless - &quot;Paperless user&quot; /var/lib/paperless` instructs systemd-sysusers to create a user named `paperless` with a system-assigned UID, the comment "Paperless user", and home directory `/var/lib/paperless`. There is no executable code, no network access, no file manipulation, and no obfuscation. It is a normal and expected part of preparing the runtime environment for the paperless-ngx application.
</details>
<evidence></evidence>
<summary>Benign system user configuration file.</summary>
</security_assessment>

[10/17] Reviewing paperless.install, paperless.sysusers, paperless.target, paperless.tmpfiles...
[11/17] Reviewing paperless.install, paperless.target, paperless.tmpfiles...
+ Reviewed paperless.sysusers. Status: SAFE -- Benign system user configuration file.
LLM auditresponse for paperless.target:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd target unit file that groups several Paperless-related services (webserver, consumer, scheduler, task-queue) and ensures they start after network.target and require redis.service. It contains no executable code, no network requests, no obfuscation, and no file operations beyond defining service dependencies. The file is purely declarative and follows normal packaging practices.
</details>
<evidence></evidence>
<summary>Standard systemd target unit, no security issues.</summary>
</security_assessment>

[11/17] Reviewing paperless.install, paperless.target, paperless.tmpfiles, requirements.patch...
[12/17] Reviewing paperless.install, paperless.tmpfiles, requirements.patch...
+ Reviewed paperless.target. Status: SAFE -- Standard systemd target unit, no security issues.
LLM auditresponse for paperless.tmpfiles:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard systemd-tmpfiles configuration snippet. It creates the configuration file /etc/paperless.conf and several runtime directories under /var/lib/paperless with appropriate ownership and permissions for the paperless user and group. No network requests, obfuscation, or suspicious operations are present. This is exactly what is expected from a packaging helper script for a systemd‑based service.
</details>
<evidence>
</evidence>
<summary>Standard tmpfiles config, no security issues.</summary>
</security_assessment>

[12/17] Reviewing paperless.install, paperless.tmpfiles, requirements.patch, whoosh-filters.patch...
[13/17] Reviewing paperless.install, requirements.patch, whoosh-filters.patch...
+ Reviewed paperless.tmpfiles. Status: SAFE -- Standard tmpfiles config, no security issues.
LLM auditresponse for paperless.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Arch Linux .install script providing post-installation and post-upgrade messages. It uses only `cat` with here-documents to display information to the user, and simple conditional checks with `vercmp`. There are no commands that execute external code, make network requests, or modify the system beyond printing informational text. Instructions such as `sudo -u paperless paperless-manage migrate` are presented to the user but are not executed by the script. No obfuscated, encoded, or otherwise suspicious content is present.
</details>
<evidence>
</evidence>
<summary>Standard .install script; no malicious behavior found.</summary>
</security_assessment>

[13/17] Reviewing paperless.install, requirements.patch, whoosh-filters.patch, whoosh-intraword.patch...
[14/17] Reviewing requirements.patch, whoosh-filters.patch, whoosh-intraword.patch...
+ Reviewed paperless.install. Status: SAFE -- Standard .install script; no malicious behavior found.
LLM auditresponse for whoosh-filters.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a patch file that modifies regular expression patterns in Whoosh&#x27;s filters.py. The changes escape backslashes in raw strings (e.g., `\w+` to `\\w+`, `\S+` to `\\S+`). While the patch may introduce functional issues if applied to Python raw strings (where `\\\\w+` would match a literal backslash followed by `w+`), there is no evidence of obfuscation, network operations, data exfiltration, or any other genuinely malicious behavior. The patch is a straightforward, non-executable text change intended to modify the upstream library code; it does not attempt to run arbitrary commands, download payloads, or access sensitive system resources.
</details>
<evidence>
</evidence>
<summary>Patch fixes regex escapes; no malicious behavior.</summary>
</security_assessment>

[15/17] Reviewing requirements.patch, whoosh-intraword.patch...
+ Reviewed whoosh-filters.patch. Status: SAFE -- Patch fixes regex escapes; no malicious behavior.
LLM auditresponse for requirements.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch file only makes a single, straightforward change: it downgrades the `channels` Python package from version 4.2.0 to 4.0.0 in the requirements list.  There is no obfuscation, no new commands, no network operations, and no file modifications beyond the one dependency version change.  While dependency version changes can have security implications, this patch itself does not contain any malicious content—it is consistent with a standard packaging compatibility patch.
</details>
<evidence></evidence>
<summary>Simple dependency version patch; no malicious content.</summary>
</security_assessment>

[16/17] Reviewing whoosh-intraword.patch...
+ Reviewed requirements.patch. Status: SAFE -- Simple dependency version patch; no malicious content.
LLM auditresponse for whoosh-intraword.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch file corrects regex escaping in the Whoosh library's `intraword.py`. The changes involve adding an extra backslash to properly escape backslashes in regex patterns, which is a standard code fix. No malicious behavior is present: no network requests, file operations, obfuscation, or execution of commands. The patch only modifies string literals in Python docstrings and default argument values.
</details>
<evidence></evidence>
<summary>Standard regex escaping fix; no malicious content.</summary>
</security_assessment>

[17/17] Reviewing ...
+ Reviewed whoosh-intraword.patch. Status: SAFE -- Standard regex escaping fix; no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 46,641
  Completion Tokens: 9,227
  Total Tokens: 55,868
  Total Cost: $0.005859
  Execution Time: 45.72 seconds

Final Status: SAFE


No issues found.
